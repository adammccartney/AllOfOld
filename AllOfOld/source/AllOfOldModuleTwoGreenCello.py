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


MelodyTones = [ 'fis,', 'a,', 'd,', 'b,',
                'b,', 'd,', 'g,', 'es,',
                'es,', 'fis,', 'h,', 'gis,',
                'gis,', 'h,', 'e,','c,',
                'c,','es,','as,','e,',
                'e,','g,','c,','as,',
                'as,','h,','e,','c,' ]
BassTones = [ 'h,', 'e', 'c' , 'd', 'h', 'e\'', 'c\'' ]
Fundamental = ['a,']

f = Fundamental[0]
t = BassTones[0]
for s in itertools.islice(MelodyTones, 0, 4):
    barOne = s+'4\p^\\tasto '+s+'8[ '+s+'-.] '+s+'4.-- '+f+'8 | '
    barTwo = s+'8[ '+s+'-.] '+s+'4.-- '+s+'8 '+t+'4 | '
    barThree = t+'8[ '+t+'8-.] '+t+'4.-- '+t+'8 '+t+'8[ '+t+'] |'
    print(barOne,barTwo,barThree)

t = BassTones[1]
for s in itertools.islice(MelodyTones, 4, 8):
    barOne = s+'4\p^\\tasto '+s+'8[ '+s+'-.] '+s+'4.-- '+f+'8 | '
    barTwo = s+'8[ '+s+'-.] '+s+'4.-- '+s+'8 '+t+'4 | '
    barThree = t+'8[ '+t+'8-.] '+t+'4.-- '+t+'8 '+t+'8[ '+t+'] |'
    print(barOne,barTwo,barThree)

t = BassTones[2]
for s in itertools.islice(MelodyTones, 8, 12):
    barOne = s+'4\p^\\tasto '+s+'8[ '+s+'-.] '+s+'4.-- '+f+'8 | '
    barTwo = s+'8[ '+s+'-.] '+s+'4.-- '+s+'8 '+t+'4 | '
    barThree = t+'8[ '+t+'8-.] '+t+'4.-- '+t+'8 '+t+'8[ '+t+'] |'
    print(barOne,barTwo,barThree)

t = BassTones[3]
for s in itertools.islice(MelodyTones, 12, 16):
    barOne = s+'4\p^\\tasto '+s+'8[ '+s+'-.] '+s+'4.-- '+f+'8 | '
    barTwo = s+'8[ '+s+'-.] '+s+'4.-- '+s+'8 '+t+'4 | '
    barThree = t+'8[ '+t+'8-.] '+t+'4.-- '+t+'8 '+t+'8[ '+t+'] |'
    print(barOne,barTwo,barThree)

t = BassTones[4]
for s in itertools.islice(MelodyTones, 16, 20):
    barOne = s+'4\p^\\tasto '+s+'8[ '+s+'-.] '+s+'4.-- '+f+'8 | '
    barTwo = s+'8[ '+s+'-.] '+s+'4.-- '+s+'8 '+t+'4 | '
    barThree = t+'8[ '+t+'8-.] '+t+'4.-- '+t+'8 '+t+'8[ '+t+'] |'
    print(barOne,barTwo,barThree)  

t = BassTones[5]
for s in itertools.islice(MelodyTones, 20, 24):
    barOne = s+'4\p^\\tasto '+s+'8[ '+s+'-.] '+s+'4.-- '+f+'8 | '
    barTwo = s+'8[ '+s+'-.] '+s+'4.-- '+s+'8 '+t+'4 | '
    barThree = t+'8[ '+t+'8-.] '+t+'4.-- '+t+'8 '+t+'8[ '+t+'] |'
    print(barOne,barTwo,barThree)

t = BassTones[6]
for s in itertools.islice(MelodyTones, 24, 28):
    barOne = s+'4\p^\\tasto '+s+'8[ '+s+'-.] '+s+'4.-- '+f+'8 | '
    barTwo = s+'8[ '+s+'-.] '+s+'4.-- '+s+'8 '+t+'4 | '
    barThree = t+'8[ '+t+'8-.] '+t+'4.-- '+t+'8 '+t+'8[ '+t+'] |'
    print(barOne,barTwo,barThree)  
