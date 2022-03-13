\version "2.22.1"

song = "DubStep"
album = "DubStep"
author = "Luca Zambonelli"
execute = 136

\book {
  \header {
    tile = #song
    subtitle = #album
    composer = #author
    tagline = ##f
  }

  \score {
    <<
      \new Staff {
        \set Staff.instrumentName = #"Bass"
        \relative c,,, {
          \clef "bass_8"
          \key e \major
          \numericTimeSignature
          \time 4/4
          \tempo 4 = #execute
          R1
        }
      }
      \new DrumStaff {
        \set Staff.instrumentName = #"Drums"
        \drummode {
          \numericTimeSignature
          \tuplet 3/2 { << bd8\mf hhc >> hhc hhc } \tuplet 3/2 { hho8 bd << bd hhc >> } 
            \tuplet 3/2 { << sn8 hhc >> hhc hho } \tuplet 3/2 { hhc4 << bd8 hhc >> } |
          \tuplet 3/2 { << bd8 hhc >> hho << bd hhc >> } \tuplet 3/2 { << bd4 hhc >> hhc8 } 
            << sn4 hho >> hho |
          \tuplet 3/2 { << bd8 hhc >> hhc hhc } \tuplet 3/2 { hho8 bd << bd hhc >> } 
            \tuplet 3/2 { << sn8 hhc >> hhc hho } \tuplet 3/2 { hhc4 << bd8 hhc >> } |
          \tuplet 3/2 { << bd8 hhc >> hho << bd hhc >> } \tuplet 3/2 { << bd4 hhc >> hhc8 } 
            \tuplet 3/2 { hho sn sn } << sn4 hhc >> |
          \tuplet 3/2 { << bd8 hhc >> hhc hhc } \tuplet 3/2 { hho8 bd << bd hhc >> } 
            \tuplet 3/2 { << sn8 hhc >> hhc hho } \tuplet 3/2 { hhc4 << bd8 hhc >> } |
          \tuplet 3/2 { << bd8 hhc >> hho << bd hhc >> } \tuplet 3/2 { << bd4 hhc >> hhc8 } 
            << sn4 hho >> hho |
          \tuplet 3/2 { << bd8 hhc >> hhc hhc } \tuplet 3/2 { hho8 bd << bd hhc >> } 
            \tuplet 3/2 { << sn8 hhc >> hhc hho } \tuplet 3/2 { hhc4 << bd8 hhc >> } |
          \tuplet 3/2 { << bd8 hhc >> hho << bd hhc >> } \tuplet 3/2 { << bd4 hhc >> hhc8 } 
            \tuplet 3/2 { hho sn sn } << sn4 hhc >> |
          \tuplet 3/2 { << bd8 hhc >> hhc hhc } \tuplet 3/2 { hho8 bd << bd hhc >> } 
            \tuplet 3/2 { << sn8 hhc >> hhc hho } \tuplet 3/2 { hhc4 << bd8 hhc >> } |
          \tuplet 3/2 { << bd8 hhc >> hho << bd hhc >> } \tuplet 3/2 { << bd4 hhc >> hhc8 } 
            << sn4 hho >> hho |
          \tuplet 3/2 { << bd8 hhc >> hhc hhc } \tuplet 3/2 { hho8 bd << bd hhc >> } 
            \tuplet 3/2 { << sn8 hhc >> hhc hho } \tuplet 3/2 { hhc4 << bd8 hhc >> } |
          \tuplet 3/2 { << bd8 hhc >> hho << bd hhc >> } \tuplet 3/2 { << bd4 hhc >> hhc8 } 
            \tuplet 3/2 { hho sn sn } << sn4 hhc >> |
        }
      }
    >>
  \layout { }
  \midi { }
  }
}
