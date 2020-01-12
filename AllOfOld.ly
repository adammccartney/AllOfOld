  \version "2.18.2"
  \language "deutsch"
  
  \include "AllOfOld_violin.ly"
  \include "AllOfOld_synth.ly"
  \include "AllOfOld_cello.ly"
  \include "AllOfOld_piano.ly"

instrument = ""
\book {
  
  \include "AllOfOld_header.ly"
  \paper {
    #(set-paper-size "a3")
  line-width = 230\mm
  two-sided = ##t
  %inner-margin = 23\mm 
  %outer-margin = 25\mm 
  %ragged-right = ##f
  %ragged-last = ##f
  
  min-systems-per-page = #3
  max-systems-per-page = #12
  system-system-spacing.padding = #15  %fit staves closer together
  system-system-spacing.stretchability = #15  %how flexible the spacing is


 myStaffSize = #20
  #(define fonts
    (make-pango-font-tree "Times New Roman"
                          "Nimbus Sans"
                          "Luxi Mono"
                          
                           (/ myStaffSize 20))) 
  
  }
  
  \score {
<<

\new StaffGroup<<

	  \new Staff \with {
		instrumentName = #"Violin"
		shortInstrumentName = #"Vln."
		midiInstrument = #"violin"
	  }{\accidentalStyle modern-cautionary \AllOfOld_violin}

	  \new Staff \with {
		instrumentName = #"Cello"
		shortInstrumentName = #"Vlc."
		midiInstrument = "cello"
	  }{\accidentalStyle modern-cautionary \AllOfOld_cello}
	  
	  
	  \new DrumStaff {
            \seqPercVCFstaff
            { \accidentalStyle modern-cautionary \AllOfOld_seqPercVCF}
	  }

	  \new Staff \with {
		instrumentName = #"Synthesizer"
		shortInstrumentName = #"Synth."
		midiInstrument = #"string ensemble 1"
		  } 
		{\accidentalStyle modern-cautionary \AllOfOld_synth   }

	  \new PianoStaff = "piano"
	 \with {
		instrumentName = #"Piano"
		shortInstrumentName = #"Pno."
		midiInstrument = #"acoustic grand"
	  }     <<
          \context Staff = "upper" 
            \context Voice = AllOfOld_pno_right { \key c \major \tempo 4 = 40 \accidentalStyle modern-cautionary \AllOfOld_piano_right }
          \context Staff = "lower" 
            \context Voice = AllOfOld_pno_left  { \key c \major \tempo 4 = 40 \accidentalStyle modern-cautionary  \AllOfOld_piano_left }
          >>
	 
  >>

>>%Score
  
	  

	\header {piece = ""}
	
	
	\layout {
	  
	   indent = 1\cm
           % Increase the size of the bar number by 2
           \override Score.BarNumber.font-size = #2
        
           \set Score.markFormatter = #format-mark-box-alphabet
           \override Score.RehearsalMark.font-size = #5 
           \set Staff.barAlways = ##t
           \set Staff.defaultBarType = "" 
           
           \context {
                     \Score
                     \RemoveEmptyStaves
                    }
  
           \context {
                     \Staff
                    \RemoveEmptyStaves

     % To use the setting globally, uncomment the following line:

     \override VerticalAxisGroup #'remove-first = ##t
                    }
          
                
	        }
	        
	
	\midi {  
	  \context {                         %
          \Staff                             %
          \remove "Staff_performer"          % Creating single
          }                                  % midi channel 
          \context {                        % for each 
          \Voice                            % voice
          \consists "Staff_performer"      %  
                   }
	  \tempo 4 = 100} 
                    }
  }
   
  
  