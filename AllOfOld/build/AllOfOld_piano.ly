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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% pModules in fis, right hand %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Blue

pModOneAuthBlue = { r4 r4 dis'''4.\pp a''8 ~ | a''4. gis''8 h'2 | dis''4. a'8 ~ a'4. gis''8 |  }

pModTwoAuthBlue = { r4 r4 fis'4.\pp d''8 | f''4. h'8 fis''2 | fis''4. f'8 ~ f'4. d''8 |  }

pModThreeAuthBlue = { r4 r4 a''4.\pp d''8 ~ | d''4. cis''8 e''2 | a'4. d'8 ~ d'4. cis''8 | }

pModFourAuthBlue = { r4 r4 cis''4.\pp a''8 | c'''4. fis''8 cis'''2 | cis'''4. c''8 ~ c''4. a''8 | }


%% Red %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pModOneAuthRedA = { r4 <a'' e'''>2\mf <gis'' e'''>4 ~ | <gis'' e'''>4 r2  <g'' f'''>4 ~ | <g'' f'''>4 r2. | }
pModOneAuthRedB = { r4 <g'' e'''>2\mf <f''' f''>4 ~ | <f''' f''>4 r2  <e'' f'''>4 ~ | <e'' f'''>4 r2. | } 
pModOneAuthRed = { \pModOneAuthRedA \pModOneAuthRedB }

pModTwoAuthRedThree = { h'8.[ c'16]  <d' d''>4  <d'' d'''>4 r4 | e''8.[ c''16]  <d'' d'''>4  <d''' d''''>4 r4 | c''8.[ d''16]  <h' h''>4  <h'' h'''>4 r4 | }
pModTwoAuthRedFour = { c'8.[ h16]  <h' h''>4  <h'' h'''>4 r4 | e''8.[ h'16]  <c'' c'''>4  <c''' c''''>4 r4 | h''8.[ e''16]  <h' h''>4  <h'' h'''>4 r4 |  }
pModTwoAuthRedFive = { c'8.[ e'16]  <h h'>4  <h' h''>4 r4 | h''8.[ e''16]  <c'' c'''>4  <c''' c''''>4 r4 | c''8.[ h'16]  <d'' d'''>4  <d''' d''''>4 r4 |  }
pModTwoAuthRedSix = { e'8.[ c'16]  <h' h''>4  <h'' h'''>4 r4 | c''8.[ h'16]  <e'' e'''>4  <e''' e''''>4 r4 | e''8.[ d''16]  <h'' h'''>4  <h''' h''''>4 r4 |  }
pModTwoAuthRedSixteen = { h8.[ e'16]  <d' d''>4  <d'' d'''>4 r4 | h''8.[ d''16]  <e'' e'''>4  <e''' e''''>4 r4 | h''8.[ c''16]  <d'' d'''>4  <d''' d''''>4 r4 | }
pModTwoAuthRedSeventeen = { h'8.[ h16]  <d' d''>4  <d'' d'''>4 r4 | h'8.[ d''16]  <e'' e'''>4  <e''' e''''>4 r4 | h''8.[ c''16]  <d'' d'''>4  <d''' d''''>4 r4 |  }
pModTwoAuthRedTwenty = { c'8.[ e'16]  <d' d''>4  <d'' d'''>4 r4 | e''8.[ h'16]  <d'' d'''>4  <d''' d''''>4 r4 | c''8.[ e''16]  <h' h''>4  <h'' h'''>4 r4 | }
pModTwoAuthRedTwentyOne = { h8.[ c'16]  <d' d''>4  <d'' d'''>4 r4 | d''8.[ e''16]  <h' h''>4  <h'' h'''>4 r4 | d''8.[ h'16]  <h'' h'''>4  <h''' h''''>4 r4 |  }
pModTwoAuthRedTwentyThree = { h'8.[ d'16]  <h h'>4  <h' h''>4 r4 | e''8.[ c''16]  <d'' d'''>4  <d''' d''''>4 r4 | h''8.[ e''16]  <d'' d'''>4  <d''' d''''>4 r4 |  }
pModTwoAuthRedTwentySeven = { h'8.[ d'16]  <c' c''>4  <c'' c'''>4 r4 | d''8.[ e''16]  <h'' h'''>4  <h''' h''''>4 r4 | e''8.[ h'16]  <c'' c'''>4  <c''' c''''>4 r4 | }
pModTwoAuthRedTwentyEight = { h8.[ c'16]  <h' h''>4  <h'' h'''>4 r4 | e''8.[ d''16]  <h' h''>4  <h'' h'''>4 r4 | c''8.[ d''16]  <e'' e'''>4  <e''' e''''>4 r4 | }

%% Green %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pModOneAuthGreen = { << { a,1 ~ | a,2. a,4 | a,1 | } \\ { f,8[\ppp g, e,\unaCorda g, e, g, e, g,] | e,8[ g, e, g, e, g,] g,[ e,] | f,8[ e, g, e, g, e,\treCorde g, e,] | } >> }

pModTwoAuthGreen = { << { e,1 ~ | e,2. e,4 | e,1 | } \\ { c,8[\ppp d, h,, d,\unaCorda h,, d, h,, d,] | h,,8[ d, h,, d, h,, d,] d,[ h,,] | c,8[ h,, d, h,, d, h,,\treCorde d, h,,] | } >> }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

AllOfOld_piano_right = {
    \time 4/4
    \tempo 4 = 40

\pModOneAuthBlue
\pModOneAuthBlue 
\pModOneAuthRed

% Bar13 
\pModOneAuthRed
\staffLower
\pModOneAuthGreen
\pModOneAuthGreen

% bar  25 
\mark #1
\pModOneAuthGreen
\staffUpper
\clef treble
\pModOneAuthBlue
\pModOneAuthBlue
\staffLower
\pModOneAuthGreen

% bar  37 
\pModOneAuthGreen
\staffUpper
\clef treble
\pModOneAuthBlue
\staffLower
\pModOneAuthGreen
\staffUpper
\clef treble
\pModOneAuthRedA

% bar  49 
\mark #2
\pModOneAuthRedB
\staffLower
\pModOneAuthGreen
\pModOneAuthGreen
\staffUpper
\clef treble
\pModOneAuthRedA

% bar 61
\pModOneAuthRedB
\staffLower
\pModOneAuthGreen
\staffUpper
\clef treble
\pModOneAuthRedB
\staffLower
\pModOneAuthGreen

% bar  73 
\mark #3
\pModOneAuthGreen
\staffUpper
\clef treble
\pModOneAuthBlue
\pModOneAuthRed

%%% Two
% bar  85 

 \pModTwoAuthBlue
 \pModTwoAuthBlue
 \pModTwoAuthRedThree
 \pModTwoAuthRedFour
% bar  97 
\mark #4
 \pModTwoAuthRedFive
 \pModTwoAuthRedSix
 \staffLower
 \pModTwoAuthGreen
 \pModTwoAuthGreen

% bar  109 
 \pModTwoAuthGreen
 \staffUpper
 \pModTwoAuthBlue
\pModTwoAuthBlue
\staffLower
\pModTwoAuthGreen
% bar  121 
\mark #5
 \pModTwoAuthGreen
 \staffUpper
 \pModTwoAuthBlue
 \staffLower
 \pModTwoAuthGreen
 \staffUpper
 \pModTwoAuthRedSixteen
% bar  133 
 \pModTwoAuthRedSeventeen
 \staffLower
 \pModTwoAuthGreen
 \pModTwoAuthGreen
 \staffUpper
 \pModTwoAuthRedTwenty
% bar  145 
\mark #6
 \pModTwoAuthRedTwentyOne
 \staffLower
 \pModTwoAuthGreen
 \staffUpper
 \pModTwoAuthRedTwentyThree
 \staffLower
 \pModTwoAuthGreen
% bar  157 
 \pModTwoAuthGreen
 \staffUpper
 \pModTwoAuthBlue
 \pModTwoAuthRedTwentySeven
 \pModTwoAuthRedTwentyEight

 r1\fermata

%{
% bar  169 
\mark #7
 r1 | r1 | r1 |
 \pModThreeAuthBlue
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
 \pModThreeAuthBlue
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
\pModThreeAuthBlue
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
 r1 | r1 | r1 

%}

	\bar "|."
  
}

% Themes, left hand %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Reference only, actual material generated from python pModules
%  AllOfOldpModuleOne.py
%  AllOfOldpModuleTwo.py
%  AllOfOldpModuleThree.py
%  AllOfOldpModuleFour.py
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pModOneLAuth = { r4 r8 r16 fis16 r16 fis'8. r8 r8 r16 e'16 | r2 r4 r8 r16 fis16 | r16 fis'8. r8 r16 e'16 r2 | }
pModTwoLAuth = { r4 r8 r16 a,16 r16 fis8. r8 r8 r16 h,16 | r2 r4 r8 r16 a,16 | r16 fis8. r8 r16 h,16 r2 | }
pModThreeLAuth = { r4 r8 r16 h,16 r16 gis8. r8 r8 r16 fis16 | r2 r4 r8 r16 h,16 | r16 gis8. r8 r16 fis16 r2 | }
pModFourLAuth = { r4 r8 r16 cis16 r16 a8. r8 r8 r16 f16 | r2 r4 r8 r16 cis16 | r16 a8. r8 r16 f16 r2 | }

pModOneLPlag = { r4 r8 r16 cis16 r16 cis'8. r8 r8 r16 h16 | r2 r4 r8 r16 cis16 | r16 cis'8. r8 r16 h16 r2 | }
pModTwoLPlag = { r4 r8 r16 e,16 r16 cis8. r8 r8 r16 fis,16 | r2 r4 r8 r16 e,16 | r16 cis8. r8 r16 fis,16 r2 | }
pModThreeLPlag = { r4 r8 r16 fis,16 r16 dis8. r8 r8 r16 cis16 | r2 r4 r8 r16 fis,16 | r16 dis8. r8 r16 cis16 r2 | }
pModFourLPlag = { r4 r8 r16 gis16 r16 e'8. r8 r8 r16 c'16 | r2 r4 r8 r16 gis16 | r16 e'8. r8 r16 c'16 r2 | }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

AllOfOld_piano_left = {
 \set Staff.pedalSustainStyle = #'bracket
\time 4/4
\tempo 4 = 40
\clef bass
r4 r8 r16 fis16\sustainOn r16 fis'8. r8 r16 e'16 | r2 r4 r8 r16 fis16 | r16 fis'8. r8 r16 e'16 r2 |
r4 r8 r16 fis16 r16 a8. r8 r16 e'16 | r2 r4 r8 r16 fis16 | r16 a8. r8 r16 e'16 r2 |
r4 r8 r16 fis16 r16 d'8. r8 r16 e'16 | r2 r4 r8 r16 fis16 | r16 d'8. r8 r16 e'16 r2 |
r4 r8 r16 fis16 r16 b8. r8 r16 e'16 | r2 r4 r8 r16 fis16 | r16 b8. r8 r16 e'16 r2 |

 % bar 13
r4 r8 r16 fis'16\sustainOff\sustainOn r16 b'8. r8 r16 a16 | r2 r4 r8 r16 fis'16 | r16 b'8. r8 r16 a16 r2 |
r4 r8 r16 fis'16 r16 d'8. r8 r16 a16 | r2 r4 r8 r16 fis'16 | r16 d'8. r8 r16 a16 r2 |
\staffUpper
r4 r8 r16 fis'16 r16 g'8. r8 r16 a16 | r2 r4 r8 r16 fis'16 | r16 g'8. r8 r16 a16 r2 |
r4 r8 r16 fis'16 r16 es'8. r8 r16 a16 | r2 r4 r8 r16 fis'16 | r16 es'8. r8 r16 a16 r2 |

% bar  25 
\mark #1
\clef bass
r4 r8 r16 fis16 r16 es'8. r8 r16 f16 | r2 r4 r8 r16 fis16 | r16 es'8. r8 r16 f16 r2 |
\staffLower
r4 r8 r16 fis16\sustainOff\sustainOn r16 fis'8. r8 r16 f16 | r2 r4 r8 r16 fis16 | r16 fis'8. r8 r16 f16 r2 |
r4 r8 r16 fis16 r16 h8. r8 r16 f16 | r2 r4 r8 r16 fis16 | r16 h8. r8 r16 f16 r2 |
\staffUpper
\clef bass
r4 r8 r16 fis16 r16 gis8. r8 r16 f16 | r2 r4 r8 r16 fis16 | r16 gis8. r8 r16 f16 r2 |

 % bar  37 
r4 r8 r16 fis16 r16 gis8. r8 r16 g16 | r2 r4 r8 r16 fis16 | r16 gis8. r8 r16 g16 r2 |
\staffLower
r4 r8 r16 fis,16\sustainOff\sustainOn r16 h,,8. r8 r16 g16 | r2 r4 r8 r16 fis,16 | r16 h,,8. r8 r16 g16 r2 |
\staffUpper
\clef bass
r4 r8 r16 fis,16 r16 e,8. r8 r16 g16 | r2 r4 r8 r16 fis,16 | r16 e,8. r8 r16 g16 r2 |
\staffLower
r4 r8 r16 fis,16 r16 c,8. r8 r16 g16 | r2 r4 r8 r16 fis,16 | r16 c,8. r8 r16 g16 r2 |

 % bar  49
\mark #2 
r4 r8 r16 fis,16 r16 c8. r8 r16 e,16 | r2 r4 r8 r16 fis,16 | r16 c8. r8 r16 e,16 r2 |
\staffUpper
\clef bass
r4 r8 r16 fis16 r16 es8. r8 r16 e'16 | r2 r4 r8 r16 fis16 | r16 es8. r8 r16 e'16 r2 |
r4 r8 r16 fis16 r16 gis8. r8 r16 e'16 | r2 r4 r8 r16 fis16 | r16 gis8. r8 r16 e'16 r2 |
\staffLower
r4 r8 r16 fis,,16\sustainOff\sustainOn r16 e,8. r8 r16 e,,16 | r2 r4 r8 r16 fis,16 | r16 e8. r8 r16 e,16 r2 |

 % bar  61 
r4 r8 r16 fis16 r16 e'8. r8 r16 e'16 | r2 r4 r8 r16 fis'16 | r16 e'8. r8 r16 e'16 r2 |
\staffUpper
\clef bass
r4 r8 r16 fis16 r16 g8. r8 r16 e'16 | r2 r4 r8 r16 fis'16 | r16 g8. r8 r16 e'16 r2 |
\staffLower
r4 r8 r16 fis16\sustainOff\sustainOn r16 c'8. r8 r16 e'16 | r2 r4 r8 r16 fis'16 | r16 c'8. r8 r16 e'16 r2 |
\staffUpper
\clef bass
r4 r8 r16 fis16 r16 as8. r8 r16 e'16 | r2 r4 r8 r16 fis'16 | r16 as8. r8 r16 e'16 r2 |

 % bar  73
\mark #3 
r4 r8 r16 fis16 r16 as,8. r8 r16 a16 | r2 r4 r8 r16 fis16 | r16 as,8. r8 r16 a16 r2 |
\staffLower
r4 r8 r16 fis16\sustainOff\sustainOn r16 h8. r8 r16 a16 | r2 r4 r8 r16 fis16 | r16 h8. r8 r16 a16 r2 |
r4 r8 r16 fis16 r16 e'8. r8 r16 a16 | r2 r4 r8 r16 fis16 | r16 e'8. r8 r16 a16 r2 |
r4 r8 r16 fis16 r16 c'8. r8 r16 a16 | r2 r4 r8 r16 fis16 | r16 c'8. r8 r16 a16 r2 |

%% Two
% bar  85
r4 r8 r16 a16 r16 fis'8. r8 r16 h'16 | r2 r4 r8 r16 a'16 | r16 fis'8. r8 r16 h16 r2 |
r4 r8 r16 a16 r16 a8. r8 r16 h16 | r2 r4 r8 r16 a'16 | r16 a8. r8 r16 h16 r2 |
r4 r8 r16 a16 r16 d'8. r8 r16 h16 | r2 r4 r8 r16 a'16 | r16 d'8. r8 r16 h16 r2 |
r4 r8 r16 a16 r16 b8. r8 r16 h16 | r2 r4 r8 r16 a'16 | r16 b8. r8 r16 h16 r2 |

% bar  97 
\mark #4
r4 r8 r16 a16 r16 b8. r8 r16 h,16 | r2 r4 r8 r16 a16 | r16 b8. r8 r16 h,16 r2 |
r4 r8 r16 a16 r16 d8. r8 r16 h,16 | r2 r4 r8 r16 a16 | r16 d8. r8 r16 h,16 r2 |
\staffUpper 
r4 r8 r16 a'16 r16 g'8. r8 r16 h16 | r2 r4 r8 r16 a'16 | r16 g'8. r8 r16 h16 r2 |
r4 r8 r16 a'16 r16 es'8. r8 r16 h16 | r2 r4 r8 r16 a'16 | r16 es'8. r8 r16 h16 r2 |
% bar  109 
r4 r8 r16 a16 r16 es'8. r8 r16 h16 | r2 r4 r8 r16 a16 | r16 es'8. r8 r16 h16 r2 |
\staffLower
r4 r8 r16 a16 r16 fis'8. r8 r16 h16 | r2 r4 r8 r16 a16 | r16 fis'8. r8 r16 h16 r2 |
r4 r8 r16 a16 r16 h8. r8 r16 h16 | r2 r4 r8 r16 a16 | r16 h8. r8 r16 h16 r2 |
\staffUpper
r4 r8 r16 a16 r16 gis8. r8 r16 h16 | r2 r4 r8 r16 a16 | r16 gis8. r8 r16 h16 r2 |
% bar  121 
\mark #5
r4 r8 r16 a'16 r16 gis'8. r8 r16 d'16 | r2 r4 r8 r16 a'16 | r16 gis'8. r8 r16 d'16 r2 |
\staffLower
r4 r8 r16 a,16 r16 h,,8. r8 r16 d16 | r2 r4 r8 r16 a,16 | r16 h,,8. r8 r16 d16 r2 |
\staffUpper
r4 r8 r16 a'16 r16 e''8. r8 r16 d''16 | r2 r4 r8 r16 a'16 | r16 e''8. r8 r16 d''16 r2 |
\staffLower
r4 r8 r16 a,16 r16 c,8. r8 r16 d16 | r2 r4 r8 r16 a,16 | r16 c,8. r8 r16 d16 r2 |
% bar  133 
r4 r8 r16 a16 r16 c8. r8 r16 h,16 | r2 r4 r8 r16 a,16 | r16 c8. r8 r16 h,16 r2 |
\staffUpper
r4 r8 r16 a'16 r16 es''8. r8 r16 h''16 | r2 r4 r8 r16 a'16 | r16 es''8. r8 r16 h''16 r2 |
r4 r8 r16 a'16 r16 as''8. r8 r16 h'16 | r2 r4 r8 r16 a'16 | r16 as''8. r8 r16 h'16 r2 |
\staffLower
r4 r8 r16 a16 r16 e8. r8 r16 h,16 | r2 r4 r8 r16 a,16 | r16 e8. r8 r16 h,16 r2 |
% bar  145 
\mark #6
r4 r8 r16 a16 r16 e8. r8 r16 e16 | r2 r4 r8 r16 a16 | r16 e8. r8 r16 e16 r2 |
\staffUpper
r4 r8 r16 a'16 r16 g''8. r8 r16 e'''16 | r2 r4 r8 r16 a'16 | r16 g''8. r8 r16 e'''16 r2 |
\staffLower
r4 r8 r16 a16 r16 c'8. r8 r16 e16 | r2 r4 r8 r16 a16 | r16 c'8. r8 r16 e16 r2 |
\staffUpper
r4 r8 r16 a'16 r16 as''8. r8 r16 e''16 | r2 r4 r8 r16 a'16 | r16 as''8. r8 r16 e''16 r2 |
% bar  157 
r4 r8 r16 a16 r16 as'8. r8 r16 c''16 | r2 r4 r8 r16 a''16 | r16 as'8. r8 r16 c''16 r2 |
\staffLower
r4 r8 r16 a16 r16 h8. r8 r16 c16 | r2 r4 r8 r16 a,16 | r16 h8. r8 r16 c16 r2 |
r4 r8 r16 a16 r16 e'8. r8 r16 c16 | r2 r4 r8 r16 a16 | r16 e'8. r8 r16 c16 r2 |
r4 r8 r16 a16 r16 c'8. r8 r16 c16 | r2 r4 r8 r16 a16 | r16 c'8. r8 r16 c16 r2 |

r1\fermata

%{
% 3 
% bar  169 
\mark #7
r4 r8 r16 a,16 r16 gis8. r8 r16 fis16 | r2 r4 r8 r16 a,16 | r16 gis8. r8 r16 fis16 r2 |
r4 r8 r16 a,16 r16 h,8. r8 r16 fis16 | r2 r4 r8 r16 a,16 | r16 h,8. r8 r16 fis16 r2 |
r4 r8 r16 a,16 r16 e'8. r8 r16 fis16 | r2 r4 r8 r16 a,16 | r16 e'8. r8 r16 fis16 r2 |
r4 r8 r16 a,16 r16 c'8. r8 r16 fis16 | r2 r4 r8 r16 a,16 | r16 c'8. r8 r16 fis16 r2 |
% bar  181 
r4 r8 r16 a,16 r16 c'8. r8 r16 h16 | r2 r4 r8 r16 a,16 | r16 c'8. r8 r16 h16 r2 |
r4 r8 r16 a,16 r16 dis8. r8 r16 h16 | r2 r4 r8 r16 a,16 | r16 dis8. r8 r16 h16 r2 |
r4 r8 r16 a,16 r16 gis,8. r8 r16 h16 | r2 r4 r8 r16 a,16 | r16 gis,8. r8 r16 h16 r2 |
r4 r8 r16 a,16 r16 e8. r8 r16 h16 | r2 r4 r8 r16 a,16 | r16 e8. r8 r16 h16 r2 |
% bar  193 
\mark #8
r4 r8 r16 a'16 r16 e8. r8 r16 g'16 | r2 r4 r8 r16 a''16 | r16 e8. r8 r16 g'16 r2 |
r4 r8 r16 a'16 r16 g'8. r8 r16 g'16 | r2 r4 r8 r16 a''16 | r16 g'8. r8 r16 g'16 r2 |
r4 r8 r16 a'16 r16 c'8. r8 r16 g'16 | r2 r4 r8 r16 a''16 | r16 c'8. r8 r16 g'16 r2 |
r4 r8 r16 a'16 r16 gis'8. r8 r16 g'16 | r2 r4 r8 r16 a''16 | r16 gis'8. r8 r16 g'16 r2 |
% bar  205 
r4 r8 r16 a''16 r16 gis''8. r8 r16 g''16 | r2 r4 r8 r16 a''16 | r16 gis''8. r8 r16 g''16 r2 |
r4 r8 r16 a''16 r16 h'8. r8 r16 g''16 | r2 r4 r8 r16 a''16 | r16 h'8. r8 r16 g''16 r2 |
r4 r8 r16 a''16 r16 e'8. r8 r16 g''16 | r2 r4 r8 r16 a''16 | r16 e'8. r8 r16 g''16 r2 |
r4 r8 r16 a''16 r16 c''8. r8 r16 g''16 | r2 r4 r8 r16 a''16 | r16 c''8. r8 r16 g''16 r2 |
% bar  217 
\mark #9
r4 r8 r16 a'16 r16 c'8. r8 r16 e'16 | r2 r4 r8 r16 a'16 | r16 c'8. r8 r16 e'16 r2 |
r4 r8 r16 a'16 r16 es'8. r8 r16 e'16 | r2 r4 r8 r16 a'16 | r16 es'8. r8 r16 e'16 r2 |
r4 r8 r16 a'16 r16 as8. r8 r16 e'16 | r2 r4 r8 r16 a'16 | r16 as8. r8 r16 e'16 r2 |
r4 r8 r16 a'16 r16 e'8. r8 r16 e'16 | r2 r4 r8 r16 a'16 | r16 e'8. r8 r16 e'16 r2 |
% bar  229 
r4 r8 r16 a,16 r16 e8. r8 r16 e,16 | r2 r4 r8 r16 a,16 | r16 e8. r8 r16 e,16 r2 |
r4 r8 r16 a,16 r16 g8. r8 r16 e,16 | r2 r4 r8 r16 a,16 | r16 g8. r8 r16 e,16 r2 |
r4 r8 r16 a,16 r16 c8. r8 r16 e,16 | r2 r4 r8 r16 a,16 | r16 c8. r8 r16 e,16 r2 |
r4 r8 r16 a,16 r16 as,8. r8 r16 e,16 | r2 r4 r8 r16 a,16 | r16 as,8. r8 r16 e,16 r2 |
% bar  241 
\mark #10
r4 r8 r16 a,16 r16 as,8. r8 r16 a,16 | r2 r4 r8 r16 a,16 | r16 as,8. r8 r16 a,16 r2 |
r4 r8 r16 a,16 r16 h,8. r8 r16 a,16 | r2 r4 r8 r16 a,16 | r16 h,8. r8 r16 a,16 r2 |
r4 r8 r16 a,16 r16 e,8. r8 r16 a,16 | r2 r4 r8 r16 a,16 | r16 e,8. r8 r16 a,16 r2 |
r4 r8 r16 a,16 r16 c,8. r8 r16 a,16 | r2 r4 r8 r16 a,16 | r16 c,8. r8 r16 a,16 r2 |
% bar  253 
r4 r8 r16 cis16 r16 a8. r8 r16 f'16 | r2 r4 r8 r16 cis'16 | r16 a8. r8 r16 f'16 r2 |
r4 r8 r16 cis16 r16 h'8. r8 r16 f'16 | r2 r4 r8 r16 cis'16 | r16 h'8. r8 r16 f'16 r2 |
r4 r8 r16 cis16 r16 f'8. r8 r16 f'16 | r2 r4 r8 r16 cis'16 | r16 f'8. r8 r16 f'16 r2 |
r4 r8 r16 cis16 r16 cis'8. r8 r16 f'16 | r2 r4 r8 r16 cis'16 | r16 cis'8. r8 r16 f'16 r2 |
% bar  265 
\mark #12
r4 r8 r16 cis''16 r16 cis''8. r8 r16 b'16 | r2 r4 r8 r16 cis''16 | r16 cis''8. r8 r16 b'16 r2 |
r4 r8 r16 cis''16 r16 e8. r8 r16 b'16 | r2 r4 r8 r16 cis''16 | r16 e8. r8 r16 b'16 r2 |
r4 r8 r16 cis''16 r16 a,8. r8 r16 b'16 | r2 r4 r8 r16 cis''16 | r16 a,8. r8 r16 b'16 r2 |
r4 r8 r16 cis''16 r16 f8. r8 r16 b'16 | r2 r4 r8 r16 cis''16 | r16 f8. r8 r16 b'16 r2 |
% bar  277 
r4 r8 r16 cis'''16 r16 f''8. r8 r16 fis''16 | r2 r4 r8 r16 cis''16 | r16 f''8. r8 r16 fis''16 r2 |
r4 r8 r16 cis'''16 r16 as''8. r8 r16 fis''16 | r2 r4 r8 r16 cis''16 | r16 as''8. r8 r16 fis''16 r2 |
r4 r8 r16 cis'''16 r16 des''8. r8 r16 fis''16 | r2 r4 r8 r16 cis''16 | r16 des''8. r8 r16 fis''16 r2 |
r4 r8 r16 cis'''16 r16 a''8. r8 r16 fis''16 | r2 r4 r8 r16 cis''16 | r16 a''8. r8 r16 fis''16 r2 |
% bar  289 
\mark #13
r4 r8 r16 cis'16 r16 a'8. r8 r16 gis''16 | r2 r4 r8 r16 cis''16 | r16 a'8. r8 r16 gis''16 r2 |
r4 r8 r16 cis'16 r16 h'8. r8 r16 gis''16 | r2 r4 r8 r16 cis''16 | r16 h'8. r8 r16 gis''16 r2 |
r4 r8 r16 cis'16 r16 f'8. r8 r16 gis''16 | r2 r4 r8 r16 cis''16 | r16 f'8. r8 r16 gis''16 r2 |
r4 r8 r16 cis'16 r16 cis''8. r8 r16 gis''16 | r2 r4 r8 r16 cis''16 | r16 cis''8. r8 r16 gis''16 r2 |
% bar  301 
r4 r8 r16 cis'16 r16 cis'8. r8 r16 f'16 | r2 r4 r8 r16 cis16 | r16 cis'8. r8 r16 f'16 r2 |
r4 r8 r16 cis'16 r16 fes'8. r8 r16 f'16 | r2 r4 r8 r16 cis16 | r16 fes'8. r8 r16 f'16 r2 |
r4 r8 r16 cis'16 r16 a8. r8 r16 f'16 | r2 r4 r8 r16 cis16 | r16 a8. r8 r16 f'16 r2 |
r4 r8 r16 cis'16 r16 f'8. r8 r16 f'16 | r2 r4 r8 r16 cis16 | r16 f'8. r8 r16 f'16 r2 |
% bar  313 
\mark #14
r4 r8 r16 cis,16 r16 f8. r8 r16 f,16 | r2 r4 r8 r16 cis16 | r16 f8. r8 r16 f,16 r2 |
r4 r8 r16 cis,16 r16 as8. r8 r16 f,16 | r2 r4 r8 r16 cis16 | r16 as8. r8 r16 f,16 r2 |
r4 r8 r16 cis,16 r16 cis8. r8 r16 f,16 | r2 r4 r8 r16 cis16 | r16 cis8. r8 r16 f,16 r2 |
r4 r8 r16 cis,16 r16 a,8. r8 r16 f,16 | r2 r4 r8 r16 cis16 | r16 a,8. r8 r16 f,16 r2 |
% bar  325 
r4 r8 r16 cis,16 r16 a,8. r8 r16 b,16 | r2 r4 r8 r16 cis16 | r16 a,8. r8 r16 b,16 r2 |
r4 r8 r16 cis,16 r16 h,8. r8 r16 b,16 | r2 r4 r8 r16 cis16 | r16 h,8. r8 r16 b,16 r2 |
r4 r8 r16 cis,16 r16 f,8. r8 r16 b,16 | r2 r4 r8 r16 cis16 | r16 f,8. r8 r16 b,16 r2 |
r4 r8 r16 cis,16 r16 cis,8. r8 r16 b,16 | r2 r4 r8 r16 cis16 | r16 cis,8. r8 r16 b,16 r2 

%}

	\bar "|."
}



%% Extra material (pModulated to the plagal pMode) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%{

pModOneRPlagBlue = { r4 r4 b''4. e'''8 ~ | e'''4. dis''8 fis''2 | b'4. e'8 ~ e'4. dis''8 |  }
pModTwoRPlagBlue = { r4 r4 cis''4. a''8 | c'''4. fis''8 cis'''2 | cis'''4. c''8 ~ c''4. a''8 |  }
pModThreeRPlagBlue = { r4 r4 e''4. a'8 ~ | a'4. gis'8 h'2 | e'4. a8 ~ a4. gis'8 | }
pModFourRPlagBlue = { r4 r4 gis''4. e''8 | g'''4. cis'''8 gis'''2 | gis'''4. g''8 ~ g''4. e'''8 | }

%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
