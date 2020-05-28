import mysql.connector as sql
mydb=sql.connect(host="localhost",user="root",passwd="",database="pos")
class Item_add:
    def __init__(self):
     item_name=input("Enter Item Name:")
     item_details=input("Enter Item Details:")
     orginal_rate=float(input("Enter the Orginal Price:"))
     product_tax=int(input("Enter the Product Tax:"))
     interest=int(input("How many Precentage?"))
     rate=orginal_rate+(orginal_rate*product_tax/100)+(orginal_rate*interest/100)
     rate=round(rate)
     rate=int(rate)
     print(rate)
     item_count=float(input("How many Item:"))
     mycursor = mydb.cursor()
     sql = "INSERT INTO item (item_name,item_details,original_rate,product_tax,item_interest,item_rate,item_count) VALUES (%s, %s,%s,%s,%s,%s,%s)"
     val = (item_name,item_details,orginal_rate,product_tax,interest,rate,item_count)
     mycursor.execute(sql, val)
     mydb.commit()
     
     """
     CREATE TABLE item (item_no INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,item_name varchar(100),item_details varchar(100),original_rate float(10),product_tax int(4),item_interest int(4),item_rate int(40),item_count float(10),date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
     """

    

