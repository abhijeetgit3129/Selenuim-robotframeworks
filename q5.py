#swapping of key and value


dic1={"1":"abhijeet","2":"rupali","3":"waghmare"}

dic2={}


for i,j in dic1.items():
    dic2[j]=i

print(dic1)
print(dic2)


#key sorting


dic3={101:"abhijeet",20:"rupali",3:"waghmare",89:"tigerkiller"}
dic4={}

l1=sorted(dic3.keys())

for i in l1:
    dic4[i]=dic3[i]

print(dic3)
print(dic4)














