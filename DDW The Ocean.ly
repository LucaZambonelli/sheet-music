\version "2.22.1"

\book {
  \header{
  title = "The Ocean"
  composer = "Led Zeppelin"
  tagline = ##f
  }

  \score {
    \new TabStaff {
      \set TabStaff.instrumentName = #"Bass "
      \set TabStaff.shortInstrumentName = #"B "
      \set Staff.stringTunings = #bass-tuning
      \relative c {
      \time 15/8
      g32\2( a16.\2) g32\2( a16.\2) g16\2   e\3 c8\4 ( g\4) r4.
      d'16\3 e\3 g\2 r d\3 e\3 a\2 r cis,8\3 a'16\2 d,\3 r e\3 |
      }
    }
  }
}
