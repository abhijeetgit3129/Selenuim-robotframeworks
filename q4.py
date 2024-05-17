#max number in list

list1=[89,56,7,8,9,2,3,5,66,78,112,134,0]
max_num=list1[0]

for i in range(len(list1)):
    if max_num < list1[i]:
        max_num=list1[i]


print(max_num)

list2=[89,56,7,8,9,2,3,5,66,78,112,134,0]

list23=[]


for i in list2[::-1]:
    list23.append(i)

print(list2)
print(list23)


list3=[89,56,7,8,9,2,3,5,66,78,112,134,0]
print(list3)
rev_list=[]
tmp=0
for i in range(len(list3)):
    for j in range(len(list3)-1):
        if list3[j] > list3[j+1] :
            tmp=list3[j] 
            list3[j] =list3[j+1]
            list3[j+1]=tmp


print(list3)









