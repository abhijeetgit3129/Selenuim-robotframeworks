import json

import requests

res=requests.get("http://216.10.245.166/Library/GetBook.php?AuthorName=Rahul sheety")

print(type(res.text))

print(res.status_code)
res_1=json.loads(res.text)


print(res.text)



print("*************************************************************")
print(type(res_1))
print(res_1[1]['book_name'])
