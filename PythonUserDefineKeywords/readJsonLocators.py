import json
import jsonpath

def read_json_locator(locatorName):
    f= open('D:/RobotFramework/AutomationUdemy2/APIAutomation/elements.json')
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response,locatorName)
    return value[0]
