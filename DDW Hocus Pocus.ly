\version "2.22.1"

\book {
  \header{
  title = "Hocus Pocus"
  composer = "Focus"
  tagline = ##f
  }

  \score {
    \new TabStaff {
      \set TabStaff.instrumentName = #"Bass "
      \set TabStaff.shortInstrumentName = #"B "
      \set Staff.stringTunings = #bass-tuning
      \relative c, {
        \bar ".|" g8\4 a\4 r a\4 a4.\4 a8\4 | g\4 a\4 a\4 a\4 a2\4 |
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

  \score {
    \new Staff {
      \set Staff.instrumentName = #"Organ "
      \set Staff.shortInstrumentName = #"O "
      \numericTimeSignature
      \relative c' {
        R1 | r4 r r r | \bar ".|" \break
        << e2~ a c >> << e, b' d >> | << f, a c >> << e, g c>> |
        << f, a d >> << e, g c >> | << fis, a b~ >> << e, gis b>> |
        << e,~ a c >> << e, b' d >> | << f, a c >> << e, g c>> |
        << f, a d >> << e, g c >> | << fis, a b~ >> << e, gis b>> \bar "||" \break
        << a1~ cis e >> | << a,~ d f >> |
        << a,~ c e >> | << a,~ d f >> |
        << a,~ e' g >> | << a,2~ c f >> << a, d g >> |
        << a,1~ cis~ a'~>> | << a, cis a' >> \bar "|."
      }
    }
  }
}
