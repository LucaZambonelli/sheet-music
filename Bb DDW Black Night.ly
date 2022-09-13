\version "2.22.1"

\book {
  \header {
    title = "Black Night"
    composer = "Deep Purple"
    tagline = ##f
  }

  \score {
    \new TabStaff {
      \set TabStaff.instrumentName = #"Bb Bass "
      \set TabStaff.shortInstrumentName = #"B "
      \set Staff.stringTunings = \stringTuning < d,, g,, c, f, >
      \relative c {
        \tuplet 3/2 { d8\1 d\1 d\1 } \tuplet 3/2 { d\1 d\1 d\1 }
          \tuplet 3/2 { c\1 c\1 c\1 } \tuplet 3/2 { c\1 c\1 c\1 } |
        \tuplet 3/2 { a\2 a\2 a\2 } \tuplet 3/2 { a\2 a\2 a\2 }
          \tuplet 3/2 { f\2 f\2 f\2 } \tuplet 3/2 { f\2 f\2 f\2 } \bar ".|:"
        d4\3 f8\2 d\3 c4\3 a8\4 c\3 |
        d4\3 f8\2 d\3 g\2 f\2  d4\3 |
        c8\3 d\3 r2. | f8\2 d\3 r2. \bar ":|."
      }
    }
  }

  \score {
    \new TabStaff {
      \set TabStaff.instrumentName = #"Bb Bass "
      \set TabStaff.shortInstrumentName = #"B "
      \set Staff.stringTunings = \stringTuning < d,, g,, c, f, >
      \relative c, {
        \bar ".|:" d4\3 f8\2 d\3 c4\3 a8\4 c\3 |
        d4\3 f8\2 d\3 g\2 f\2  d4\3 |
        c8\3 d\3 r2. | f8\2 d\3 r2. \bar":|."
      }
    }
  }

  \score {
    \new TabStaff {
      \set TabStaff.instrumentName = #"Bb Bass "
      \set TabStaff.shortInstrumentName = #"B "
      \set Staff.stringTunings = \stringTuning < d,, g,, c, f, >
      \relative c, {
        \bar ".|" d4\3 c8\3 a\4 c4\3 a8\4 c\3 |
        e4\3 d8\3 c\3 \tuplet 3/2 { d4\3 c\3 a\4 }\bar "|."
      }
    }
  }
}
