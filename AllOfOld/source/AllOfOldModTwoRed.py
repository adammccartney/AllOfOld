import itertools
import random

RedModTwoNotes = ['h','e\'','c\'','d\'','h\'']
a = itertools.permutations(RedModTwoNotes,3)
PermOfRedNotes = []
for n in a:
    PermOfRedNotes.append(n)

barsOctvOneTwo = []
barsOctvThreeFour = []

for n in range(0,len(PermOfRedNotes)):
    x, y, z = PermOfRedNotes[n]
    barOctvOneTwo = x+'8.[ '+y+'16]  <'+z+' '+z+'\'>4  <'+z+'\' '+z+'\'\'>4 r4 | '
    barsOctvOneTwo.append(barOctvOneTwo)
    barOctvThreeFour = x+'\'8.[ '+y+'\'16]  <'+z+'\' '+z+'\'\'>4  <'+z+'\'\' '+z+'\'\'\'4> r4 | '
    barsOctvThreeFour.append(barOctvThreeFour)
    
rOne = random.randint(0,len(barsOctvOneTwo))
rTwo = random.randint(0,len(barsOctvThreeFour))
rThree = random.randint(0,len(barsOctvThreeFour))
randomBarOne = barsOctvOneTwo[rOne]
randomBarTwo = barsOctvThreeFour[rTwo]
randomBarThree = barsOctvThreeFour[rThree]
randomPhrase = randomBarOne + randomBarTwo + randomBarThree
print(randomPhrase)   
