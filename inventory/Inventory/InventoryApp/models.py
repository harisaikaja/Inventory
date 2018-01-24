# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
import django
from django import utils
#from datetime import datetime,date
from django.utils import timezone
# Create your models here.
class inv_status(models.Model):

	#statusId = models.CharField(max_length=10,primary_key = True)
	statusName = models.CharField(max_length=15)

	class Meta:
		db_table = "inv_status"

class inv_location(models.Model):

	#locationId = models.CharField(max_length=10,primary_key = True,default=0)
	locationName = models.CharField(max_length=15)
	locationAddress = models.CharField(max_length=50)
	statusId = models.ForeignKey(inv_status, on_delete=models.CASCADE)

	class Meta:
		db_table = "inv_location"

class inv_warehouse(models.Model):

	#warehouseId = models.CharField(max_length=10,primary_key = True,default=0)
	warehouseName = models.CharField(max_length=15)
	locationId = models.ForeignKey(inv_location, on_delete=models.CASCADE)
	statusId = models.ForeignKey(inv_status, on_delete=models.CASCADE)

	class Meta:
		db_table = "inv_warehouse"
		
class inv_position(models.Model):
	
	Position = models.CharField(max_length = 15)
	warehouseId = models.ForeignKey(inv_warehouse, on_delete=models.CASCADE)
	statusId = models.ForeignKey(inv_status, on_delete=models.CASCADE)
	
	class Meta:
		db_table = "inv_position"
		
class inv_materialType(models.Model):
	
	materialType = models.CharField(max_length=15)
	
	class Meta:
		db_table = "inv_materialType"
		
class inv_UnitOfMeasure(models.Model):
	
	measurementName = models.CharField(max_length=15)
	
	class Meta:
		db_table = "inv_UnitOfMeasure"
		
class inv_products(models.Model):
	YES = 'YES'
	NO = 'NO'
	inv_Choices = (
		('YES','yes'),
		('NO','no'),
	)
	productName = models.CharField(max_length=50)
	productDescription = models.CharField(max_length = 250)
	productModel = models.CharField(max_length = 50)
	productCompany = models.CharField(max_length = 20)
	productPackage = models.CharField(max_length = 15)
	productType = models.ForeignKey(inv_materialType, on_delete=models.CASCADE)
	productUOM = models.ForeignKey(inv_UnitOfMeasure, on_delete=models.CASCADE)
	productPurchasable = models.CharField(max_length = 5,choices = inv_Choices,default = YES)
	productPurchaseListPrice = models.CharField(max_length = 10)
	productPriceTolerancePercent = models.CharField(max_length = 10)
	productSellable = models.CharField(max_length = 5,choices = inv_Choices,default = YES)
	productSerialControlled = models.CharField(max_length = 5,choices = inv_Choices,default = YES)
	productBatchTracked = models.CharField(max_length = 5,choices = inv_Choices,default = YES)
	standardCost = models.CharField(max_length = 10)
	reorderLevel = models.CharField(max_length = 10)
	reorderQty = models.CharField(max_length = 15)
	statusId = models.ForeignKey(inv_status, on_delete=models.CASCADE)
	
	class Meta:
		db_table = "inv_products"
		
class emp_jobrole(models.Model):
	jobRole = models.CharField(max_length = 20)
	
	class Meta:
		db_table = "emp_jobrole"

class emp_location(models.Model):
	location = models.CharField(max_length = 20)
	
	class Meta:
		db_table = "emp_location"
		
class jts_employees(models.Model):
	
	MALE = 'MALE'
	FEMALE = 'FEMALE'
	OTHERS = 'OTHERS'
	emp_Choices = (
		('MALE','male'),
		('FEMALE','female'),
		('OTHERS','others'),
	)
	
	fullName = models.CharField(max_length=25)
	userName = models.CharField(max_length=25)
	emailId = models.CharField(max_length=30)
	Password = models.CharField(max_length=250)
	gender = models.CharField(max_length=7,choices = emp_Choices)
	bloodGroup = models.CharField(max_length=3)
	dateOfBirth = models.DateField(max_length=8)
	dateOfJoining = models.DateTimeField(auto_now_add = True,blank=True,null=True)
	dateOfExit = models.DateField(max_length=8,default=None,null=True,blank=True)
	departmentId = models.CharField(max_length=10)
	managerId = models.ForeignKey('self',related_name = 'manager',default=None,null=True,blank=True,on_delete = models.CASCADE)
	reportingHr = models.ForeignKey('self',related_name = 'reporting_hr',default=None,null=True,blank=True,on_delete = models.CASCADE)
	jobRole = models.ForeignKey(emp_jobrole,on_delete = models.CASCADE)
	Address = models.CharField(max_length=100)
	workLocation = models.ForeignKey(emp_location,on_delete = models.CASCADE)
	#statusId = models.ForeignKey(inv_status,on_delete=models.CASCADE)
	
	class Meta:
		db_table = "jts_employees"
		
class jts_departments(models.Model):
	
	departmentName = models.CharField(max_length=30)	
	departmentHead = models.ForeignKey(jts_employees,on_delete=models.CASCADE)
	
	class Meta:
		db_table = "jts_departments"
		
class family_details(models.Model):
	
	MALE = 'MALE'
	FEMALE = 'FEMALE'
	OTHERS = 'OTHERS'
	gender_Choices = (
		('MALE','male'),
		('FEMALE','female'),
		('OTHERS','others'),
	)
	
	employeeId = models.ForeignKey(jts_employees,on_delete=models.CASCADE)
	Name = models.CharField(max_length=30)
	gender = models.CharField(max_length=8,choices=gender_Choices)
	DateOfBirth = models.DateField(max_length=8)
	Relationship = models.CharField(max_length=25)
	
	class Meta:
		db_table = "family_details"
		
class requisition(models.Model):
	userID = models.ForeignKey(jts_employees,on_delete = models.CASCADE)
	requisitionDate = models.DateField(auto_now_add = True,blank=True,null=True)
	duedate = models.DateField(max_length = 8)
	
	class Meta:
		db_table = "requisition"
	
	

