\version "2.22.1"

\book {
  \header{
  title = "I Got Mine"
  composer = "The Black Keys"
  tagline = ##f
  }

  \score {
    \new TabStaff {
      \set TabStaff.instrumentName = #"Bb Bass "
      \set TabStaff.shortInstrumentName = #"B "
      \set Staff.stringTunings = \stringTuning < d,, g,, c, f, >
      \relative c, {
        a4.\4 a8\4 aes\4 g4.\4 | g8\4 ges\4 f4.\4 e4.\4 | ees1 \bar "|."
      }
    }
  }

  \score {
    \new TabStaff {
      \set TabStaff.instrumentName = #"Bb Bass "
      \set TabStaff.shortInstrumentName = #"B "
      \set Staff.stringTunings = \stringTuning < d,, g,, c, f, >
      \relative c, {
        a4.\4 a8\4 aes\4 g4.\4 | g8\4 ges\4 f4.\4 e4.\4 | ees1\4 | d\4 \bar "|."
      }
    }
  }
}
