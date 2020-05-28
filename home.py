import item_add as item
import item_view as view
import customer as ctm
import update as u
print("Welcome to pos System")
c=int(input("Enter the Options"))
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

    