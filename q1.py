#write python program to find out common letters between two strings

str1=input("enter input:")
str2=input("enter input:")

s1=set(str1)
s2=set(str2)

print(s1&s2)


