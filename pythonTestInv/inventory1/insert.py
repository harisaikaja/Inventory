import MySQLdb
empid = raw_input("enter employee id:")
name = raw_input("enter employee name:")
emailid = raw_input("enter emailid:")
password = raw_input ("enter password:")
gender = raw_input("enter gender:")
jobrole = raw_input("enter job role:")
status = raw_input("enter status:")
db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                     user="root",         # your username
                     passwd="root",  # your password
                     db="inventory")        # name of the data base
#x = raw_input("enter empid")
# you must create a Cursor object. It will let
#  you execute all the queries you need
cur = db.cursor()
# Use all the SQL you like
sql ="insert into jts_employees(empId,userName,emailId,password,gender,jobRole,statusId) values('%s','%s','%s','%s','%s','%s','%s')" %(empid,name,emailid,password,gender,jobrole,status)

try:
	cur.execute(sql)
	db.commit()
	print "values inserted"
       # NB : you won't get an IntegrityError when reading
except (MySQLdb.Error, MySQLdb.Warning) as e:
	print(e)
	#return None
