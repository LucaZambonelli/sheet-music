\version "2.22.1"

\book {
  \header {
    title = "Black Night"
    composer = "Deep Purple"
    tagline = ##f
  }

  \score {
    \new TabStaff {
      \set TabStaff.instrumentName = #"Bass "
      \set TabStaff.shortInstrumentName = #"B "
      \set Staff.stringTunings = #bass-tuning
      \relative c {
        \tuplet 3/2 { e8\1 e\1 e\1 } \tuplet 3/2 { e\1 e\1 e\1 }
          \tuplet 3/2 { d\1 d\1 d\1 } \tuplet 3/2 { d\1 d\1 d\1 } |
        \tuplet 3/2 { b\2 b\2 b\2 } \tuplet 3/2 { b\2 b\2 b\2 }
          \tuplet 3/2 { g\2 g\2 g\2 } \tuplet 3/2 { g\2 g\2 g\2 } \bar ".|:"
        e4\3 g8\2 e\3 d4\3 b8\4 d\3 |
        e4\3 g8\2 e\3 a\2 g\2  e4\3 |
        d8\3 e\3 r2. | g8\2 e\3 r2. \bar":|."
      }
    }
  }
}
