dict1={5:"abhijeet",90:"rupali",4:"rohit"}


print(dict1)

dict2={}


list1=list(dict1.keys())



list1.sort()



for i in list1:
    dict2[i]=dict1[i]
print(dict2)

print("***************************************************************")
dict3={"abhijeet":5,"rupali":90,"rohit":4}

dict4={}


list2=list(dict3.keys())

print(dict3)
list2.sort()


for i in list2:
    dict4[i]=dict3[i]

print(dict4)

print(dict4.values())
print(dict4.items())

for i in dict4.keys():
    print(dict4.get(i))

print("**********************************************************************************************")

dict5={"abhijeet":5,"rupali":90,"rohit":4}
print(dict5)
dict6={}

for i ,j in dict5.items():
    dict6[j]=i
print(dict6)
print("**********************************************************************************************")


str1="abhijeet"
dic7={}
for i in str1:
    if i in dic7.keys():
        dic7[i]=dic7[i]+1
    else:
        dic7[i]=1
print(str1)
print(dic7)

print("*******************************reverse list***************************************************************")

list4=[9,3,56,7,9,0,5,7]
list5=[]

for i in list4[::-1]:
    list5.append(i)
print(len(list4))
print(list4)
print(list5)

print("**************************************listoperations***********************************************************************")

list6=[4,6,8,12,4,6,78,90,4,88]

list6.sort(reverse=True)
print(list6)
list6.sort(reverse=False)
print(list6)

list6.insert(0,20)
print(list6.count(4))
list6.reverse()
print(list6)

list7=list6.copy()
list6.pop(0)
print(list6)
print(list7)

list77=list6+list7
print(list77)
set1=set(list77)

print(set1)

print("**************************************************set***************************************************************")

str1="abhijeet"
str2="waghmare"

s1=set(str1)
s2=set(str2)

print(str1)
print(str2)
lst=s1&s2  #common alphabet extract


print(lst)
print("*******************************************values sorting************************************")
dic8={'abhijeet': 90, 'rupali': 190, 'rohit': 4}
print(dic8)
lst2=sorted(dic8.items(),key= lambda x:x[1])

print(lst2)

lst2=sorted(dic8.items(),key= lambda x:x[0])
print(lst2)
print("**********************maxium number in list*********************************************************")

list11=[9,2,6,7,123,5,4,678]
max_num=list11[0]

for i in list11:
    if max_num <i:
        max_num=i
print(max_num)
