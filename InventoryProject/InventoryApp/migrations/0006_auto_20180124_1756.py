# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2018-01-24 17:56
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('InventoryApp', '0005_auto_20180124_1731'),
    ]

    operations = [
        migrations.AlterField(
            model_name='requisition',
            name='statusId',
            field=models.ForeignKey(default=2, on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.inv_status'),
        ),
        migrations.AlterField(
            model_name='requisition_details',
            name='statusId',
            field=models.ForeignKey(default=2, on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.inv_status'),
        ),
    ]