import requests
import json
import jsonpath

api_url = "http://reqres.in/api/users?page=2"

#Make request
response1 = requests.get(api_url, verify=False)
print(response1.text)

#Validate status code
assert response1.status_code==200

#Parse response in Json format
Jsonres = json.loads(response1.text)
print(Jsonres)

#Apply JsonPath
jsonpathres= jsonpath.jsonpath(Jsonres,'total')
print(jsonpathres)

jsonpathres1= jsonpath.jsonpath(Jsonres, 'data[0].first_name')
print(jsonpathres1)

jsonpathres2= jsonpath.jsonpath(Jsonres, 'support.url')
print(jsonpathres2)

for val in Jsonres['data']:
    print(val['first_name'])

