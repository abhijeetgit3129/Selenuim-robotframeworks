a=int(input("enter number:"))
#print(a)

if a==1:
    print(a,': is a prime number')

elif a>1:
    for i in range(2,a):
        if a%i==0:
            print(a,": is not prime number")
            print(i,"times",a//i,"is",a)
            break
    else:
        print(a,": is a prime number")






else:
    print(a,": is a prime number")
