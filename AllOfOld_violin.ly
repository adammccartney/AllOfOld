\version "2.18.2"
\language "deutsch"

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textSpanOrd = { \override TextSpanner.bound-details.left.text = "Ord. -> Pont." }
textSpanPont = { \override TextSpanner.bound-details.left.text = "Sul Pont." }
textSpanTasto = { \override TextSpanner.bound-details.left.text = "Sul Tasto" }
ord = \markup { ord. }
tasto = \markup { sul tasto }
pont = \markup{ sul pont.  }
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}
beamAccel = { \override Beam.grow-direction = #RIGHT }
beamDeccel = { \override Beam.grow-direction = #LEFT }
beamNeutral = { \override Beam.grow-direction = #f }
bowTrem = \markup{ bow tremolo }

startRit = { \override TextSpanner.bound-details.left.text =
             \markup { \upright "rit." } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% vModules in authentic vMode %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Blue

vModOneAuthBlue = { r4 r4 dis''4.^\ord\pp(\downbow a'8 ~ | a'4.) r8 h''2\upbow | r4 r8 a''8 ~ a''4. r8 |  }
vModTwoAuthBlue = { r4 r4 fis''4.^\ord\pp(\downbow d''8  ~ | d''4.) r8 fis''2\upbow | r4 r8 f''8 ~ f''4. r8 |  }
vModThreeAuthBlue = { r4 r4 a''4.^\ord\pp(\downbow d''8 ~ | d''4.) r8 e''2\upbow | r4 r8 d'8 ~ d'4. r8 | }

%% Red
%One
vModOneAuthRedA = { r4 <e'' e''>2.:32\pp^\bowTrem\< ~ | <e'' e''>4:32\!\mp r2  <e'' e''>4:32 ~ | <e'' e''>4:32 r2. | }
vModOneAuthRedB = { r4 <e'' e''>2.:32\pp^\pont\<\glissando | <disih'' e''>4:32\!\mp r2  <disih'' e''>4:32 ~ | <disih'' e''>4:32 r2. | }
vModOneAuthRed = { \vModOneAuthRedA \vModOneAuthRedB }

%Two
vModTwoAuthRedThree = { r4  <d' d'>2.\pp^\bowTrem\< | <d' d'>2\mp\glissando  <dih' d'>2~ | <dih' d'>1 | }
vModTwoAuthRedFour = { r4 h2.:32\pp^\bowTrem\< | h2:32\mp\glissando hih2:32~ | hih2.:32 r4 |  }
vModTwoAuthRedFive = { \vModTwoAuthRedFour  }
vModTwoAuthRedSix = { \vModTwoAuthRedFour  }
vModTwoAuthRedSixteen = { \vModTwoAuthRedThree }
vModTwoAuthRedSeventeen = { \vModTwoAuthRedThree  }
vModTwoAuthRedTwenty = { \vModTwoAuthRedThree }
vModTwoAuthRedTwentyOne = { \vModTwoAuthRedThree  }
vModTwoAuthRedTwentyThree = { \vModTwoAuthRedFour  }
vModTwoAuthRedTwentySeven = { r4 c''2.:32\pp^\bowTrem\< | c''2:32\glissando c''2:32 ~ | c''2.:32 r4 | }
vModTwoAuthRedTwentyEight = { \vModTwoAuthRedFour | }

%Three



%% Green
% One
vModOneAuthGreenSeven = { h''4\p^\tasto h''8[ h''-.] h''4.-- ais''8 |  h''8[ h''-.] h''4.--\< h''8 cis'''4\!\mf |  cis'''8[ cis'''8-.]cis'''4.-- cis'''8 cis'''8[ cis'''] |}
vModOneAuthGreenEight = { g'''4\p^\tasto g'''8[ g'''-.] g'''4.-- ais'''8 |  g'''8[ g'''-.] g'''4.--\< g'''8 cis'''4\!\mf |  cis'''8[ cis'''8-.]cis'''4.-- cis'''8 cis'''8[ cis'''] |}
vModOneAuthGreenNine = { g'''4\p^\tasto g'''8[ g'''-.] g'''4.-- ais'''8 |  g'''8[ g'''-.] g'''4.--\< g'''8 a''4\!\mf |  a''8[ a''8-.]a''4.-- a''8 a''8[ a''] | }
vModOneAuthGreenTwelve = { c'''4\p^\tasto c'''8[ c'''-.] c'''4.-- ais''8 |  c'''8[ c'''-.] c'''4.--\< c'''8 a''4\!\mf |  a''8[ a''8-.]a''4.-- a''8 a''8[ a''] | }
vModOneAuthGreenThirteen = { c''4\p^\tasto c''8[ c''-.] c''4.-- ais'8 |  c''8[ c''-.] c''4.--\< c''8 h''4\!\mf |  h''8[ h''8-.]h''4.-- h''8 h''8[ h''] | }
vModOneAuthGreenFifteen = { gis'4\p^\tasto gis'8[ gis'-.] gis'4.-- ais'8 |  gis'8[ gis'-.] gis'4.--\< gis'8 h''4\!\mf |  h''8[ h''8-.]h''4.-- h''8 h''8[ h''] | }
vModOneAuthGreenEighteen = { g'4\p^\tasto g'8[ g'-.] g'4.-- ais'8 |  g'8[ g'-.] g'4.--\< g'8 gis'4\!\mf |  gis'8[ gis'8-.]gis'4.-- gis'8 gis'8[ gis'] | }
vModOneAuthGreenNineteen = { c''4\p^\tasto c''8[ c''-.] c''4.-- ais''8 |  c''8[ c''-.] c''4.--\< c''8 gis''4\!\mf |  gis''8[ gis''8-.]gis''4.-- gis''8 gis''8[ gis''] | }
vModOneAuthGreenTwentyTwo = { h''4\p^\tasto h''8[ h''-.] h''4.-- ais''8 |  h''8[ h''-.] h''4.--\< h''8 gis'''4\!\mf |  gis'''8[ gis'''8-.]gis'''4.-- gis'''8 gis'''8[ gis'''] | }
vModOneAuthGreenTwentyFour = { c'''4\p^\tasto c'''8[ c'''-.] c'''4.-- ais''8 |  c'''8[ c'''-.] c'''4.--\< c'''8 gis'''4\!\mf |  gis'''8[ gis'''8-.]gis'''4.-- gis'''8 gis'''8[ gis'''] | }
vModOneAuthGreenTwentyFive = { c''4\p^\tasto c''8[ c''-.] c''4.-- ais'8 |  c''8[ c''-.] c''4.--\< c''8 cis'''4\!\mf |  cis'''8[ cis'''8-.]cis'''4.-- cis'''8 cis'''8[ cis'''] | }


% Two
vModTwoAuthGreenSeven = { h'4\p^\tasto h'8[ h'-.] h'4.-- cis''8 |  h'8[ h'-.] h'4.-- h'8 gis''4 |  gis''8[ gis''8-.] gis''4.-- gis''8 gis''8[ gis''] | }
vModTwoAuthGreenEight = { g'4\p^\tasto g'8[ g'-.] g'4.-- cis''8 |  g'8[ g'-.] g'4.-- g'8 gis''4 |  gis''8[ gis''8-.] gis''4.-- gis''8 gis''8[ gis''] | }
vModTwoAuthGreenNine = { g'4\p^\tasto g'8[ g'-.] g'4.-- cis''8 |  g'8[ g'-.] g'4.-- g'8 e''4 |  e''8[ e''8-.] e''4.-- e''8 e''8[ e''] | }
vModTwoAuthGreenTwelve = { c''4\p^\tasto c''8[ c''-.] c''4.-- cis''8 |  c''8[ c''-.] c''4.-- c''8 e''4 |  e''8[ e''8-.] e''4.-- e''8 e''8[ e''] | }
vModTwoAuthGreenThirteen = { c''4\p^\tasto c''8[ c''-.] c''4.-- cis''8 |  c''8[ c''-.] c''4.-- c''8 fis''4 |  fis''8[ fis''8-.] fis''4.-- fis''8 fis''8[ fis''] |  }
vModTwoAuthGreenFifteen = { gis'4\p^\tasto gis'8[ gis'-.] gis'4.-- cis''8 |  gis'8[ gis'-.] gis'4.-- gis'8 fis''4 |  fis''8[ fis''8-.] fis''4.-- fis''8 fis''8[ fis''] | }
vModTwoAuthGreenEighteen = { g'4\p^\tasto g'8[ g'-.] g'4.-- cis''8 |  g'8[ g'-.] g'4.-- g'8 dis'''4 |  dis'''8[ dis'''8-.] dis'''4.-- dis'''8 dis'''8[ dis'''] | }
vModTwoAuthGreenNineteen = { c''4\p^\tasto c''8[ c''-.] c''4.-- cis''8 |  c''8[ c''-.] c''4.-- c''8 dis'''4 |  dis'''8[ dis'''8-.] dis'''4.-- dis'''8 dis'''8[ dis'''] | }
vModTwoAuthGreenTwentyTwo = { h'4\p^\tasto h'8[ h'-.] h'4.-- cis''8 |  h'8[ h'-.] h'4.-- h'8 gis'''4 |  gis'''8[ gis'''8-.] gis'''4.-- gis'''8 gis'''8[ gis'''] |  }
vModTwoAuthGreenTwentyFour = { c''4\p^\tasto c''8[ c''-.] c''4.-- cis''8 |  c''8[ c''-.] c''4.-- c''8 gis''4 |  gis''8[ gis''8-.] gis''4.-- gis''8 gis''8[ gis''] | }
vModTwoAuthGreenTwentyFive = { c''4\p^\tasto c''8[ c''-.] c''4.-- cis''8 |  c''8[ c''-.] c''4.-- c''8 e'''4 |  e'''8[ e'''8-.] e'''4.-- e'''8 e'''8[ e'''] |  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

AllOfOld_violin = {
\time 4/4
\tempo 4 = 40

\vModOneAuthBlue
\vModOneAuthBlue 
\vModOneAuthRed

% Bar13 
\vModOneAuthRed
\vModOneAuthGreenSeven
\vModOneAuthGreenEight

% bar  25 
\mark #1
\vModOneAuthGreenNine
\vModOneAuthBlue
\vModOneAuthBlue
\vModOneAuthGreenTwelve

% bar  37 
\vModOneAuthGreenThirteen
\vModOneAuthBlue
\vModOneAuthGreenFifteen
\vModOneAuthRedA

% bar  49 
\mark #2
\vModOneAuthRedB
\vModOneAuthGreenEighteen
\vModOneAuthGreenNineteen
\vModOneAuthRedA

% bar 61
\vModOneAuthRedB
\vModOneAuthGreenTwentyTwo
\vModOneAuthRedB
\vModOneAuthGreenTwentyFour

% bar  73 
\mark #3
\vModOneAuthGreenTwentyFive
 \vModOneAuthBlue
\vModOneAuthRed

%%% Two
% bar  85 

 \vModTwoAuthBlue
 \vModTwoAuthBlue
 \vModTwoAuthRedThree
 \vModTwoAuthRedFour
% bar  97 
\mark #4
 \vModTwoAuthRedFive
 \vModTwoAuthRedSix
 \vModTwoAuthGreenSeven
 \vModTwoAuthGreenEight

% bar  109 
 \vModTwoAuthGreenNine
 \vModTwoAuthBlue
\vModTwoAuthBlue
\vModTwoAuthGreenTwelve
% bar  121 
\mark #5
 \vModTwoAuthGreenThirteen
 \vModTwoAuthBlue
 \vModTwoAuthGreenFifteen
 \vModTwoAuthRedSixteen
% bar  133 
 \vModTwoAuthRedSeventeen
 \vModTwoAuthGreenEighteen
 \vModTwoAuthGreenNineteen
 \vModTwoAuthRedTwenty
% bar  145 
\mark #6
 \vModTwoAuthRedTwentyOne
 \vModTwoAuthGreenTwentyTwo
 \vModTwoAuthRedTwentyThree
 \vModTwoAuthGreenTwentyFour
% bar  157 
 \vModTwoAuthGreenTwentyFive
 \vModTwoAuthBlue
 \vModTwoAuthRedTwentySeven
 \vModTwoAuthRedTwentyEight

 r1\fermata

%{
% bar  169 
\mark #7
 r1 | r1 | r1 |
 \vModThreeAuthBlue
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
 \vModThreeAuthBlue
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
\vModThreeAuthBlue
 r1 | r1 | r1 |
 r1 | r1 | r1 |


% Four 
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
