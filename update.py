import mysql.connector as sql
import datetime
mydb=sql.connect(host="localhost",user="root",passwd="",database="pos")
#  mycursor.execute("CREATE TABLE "+shop_name+ "(id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,bill_no VARCHAR(30) NOT NULL,customer_name VARCHAR(30) NOT NULL,customer_mobileno VARCHAR(11) NOT NULL,customer_item_count int(10),date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)")
class Update:
    def __init__(self):
        print("Enter the Update the Item: ")
        item=int(input("Enter the item_no"))
        ch=0
        while True:
            ch=int(input("What do yo update(1 or 0):"))
            if(ch==1):
                c='exit'
                c=input("ENTER THE UPDATE TYPE(in,id,or,pt,ii,ic)")
                if((c=="in")or(c=="id")or(c=="or")or(c=="pt")or(c=="ii")or(c=="ic")):
                    if(c=="in"):
                        de=input("Enter the item_name:")
                        table_name="item_name"
                    elif(c=="id"):
                        de=input("Enter the item_details:")
                        table_name="item_details"
                    elif(c=="or"):
                        de=float(input("Enter the original_rate:"))
                        table_name="original_rate"
                        mycursor = mydb.cursor()
                        mycursor.execute("SELECT * FROM item")
                        myresult = mycursor.fetchall()
                        for x in myresult:
                            if(x[0]==item):
                                rate=de+(de*x[4]/100)+(de*x[5]/100)
                                rate=round(rate)
                                rate=int(rate)
                                break
                        mycursor = mydb.cursor()
                        sql = "UPDATE item SET item_rate = '"+str(rate)+"' WHERE item_no = '"+str(item)+"'"
                        mycursor.execute(sql)
                        mydb.commit()  
                    elif(c=="pt"):
                        de=int(input("Enter the product tax:"))
                        table_name="product_tax"
                        mycursor = mydb.cursor()
                        mycursor.execute("SELECT * FROM item")
                        myresult = mycursor.fetchall()
                        for x in myresult:
                            if(x[0]==item):
                                rate=x[3]+(x[3]*de/100)+(x[3]*x[5]/100)
                                rate=round(rate)
                                rate=int(rate)
                                break
                        mycursor = mydb.cursor()
                        sql = "UPDATE item SET item_rate = '"+str(rate)+"' WHERE item_no = '"+str(item)+"'"
                        mycursor.execute(sql)
                        mydb.commit()  
                    elif(c=="ii"):
                        de=int(input("Enter the product interest:"))
                        table_name="item_interest"
                        mycursor = mydb.cursor()
                        mycursor.execute("SELECT * FROM item")
                        myresult = mycursor.fetchall()
                        for x in myresult:
                            if(x[0]==item):
                                rate=x[3]+(x[3]*x[4]/100)+(x[3]*de/100)
                                rate=round(rate)
                                rate=int(rate)
                                break
                        mycursor = mydb.cursor()
                        sql = "UPDATE item SET item_rate = '"+str(rate)+"' WHERE item_no = '"+str(item)+"'"
                        mycursor.execute(sql)
                        mydb.commit()  
                    elif(c=="ic"):
                        de=float(input("Enter the item count:"))
                        table_name="item_count"
                        mycursor = mydb.cursor()
                        mycursor.execute("SELECT * FROM item")
                        myresult = mycursor.fetchall()
                        for x in myresult:
                            if(x[0]==item):
                                de=de+x[7]
                                break
                    mycursor = mydb.cursor()
                    sql = "UPDATE item SET "+table_name+" = '"+str(de)+"' WHERE item_no = '"+str(item)+"'"
                    mycursor.execute(sql)
                    mydb.commit()    
                    
            else:
                break
#Update()