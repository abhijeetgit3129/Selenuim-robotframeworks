list1=[9,5,2,1,4,7,99]

max=list1[0]

for i in list1:
    if max <i:
        max=i

print(max)



list2=[9,5,2,1,4,7,99]
print(list2)
tmp=0

for i in range(len(list2)):
    for j in range(len(list2)-1):
        if list2[j]>list2[j+1]:
            tmp=list2[j]
            list2[j]=list2[j+1]
            list2[j+1]=tmp

print(list2)

list3=[]

for i in list2[::-1]:
    list3.append(i)

print(list3)


str1="abhijeet"
str2=""


for i in str1[::-1]:
    str2=str2+i
print(str1)
print(str2)

print("************")
num=123456
print(num)
sum=0
while(num>0):
    rem=num%10
    sum=sum*10+rem
    num=num//10

print(sum)


print("********************")

num1=11


if (num1==1):
    print("number is not prime")
elif (num1>1):
    for i in range(2,num1):
        if (num1%i==0):

            print("number is not prime")
            break
    else:
        print("number is prime")
print("**************************************")

num3=4
n1=0
n2=1
sum=0


for i in range(5):
    print(sum)
    sum=n1+n2
    n1=n2
    n2=sum



print("**********************")

dic1={"name":"abhijeet","surname":"waghmare"}


dic2={}


for i,j in dic1.items():
    dic2[j]=i

print(dic1)
print(dic2)
