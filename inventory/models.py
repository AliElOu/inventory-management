from django.db import models

class Category(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50, unique=True, verbose_name='Nom de la categorie')
    is_deleted = models.BooleanField(default=False)

    def __str__(self):
        return self.name
        
class Stock(models.Model): 
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=30, unique=True, verbose_name='Name')
    quantity = models.IntegerField(default=1)
    price = models.DecimalField(max_digits=10, decimal_places=2, verbose_name='Prix', null=True)  
    discount = models.DecimalField(max_digits=5, decimal_places=2, default=0, verbose_name='Remise (%)') 
    is_deleted = models.BooleanField(default=False)
    category = models.ForeignKey(Category, on_delete=models.CASCADE, null=True, blank=True, verbose_name='Categorie')

    def __str__(self):
	    return self.name
     

class SalesPrediction(models.Model):
    stock = models.ForeignKey(Stock, on_delete=models.CASCADE)
    predicted_units = models.FloatField()

    weather_condition = models.CharField(max_length=50)
    seasonality = models.CharField(max_length=20)
    holiday = models.BooleanField()

    date = models.DateField(auto_now_add=True)
    day_offset = models.IntegerField(default=0) 

    

