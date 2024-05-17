import json



j_s='{"name":"John", "age":30, "car":null}'
print(j_s)
print(type(j_s))

paras=json.loads(j_s)

print(type(paras))
print(paras['age'])


j1='{"responseApiVersion":"LATEST - V1","data":{"totalCount":1,"fetchRange":"1-1","fphistoryList":[{"id":44565,"qid":730109,"title":"Apache HTTP Server Multiple Vulnerabilities","ip":"10.20.32.216","dns":"www.b1.mlqa.rdlab.qualys.com","status":"Expired","requestedDate":"12/27/2021","reviewDate":"07/12/1909","expiryDate":"NA"}]}}'

print(type(j1))
print(j1)

j1_para=json.loads(j1)

print(type(j1_para))
print(j1_para)

print(j1_para['data']['fphistoryList'][0]['id'])

# Opening JSON file
f = open('data.json',)

# returns JSON object as
# a dictionary
data = json.load(f)
print(data['quiz'])
# Iterating through the json
# list
for i in data['quiz']:
    print(i)

# Closing file
f.close()
