import mysql.connector as sql
import datetime
import customer_bill as jk
import bill_no
mydb=sql.connect(host="localhost",user="root",passwd="",database="pos")
f=0        
ins=0
d = datetime.datetime.now()
shop_name="jk"+(str(d.year)+str(d.month)+str(d.day))
class Customer: 
    def __init__(self):
        customer_name=input("Enter the Customer Name:")
        customer_mobileno=input("Enter the Customer Mobile NO:")
        global customerBillNo
        customerBillNo=bill_no.BillGen.callbill()
        #insert value in the jk202043 that is jk+year+month+day
        mycursor = mydb.cursor()
        mycursor.execute("SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'pos' AND table_name = '"+shop_name+"';")
        for i in mycursor:
            f=i[0]
        if(f==1):
            mycursor.execute("SHOW TABLES")
            for y in mycursor:
                if(shop_name==y[0]):
                    ins=1
                    break

            if(ins==1):
                count=10
                #cursor = cnx.cursor(buffered=True)
                mycursor.fetchall()
                customerBillNo=bill_no.BillGen.callbill()
                mycursor = mydb.cursor(buffered=True)
                total=0
                sql = "INSERT INTO "+shop_name+" (bill_no,customer_name,customer_mobileno,customer_item_count,total) VALUES (%s, %s,%s,%s,%s)"
                val = (customerBillNo,customer_name,customer_mobileno,count,total)
                mycursor.execute(sql, val)
                mydb.commit()
                customerBillNo=bill_no.BillGen.callbill()
                mycursor.close
                ch=1
                while True:
                    ch=int(input("Item to be Added:(Press 1 or 0)"))
                    if(ch==1):
                        jk.Bill()
                    else:
                        break
                    
        else:
            mycursor.execute("CREATE TABLE "+shop_name+ "(id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,bill_no VARCHAR(30) NOT NULL,customer_name VARCHAR(30) NOT NULL,customer_mobileno VARCHAR(11) NOT NULL,customer_item_count int(10),total int(10),date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)")
            count=10
            total=0
            ex = mydb.cursor()
            sql = "INSERT INTO "+shop_name+" (bill_no,customer_name,customer_mobileno,customer_item_count,total) VALUES (%s, %s,%s,%s,%s)"
            val = (customerBillNo,customer_name,customer_mobileno,count,total)
            ex.execute(sql, val)
            mydb.commit()
            ex.close()
            customerBillNo=bill_no.BillGen.callbill()
            ch=1
            while True:
                ch=int(input("Item to be Added:(Press 1 or 0)"))
                if(ch==1):
                    jk.Bill()
                else:
                   break
        mycursor.execute("SELECT * FROM "+customerBillNo)
        myresult = mycursor.fetchall()
        for x in myresult:
            total+=x[6]
        mycursor = mydb.cursor()
        sql = "UPDATE "+shop_name+" SET customer_item_count = '"+str(x[0])+"' WHERE bill_no = '"+customerBillNo+"'"
        mycursor.execute(sql)

        mydb.commit()       

        sql = "UPDATE "+shop_name+" SET total = '"+str(total)+"' WHERE bill_no = '"+customerBillNo+"'"
        mycursor.execute(sql)

        mydb.commit() 

         
        mycursor = mydb.cursor()
        mycursor.execute("SELECT * FROM "+shop_name)
        myresult = mycursor.fetchall()
        for x in myresult:
            if(customerBillNo==x[1]):
                st=x[6]
                st=str(st)
                st=st[:10]
                print(f,"""
    JK Shop
    18/3A,Subramaniya puram,    Date:  {date}
JK  Tiruchendur                 BillNO:{bill}
    8012553355
""".format(date=st,bill=x[1]))

        mycursor = mydb.cursor()
        mycursor.execute("SELECT * FROM "+customerBillNo)
        myresult = mycursor.fetchall()
        print("""Serial no   Product_Name    product_Count   product_Price
        """)
        for x in myresult:
            print("""{s} \t     {n}    \t\t {pc} \t     {pp}    
""".format(s=x[0],n=x[3],pc=x[5],pp=x[6]))
        mycursor = mydb.cursor()
        mycursor.execute("SELECT * FROM "+shop_name)
        myresult = mycursor.fetchall()
        for x in myresult:
            if(customerBillNo==x[1]):
                print("""                                  Total      {t}    
                "Thank You || visit Again"
                """.format(t=x[5]))


    

#Customer()