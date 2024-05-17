list1=["abhijeet","tiger","waghmare","abhijeet","tiger","waghmare","abhijeet","tiger","killer"]

dic1={}

for i in list1:
    if i in dic1.keys():
        dic1[i]=dic1[i]+1
    else:
        dic1[i]=1

print(dic1)



dic2={}
print("*** revers key-value pair ***")

for i , j in dic1.items():
    dic2[j]=i
    #print(i)
    #print(j)

print(dic2)


print("*** key sorting ****")


list7=[]

for i in dic2.keys():
    list7.append(i)

print(list7)
list7.sort()

print(list7)

dic3={}

for i in list7:
    dic3[i]=dic2[i]
print(dic2)
print(dic3)




