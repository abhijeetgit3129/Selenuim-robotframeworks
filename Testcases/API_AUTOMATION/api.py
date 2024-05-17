import requests

url='http://216.10.245.166/Library/GetBook.php'

res=requests.get(url=url,params={"AuthorName":"Rahul sheety"},headers={'Transfer-Encoding': 'chunked', 'Content-Type': 'application/json;charset=UTF-8'})
print(len(res.json()))
print(res.json())
print(type(res.json()))



#print(res.text['book_name'])


