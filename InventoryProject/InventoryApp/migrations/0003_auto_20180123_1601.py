# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2018-01-23 16:01
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('InventoryApp', '0002_auto_20180119_1618'),
    ]

    operations = [
        migrations.CreateModel(
            name='requisition',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('requisitionDate', models.DateField(auto_now_add=True, null=True)),
                ('duedate', models.DateField(max_length=8)),
            ],
            options={
                'db_table': 'requisition',
            },
        ),
        migrations.AlterField(
            model_name='jts_employees',
            name='dateOfJoining',
            field=models.DateField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='requisition',
            name='userID',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.jts_employees'),
        ),
    ]
