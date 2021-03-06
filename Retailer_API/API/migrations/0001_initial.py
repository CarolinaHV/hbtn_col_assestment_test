# Generated by Django 3.2.5 on 2021-08-01 04:24

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='order',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateField(auto_now_add=True)),
                ('total', models.DecimalField(decimal_places=2, max_digits=9)),
                ('subtotal', models.DecimalField(decimal_places=2, max_digits=9)),
                ('taxes', models.DecimalField(decimal_places=2, max_digits=9)),
                ('paid', models.DecimalField(decimal_places=2, max_digits=9)),
            ],
        ),
    ]
