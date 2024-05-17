#write python program to count frequency of words appearing in a string

str1="abhijeeet"

dic1={}

for i in str1:
    if i not in dic1.keys():
        dic1[i]=1
    else:
        dic1[i]=dic1[i]+1
print(dic1)
