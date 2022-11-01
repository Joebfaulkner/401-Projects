import sys
from zipfile import ZipFile
zip_name = sys.argv[1]
zippednamesList = []
repeatedNames = []
previousList = []
with ZipFile(zip_name) as myzip:
    for files in myzip.filelist:
        with myzip.open(files) as myfile:
            zippednamesList.append(myfile.readlines())
first_iteration = True
for names in zippednamesList:
    namesList = []
    this_repeated_names = []
    for name in names:
        newName = name.decode('utf-8').strip()
        if previousList.count(newName) > 0 and this_repeated_names.count(newName) == 0:
            this_repeated_names.append(newName)
        namesList.append(name.decode('utf-8').strip())
        for item in repeatedNames:
            if this_repeated_names.count(item) < 1 and not first_iteration:
                repeatedNames.remove(item)
        for item in this_repeated_names:
            if repeatedNames.count(item) < 1:
                repeatedNames.append(item)
    first_iteration = False
    previousList = namesList
print(repeatedNames)
with open('Output.txt', 'w') as f:
    for line in repeatedNames:
        f.write(line)
        f.write('\n')
