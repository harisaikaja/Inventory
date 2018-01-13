#import cgitb
#cgitb.enable()
import web
#from web.wsgiserver import CherryPyWSGIServer
from web import ctx
import requests
import urlparse
import re
import subprocess
import sys
import os
import random
from passlib.hash import sha512_crypt
import MySQLdb
import collections
import json
import datetime
import urllib
db = MySQLdb.connect("localhost","root","root","inventory")
cursor = db.cursor()
status1 = {'errorcode': '0'}
status2 = {'errorcode' : '1'}
web.config.debug = False
#global data
#WEB_HOME='/usr/local/g4g-home-automation/'
WEB_HOME='./'
if(len(sys.argv)>1):
  WEB_PORT=sys.argv[1]
else:
  WEB_PORT="20105" #default port

if(len(sys.argv)>2):
   SESSION_TIME_OUT=int(sys.argv[2])
else:
   SESSION_TIME_OUT=300 #default session timeout

sys.path.insert(0, WEB_HOME+'DB_Layer')
#import recharge_info_DB_api
#import authen_util
#CherryPyWSGIServer.ssl_certificate = WEB_HOME + "certificates/authenticationsvr.crt"
##CherryPyWSGIServer.ssl_certificate = "/etc/letsencrypt/live/jtaha.in/cert.pem"
#CherryPyWSGIServer.ssl_private_key = WEB_HOME + "certificates/authenticationsvr.key"
##CherryPyWSGIServer.ssl_private_key = "/etc/letsencrypt/live/jtaha.in/privkey.pem"
##CherryPyWSGIServer.ssl_certificate_chain= "/etc/letsencrypt/live/jtaha.in/chain.pem"
##CherryPyWSGIServer.ssl_certificate_chain= "/etc/letsencrypt/live/jtaha.in/fullchain.pem"
##CherryPyWSGIServer.ssl_certificate_chain= "/home/web/HomeAutomation_authen/lets-encrypt-x1-cross-signed.pem"

# Print necessary headers.
print ("Content-Type: text/html; charset=utf-8\n\n")
print ("Inventory_Info_Server Started \n")
#util_obj = authen_util.Authen_Util()
#retry_host = util_obj.get_my_local_ip()
svr_script_name="Inventory_Info_Server"

urls = (
         '/' , 'home',
         '/register' , 'register',
	  '/login' , 'login',
	'/newproduct','newproduct',
	'/updateproduct','updateproduct'
       )

class Inventory(web.application):
    def run(self, port=8080, *middleware):
        func = self.wsgifunc(*middleware)
        return web.httpserver.runsimple(func, ('0.0.0.0', port))

#app = web.application(urls, globals())
app = Inventory(urls, globals())

#web.config.session_parameters['timeout'] = SESSION_TIME_OUT #24 * 60 * 60, # 24 hours   in seconds
#web.config.session_parameters['ignore_expiry'] = False
#web.config.session_parameters['expired_message'] = '<h1>Sorry, Session expired or pervious session was not closed properly... </h1><a href="https://'+ retry_host +':1234">please click here to refresh </a>'

#if web.config.get('_session') is None:
#   session = web.session.Session(app, web.session.DiskStore('sessions_office'), initializer={'login_successful': False, 'intranet_request':False})
#    web.config._session = session
#else:
#    session = web.config._session


render = web.template.render(WEB_HOME+'/templates')

###################################################################################################################
def dump_date(o):
        if isinstance(o, datetime.datetime):
                return thing.isoformat()
        return str(o)
class home:
    def GET(self):
        print "deviseData_Info_Server: you have reached deviseData_Info_Server GET\n";
        return "deviseData_Info_Server: you have reached deviseData_Info_Server GET\n";
###################################################################################################################

class login:
	 def POST(self):
                print "deviseData_Info_Server:you have reached the login \n";

        	req_IP_address= web.ctx.ip
        	print "recharge_Info_Server: request is from IP address=" + req_IP_address
		data= web.data()
		data1 = json.loads(data)
		print data
		username = data1['userid']
		password = data1['password']
		jobrole = data1['jobrole']
		try:
			if (cursor.execute("select * from jts_employees where userName = '%s' and password = '%s' and jobRole = '%s'" % (username,password,jobrole))):
                        	return status1
                        	print "logged in"
                	else:
				return status2
                        	print "invalid username or password"

		except:
			db.close()
###################################################################################################################################################
class register:
         def POST(self):
                print "deviseData_Info_Server:you have reached registration \n";

                req_IP_address= web.ctx.ip
                print "recharge_Info_Server: request is from IP address=" + req_IP_address
                data= web.data()
                data1 = json.loads(data)
                print data
		empid = data1['empId']
		name = data1['empName']
		email = data1['email']
		password = data1['password']
		gender = data1['gender']
		jobrole = data1['jobrole']
		status = data1['status']
		sql ="insert into jts_employees(empId,userName,emailId,password,gender,jobRole,statusId) values('%s','%s','%s','%s','%s','%s','%s')" %(empid,name,email,password,gender,jobrole,status)
		print sql
		try:
			cursor.execute(sql)
			db.commit()	
			return status1
			print "values"
		except(MySQLdb.error,MySQLdb.Warning) as e:
			return status2
			print e
####################################################################################################################################################
class newproduct:
         def POST(self):
                print "deviseData_Info_Server:you have reached registration \n";
                req_IP_address= web.ctx.ip
                print "recharge_Info_Server: request is from IP address=" + req_IP_address
                data= web.data()
                data1 = json.loads(data)
                print data
		sql  = "insert into inv_product(productId,productName,productModel,productCompany,productPackage,standardCost,reorderLevel,reorderQty,statusId)values('%s','%s','%s','%s','%s','%s','%s','%s','%s')" %(productid,productname,productmodel,productcompany,productpackage,standardcost,reorderlevel,reorderqty,statusid)
		print sql
		try:
			cursor.execute(sql)
			db.commit()
			return status1
			print "values entered"
		except(MySQLdb.error,MySQLdb.Warning) as e:
			return status2
			print e
		
#####################################################################################################################################################
class addlocation:
         def POST(self):
                print "deviseData_Info_Server:you have reached registration \n";

                req_IP_address= web.ctx.ip
                print "recharge_Info_Server: request is from IP address=" + req_IP_address
                data= web.data()
                data1 = json.loads(data)
                print data
		sql = "insert into inv_location(locationId,locationName,locationAddress,statusId) values('%s','%s','%s','%s')" % (locationid,locationname,locationaddress,statusid)
		print sql
		try:
			cursor.execute(sql)
			db.commit()
			return status1
			print "values inserted"
		except(MySQLdb.error,MySQLdb.Warning) as e:
			return status2
			print e

########################################################################################################################
if __name__ == "__main__":
   web.internalerror = web.debugerror
   app.run(port=int(WEB_PORT))

