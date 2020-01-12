\version "2.18.2"
\language "deutsch"

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemNeutral}
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}
beamAccel = { \override Beam.grow-direction = #RIGHT }
beamDeccel = { \override Beam.grow-direction = #LEFT }
beamNeutral = { \override Beam.grow-direction = #f }

startRit = { \override TextSpanner.bound-details.left.text =
             \markup { \upright "rit." } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Sequencer Staff Definition %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define mydrums '((ridebell default #t  3)
                   (cowbell  default #t -2)))

seqPercVCFstaff = {
  \override DrumStaff.StaffSymbol.line-positions = #'(-2 3)
  \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
  \override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
  \set DrumStaff.instrumentName = #"Seq. Perc. VCF"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Sequence %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syS = { 
  \drummode {
  r8 r16 r32 cb32 r32 rb16. r16 r32 cb32 r4 r8 r16 r32 cb32 | 
  r32 rb16. r16 r32 cb32 r4 r8 r16 r32 cb32 r32 rb16. r16 r32 cb32 |
  r4 r8 r16 r32 cb32 r32 rb16. r16 r32 cb32 r4 | 
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


AllOfOld_seqPercVCF = {
    \time 4/4
    
% bar  1 
 r1 | r1 | r1 |
 r1 | r1 | r1 |
\syS
\syS
% bar  13 
\syS
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  25 
\mark #1
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  37 
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  49 
\mark #2
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
\syS
% bar  61 
\syS
 r1 | r1 | r1 |
\syS
 r1 | r1 | r1 |
% bar  73 
\mark #3
 r1 | r1 | r1 |
 r1 | r1 | r1 |
\syS
\syS
% bar  85 
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 \syS
 \syS
% bar  97 
\mark #4
\syS
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  109 
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  121 
\mark #5
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 \syS
 \syS
% bar  133 
 \syS
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 \syS
% bar  145 
\mark #6
 \syS
 r1 | r1 | r1 |
 \syS
 r1 | r1 | r1 |
% bar  157 
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 \syS
 \syS
 
 r1\fermata

 %{
% bar  169 
\mark #7
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 \syS
 \syS
% bar  181 
 \syS
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 \syS
% bar  193 
\mark #8
 \syS
 r1 | r1 | r1 |
 \syS
 r1 | r1 | r1 |
% bar  205 
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 \syS
% bar  217 
\mark #9
 \syS
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 \syS
% bar  229 
 \syS
 r1 | r1 | r1 |
 \syS
 r1 | r1 | r1 |
% bar  241 
\mark #10
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 \syS
% bar  253 
 r1 | r1 | r1 |
 \syS
 \syS
 \syS
% bar  265 
\mark #12
 \syS
 \syS
 r1 | r1 | r1 |
 \syS
% bar  277 
 \syS
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 \syS
% bar  289 
\mark #13
 r1 | r1 | r1 |
 \syS
 \syS
 \syS
% bar  301 
 \syS
 \syS
 r1 | r1 | r1 |
 \syS
% bar  313 
\mark #14
 \syS
 r1 | r1 | r1 |
 \syS
 r1 | r1 | r1 |
% bar  325 
 r1 | r1 | r1 |
 \syS
 \syS
 \syS
%}
\bar"|."

  }


%%% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

glissandoSkipOn = {
  \override NoteColumn.glissando-skip = ##t
  \hide NoteHead
  \override NoteHead.no-ledgers = ##t
}

glissandoSkipOff = {
  \revert NoteColumn.glissando-skip
  \undo \hide NoteHead
  \revert NoteHead.no-ledgers
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% sModules in authentic sMode %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Blue

sModOneAuthBlue = { r4 r4 fis'2--\pp | r2 h2-- | a2.\> r4\! |  }
sModTwoAuthBlue = { r4 r4 fis'4.--\pp r8 | r2 fis2-- | fis'2.\> r4\! |  }
sModThreeAuthBlue = { r4 r4 a'4.--\pp r8 | r2 e'2-- | a'2.\> r4\! | }

%% Red

sModOneAuthRedA = { r4 fis2.\pp \glissando \glissandoSkipOn  | fih1 | \glissandoSkipOff f2. r4 |  }
sModOneAuthRedB = { r4 gisih2\pp fis4\glissando | gisih4 r2  gisih4 ~ | gisih2. r4 | }
sModOneAuthRed = { \sModOneAuthRedA \sModOneAuthRedB }

sModTwoAuthRedThree = { r4  d2.\pp\glissando \glissandoSkipOn | dih1 | \glissandoSkipOff disih2. r4 | }
sModTwoAuthRedFour = { r4 h,2.:32\pp\glissando \glissandoSkipOn | hih,1 | \glissandoSkipOff cih2. r4 |  }
sModTwoAuthRedFive = { \sModTwoAuthRedFour  }
sModTwoAuthRedSix = { \sModTwoAuthRedFour  }
sModTwoAuthRedSixteen = { \sModTwoAuthRedThree }
sModTwoAuthRedSeventeen = { \sModTwoAuthRedThree  }
sModTwoAuthRedTwenty = { \sModTwoAuthRedThree }
sModTwoAuthRedTwentyOne = { \sModTwoAuthRedThree  }
sModTwoAuthRedTwentyThree = { \sModTwoAuthRedFour  }
sModTwoAuthRedTwentySeven = { r4 c2.\pp\glissando \glissandoSkipOn | cih1 | \glissandoSkipOff cisih2. r4 | }
sModTwoAuthRedTwentyEight = { \sModTwoAuthRedFour | }


%% Green
% One
sModOneAuthGreenSeven = {   fis1\p\< |  g2\!\mf\> g2\!\p |  a1 | }
sModOneAuthGreenEight = { fis1\p\< |  es'2\!\mf\> es'2\!\p |  a1 | }
sModOneAuthGreenNine = { fis1\p\< |  es'2\!\mf\> es'2\!\p |  f1 |}
sModOneAuthGreenTwelve = { fis1\p\< |  gis2\!\mf\> gis2\!\p |  f1 | }
sModOneAuthGreenThirteen = { fis1\p\< |  gis2\!\mf gis2\!\p |  g1 | }
sModOneAuthGreenFifteen = { fis1\p\< |  e'2\!\mf es2\!\p |  g1 | }
sModOneAuthGreenEighteen = {fis1\p\< |  es2\!\mf es2\!\p |  e,1 | }
sModOneAuthGreenNineteen = {fis1\p\< | gis2\mf gis,2\!\p |  e1 | }
sModOneAuthGreenTwentyTwo = {fis1\p\< |  g2\!\mf\> g2\!\p |  e'1 |}
sModOneAuthGreenTwentyFour = {fis1\p\< |  gis2\!\mf\> gis2\!\p |  e'1 | }
sModOneAuthGreenTwentyFive = {fis1\p\< |  gis2\!\mf\> gis2\!\p |  a1 | }

%Two
sModTwoAuthGreenSeven = {  a1\p\< |  g2\!\mf\> g2\!\p |  e1 |  }
sModTwoAuthGreenEight = { a1\p\< |  es'2\!\mf\> es'2\!\p |  e1 | }
sModTwoAuthGreenNine = { a1\p\< |  es'2\!\mf\> es'2\!\p |  c1 | }
sModTwoAuthGreenTwelve = { a1\p\< |  gis2\!\mf\> gis2\!\p |  c1 | }
sModTwoAuthGreenThirteen = { a1\p\< |  gis,2\!\mf\> gis,2\!\p |  d1 | }
sModTwoAuthGreenFifteen = { a1\p\< |  e,2\!\mf\> e,2\!\p |  d1 |  }
sModTwoAuthGreenEighteen = {a1\p\< |  es2\!\mf\> es2\!\p |  h1 |  }
sModTwoAuthGreenNineteen = { a1\p\< |  as,2\!\mf\> as,2\!\p |  h1 | }
sModTwoAuthGreenTwentyTwo = { a1\p\< |  g2\!\mf\> g2\!\p |  e'1 |  }
sModTwoAuthGreenTwentyFour = { a1\p\< |  as2\!\mf\> as2\!\p |  e'1 |  }
sModTwoAuthGreenTwentyFive = { a1\p\< |  as,2\!\mf\> as,2\!\p |  c'1 |  }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  

AllOfOld_synth = {
\time 4/4
\tempo 4 = 40
\clef bass

\sModOneAuthBlue
\sModOneAuthBlue 
\sModOneAuthRed

% Bar13 
\sModOneAuthRed
\sModOneAuthGreenSeven
\sModOneAuthGreenEight

% bar  25 
\mark #1
\sModOneAuthGreenNine
\sModOneAuthBlue
\sModOneAuthBlue
\sModOneAuthGreenTwelve

% bar  37 
\sModOneAuthGreenThirteen
\sModOneAuthBlue
\sModOneAuthGreenFifteen
\sModOneAuthRedA

% bar  49 
\mark #2
\sModOneAuthRedB
\sModOneAuthGreenEighteen
\sModOneAuthGreenNineteen
\sModOneAuthRedA

% bar 61
\sModOneAuthRedB
\sModOneAuthGreenTwentyTwo
\sModOneAuthRedB
\sModOneAuthGreenTwentyFour

% bar  73 
\mark #3
\sModOneAuthGreenTwentyFive
 \sModOneAuthBlue
\sModOneAuthRed

%%% Two
% bar  85

 \sModTwoAuthBlue
 \sModTwoAuthBlue
 \sModTwoAuthRedThree
 \sModTwoAuthRedFour
% bar  97 
\mark #4
 \sModTwoAuthRedFive
 \sModTwoAuthRedSix
 \sModTwoAuthGreenSeven
 \sModTwoAuthGreenEight

% bar  109 
 \sModTwoAuthGreenNine
 \sModTwoAuthBlue
\sModTwoAuthBlue
\sModTwoAuthGreenTwelve
% bar  121 
\mark #5
 \sModTwoAuthGreenThirteen
 \sModTwoAuthBlue
 \sModTwoAuthGreenFifteen
 \sModTwoAuthRedSixteen
% bar  133 
 \sModTwoAuthRedSeventeen
 \sModTwoAuthGreenEighteen
 \sModTwoAuthGreenNineteen
 \sModTwoAuthRedTwenty
% bar  145 
\mark #6
 \sModTwoAuthRedTwentyOne
 \sModTwoAuthGreenTwentyTwo
 \sModTwoAuthRedTwentyThree
 \sModTwoAuthGreenTwentyFour
% bar  157 
 \sModTwoAuthGreenTwentyFive
 \sModTwoAuthBlue
 \sModTwoAuthRedTwentySeven
 \sModTwoAuthRedTwentyEight

r1\fermata

%{
% bar  169 
\mark #7
 r1 | r1 | r1 |
 \sModThreeAuthBlue
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  181 
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  193 
\mark #8
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  205 
 r1 | r1 | r1 |
 \sModThreeAuthBlue
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  217 
\mark #9
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  229 
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  241 
\mark #10
 r1 | r1 | r1 |
\sModThreeAuthBlue
 r1 | r1 | r1 |
 r1 | r1 | r1 |


% bar  253 
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  265 
\mark #12
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  277 
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  289 
\mark #13
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  301 
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  313 
\mark #14
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
% bar  325 
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
%}
\bar "|."
  
}
