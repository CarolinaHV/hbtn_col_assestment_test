# Generated by Django 3.2.5 on 2021-08-02 18:43

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('API', '0003_payment_user'),
    ]

    operations = [
        migrations.DeleteModel(
            name='User',
        ),
    ]