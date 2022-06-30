\version "2.22.1"

\book {
  \header{
  title = "Hocus Pocus"
  composer = "Focus"
  tagline = ##f
  }

  \score {
    \new TabStaff {
      \set TabStaff.instrumentName = #"Bb Bass "
      \set TabStaff.shortInstrumentName = #"B "
      \set Staff.stringTunings = \stringTuning < d,, g,, c, f, >
      \relative c,, {
        \bar ".|" f8\4 g\4 r g\4 g4.\4 g8\4 | f\4 g\4 g\4 g\4 g2\4 |
        d'4\2 ees2\2 bes4\3~ | bes\3 aes\3 d,2\4 | \break
        f8\4 g\4 r g\4 g4.\4 g8\4 | f\4 g\4 g\4 g\4 g2\4 |
        d'4\2 ees2\2 c4\3~ | c\3 a\3 d2\2 \bar "||" \break
        f,8\4 g\4 r g\4 g4.\4 g8\4 | f\4 g\4 g\4 g\4 g2\4 |
        d'4\2 ees2\2 bes4\3~ | bes\3 aes\3 d,2\4 | \break
        f8\4 g\4 r g\4 g4.\4 g8\4 | f\4 g\4 g\4 g\4 g2\4 |
        d'4\2 ees2\2 c4\3~ | c\3 a\3 d2\2 \bar "||" \break
        g,4.\4 bes\3 c4\3~ | c1\3 |
        << c4.\3 g'\2 >> << ees\2 bes'\1 >> << f4\2~ c'\1~ >> | << c1\1 f,1\2 >> \bar "|."
      }
    }
  }

  \score {
    \new Staff {
      \set Staff.instrumentName = #"Bb Organ "
      \set Staff.shortInstrumentName = #"O "
      \numericTimeSignature
      \transpose bes c {
        \key bes \major
        \relative c'' {
          R1 | r4 r r r | \bar ".|" \break
          << d2~ g bes >> << d, a' c >> | << ees, g bes >> << d, f bes>> |
          << ees, g c >> << d, f bes >> | << e, g a~ >> << d, fis a>> |
          << d,2~ g bes >> << d, a' c >> | << ees, g bes >> << d, f bes>> |
          << ees, g c >> << d, f bes >> | << e, g a~ >> << d, fis a>> | \bar "||" \break
          << g1~ b d >> | << g,~ c ees >> |
          << g,~ bes d >> | << g,~ c ees >> |
          << g,~ d' f >> | << g,2~ bes ees >> << g,~ c f >> |
          << g,1~ b~ g'~>> | << g, b g' >> \bar "|."
        }
      }
    }
  }

  \score {
    \new Staff {
      \set Staff.instrumentName = #"Flute "
      \set Staff.shortInstrumentName = #"F "
      \numericTimeSignature
      \clef "treble^8"
      \key bes \major
      \relative c''' {
        g8 g16 g g8^. g^. g^. g^. bes4 | g8 g16 g g8^. g^. c^. b^. g4 |
        g8 g16 g g8^. g^. g^. g^. bes4 | g8 g16 g g8^. g^. c^. b^. g4 | \break
        d' c bes8 g f4 | d' c bes8 g f4 |
        g r a r | bes r c r | d2 ees4 f | g1 \bar "|."

      }
    }
  }
}
