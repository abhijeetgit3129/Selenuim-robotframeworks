from collections import Counter

# Create a Counter object 'c' with specified initial counts for keys 'p', 'q', 'r', and 's'
c = Counter(p=4, q=2, r=0, s=5)

# Print the elements in the Counter 'c' as a list
#print(list(c.elements()))
#print(c.values())

print(tuple(c.elements()))
print(c.elements())

list1=[5,3,4,5]

for i in range (len(list1)):
    print(i)

