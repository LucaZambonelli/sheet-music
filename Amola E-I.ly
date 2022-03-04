\version "2.22.1"

makePercent = #(define-music-function (note) (ly:music?)
  (make-music 'PercentEvent 'length (ly:music-length note)))


\book {
  \header{
    title = "Canti E-I"
    composer = "coro di Amola"
    tagline = ##f
  }

  \score {
    \header {
      piece = "È la gioia che fa cantare - p. 33"
    }
    <<
      \new Staff {
        \set Staff.instrumentName = #"intro "
        \relative c''' {
          \clef "treble^8"
          \key a \major
          \time 4/4
          \repeat volta 2 {
            r4 gis8 gis gis fis e a~ | a gis4 fis e4. |
          }
          \alternative {
            { r4 gis8 gis gis fis e a~ | a cis4 b8~ b2 | }
            { b4. a g4~ | g8 fis g a b4-. b \bar "|.|"}
          }
          R1 \bar "|."
        }
      }
      \new Staff {
      \set Staff.instrumentName = #"dopo strofe "
        \relative c''' {
          \clef "treble^8"
          \key a \major
          R1 | R1 | R1 | R1 |
          b4. a g4~ | g8 fis g a b4-. b |
          R1 |
        }
      }
      \new Staff {
      \set Staff.instrumentName = #"finale "
        \relative c''' {
          \clef "treble^8"
          \key a \major
          R1 | R1 | R1 | R1 |
          b4. a g4~ | g8 fis g a b4-. b |
          e4-. r2.
        }
      }
    >>
  }

  \score {
    \header {
      piece = "Frutto della nostra terra - p. 64"
    }
    <<
      \new Staff {
        \set Staff.instrumentName = #"intro "
        \relative c'' {
          \clef "treble^8"
          \key g \major
          \tuplet 3/2 {d8 d d} g8 fis16 e~ e8 e~ e4 |
          \tuplet 3/2 {d8 d d} g8 fis16 e~ e2 \bar "|."
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"finale "
        \relative c'' {
          \clef "treble^8"
          \key g \major
          \tuplet 3/2 {d8 d d} g8 fis16 e~ e2 |
          \tuplet 3/2 {d8 d d} e8 d16 d~ d2 |
        }
      }
    >>
  }

  \score {
    \header {
      piece = "Il canto dell'amore - p. 53"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c'' {
        \clef treble
        \key g \major
        \time 4/4
        a8 d e4 d8 a e'4 | d8 a e'4 fis2 |
        e8 fis g4 fis8 e d4 | e8 fis d2. \bar"|."
      }
    }
  }

  \score {
    \header {
      piece = "Invochiamo la tua presenza - p. 42"
    }
    <<
      \new Staff {
        \set Staff.instrumentName = #"intro "
        \relative c''' {
          \clef "treble^8"
          \key f \major
          \time 4/4
          r8 f16 f e d c c~ c bes8 c16~ c8 d |
          c8. bes16~ bes8 a g8. a16~ a8 bes |
          a8. bes16~ bes8  c d2 |
          c8. bes16~ bes8 a g2 | f8 e d2. \bar"|."
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"dopo rit "
        \relative c''' {
          \clef "treble^8"
          \key f \major
          \repeat percent 5 { \makePercent s1 }
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"strofa "
        \relative c''' {
          \set Staff.instrumentName = #"strofa "
          \clef "treble^8"
          \key f \major
          R1 | R | f8 e d2. | R1 | \makePercent s1 |
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"finale "
        \relative c''' {
          \clef "treble^8"
          \key f \major
          \repeat percent 5 { \makePercent s1 }
        }
      }
    >>
  }

  \score {
    \header {
      piece = "Isaia 11 - p. 15"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c''' {
        \clef treble
        \key a \major
        \time 4/4
        r4 a fis e | cis2 e |
        cis4 e cis8 b a4 | gis8 a b4 cis d8 cis~ | \break
        cis2 cis8 e fis gis | a4 gis8 fis gis4 fis8 e |
        fis4 e8 cis e4 cis8 b | cis4 b8 a4. cis8 b | \break
        cis4 b a cis | e b8 cis4 e4.~ |
        e8 cis4 e e fis8 | e4. cis4 b8 a4 |
        fis2 e \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Isaia 62 - p. 46"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
        \relative c'' {
          \clef "treble^8"
          \key b \major
          \time 4/4
          \tuplet 3/2 { fis4 e dis } \tuplet 3/2 { fis e dis } |
          \tuplet 3/2 { b' ais gis } \tuplet 3/2 { b ais gis } |
          \tuplet 3/2 { fis e dis } \tuplet 3/2 { fis e dis } |
          gis2. ais8 b | dis1 \bar"|." 
        }
    }
  }

  \score {
    \header {
      piece = "Iubilate Deo - p. 4"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c'' {
        \clef "treble^8"
        \key g \major
        \time 4/4
        d8 fis b a fis d~ d4 | d8 fis b a fis2 \bar"|."
      }
    }
  }
}
