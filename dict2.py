dict1={7:"abhijeet",1:"Rupali",5:"rohit"}


list1=[]

for i in dict1.keys():
    list1.append(i)

list1.sort()

dict2={}


for i in list1:
    dict2[i]=dict1[i]


print(dict1)

print(dict2)

dict3={}

for i ,j in dict2.items():
    dict3[j]=i

print(dict3)

