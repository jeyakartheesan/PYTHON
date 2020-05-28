import mysql.connector as sql
mydb=sql.connect(host="localhost",user="root",passwd="",database="pos")
class View:
    def __init__(self):
        mycursor = mydb.cursor()
        mycursor.execute("SELECT * FROM item")
        myresult = mycursor.fetchall()
        for x in myresult:
            print(x)
