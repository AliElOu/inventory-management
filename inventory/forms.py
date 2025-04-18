from django import forms
from .models import Stock, Category

class StockForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):                                                        # used to set css classes to the various fields
        super().__init__(*args, **kwargs)
        self.fields['name'].widget.attrs.update({'class': 'textinput form-control'})
        self.fields['quantity'].widget.attrs.update({'class': 'textinput form-control', 'min': '0'})
        self.fields['category'].widget.attrs.update({'class': 'textinput form-control'})
        self.fields['category'].required = True
        self.fields['price'].widget.attrs.update({'class': 'textinput form-control', 'min': '0', 'step': '0.01'})
        self.fields['price'].required = True
        self.fields['discount'].widget.attrs.update({'class': 'textinput form-control', 'min': '0', 'max': '100', 'step': '0.01'})


    class Meta:
        model = Stock
        fields = ['name', 'quantity', 'category', 'price', 'discount']

class CategoryForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):                                                        # used to set css classes to the various fields
        super().__init__(*args, **kwargs)
        self.fields['name'].widget.attrs.update({'class': 'textinput form-control'})
        self.fields['name'].required = True

    class Meta:
        model = Category
        fields = ['name']