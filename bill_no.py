import datetime
import mysql.connector as sql
mydb=sql.connect(host="localhost",user="root",passwd="",database="pos")
d = datetime.datetime.now()
shop_name="jk"+(str(d.year)+str(d.month)+str(d.day))
c=0
f=0
temp=1
class BillGen:
    def callbill():
        #Bill no Generating For Loop
        global customerBillNO
        global temp
        mycursor = mydb.cursor()
        mycursor.execute("SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'pos' AND table_name = '"+shop_name+"';")
        for i in mycursor:
            f=i[0]
        if(f==0):
            customerBillNO=shop_name+str('1')
        else:
            mycursor.execute("SELECT * FROM "+shop_name)
            myresult = mycursor.fetchall()
            for x in myresult:
                x
            if(x[0]==temp):
                temp+=2
                customerBillNO=shop_name+str(x[0])
            else:
                customerBillNO=shop_name+str(x[0]+1)
        return customerBillNO
        
