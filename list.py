list1=[1,2,3,0,66,0,8,5,0]
print(list1)
list1.insert(3,0)
print(list1)


for i in list1:
    if i==0:
        list1.remove(i)
        list1.append(i)


print(list1)

list2=list1.copy()
print("****************************")
print(list2)

list2.pop()

print(list2)

list2.pop(6)

print(list2)

print(list2.count(1))
print(list2.count(0))


print("********************************")

name1="abhijeet"
print(list1.count('a'))
print("********************")
dic1={}
max=0
for i in name1:
    if max < name1.count(i):
        max=name1.count(i)

print(max)

