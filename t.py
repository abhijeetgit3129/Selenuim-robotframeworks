list1=[8,4,2,1,3,6,7,5]

list2=[]

for i in list1[::-1]:
    list2.append(i)

print(list1)
print(list2)


str1="abhijeet"

dic1={}

for i  in str1:
    if i not in dic1.keys():
        dic1[i]=1
    else:
        dic1[i]=dic1[i]+1

print(dic1)
dic2={}

list3=[]

for i in dic1.keys():
    list3.append(i)
list3.sort()
print(list3)

for i in list3:
    dic2[i]=dic1[i]

print("*************************")
print(dic1)
print(dic2)

dic4={'a': "1", 'b': 1, 'e': 2, 'h': 1, 'i': 1, 'j': 1, 't': 1}
dic3={}

for i,j in dic4.items():
    dic3[j]=i

print(dic3)
