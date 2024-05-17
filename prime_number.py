num=30
if num ==1:
    print("number is not prime")
elif num>1:
    for i in range(2,num):
        if (num %i)==0:
            print("number is not prime:",num)
            break
        #print("")
    else:
       print("number is prime:",num)





