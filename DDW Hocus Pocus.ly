\book {
  \header{
  title = "Hocus Pocus"
  composer = "Focus"
  tagline = ##f
  }

  \score {
    \new TabStaff {
      \set TabStaff.instrumentName =#"Bass "
      \set TabStaff.shortInstrumentName =#"B "
      \set Staff.stringTunings = #bass-tuning
      \relative c, {
        g8\4 a\4 r a\4 a4.\4 a8\4 | g\4 a\4 a\4 a\4 a2\4 |
        e'4\2 f2\2 c4\3~ | c\3 bes\3 e,2\4 | \break
        g8\4 a\4 r a\4 a4.\4 a8\4 | g\4 a\4 a\4 a\4 a2\4 |
        e'4\2 f2\2 d4\3~ | d\3 b\3 e2\2 \bar "||" \break
        g,8\4 a\4 r a\4 a4.\4 a8\4 | g\4 a\4 a\4 a\4 a2\4 |
        e'4\2 f2\2 c4\3~ | c\3 bes\3 e,2\4 | \break
        g8\4 a\4 r a\4 a4.\4 a8\4 | g\4 a\4 a\4 a\4 a2\4 |
        e'4\2 f2\2 d4\3~ | d\3 b\3 e2\2 \bar "||" \break
        a,4.\4 c\3 d4\3~ | d1\3 |
        << d4.\3 a'\2 >> << f\2 c'\1 >> << g4\2~ d'\1~ >> | << d1\1 g,1\2 >> \bar "|."
      }
    }
  }
}
