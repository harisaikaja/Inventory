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


web.config.debug = False

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
         '/add_curr_status' , 'add_curr_status',
         '/GetBal' , 'GetBal',
         '/TimeWarning' , 'TimeWarning',
         '/MinsUsed' , 'MinsUsed',
         '/LowChrgAlert' , 'LowChrgAlert',
	'/login' , 'login'
       )

class VehicleInfoServer(web.application):
    def run(self, port=8080, *middleware):
        func = self.wsgifunc(*middleware)
        return web.httpserver.runsimple(func, ('0.0.0.0', port))

#app = web.application(urls, globals())
app = VehicleInfoServer(urls, globals())

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

class home:
    def GET(self):
        print "deviseData_Info_Server: you have reached deviseData_Info_Server GET\n";
        return "deviseData_Info_Server: you have reached deviseData_Info_Server GET\n";
###################################################################################################################
class login:
    def GET(self):
        print "deviseData_Info_Server:you have reached the login \n";

        req_IP_address= web.ctx.ip
        print "recharge_Info_Server: request is from IP address=" + req_IP_address

        form =  web.input()
        print form

        userid=""
        if not hasattr(form, 'userid'):
           print "recharge_Info_Server: Username is missing from input \n"
          #It will return the username from the login screen
        else:
            userid = form.userid
        print "input machine id:", userid, ":"
        password=""
        if not hasattr(form, 'password'):
           print "recharge_Info_Server: Password is missing from input \n"
           #It will return the password from the login screen
        else:
            password = form.password
        print "input status:",password, ":"

       # retStr = "deviseData_Info_Server: user id:"
        #retStr += userid
        #retStr += " password:"
        #retStr += password
        #return retStr
	if (userid == '1234' and password == '1234'):
		return {"status 0": "successful"}
	else:
		return {"status 1": "unsucessfull"}
#######################################################################################

if __name__ == "__main__":
   web.internalerror = web.debugerror
   app.run(port=int(WEB_PORT))

