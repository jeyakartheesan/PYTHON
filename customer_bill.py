import mysql.connector as sql
import bill_no
import datetime
d = datetime.datetime.now()
mydb=sql.connect(host="localhost",user="root",passwd="",database="pos",buffered=True)
mycursor = mydb.cursor(buffered=True)

shop_name="jk"+(str(d.year)+str(d.month)+str(d.day))
create= mydb.cursor()
f=0

class Bill:
    def __init__(self):
        mycursor = mydb.cursor(buffered=True)
        mycursor.execute("SELECT * FROM item")
        myresult = mycursor.fetchall()
        item=int(input("New Item Number"))
        item_count=float(input("How many item"))
        for x in myresult:
            if(item==x[0] and item_count!=0):
                if(x[7]!=0):
                    product_amount=item_count*x[6]
                    mycursor.execute("SELECT * FROM "+shop_name)
                    for i in mycursor:
                        i
                    customerBillNo=i[1]
                    up_count=x[7]
                    mycursor = mydb.cursor(buffered=True)
                    mycursor.execute("SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'pos' AND table_name = '"+customerBillNo+"';")
                    for i in mycursor:
                        f=i[0]
                    if(f==1):
                        mycursor.execute("SHOW TABLES")
                        for y in mycursor:
                          
                            if(customerBillNo==y[0]):
                               
                                up_count=up_count-item_count
                                
                                if(up_count>=0):
                                    mycursor = mydb.cursor(buffered=True)
                                    mycursor.execute("SELECT * FROM "+customerBillNo)
                                    myresult = mycursor.fetchall()
                                    for j in myresult:
                                        j
                                    if(j[2]==item):
                                        item_count=float(j[5])+item_count
                                        product_total=item_count*int(j[4])
                                        sql = "UPDATE "+customerBillNo+" SET product_count = '"+str(item_count)+"' WHERE product_id = '"+str(item)+"'"
                                        mycursor.execute(sql)
                                            
                                        sql = "UPDATE "+customerBillNo+" SET total = '"+str(product_total)+"' WHERE product_id = '"+str(item)+"'"
                                        mycursor.execute(sql)
                                        mydb.commit()

                                    else:
                                        
                                        ex = mydb.cursor(buffered=True)
                                        sql = "INSERT INTO "+customerBillNo+" (bill_no,product_id,product_name,product_price,product_count,total) VALUES (%s, %s,%s,%s,%s,%s)"
                                        val = (customerBillNo,item,x[1],x[6],item_count,product_amount)
                                        ex.execute(sql, val)
                                        mydb.commit()
                                        ex.close()
                                        sql = "UPDATE item SET item_count = '"+str(up_count)+"' WHERE item_no = '"+str(x[0])+"'"
                                        mycursor.execute(sql)
                                        mycursor.close()
                                        mydb.commit()           
                                else:
                                    print("Item not Avilable")  
                                
                    else:
                        up_count=up_count-item_count
                        if(up_count>=0):
                            create.execute("CREATE TABLE "+customerBillNo+ "(id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,bill_no VARCHAR(30) NOT NULL,product_id int(5),product_name varchar(50),product_price int(10),product_count float(10),total int(10))")   
                            
                            #mycursor = mydb.cursor(buffered=True)
                            mycursor.execute("SELECT * FROM "+customerBillNo)
                            myresult = mycursor.fetchall()
                            j=[0,0,0]
                            for j in myresult:
                                j
                            if(j[2]==item):
                                item_count=float(j[5])+item_count
                                product_total=item_count*int(j[4])
                                sql = "UPDATE "+customerBillNo+" SET product_count = '"+str(item_count)+"' WHERE product_id = '"+str(item)+"'"
                                mycursor.execute(sql)
                                        
                                sql = "UPDATE "+customerBillNo+" SET total = '"+str(product_total)+"' WHERE product_id = '"+str(item)+"'"
                                mycursor.execute(sql)
                                mydb.commit()
                            ex = mydb.cursor(buffered=True)
                            sql = "INSERT INTO "+customerBillNo+" (bill_no,product_id,product_name,product_price,product_count,total) VALUES (%s, %s,%s,%s,%s,%s)"
                            val = (customerBillNo,item,x[1],x[6],item_count,product_amount)
                            ex.execute(sql, val)
                            mydb.commit()
                            ex.close()
                            sql = "UPDATE item SET item_count = '"+str(up_count)+"' WHERE item_no = '"+str(x[0])+"'"
                            mycursor.execute(sql)
                            mycursor.close()
                            mydb.commit()
                        else:
                            print("Item not Avilable")
                else:
                    print("Invalid Product stack")
            

#Bill()
                    
