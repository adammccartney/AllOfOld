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

Ostinato = [ 'r4','r8','r16','fis16','r16','fis\'8.','r8','r16','e\'16','|',
                'r2','r4','r8','r16','fis16','|',
                'r16','fis\'8.','r8','r16','e\'16','r2','|' ]
MelodyTones = [ 'fis\'8.', 'a8.', 'd\'8.', 'b8.',
                'b\'8.', 'd\'8.', 'g\'8.', 'es\'8.',
                'es\'8.', 'fis\'8.', 'h8.', 'gis8.',
                'gis,8.', 'h,,8.', 'e,8.','c,8.',
                'c8.','es,8.','as,8.','e8.',
                'e\'8.','g8.','c\'8.','as8.',
                'as,8.','h8.','e\'\'8.','c\'\'8.' ]
BassTones = [ 'e\'16', 'a16', 'f16' , 'g16', 'e,16', 'e\'16', 'a16' ]

n = BassTones[0]
for m in itertools.islice(MelodyTones, 0, 4):
    print('r4','r8','r16','fis16','r16',m,'r8','r16',n,'|','r2','r4','r8','r16','fis16','|','r16',m,'r8','r16',n,'r2','|')
            
n = BassTones[1]
for m in itertools.islice(MelodyTones, 4, 8):
    print('r4','r8','r16','fis\'16','r16',m,'r8','r16',n,'|','r2','r4','r8','r16','fis\'16','|','r16',m,'r8','r16',n,'r2','|')

n = BassTones[2]
for m in itertools.islice(MelodyTones, 8, 12):
    print('r4','r8','r16','fis16','r16',m,'r8','r16',n,'|','r2','r4','r8','r16','fis16','|','r16',m,'r8','r16',n,'r2','|')

n = BassTones[3]
for m in itertools.islice(MelodyTones, 12, 16):
    print('r4','r8','r16','fis,16','r16',m,'r8','r16',n,'|','r2','r4','r8','r16','fis,16','|','r16',m,'r8','r16',n,'r2','|')

n = BassTones[4]
for m in itertools.islice(MelodyTones, 16, 20):
    print('r4','r8','r16','fis,,16','r16',m,'r8','r16',n,'|','r2','r4','r8','r16','fis,16','|','r16',m,'r8','r16',n,'r2','|')

n = BassTones[5]
for m in itertools.islice(MelodyTones, 20, 24):
    print('r4','r8','r16','fis16','r16',m,'r8','r16',n,'|','r2','r4','r8','r16','fis\'16','|','r16',m,'r8','r16',n,'r2','|')

n = BassTones[6]
for m in itertools.islice(MelodyTones, 24, 28):
    print('r4','r8','r16','fis16','r16',m,'r8','r16',n,'|','r2','r4','r8','r16','fis16','|','r16',m,'r8','r16',n,'r2','|')

            
