from django.shortcuts import render
from django.views.generic import View, TemplateView
from inventory.models import Stock, SalesPrediction, SalesForecast
from transactions.models import SaleBill, PurchaseBill, SaleBillDetails, SaleItem
from django.db.models import F, Sum, FloatField
from django.utils import timezone
from collections import OrderedDict
from datetime import date as datt
from datetime import timedelta

class HomeView(View):
    template_name = "home.html"
    def get(self, request):    
        today = (timezone.now().date()) - timedelta(days=1)
        labels = []
        data = []        
        stockqueryset = Stock.objects.filter(is_deleted=False).order_by('-quantity')
        for item in stockqueryset:
            labels.append(item.name)
            data.append(item.quantity)
        sales = SaleBill.objects.order_by('-time')[:3]
        purchases = PurchaseBill.objects.order_by('-time')[:3]
        total_sales = SaleBillDetails.objects.filter(billno__time__date=today - timedelta(days=1)).aggregate(total_sum=Sum('total'))['total_sum'] or 0
        product_count = Stock.objects.filter(is_deleted=False).count()
        total_stock_value = Stock.objects.filter(is_deleted=False).annotate(
            total_value=F('quantity') * F('price')
        ).aggregate( 
            total_sum=Sum('total_value', output_field=FloatField())
        )['total_sum'] or 0
        bestsellers = SaleItem.objects.values('stock__name').annotate(
        total_quantity=Sum('quantity')
        ).order_by('-total_quantity')[:7]  
        sales_by_day = (
            SaleBillDetails.objects
            .filter(billno__time__date__gte=today - timedelta(days=7),
                    billno__time__date__lt=today)
            .values('billno__time__date')
            .annotate(total_sales=Sum('total'))
            .order_by('billno__time__date')[:7]
            )
        all_predictions = SalesPrediction.objects.select_related('stock').filter(stock__is_deleted=False).order_by('-date')
        latest_predictions = OrderedDict()

        for pred in all_predictions:
            if (pred.stock_id not in latest_predictions):
                latest_predictions[pred.stock_id] = pred
        product_names = []
        stock_data = []
        predicted_sales_data = [] 
        product_names2 = []
        stock_data2 = []
        predicted_sales_data2 = []
        for pred in latest_predictions.values():
            product_names.append(pred.stock.name[:8] + "...")
            stock_data.append(pred.stock.quantity)
            predicted_sales_data.append(pred.predicted_units)
        predicted_sales_data = arrondi_special(predicted_sales_data)

        for pred in latest_predictions.values():
            if ((pred.stock.quantity - pred.predicted_units) <= 20):
                product_names2.append(pred.stock.name[:15] + "...")
                stock_data2.append(pred.stock.quantity)
                predicted_sales_data2.append(pred.predicted_units)
        predicted_sales_data2 = arrondi_special(predicted_sales_data2)

        predictions_list = []
        try:
            forecast = SalesForecast.objects.get(date=today)
            predictions_list = forecast.get_predictions()  
        except SalesForecast.DoesNotExist:
            print("Aucune prédiction pour aujourd'hui.")

        date_list = [today + timedelta(days=i) for i in range(7)]
        predictions_dates = [date.strftime("%b %d, %Y") for date in date_list]

        sales_by_category = (
            SaleItem.objects
            .values('stock__category__name')
            .annotate(total_sold=Sum('quantity'))
        )

        predictions_by_category = (
            SalesPrediction.objects
            .values('stock__category__name')
            .annotate(total_predicted=Sum('predicted_units'))
        )

        categories = list(set(
            [item['stock__category__name'] for item in sales_by_category] +
            [item['stock__category__name'] for item in predictions_by_category]
        ))

        sales_dict = {item['stock__category__name']: item['total_sold'] for item in sales_by_category}
        predictions_dict = {item['stock__category__name']: item['total_predicted'] for item in predictions_by_category}

        historical_data = [sales_dict.get(cat, 0) for cat in categories]
        predicted_data = [predictions_dict.get(cat, 0) for cat in categories]

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
            'predicted_sales_data': predicted_sales_data,
            'stock_predictions_info': zip(product_names2, stock_data2, predicted_sales_data2),
            'stockout_risks_number': len(product_names2),
            '7days_predictions' : predictions_list,
            'predictions_dates' : predictions_dates,
            'categories': categories,
            'historical_data': historical_data,
            'predicted_data': arrondi_special(predicted_data),
        }
        return render(request, self.template_name, context)

class AboutView(TemplateView):
    template_name = "about.html"


def arrondi_special(valeurs):
    return [int(x) + 1 if x - int(x) > 0.5 else int(x) for x in valeurs]
