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
    is_deleted = models.BooleanField(default=False)
    category = models.ForeignKey(Category, on_delete=models.CASCADE, null=True, blank=True, verbose_name='Categorie')

    def __str__(self):
	    return self.name
    

