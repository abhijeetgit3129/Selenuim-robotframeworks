str1="abhijeet"
str2=""
for i in str1:

    str2=i+str2

print(str2)

num=123456
rev_num=0
while num>0:
    rem=num%10
    rev_num=rev_num*10+rem
    num=num//10

print(rev_num)


list1=[23,5,67,78,34,22,1,3,6,1]

print(list1)
list2=[]


for i in list1[::-1]:
    list2.append(i)

print(list2)
