import pandas as pd
import math

file = pd.read_excel('playTennis.xlsx')
print(file)

dfOutlook = pd.DataFrame(file['Outlook'])
dfTemp    = pd.DataFrame(file['Temperature'])
dfWind    = pd.DataFrame(file['Wind'])
dfHumidity= pd.DataFrame(file['Humidity'])

dfOutput  = pd.DataFrame(file['Output'])

def calcEntropy(dfOutput):
    entropy = 0
    pos_count = 0
    neg_count = 0
    for data in dfOutput['Output']:
        if data == 'Yes':                #this code is stupid and cannot be called the explicit name 
            pos_count+=1
        else: 
            neg_count+=1
    if(pos_count == 0 or neg_count == 0):
        return 0
    pos_count = pos_count/(pos_count+neg_count)
    neg_count = 1 - pos_count
    entropy = -(pos_count)*math.log2(pos_count) - (neg_count)*math.log2(neg_count)
    return entropy

entropy = calcEntropy(dfOutput)

dfTempOut = pd.DataFrame(file, columns= ['Temperature','Output'])
print(dfTempOut)

def extractAtt(doubleDF, name):
    AttList = []
    ifEscape = False
    for row in doubleDF[name]:
        if not AttList:
            AttList.append(row)
        else:
            for ins in AttList:
                if row == ins:
                    ifEscape = True
                    break
            if not ifEscape:
                AttList.append(row)
            else:
                ifEscape = False
    return AttList

AttListTemp = extractAtt(dfTempOut, 'Temperature')

def extractSameAtt(doubleDF, name, listTemp):
    listDf = []
    for att in listTemp:
        temp = doubleDF[doubleDF[name] == att]
        listDf.append(temp)
    return listDf

listDF = extractSameAtt(dfTempOut, 'Temperature', AttListTemp)

def calcGain(entropy, listDF, doubleDF):
    gain = entropy
    for df in listDF:
        AttSize = df.shape[0]
        TotalSize = doubleDF.shape[0]
        tempEntropy = AttSize/TotalSize*calcEntropy(df)
        gain -= tempEntropy
    return gain

print(calcGain(entropy, listDF,dfTempOut))
"""
def AttCount(doubleDF, name, listTemp):
    count = []
    for att in listTemp:
        temp = 0
        for row in doubleDF[name]:
            if att == row:
                temp += 1
        count.append(temp)
    return count
"""

