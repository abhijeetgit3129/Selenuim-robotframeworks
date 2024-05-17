#write a python program to convert two lits into dictionary

list1=["abhijeet","balbhim","waghmare"]
list2=["tiger","tiger1","tiger2"]

dic1=dict((zip(list1,list2)))

print(dic1)

for i in dic1.items():
    print(i)

dic2={}
for i ,j in dic1.items():
    dic2[j]=i

print(dic1)
print(dic2)

l3=[]
l4=[]

for i in dic2.keys():
    l3.append(i)
for i in dic2.values():
    l4.append(i)


print(l3)
print(l4)
