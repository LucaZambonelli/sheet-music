\version "2.22.1"

makePercent = #(define-music-function (note) (ly:music?)
  (make-music 'PercentEvent 'length (ly:music-length note)))


\book {
  \header{
    tagline = ##f
  }

  \score {
    \header {
      piece = "Ora è tempo di gioia - p. 24"
    }
    <<
      \new Staff {
        \set Staff.instrumentName = #"intro "
        \relative c'' {
          \clef "treble^8"
          \key d \major
          \time 4/4
          \repeat volta 2 {
            fis4 d fis2 | g4 e g2 |
            a4 fis a2 |
          }
          \alternative {
            { g4 e g2 | }
            { g4. fis16 e d2 \bar "|."}
          }
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"tra strofe "
        \relative c'' {
          \repeat percent 5 { \makePercent s1 }
        }
      }
    >>
  }

  \score {
    \header {
      piece = "Perché tu sei con me - p. 35"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c''' {
        \clef "treble^8"
        \key g \major
        \time 4/4
        \partial 4 a8 b | c4 c c d8 c |
        b a g4 a2 | e4 e8 g fis e d4 |
        e1 \bar"|."
      }
    }
  }

  \score {
    \header {
      piece = "Popoli tutti acclamate - p. 57"
    }
    <<
      \new Staff {
        \set Staff.instrumentName = #"intro "
        \relative c'' {
          \clef treble
          \key a \major
          \time 4/4
          r4 cis d e | r gis, a b |
          r cis d e | r gis, a b |
          a1 \bar "|."
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"tra strofe "
        \relative c {
          \repeat percent 5 { \makePercent s1 }
        }
      }
    >>
  }

  \score {
    \header {
      piece = "Questo io credo - p. 1"
    }
    <<
      \new Staff {
        \set Staff.instrumentName = #"intro "
        \relative c'' {
          \clef treble
          \key f \major
          \time 4/4
          d2. f4 | e2. c4 |
          d2. f4 | e2. c4 |
          d1 \bar"|."
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"primo rit "
        \relative c'' {
          \clef treble
          \key f \major
          r4 g c g | d' e f4. e8 |
          d2. f4 | bes2 a |
          c1 |
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"finale "
        \relative c''' {
          \clef "treble^8"
          \key g \major
          b4 g b g | b g b g |
          c g b g | a g g2~ |
          g1 \fermata
        }
      }
    >>
  }

  \score {
    \header {
    piece = "Re di gloria - p. 49"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c''' {
        \clef "treble^8"
        \key c \major
        \time 4/4
        \partial 4 a8 b |
        c4 b a8 g4. | g1 \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Svegliati, Sion - p. 26"
    }
    <<
      \new Staff {
        \set Staff.instrumentName = #"intro "
        \relative c'' {
          \clef "treble^8"
          \key c \major
          \time 6/8
          f8. e16 d8 f e d | g8. f16 e8 g f e |
          a4. g | fis2. \bar"|."
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"al rit. "
        \relative c'' {
          \clef treble
          \key g \major
          r8 r c b c4 | b2. | R2. | R |
        }
      }
    >>
  }

  \score {
    \header {
      piece = "Tu scendi dalle stelle - p. 57"
    }
    \new Staff {
      \set Staff.instrumentName = #"in: soprano "
      \relative c'' {
        \clef "treble^8"
        \key d \major
        \time 6/8
        fis8. g16 a8 g a b |
        e,8. fis16 g8 fis g a |
        d,8. e16 fis8 e fis g |
        cis, d e fis4. |
        d fis \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Tu sei - p. 40"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c''' {
        \clef "treble^8"
        \key c \major
        \time 4/4
        \partial 8 c8 |
        c4. b8 b4. a8 | a4. g8 a4. c8 |
        c4. b8 b4. a8 | a4. g8 a2 \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Vieni al Signor - p. 51"
    }
    <<
      \new Staff {
        \set Staff.instrumentName = #"in: soprano "
        \relative c'' {
          \clef "treble^8"
          \key f \major
          \time 4/4
          f16 g a8~ a4 g8 f g4 | f16 g a8~ a c g4 g |
          f8 g~ g f e r e16 d c8 | d1 \bar"|."
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"rit: tenore "
        \relative c'' {
          \clef treble
          \key f \major
          R1 | a1 | R1 | R1
        }
      }
    >>
  }

  \score {
    \header {
      piece = "Vivere la vita - p. 33"
    }
    \new Staff
      \relative c {
      \clef treble
      \key c \major
      \time 4/4
      R1 \bar"|."
    }
  }
}
