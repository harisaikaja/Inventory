# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2018-01-17 13:39
from __future__ import unicode_literals

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='emp_jobrole',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('jobRole', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'emp_jobrole',
            },
        ),
        migrations.CreateModel(
            name='emp_location',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('location', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'emp_location',
            },
        ),
        migrations.CreateModel(
            name='family_details',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Name', models.CharField(max_length=30)),
                ('gender', models.CharField(choices=[('MALE', 'male'), ('FEMALE', 'female'), ('OTHERS', 'others')], max_length=8)),
                ('DateOfBirth', models.DateField(max_length=8)),
                ('Relationship', models.CharField(max_length=25)),
            ],
            options={
                'db_table': 'family_details',
            },
        ),
        migrations.CreateModel(
            name='inv_location',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('locationName', models.CharField(max_length=15)),
                ('locationAddress', models.CharField(max_length=50)),
            ],
            options={
                'db_table': 'inv_location',
            },
        ),
        migrations.CreateModel(
            name='inv_materialType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('materialType', models.CharField(max_length=15)),
            ],
            options={
                'db_table': 'inv_materialType',
            },
        ),
        migrations.CreateModel(
            name='inv_position',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Position', models.CharField(max_length=15)),
            ],
            options={
                'db_table': 'inv_position',
            },
        ),
        migrations.CreateModel(
            name='inv_products',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('productName', models.CharField(max_length=50)),
                ('productDescription', models.CharField(max_length=250)),
                ('productModel', models.CharField(max_length=50)),
                ('productCompany', models.CharField(max_length=20)),
                ('productPackage', models.CharField(max_length=15)),
                ('productPurchasable', models.CharField(choices=[('YES', 'yes'), ('NO', 'no')], default='YES', max_length=5)),
                ('productPurchaseListPrice', models.CharField(max_length=10)),
                ('productPriceTolerancePercent', models.CharField(max_length=10)),
                ('productSellable', models.CharField(choices=[('YES', 'yes'), ('NO', 'no')], default='YES', max_length=5)),
                ('productSerialControlled', models.CharField(choices=[('YES', 'yes'), ('NO', 'no')], default='YES', max_length=5)),
                ('productBatchTracked', models.CharField(choices=[('YES', 'yes'), ('NO', 'no')], default='YES', max_length=5)),
                ('standardCost', models.CharField(max_length=10)),
                ('reorderLevel', models.CharField(max_length=10)),
                ('reorderQty', models.CharField(max_length=15)),
                ('productType', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.inv_materialType')),
            ],
            options={
                'db_table': 'inv_products',
            },
        ),
        migrations.CreateModel(
            name='inv_status',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('statusName', models.CharField(max_length=15)),
            ],
            options={
                'db_table': 'inv_status',
            },
        ),
        migrations.CreateModel(
            name='inv_UnitOfMeasure',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('measurementName', models.CharField(max_length=15)),
            ],
            options={
                'db_table': 'inv_UnitOfMeasure',
            },
        ),
        migrations.CreateModel(
            name='inv_warehouse',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('warehouseName', models.CharField(max_length=15)),
                ('locationId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.inv_location')),
                ('statusId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.inv_status')),
            ],
            options={
                'db_table': 'inv_warehouse',
            },
        ),
        migrations.CreateModel(
            name='jts_departments',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('departmentName', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'jts_departments',
            },
        ),
        migrations.CreateModel(
            name='jts_employees',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fullName', models.CharField(max_length=25)),
                ('userName', models.CharField(max_length=25)),
                ('emailId', models.CharField(max_length=30)),
                ('password', models.CharField(max_length=30)),
                ('gender', models.CharField(choices=[('MALE', 'male'), ('FEMALE', 'female'), ('OTHERS', 'others')], max_length=7)),
                ('bloodGroup', models.CharField(max_length=3)),
                ('dateOfBirth', models.DateField(max_length=8)),
                ('dateOfJoining', models.DateField(default=datetime.date.today, max_length=8)),
                ('dateOfExit', models.DateField(blank=True, default=None, max_length=8, null=True)),
                ('departmentId', models.CharField(max_length=10)),
                ('Address', models.CharField(max_length=100)),
                ('jobRole', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.emp_jobrole')),
                ('managerId', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='manager', to='InventoryApp.jts_employees')),
                ('reportingHr', models.ForeignKey(blank=True, default=None, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='reporting_hr', to='InventoryApp.jts_employees')),
                ('workLocation', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.emp_location')),
            ],
            options={
                'db_table': 'jts_employees',
            },
        ),
        migrations.AddField(
            model_name='jts_departments',
            name='departmentHead',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.jts_employees'),
        ),
        migrations.AddField(
            model_name='inv_products',
            name='productUOM',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.inv_UnitOfMeasure'),
        ),
        migrations.AddField(
            model_name='inv_products',
            name='statusId',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.inv_status'),
        ),
        migrations.AddField(
            model_name='inv_position',
            name='statusId',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.inv_status'),
        ),
        migrations.AddField(
            model_name='inv_position',
            name='warehouseId',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.inv_warehouse'),
        ),
        migrations.AddField(
            model_name='inv_location',
            name='statusId',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.inv_status'),
        ),
        migrations.AddField(
            model_name='family_details',
            name='employeeId',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='InventoryApp.jts_employees'),
        ),
    ]