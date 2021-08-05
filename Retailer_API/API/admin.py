from django.contrib import admin
from .models import Order, User, Payment, Shipping

# Register your models here.

admin.site.register(User)
admin.site.register(Order)
admin.site.register(Payment)
admin.site.register(Shipping)