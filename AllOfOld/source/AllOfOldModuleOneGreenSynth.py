# Very short script to iterate through an array that
# contains strings representing the notes and rests of
# an ostinato.
# the first iteration replaces the middle "note"
# with members of the MelodyTones array

#Test case
#Ostinato = [ 'r1', 'g\'8', 'r8', 'c\'4' ]
#MelodyTones = [ 'fis\'8', 'a\'8', 'd\'8' ]
#
#for n in MelodyTones:
#    print('r1', n, 'r8', 'c\'4')

import itertools


MelodyTones = [ 'fis\'', 'a', 'd\'', 'b',
                'b', 'd\'', 'g', 'es\'',
                'es\'', 'fis\'', 'h', 'gis',
                'gis,', 'h,', 'e,','c,',
                'c','es,','as,','e',
                'e\'','g','c\'','as',
                'as,','h','e','c' ]
BassTones = [ 'e\'', 'a', 'f' , 'g', 'e,', 'e\'', 'a' ]
Fundamental = ['fis']

phrases = []
f = Fundamental[0]
t = BassTones[0]
for s in itertools.islice(MelodyTones, 0, 4):
    barOne = f+'1\ppp | '
    barTwo = s+'1 | '
    barThree = t+'1 | '
    print(barOne,barTwo,barThree)

t = BassTones[1]
for s in itertools.islice(MelodyTones, 4, 8):
    barOne = f+'1\ppp | '
    barTwo = s+'1 | '
    barThree = t+'1 | '
    print(barOne,barTwo,barThree)

t = BassTones[2]
for s in itertools.islice(MelodyTones, 8, 12):
    barOne = f+'1\ppp | '
    barTwo = s+'1 | '
    barThree = t+'1 | '
    print(barOne,barTwo,barThree)

t = BassTones[3]
for s in itertools.islice(MelodyTones, 12, 16):
    barOne = f+'1\ppp | '
    barTwo = s+'1 | '
    barThree = t+'1 | '
    print(barOne,barTwo,barThree)

t = BassTones[4]
for s in itertools.islice(MelodyTones, 16, 20):
    barOne = f+'1\ppp | '
    barTwo = s+'1 | '
    barThree = t+'1 | '
    print(barOne,barTwo,barThree)  

t = BassTones[5]
for s in itertools.islice(MelodyTones, 20, 24):
    barOne = f+'1\ppp | '
    barTwo = s+'1 | '
    barThree = t+'1 | '
    print(barOne,barTwo,barThree)

t = BassTones[6]
for s in itertools.islice(MelodyTones, 24, 28):
    barOne = f+'1\ppp | '
    barTwo = s+'1 | '
    barThree = t+'1 | '
    print(barOne,barTwo,barThree)

