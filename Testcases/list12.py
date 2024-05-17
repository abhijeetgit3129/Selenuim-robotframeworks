list1=[9,89,1,2,'abhijeet',3,'tiger',4,"rupali",1.2,3.4,7,9]

print(list1)

list2=[]

list3=[]

list4=[]

for i in list1:
    if type(i)==int:
        list2.append(i)
    elif  type(i)==str:
        list3.append(i)
    else:
        list4.append(i)



set1=set(list2)

print("printing set1:",set1)
print("printing list2:",list2)
list2.pop()

print("list after pop:" , list2)

list2.pop(0)

print("list after pop:[0]th index:",list2)

list2.remove(89)
print("list after removing :",list2)

list5=list2.copy()

print("list5 copy from list2: priting list5:",list5)


#list5.append(list2)

#print(list5)

list5.extend(list2)

print("list5 after extend list2:",list5)

list5.insert(1,999)

print("list5 after insrting 999 at 1 st index:",list5)

print("count of 7 in list5 :",list5.count(7))

#list5.clear()

list5.reverse()
print("printing list5 after list5.reverse(): ",list5)

list5.sort()

print("printing list5 after list5.sort:",list5)


list5.sort(reverse=True)

print("printing list5 after list5.sort(reverse=True):",list5)

list5.sort(reverse=False)

print("printing list5 after list5.sort(reverse=False):",list5)


list6=[1,'we',4,'the',4,6,78,9]


for i in list6:
    print(i)

print("*********************")

for i in list6[::-1]:
    print(i)


