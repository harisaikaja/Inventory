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
import paho.mqtt.client as mqtt  #import the client1
import time
import os.path
from contextlib import closing
from datetime import datetime
import json
import MySQLdb

from passlib.hash import sha512_crypt

#from geolocation.main import GoogleMaps

#DB_NAME = 'inventory'
#DB_USER = 'root'
#DB_PASS = 'root'
db = MySQLdb.connect("localhost" , "root" , "root" , "inventory")
global json_Dict
query = db.cursor()
def on_connect(client, userdata, flags, rc):
        m="Connected flags"+str(flags)+"result code "\
        +str(rc)+"client1_id  "+str(client)
        print(m)
def on_message(client1, userdata, message):
    print("message received  "  ,str(message.payload.decode("utf-8")))


web.config.debug = False
IP = '148.72.244.57'
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
#import vehicle_info_DB_api
#import authen_util



# Print necessary headers.
print ("Content-Type: text/html; charset=utf-8\n\n")

print "Inventory server started \n"
#retry_host = "johneda.ddns.net"
#util_obj = authen_util.Authen_Util()
#retry_host = util_obj.get_my_local_ip()
svr_script_name="Vehicle_Info_Server"

urls = ( 
         '/login'  , 'login')
path='/'
class InventoryInfoServer(web.application):
    def run(self, port=8080, *middleware):
        func = self.wsgifunc(*middleware)
        return web.httpserver.runsimple(func, ('0.0.0.0', port))

#app = web.application(urls, globals())
app = InventoryInfoServer(urls, globals())

#web.config.session_parameters['timeout'] = SESSION_TIME_OUT #24 * 60 * 60, # 24 hours   in seconds
#web.config.session_parameters['ignore_expiry'] = False
#web.config.session_parameters['expired_message'] = '<h1>Sorry, Session expired or pervious session was not closed properly... </h1><a href="https://'+ retry_host +':1234">please click here to refresh </a>'

#if web.config.get('_session') is None:
#   session = web.session.Session(app, web.session.DiskStore('sessions_office'), initializer={'login_successful': False, 'intranet_request':False})
#    web.config._session = session
#else:
#    session = web.config._session


render = web.template.render(WEB_HOME+'/templates')
#query = db.cursor()

################################################################################
class login:
	def dump_date(o):
	        if isinstance(o,datetime):
        	        return thing.isoformat()
        	return str(o)

	def on_message(mosq, obj, msg):
		try:
			json_Dict = json_loads(msg.payload)
		except:
			print "invalid json data"
		try:
			username = json_Dict['userid']
			password = json_Dict['password']
			usertype = json_Dict['usertype']
			if (query.execute("select * from user where userName = '%s' and password = '%s'" % [username,password])):
				db.commit();
				print "errorcode = 0"
			else:
				print "invalid user name or password"
				if (usertype == 'storeincharge'):
					sql = "select requisitionId,userId,dueDate,status from requisition"
					cursor = db.cursor()
					cursor.execute(sql)
					data = cursor.fetchall()
					#Converting data into json
					user_list = []
					for row in data :
    						#print('row: ', row)
    						d = collections.OrderedDict()
    						d['requisitionId'] = row[0] #name
    						d['userId'] = row[1] #lname
    						d['dueDate'] = row[2] #email
						d['status'] = row[3]
    						user_list.append(d)
					#stuff = json.dumps(user_list)
                			print (json.dumps(user_list, default = dump_date, indent =2))
					return (json.dumps(user_list, default = dump_date, indent =2))
		except:
			print "invalid username and password"
		finally:
			db.close()
mqttc = mqtt.Client()
# Assign event callbacks
mqttc.on_message = on_message

################################################################################

if __name__ == "__main__":
   web.internalerror = web.debugerror
   app.run(port=int(WEB_PORT))

 


