\version "2.22.1"

\book {
  \header{
  title = "The Ocean"
  composer = "Led Zeppelin"
  tagline = ##f
  }

  \score {
    \new TabStaff {
      \set TabStaff.instrumentName = #"Bb Bass "
      \set TabStaff.shortInstrumentName = #"B "
      \set Staff.stringTunings = #bass-tuning
      \set Staff.stringTunings = \stringTuning < d,, g,, c, f, >
      \relative c, {
      \time 15/8
        f32\2( g16.\2) f32\2( g16.\2) f16\2 d\3 bes8\4 ( f\4) r4.
        c'16\3 d\3 f\2 r c\3 d\3 g\2 r b,8\3 g'16\2 c,\3 r d\3 \bar "|."
      }
    }
  }
}
