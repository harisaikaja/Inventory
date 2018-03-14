# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
import django
from django import utils
#from datetime import date
from django.utils import timezone
# Create your models here.
class inv_status(models.Model):

	statusName = models.CharField(max_length=50)

	class Meta:
		db_table = "inv_status"

class inv_location(models.Model):

	locationName = models.CharField(max_length=15)
	locationAddress = models.CharField(max_length=50)
	statusId = models.ForeignKey(inv_status, on_delete=models.CASCADE)

	class Meta:
		db_table = "inv_location"

class inv_warehouse(models.Model):

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
		
class inv_materialCategory(models.Model):
	
	materialCategory = models.CharField(max_length = 20)
	
	class Meta:
		db_table = "inv_materialCategory"
		
class inv_UnitOfMeasure(models.Model):
	
	measurementName = models.CharField(max_length=15)
	
	class Meta:
		db_table = "inv_UnitOfMeasure"
		
class jts_products(models.Model):
	
	productName = models.CharField(max_length = 30)
	
	class Meta:
		db_table = "jts_products"
		
class inv_products(models.Model):
	YES = 'YES'
	NO = 'NO'
	inv_Choices = (
		('YES','yes'),
		('NO','no'),
	)
	productNo = models.CharField(max_length = 50,null =True,blank = True,default = '-')
	productName = models.CharField(max_length=100)
	productDescription = models.CharField(max_length = 250,null = True,blank = True,default = '-')
	productModel = models.CharField(max_length = 100,null = True,blank = True, default = '-')
	productCompany = models.CharField(max_length = 100,null = True,blank = True,default = '-')
	productPackage = models.CharField(max_length = 100,null = True,blank = True)
	productType = models.ForeignKey(inv_materialType, on_delete=models.CASCADE,default = 1)
	productUOM = models.ForeignKey(inv_UnitOfMeasure, on_delete=models.CASCADE,default = 1)
	productPurchasable = models.CharField(max_length = 5,choices = inv_Choices,default = YES)
	productPurchaseListPrice = models.IntegerField(default = 0)
	productPriceTolerancePercent = models.IntegerField(default = 0)
	productSellable = models.CharField(max_length = 5,choices = inv_Choices,default = YES)
	productSerialControlled = models.CharField(max_length = 5,choices = inv_Choices,default = YES)
	productBatchTracked = models.CharField(max_length = 5,choices = inv_Choices,default = YES)
	standardCost = models.IntegerField(default = 0)
	reorderLevel = models.IntegerField(default = 0)
	reorderQty = models.IntegerField(default = 0)
	productCategory = models.ForeignKey(inv_materialCategory,default = 1,on_delete = models.CASCADE)
	statusId = models.ForeignKey(inv_status, on_delete=models.CASCADE)
	
	class Meta:
		db_table = "inv_products"
		
class production(models.Model):
	
	productId = models.ForeignKey(inv_products,on_delete = models.CASCADE)
	baseQuantity = models.IntegerField()
	jts_products = models.ForeignKey(jts_products,on_delete = models.CASCADE)
	
	class Meta:
		db_table = "production"
		
class inv_quantity(models.Model):
	
	quantityId = models.AutoField(primary_key = True)
	productId = models.ForeignKey(inv_products,on_delete = models.CASCADE)
	quantity = models.IntegerField(default = 0)
	positionId = models.ForeignKey(inv_position,on_delete = models.CASCADE)
	locationId = models.ForeignKey(inv_location,on_delete = models.CASCADE,default = 1,null = True)
	warehouseId = models.ForeignKey(inv_warehouse,on_delete = models.CASCADE,default = 1,null = True)
	
	class Meta:
		db_table = "inv_quantity"
		
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
	dateOfJoining = models.DateField(auto_now_add = True,blank=True,null=True)
	dateOfExit = models.DateField(max_length=8,default=None,null=True,blank=True)
	departmentId = models.CharField(max_length=10)
	managerId = models.ForeignKey('self',related_name = 'manager',default=None,null=True,blank=True,on_delete = models.CASCADE)
	reportingHr = models.ForeignKey('self',related_name = 'reporting_hr',default=None,null=True,blank=True,on_delete = models.CASCADE)
	Address = models.CharField(max_length=100)
	workLocation = models.ForeignKey(emp_location,on_delete = models.CASCADE)
		
	class Meta:
		db_table = "jts_employees"
		
class session_history(models.Model):
	
	sessionId = models.AutoField(primary_key = True)
	userId = models.ForeignKey(jts_employees,db_column = 'userId', on_delete = models.CASCADE)
	loginTime = models.DateTimeField(auto_now_add = True,blank = True,null = True)
	
	class Meta:
		db_table = "session_history"
		
class jts_departments(models.Model):
	
	departmentName = models.CharField(max_length=30)	
	departmentHead = models.ForeignKey(jts_employees,on_delete=models.CASCADE)
	
	class Meta:
		db_table = "jts_departments"
		
class user_roles(models.Model):
	
	userId = models.ForeignKey(jts_employees,on_delete = models.CASCADE)
	jobRole = models.ForeignKey(emp_jobrole,on_delete = models.CASCADE)
	
	class Meta:
		db_table = "user_roles"
		
class user_menus(models.Model):
	
	jobRole = models.ForeignKey(emp_jobrole,on_delete = models.CASCADE)
	menuName = models.CharField(max_length = 30)
	
	class Meta:
		db_table = "user_menus"
		
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
	productCategory = models.ForeignKey(inv_materialCategory,default=1,on_delete=models.CASCADE)
	statusId = models.ForeignKey(inv_status,on_delete=models.CASCADE)
	
	class Meta:
		db_table = "requisition"
		
class requisition_details(models.Model):
	requisitionId = models.ForeignKey(requisition,on_delete = models.CASCADE)
	productId = models.ForeignKey(inv_products,on_delete = models.CASCADE)
	quantityRequested = models.IntegerField(default = 0)
	quantityIssued = models.IntegerField(default = 0)
	statusId = models.ForeignKey(inv_status,default = 6,on_delete=models.CASCADE)
	
	class Meta:
		db_table = "requisition_details"

class purchase_requisition(models.Model):
	orderId = models.AutoField(primary_key = True)
	requestedDate = models.DateField(auto_now_add = True,blank = True,null = True)
	dueDate = models.DateField(max_length = 8)
	sessionId = models.ForeignKey(session_history,db_column = 'sessionId',on_delete = models.CASCADE)
	status = models.ForeignKey(inv_status, default = 9,db_column ='statusId',on_delete = models.CASCADE)
	
	class Meta:
		db_table = "purchase_requisition"

class purchase_details(models.Model):
	purchaseOrderId = models.ForeignKey(purchase_requisition,db_column = 'purchaseorderId',on_delete = models.CASCADE)
	productId = models.ForeignKey(inv_products,db_column = 'productId',on_delete = models.CASCADE)
	quantityrequested = models.IntegerField(default=0)
	quantityreceived = models.IntegerField(default=0)
	status = models.ForeignKey(inv_status,default = 9,db_column = 'statusId',on_delete = models.CASCADE)
	
	class Meta:
		db_table = "purchase_details"
