num=int(input("enter number:"))
num1=num
sum=0
while(num>0):
    rev=num%10
    sum=sum*10+rev
    num=num//10

if (num1==sum):
    print("number is palindrome:",sum)
else:
    print("number is not palindrome:",sum)


