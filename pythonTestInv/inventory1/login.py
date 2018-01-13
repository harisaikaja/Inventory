import MySQLdb
import json
import collections
import datetime
db =MySQLdb.connect (host = 'localhost',user = 'root',passwd = 'root',db = 'inventory')
#DB_NAME = 'inventory'
#DB_USER = 'root'
#DB_PASS = 'root'

query = db.cursor()
def dump_date(o):
	if isinstance(o, datetime.datetime):
		return thing.isoformat()
	return str(o)

try:
	loop = 'true'
	while (loop == 'true'):
		username = raw_input("Username: ")
		password = raw_input("password: ")
		usertype = raw_input("Usertype: ")
		if (query.execute("select * from user where userName = '%s' and password = '%s'" % (username,password))):
			db.commit();
			print "logged in"
		else:
			print "invalid username or password"
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
                		print(json.dumps(user_list, default = dump_date, indent =2))
except:
	print "invalid username and password"
finally:
	db.close()
