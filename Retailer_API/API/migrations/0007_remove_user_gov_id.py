# Generated by Django 3.2.5 on 2021-08-05 02:36

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('API', '0006_alter_user_name'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='user',
            name='gov_id',
        ),
    ]
