\version "2.22.1"

\book {
  \header{
  title = "I Got Mine"
  composer = "The Black Keys"
  tagline = ##f
  }

  \score {
    \new TabStaff {
      \set TabStaff.instrumentName = #"Bass "
      \set TabStaff.shortInstrumentName = #"B "
      \set Staff.stringTunings = #bass-tuning
      \relative c, {
        b4.\4 b8\4 bes\4 a4.\4 | a8\4 aes\4 g4. ges4. | f4. r4. r8 r |
      }
    }
  }
}
