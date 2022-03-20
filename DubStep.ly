\version "2.22.1"

song = "X-Contamination"
album = "DubStep"
author = "Luca Zambonelli"
execute = 136


% elec section
scoreElec = {
  r4 << e e' gis d' >> r << cis g cis, a >> |
  r << e e' gis d' >> r << d gis, e e, >> | \break
  r << a cis g' cis >> r << cis g cis, ais >> |
  r << e e' gis d' >> r << d gis, e cis >> | \break
  r << b dis a' dis >> r << cis g cis, a >> |
  r << e e' gis d' >> r << d gis, e e, >> | \bar "||" \break 
  }


% bass section
scoreBass = {
  e4~ \tuplet 3/2 { e8 e e } a4~ \tuplet 3/2 { a a8 } |
  \tuplet 3/2 { e4 e8 } e4 e2 |
  a4~ \tuplet 3/2 { a8 a a } ais4~ \tuplet 3/2 { ais ais8 } |
  \tuplet 3/2 { e4 e8 } e4 cis'2 |
  b4~ \tuplet 3/2 { b8 b b } a4~ \tuplet 3/2 { a a8 } |
  \tuplet 3/2 { e4 e8 } e4 e2 |
}


% drums section
scoreDrums = {
  \drummode {
    \tuplet 3/2 { << bd8 hhc >> hhc hhc } \tuplet 3/2 { hho bd << bd hhc >> }
      \tuplet 3/2 { << sn hhc >> hhc hho } \tuplet 3/2 { hhc4 << bd8 hhc >> } |
    \tuplet 3/2 { << bd hhc >> hho << bd hhc >> } \tuplet 3/2 { << bd4 hhc >> hhc8 }
      << sn4 hho >> hho |
    \tuplet 3/2 { << bd8 hhc >> hhc hhc } \tuplet 3/2 { hho bd << bd hhc >> }
      \tuplet 3/2 { << sn hhc >> hhc hho } \tuplet 3/2 { hhc4 << bd8 hhc >> } |
    \tuplet 3/2 { << bd hhc >> hho << bd hhc >> } \tuplet 3/2 { << bd4 hhc >> hhc8 }
      << sn4 hho >> hho |
    \tuplet 3/2 { << bd8 hhc >> hhc hhc } \tuplet 3/2 { hho bd << bd hhc >> }
      \tuplet 3/2 { << sn hhc >> hhc hho } \tuplet 3/2 { hhc4 << bd8 hhc >> } |
    \tuplet 3/2 { << bd hhc >> hho << bd hhc >> } \tuplet 3/2 { << bd4 hhc >> hhc8 }
      << sn4 hho >> hho |
  }
}


% writing down
\book {
  \header {
    title = #song
    subtitle = #album
    composer = #author
    tagline = ##f
  }

  \score {
    <<
      \new Staff {
        \set Staff.instrumentName = #"Elec "
        \set Staff.midiInstrument = #"electric guitar (clean)"
        \numericTimeSignature
        \relative c, {
          \clef "treble_8"
          \key e \major
          \time 4/4
          \tempo 4 = #execute
          \scoreElec
          \scoreElec
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"Bass "
        \set Staff.midiInstrument = #"electric bass (finger)"
        \numericTimeSignature
        \relative c,, {
          \clef "bass_8"
          \key e \major
          \numericTimeSignature
          \scoreBass
          \scoreBass
        }
      }
      \new DrumStaff {
        \set Staff.instrumentName = #"Drums "
        \numericTimeSignature
        \scoreDrums
        \scoreDrums
      }
    >>
  \layout { }
  \midi { }
  }
}
