from django.urls import path
from . import views

urlpatterns = [
    path('', views.StockListView.as_view(), name='inventory'),
    path('category', views.CategoryListView.as_view(), name='category'),
    path('new', views.StockCreateView.as_view(), name='new-stock'),
    path('category/newcat', views.CategoryCreateView.as_view(), name='new-category'),
    path('stock/<pk>/edit', views.StockUpdateView.as_view(), name='edit-stock'),
    path('stock/<pk>/delete', views.StockDeleteView.as_view(), name='delete-stock'),
    path('category/<pk>/edit', views.CategoryUpdateView.as_view(), name='edit-category'),
    path('category/<pk>/delete', views.CategoryDeleteView.as_view(), name='delete-category'),
]