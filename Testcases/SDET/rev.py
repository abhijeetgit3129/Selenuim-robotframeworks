name='abhijeet'
name1=''
for i in name[::-1]:
    name1=name1+i

print(name)
print(name1)

print("************************************")
list1=[1,"abhijeet","tiger","rupali"]
list2=[]

for i in list1[::-1]:
    list2.append(i)

print(list1)
print(list2)
print(end='\n')

print("************************************")

number=121
number1=number
sum=0

while(number>0):
    rem=number %10
    sum=sum*10+rem
    number=number//10

print(number)
print(number1)
print(sum)
assert sum == number1


print("***********************")


list3=[5,6,2,4,1,5,7,89,777]
max_num=list3[0]

for i in list3:
    if max_num <i:
        max_num=i

print(max_num)
print("********************************")
list4=[5,6,2,4,1,5,7,89,777]
tmp=0
print(list4)
for i in range(len(list4)):
    for j in range(len(list4)-1):
        if list4[j]>list4[j+1]:
            tmp=list4[j]
            list4[j]=list4[j+1]
            list4[j+1]=tmp
print(list4)


print("*************************************")
list5=[5,6,2,4,1,5,7,89,777]

print(list5)

list5.reverse()

print(list5)

list6=list5.copy()
print(list6)

print("*** count of 5 *****")

print(list6.count(5))

print("***pop ****")
print(list6)
list6.pop()
print(list6)

list6.remove(1)

print(list6)


list6.sort()

print(list6)

print("******extend***********")

list6.extend(list5)

print(list6)

set1=set(list6)

print(set1)
