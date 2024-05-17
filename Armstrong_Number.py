num=371
num1=num
sum=0
while(num>1):
    rem=num%10
    sum=sum+(rem*rem*rem)
    num=num//10

if sum==num1:
    print("number is armstrong:",sum)
else:
    print("number is not armstrong:",sum)

