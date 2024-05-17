list1=[1,1,2,4,5,6,6,6,7,7,8,9,10,10]
print(list1)
list2=[]
duplicate=[]
unique=[]

for i in range (len(list1)):
    for j in range(i+1,len(list1)):
        if list1[i]==list1[j] and list1[i] not in list2:
            list2.append(list1[i])


print(list2)

for i in list1:
    if i not in duplicate:
        duplicate.append(i)
    elif i not in unique:
        unique.append(i)

print(duplicate)
print(unique)


