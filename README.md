# PYTHON
Point of sale System Project
First add the local host database connection
That Line
mydb=sql.connect(host="localhost",user="yourUserName",passwd="yourHostPassword",database="pos")

To excute the code is python home.py
select option

if(c==1):
    print("Welcome to item Add section")
    item.Item_add()
elif(c==2):
    print("Welcome to item view")
    view.View()
elif(c==3):
    print("item Purched")
    ctm.Customer()
elif(c==4):
    print("Item update")
    u.Update()
based on option to produced the results:
OUTPUT:

python home.py
Welcome to pos System
Enter the Options1
Welcome to item Add section
Enter Item Name:box
Enter Item Details:box in container
Enter the Orginal Price:250
Enter the Product Tax:18  ##how many precentage of tax to be add
How many Precentage?16    ##How many precentage of profit
335         ### sale price
How many Item:52


python home.py
Welcome to pos System
Enter the Options2
Welcome to item view
(1, 'pen', '& g:/Project_python/venv/Scripts/python.exe g:/Project_python/py_file/pos/update.py', 3.0, 2, 50, 5, 1057.0, datetime.datetime(2020, 4, 5, 12, 25, 20))
(2, 'pencil', 'black write', 2.9, 3, 30, 4, 1477.0, datetime.datetime(2020, 4, 5, 13, 12, 10))
(3, 'scale', 'draw a line', 3.2, 18, 30, 5, 986.0, datetime.datetime(2020, 4, 5, 12, 18, 6))
(4, 'earser', 'clean a draw', 1.2, 18, 30, 2, 492.0, datetime.datetime(2020, 4, 5, 11, 44))
(5, 'sharpner', 'to sharp pencil', 5.0, 18, 20, 7, 10.0, datetime.datetime(2020, 4, 5, 12, 10, 12))
(6, 'box', 'box in container', 250.0, 18, 16, 335, 52.0, datetime.datetime(2020, 5, 28, 10, 38, 9))


python home.py
Welcome to pos System
Enter the Options3
item Purched
Enter the Customer Name:jk
Enter the Customer Mobile NO:8012553355
Item to be Added:(Press 1 or 0)1
New Item Number1
How many item2
Item to be Added:(Press 1 or 0)1
New Item Number2
How many item3
Item to be Added:(Press 1 or 0)1
New Item Number3
How many item5
Item to be Added:(Press 1 or 0)6
0
    JK Shop
    18/3A,Subramaniya puram,    Date:  2020-05-28
JK  Tiruchendur                 BillNO:jk20205281
    8012553355

Serial no   Product_Name    product_Count   product_Price

1            pen                 2.0         10

2            pencil              3.0         12

3            scale               5.0         25

                                  Total      47
                "Thank You || visit Again"




python home.py
Welcome to pos System
Enter the Options4
Item update
Enter the Update the Item:
Enter the item_no4
What do yo update(1 or 0):1
ENTER THE UPDATE TYPE(in,id,or,pt,ii,ic)in
Enter the item_name:boxs
What do yo update(1 or 0):0


in-->Item name
id-->Item Details
or-->Original Rate
pt-->produc Tax
ii->Item Interest
ic-->Item Count

