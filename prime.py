number=29
flag=False

if (number<=1):
    print("is not prime number")
    flag=False
elif (number>1):
    for i in range(2,number):
        if (number%i==0):
            flag=True
        break


if flag==True:
    print("number not is prime")

else:
    print("number is  prime")


#fibo


n1=0
n2=1
sum=0

num=3
for i in range(4):
    print(sum)

    n1=n2
    n2=sum
    sum=n1+n2



