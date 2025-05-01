from django.shortcuts import render
from django.views.generic import View, TemplateView
from inventory.models import Stock, SalesPrediction
from transactions.models import SaleBill, PurchaseBill, SaleBillDetails, SaleItem
from django.db.models import F, Sum, FloatField
from django.utils import timezone
from datetime import timedelta
from collections import OrderedDict


class HomeView(View):
    template_name = "home.html"
    def get(self, request):        
        labels = []
        data = []        
        stockqueryset = Stock.objects.filter(is_deleted=False).order_by('-quantity')
        for item in stockqueryset:
            labels.append(item.name)
            data.append(item.quantity)
        sales = SaleBill.objects.order_by('-time')[:3]
        purchases = PurchaseBill.objects.order_by('-time')[:3]
        total_sales = SaleBillDetails.objects.aggregate(total_sum=Sum('total'))['total_sum'] or 0
        product_count = Stock.objects.filter(is_deleted=False).count()
        total_stock_value = Stock.objects.filter(is_deleted=False).annotate(
            total_value=F('quantity') * F('price')
        ).aggregate( 
            total_sum=Sum('total_value', output_field=FloatField())
        )['total_sum'] or 0
        bestsellers = SaleItem.objects.values('stock__name').annotate(
        total_quantity=Sum('quantity')
        ).order_by('-total_quantity')[:7]  
        today = timezone.now().date()
        seven_days_ago = today - timedelta(days=6) 

        sales_by_day = (
            SaleItem.objects
            .filter(billno__time__date__gte=seven_days_ago)
            .values('billno__time__date') 
            .annotate(total_sales=Sum('totalprice'))
            .order_by('billno__time__date')
        )

        all_predictions = SalesPrediction.objects.select_related('stock').order_by('-date')

        latest_predictions = OrderedDict()

        for pred in all_predictions:
            if pred.stock_id not in latest_predictions:
                latest_predictions[pred.stock_id] = pred

        product_names = []
        stock_data = []
        predicted_sales_data = []

        for pred in latest_predictions.values():
            product_names.append(pred.stock.name[:8]+ "...")
            stock_data.append(pred.stock.quantity)
            predicted_sales_data.append(pred.predicted_units)
        context = {
            'labels'    : labels,
            'data'      : data,
            'sales'     : sales,
            'purchases' : purchases,
            'total_sales': total_sales,
            'total_stock_value': total_stock_value,
            'product_count': product_count,
            'bestsellers': bestsellers,
            'sales_by_day': sales_by_day,
            'product_names': product_names,
            'stock_data': stock_data,
            'predicted_sales_data': predicted_sales_data
        }
        return render(request, self.template_name, context)

class AboutView(TemplateView):
    template_name = "about.html"