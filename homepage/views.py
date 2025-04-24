from django.shortcuts import render
from django.views.generic import View, TemplateView
from inventory.models import Stock
from transactions.models import SaleBill, PurchaseBill, SaleBillDetails, SaleItem
from django.db.models import F, Sum, FloatField


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
        context = {
            'labels'    : labels,
            'data'      : data,
            'sales'     : sales,
            'purchases' : purchases,
            'total_sales': total_sales,
            'total_stock_value': total_stock_value,
            'product_count': product_count,
            'bestsellers': bestsellers
        }
        return render(request, self.template_name, context)

class AboutView(TemplateView):
    template_name = "about.html"