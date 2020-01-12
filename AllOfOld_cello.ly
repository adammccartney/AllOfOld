\version "2.18.2"
\language "deutsch"

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textSpanOrd = { \override TextSpanner.bound-details.left.text = "Ord. -> Pont." }
textSpanPont = { \override TextSpanner.bound-details.left.text = "Sul Pont." }
textSpanTasto = { \override TextSpanner.bound-details.left.text = "Sul Tasto" }
ord = \markup { ord. }
tasto = \markup { sul tasto }
pont = \markup{ sul pont.  }
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}
beamAccel = { \override Beam.grow-direction = #RIGHT }
beamDeccel = { \override Beam.grow-direction = #LEFT }
beamNeutral = { \override Beam.grow-direction = #f }
bowTrem = \markup{ bow tremolo }

startRit = { \override TextSpanner.bound-details.left.text =
             \markup { \upright "rit." } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% vcModules in authentic vcMode %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Blue

vcModOneAuthBlue = { r4 r4 fis'2--\pp^\ord | r2 h2-- | a2.\> r4\! |  }
vcModTwoAuthBlue = { r4 r4 fis'4.--\pp^\ord r8 | r2 fis2-- | fis'2.\> r4\! |  }
vcModThreeAuthBlue = { r4 r4 a4.--\pp^\ord r8 | r2 e'2-- | a'2.\> r4\! | }


%% Red %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

vcModOneAuthRedA = { r4 <a a>2.:32\pp^\bowTrem\< ~ | <a a>4:32\mp r2  <a a>4:32 ~ | <a a>2.:32 r4 | }
vcModOneAuthRedB = {  r4 <a a>2.:32\pp^\pont\< \glissando | <gisih a>4:32\!\mp r2  <gisih a>4:32 ~ | <gisih a>2.:32 r4 | }
vcModOneAuthRed = { \vcModOneAuthRedA \vcModOneAuthRedB }

vcModTwoAuthRedThree = { r4  <d d>2.:32\pp^\bowTrem\< | <d d>2:32\mp\glissando  <dih d>2:32~ | <dih d>2.:32 r4 | }
vcModTwoAuthRedFour = { r4 h,2.:32\pp^\bowTrem\< | h,2:32\mp\glissando hih,2:32~ | hih,2.:32 r4 |  }
vcModTwoAuthRedFive = { \vcModTwoAuthRedFour  }
vcModTwoAuthRedSix = { \vcModTwoAuthRedFour  }
vcModTwoAuthRedSixteen = { \vcModTwoAuthRedThree }
vcModTwoAuthRedSeventeen = { \vcModTwoAuthRedThree  }
vcModTwoAuthRedTwenty = { \vcModTwoAuthRedThree }
vcModTwoAuthRedTwentyOne = { \vcModTwoAuthRedThree  }
vcModTwoAuthRedTwentyThree = { \vcModTwoAuthRedFour  }
vcModTwoAuthRedTwentySeven = { r4 <c, c>2.:32\pp^\bowTrem\< | <c, c>2:32\glissando <c, cih>2:32 ~ | <c, cih>2.:32 r4 | }
vcModTwoAuthRedTwentyEight = { \vcModTwoAuthRedFour | }

%% Green
% One
vcModOneAuthGreenSeven = { g4\p^\tasto g8[ g-.] g4.-- fis8 |  g8[ g-.] g4.--\< g8 a4\!\mf |  a8[ a8-.]a4.-- a8 a8[ a] | }
vcModOneAuthGreenEight = { es'4\p^\tasto es'8[ es'-.] es'4.-- fis'8 |  es'8[ es'-.] es'4.--\< es'8 a4\!\mf |  a8[ a8-.]a4.-- a8 a8[ a] | }
vcModOneAuthGreenNine = { es'4\p^\tasto es'8[ es'-.] es'4.-- fis'8 |  es'8[ es'-.] es'4.--\< es'8 f4\!\mf |  f8[ f8-.]f4.-- f8 f8[ f] | }
vcModOneAuthGreenTwelve = { gis4\p^\tasto gis8[ gis-.] gis4.-- fis8 |  gis8[ gis-.] gis4.--\< gis8 f4\!\mf |  f8[ f8-.]f4.-- f8 f8[ f] | }
vcModOneAuthGreenThirteen = { gis,4\p^\tasto gis,8[ gis,-.] gis,4.-- fis,8 |  gis,8[ gis,-.] gis,4.--\< gis,8 g4\!\mf |  g8[ g8-.]g4.-- g8 g8[ g] | }
vcModOneAuthGreenFifteen = { e,4\p^\tasto e,8[ e,-.] e,4.-- fis,8 |  e,8[ e,-.] e,4.--\< e,8 g4\!\mf |  g8[ g8-.]g4.-- g8 g8[ g] | }
vcModOneAuthGreenEighteen = { es,4\p^\tasto es,8[ es,-.] es,4.-- fis,8 |  es,8[ es,-.] es,4.--\< es,8 e,4\!\mf |  e,8[ e,8-.]e,4.-- e,8 e,8[ e,] | }
vcModOneAuthGreenNineteen = { as,4\p^\tasto as,8[ as,-.] as,4.-- fis8 |  as,8[ as,-.] as,4.--\< as,8 e4\!\mf |  e8[ e8-.] e4.-- e8 e8[ e] | }
vcModOneAuthGreenTwentyTwo = { g4\p^\tasto g8[ g-.] g4.-- fis8 |  g8[ g-.] g4.--\< g8 e'4\!\mf |  e'8[ e'8-.]e'4.-- e'8 e'8[ e'] | }
vcModOneAuthGreenTwentyFour = { as4\p^\tasto as8[ as-.] as4.-- fis8 |  as8[ as-.] as4.--\< as8 e'4\!\mf |  e'8[ e'8-.]e'4.-- e'8 e'8[ e'] | }
vcModOneAuthGreenTwentyFive = { as,4\p^\tasto as,8[ as,-.] as,4.-- fis,8 |  as,8[ as,-.] as,4.--\< as,8 a4\!\mf |  a8[ a8-.]a4.-- a8 a8[ a] | }


% Two
vcModTwoAuthGreenSeven = { g,4\p^\tasto g,8[ g,-.] g,4.-- a,8 |  g,8[ g,-.] g,4.-- g,8 e4 |  e8[ e8-.] e4.-- e8 e8[ e] | }
vcModTwoAuthGreenEight = { es,4\p^\tasto es,8[ es,-.] es,4.-- a,8 |  es,8[ es,-.] es,4.-- es,8 e4 |  e8[ e8-.] e4.-- e8 e8[ e] | }
vcModTwoAuthGreenNine = { es,4\p^\tasto es,8[ es,-.] es,4.-- a,8 |  es,8[ es,-.] es,4.-- es,8 c4 |  c8[ c8-.] c4.-- c8 c8[ c] | }
vcModTwoAuthGreenTwelve = { gis,4\p^\tasto gis,8[ gis,-.] gis,4.-- a,8 |  gis,8[ gis,-.] gis,4.-- gis,8 c4 |  c8[ c8-.] c4.-- c8 c8[ c] | }
vcModTwoAuthGreenThirteen = { gis,4\p^\tasto gis,8[ gis,-.] gis,4.-- a,8 |  gis,8[ gis,-.] gis,4.-- gis,8 d4 |  d8[ d8-.] d4.-- d8 d8[ d] |  }
vcModTwoAuthGreenFifteen = { e,4\p^\tasto e,8[ e,-.] e,4.-- a,8 |  e,8[ e,-.] e,4.-- e,8 d4 |  d8[ d8-.] d4.-- d8 d8[ d] | }
vcModTwoAuthGreenEighteen = { es,4\p^\tasto es,8[ es,-.] es,4.-- a,8 |  es,8[ es,-.] es,4.-- es,8 h4 |  h8[ h8-.] h4.-- h8 h8[ h] | }
vcModTwoAuthGreenNineteen = { as,4\p^\tasto as,8[ as,-.] as,4.-- a,8 |  as,8[ as,-.] as,4.-- as,8 h4 |  h8[ h8-.] h4.-- h8 h8[ h] | }
vcModTwoAuthGreenTwentyTwo = { g,4\p^\tasto g,8[ g,-.] g,4.-- a,8 |  g,8[ g,-.] g,4.-- g,8 e'4 |  e'8[ e'8-.] e'4.-- e'8 e'8[ e'] |  }
vcModTwoAuthGreenTwentyFour = { as,4\p^\tasto as,8[ as,-.] as,4.-- a,8 |  as,8[ as,-.] as,4.-- as,8 e4 |  e8[ e8-.] e4.-- e8 e8[ e] | }
vcModTwoAuthGreenTwentyFive = { as,4\p^\tasto as,8[ as,-.] as,4.-- a,8 |  as,8[ as,-.] as,4.-- as,8 c'4 |  c'8[ c'8-.] c'4.-- c'8 c'8[ c'] |  }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

AllOfOld_cello = {
\time 4/4
\tempo 4 = 40
\clef bass

\vcModOneAuthBlue
\vcModOneAuthBlue 
\vcModOneAuthRed

% Bar13 
\vcModOneAuthRed
\vcModOneAuthGreenSeven
\vcModOneAuthGreenEight

% bar  25 
\mark #1
\vcModOneAuthGreenNine
\vcModOneAuthBlue
\vcModOneAuthBlue
\vcModOneAuthGreenTwelve

% bar  37 
\vcModOneAuthGreenThirteen
\vcModOneAuthBlue
\vcModOneAuthGreenFifteen
\vcModOneAuthRedA

% bar  49 
\mark #2
\vcModOneAuthRedB
\vcModOneAuthGreenEighteen
\vcModOneAuthGreenNineteen
\vcModOneAuthRedA

% bar 61
\vcModOneAuthRedB
\vcModOneAuthGreenTwentyTwo
\vcModOneAuthRedB
\vcModOneAuthGreenTwentyFour

% bar  73 
\mark #3
\vcModOneAuthGreenTwentyFive
 \vcModOneAuthBlue
\vcModOneAuthRed

%%% Two

% bar  85 
 \vcModTwoAuthBlue
 \vcModTwoAuthBlue
 \vcModTwoAuthRedThree
 \vcModTwoAuthRedFour
% bar  97 
\mark #4
 \vcModTwoAuthRedFive
 \vcModTwoAuthRedSix
 \vcModTwoAuthGreenSeven
 \vcModTwoAuthGreenEight

% bar  109 
 \vcModTwoAuthGreenNine
 \vcModTwoAuthBlue
\vcModTwoAuthBlue
\vcModTwoAuthGreenTwelve
% bar  121 
\mark #5
 \vcModTwoAuthGreenThirteen
 \vcModTwoAuthBlue
 \vcModTwoAuthGreenFifteen
 \vcModTwoAuthRedSixteen
% bar  133 
 \vcModTwoAuthRedSeventeen
 \vcModTwoAuthGreenEighteen
 \vcModTwoAuthGreenNineteen
 \vcModTwoAuthRedTwenty
% bar  145 
\mark #6
 \vcModTwoAuthRedTwentyOne
 \vcModTwoAuthGreenTwentyTwo
 \vcModTwoAuthRedTwentyThree
 \vcModTwoAuthGreenTwentyFour
% bar  157 
 \vcModTwoAuthGreenTwentyFive
 \vcModTwoAuthBlue
 \vcModTwoAuthRedTwentySeven
 \vcModTwoAuthRedTwentyEight
 
 r1 \fermata

%{
% bar  169 
\mark #7
 r1 | r1 | r1 |
 \vcModThreeAuthBlue
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
 \vcModThreeAuthBlue
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
\vcModThreeAuthBlue
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
