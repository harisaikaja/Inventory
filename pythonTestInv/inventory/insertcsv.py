import csv
import MySQLdb
db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                     user="root",         # your username
                     passwd="root",  # your password
                     db="inventoryapp")
cursor = db.cursor()
csv_data = csv.reader(file('inventory.csv'))
for row in csv_data:
	cursor.execute("INSERT INTO inv_products(productName,productDescription,productModel,productCompany,productPackage,productPurchasable,productPurchaseListPrice,productPriceTolerancePercent,productSellable,productSerialControlled,productBatchTracked,standardCost,reorderLevel,reorderQty,productType_id,productUOM_id,statusId_id) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)",row)

db.commit()
cursor.close()
print "added successfully"
