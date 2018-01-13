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

DB_NAME = 'inventory'
DB_USER = 'root'
DB_PASS = 'root'
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

print "Inventory_Info_Server Started \n"
#retry_host = "johneda.ddns.net"
#util_obj = authen_util.Authen_Util()
#retry_host = util_obj.get_my_local_ip()
svr_script_name="Vehicle_Info_Server"

urls = ( 
         '/get_inventory'  , 'get_inventory')
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

################################################################################
class get_inventory:
      global responseString1 	
      def get_tables(cursor):
          cursor.execute('SHOW tables')
          return [r[0] for r in cursor.fetchall()] 

      def get_rows_as_dicts(cursor, table):
          cursor.execute('select * from {}'.format(table))
          columns = [d[0] for d in cursor.description]
          return [dict(zip(columns, row)) for row in cursor.fetchall()]

      def dump_date(thing):
          if isinstance(thing, datetime):
             return thing.isoformat()
             return str(thing)


      with closing(MySQLdb.connect(user=DB_USER, passwd=DB_PASS, db=DB_NAME)) as conn, closing(conn.cursor()) as cursor:
           dump = {}
           for table in get_tables(cursor):
               dump[table] = get_rows_as_dicts(cursor, table)
           print(json.dumps(dump, default=dump_date, indent=2))
           responseString1=json.dumps(dump, default=dump_date, indent=2)
           print(responseString1)
      def excute():
          print(json.dumps(dump, default=dump_date, indent=2))
          responseString1=json.dumps(dump, default=dump_date, indent=2)
          print(responseString1)
          return responseString1 
      def GET(self):
          print "inside Inventory"
          req_IP_address=web.ctx.ip
          form=web.input()
          user=""
          if not hasattr(form,'user'):
             return responseString1
          else:
              user = form.user
              if user == "jts":
                 resStr=responseString1
              else:
                  resStr="Invalid User"  
                  return resStr
################################################################################

if __name__ == "__main__":
   web.internalerror = web.debugerror
   app.run(port=int(WEB_PORT))

 


