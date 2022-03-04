\version "2.22.1"

makePercent = #(define-music-function (note) (ly:music?)
  (make-music 'PercentEvent 'length (ly:music-length note)))


\book {
  \header{
    title = "Parti comuni"
    composer = "coro di Amola"
    tagline = ##f
  }

  \score {
    \header {
      piece = "Salmo, tipo 1"
    }
    \new Staff {
      \relative c'' {
        \clef "treble^8"
        \key g \major
        \time 4/4
        c8 d e fis g a b4 |
        d,8 e fis g a b d4 |
        b1 \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Salmo, tipo 2"
    }
    \new Staff {
      \relative c''' {
        \clef "treble^8"
        \key g \major
        \time 4/4
        g2 a4. g8 | fis4 e d2 |
        g4 fis e d | e fis e2 \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Alleluia"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c'' {
        \clef treble
        \key a \major
        \time 4/4
        \partial 4 e8 fis |
        gis4 gis \tuplet 3/2 { fis e cis } |
        e1 \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Alleluia - Cantate al Signore"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c'' {
        \clef treble
        \key c \major
        \time 4/4
        g8 a b c d c d4 |
        c1 \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Lode a te, o Cristo"
    }
    <<
      \new Staff {
        \set Staff.instrumentName = #"intro "
        \relative c''' {
          \clef "treble^8"
          \key a \major
          \time 6/8
          b8. cis16 b8 a8. fis16 e8 |
          fis4 e8 fis4. \bar "|."
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"al versetto "
        \relative c {
          \clef "treble^8"
          \key a \major
          R2. |
          R2. |
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"finale "
        \relative c {
          \repeat percent 2 { \makePercent s2. }
        }
      }
    >>
  }

  \score {
    \header {
      piece = "Santo"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c'' {
        \clef treble
        \key g \major
        \time 4/4
        d4 d e g |
        g fis8 e fis2 \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Agnello di Dio, tipo 1"
    }
    <<
      \new Staff {
        \set Staff.instrumentName = #"intro "
        \relative c'' {
          \clef "treble^8"
          \key g \major
          \time 6/8
          \repeat volta 2 {
            e4.~ e8 fis g | a4.~ a8 g a |
            b2. | b4 a g
          }
          e2. \bar "|."
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"tra strofe "
        \relative c {
          \repeat percent 5 { \makePercent s2. }
        }
      }
    >>
  }

  \score {
    \header {
      piece = "Agnello di Dio, tipo 2"
    }
    <<
      \new Staff {
        \set Staff.instrumentName = #"intro "
        \relative c'' {
          \clef "treble^8"
          \key f \major
          \time 2/4
          f4 g8 g | a4 f |
          e2 | d \bar "|.|"
          R2 | R2 |
          R2 | R2 |
          R2 | R2 |
          R2 | R2 |
          R2 | R2 \bar "|."
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"terza "
        \relative c'' {
          \clef "treble^8"
          \key f \major
          R2 | R2 |
          R2 | R2 |
          r4. f8 | g4 g8 g |
          a a4 f8 | d'4 c8 c |
          c4 bes8 bes | a a4. |
          R2 | r4. g8 |
          bes4 a | f2 |
        }
      }
    >>
  }
}
