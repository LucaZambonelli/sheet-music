\version "2.22.1"

makePercent = #(define-music-function (note) (ly:music?)
  (make-music 'PercentEvent 'length (ly:music-length note)))


\book {
  \header{
    title = "Canti A-D"
    composer = "coro di Amola"
    tagline = ##f
  }

  \score {
    \header {
      piece = "Alleluia (Dio ha visitato) - p. 61"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c'' {
        \clef "treble^8"
        \key g \major
        \time 4/4
        d2 fis4 d | a'1 |
        b2 fis4 d | g1 |
        b2 fis4 d | fis1 | e \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Apri le tue braccia - p. 2"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c''' {
        \clef "treble^8"
        \key f \major
        \time 4/4
        a4 a2 a8 a | bes4 a g g8 d8 | f2 g4 g | f1 \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Benedetto tu, Signore - p. 42"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c' {
        \clef treble
        \key c \major
        \time 4/4
        f2 g | a1 |
        f2 e | d1 |
        r8 g c e r g, f' e | r g, c e r a, f'16 e c8 \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Cantate al Signore un canto nuovo - p. 63"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c'' {
        \clef "treble^8"
        \key f \major
        \time 4/4
        d8 e f c r f a c | bes4-. a-. g-. f8 f \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Come il cervo va all'acqua viva - p. 53"
    }
    <<
      \new Staff {
        \set Staff.instrumentName = #"intro "
        \relative c'' {
          \clef "treble^8"
          \key f \major
          \time 4/4
          d8 e f f a4. a8 | g f d4 c2 |
          f4 g8 a c2 | r8 d c a g4 f |
          r8 a g f c4 e | d f g e |
          f d e c | d1 \bar "|."
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"strofa "
        \relative c''' {
          \clef "treble^8"
          \key f \major
          R1 | R1 |
          R1 | r8 d c a g4 f |
          r8 a g f c4 e | d f g e |
          f d e c | \makePercent s1 |
        }
      }
    >>
  }

  \score {
    \header {
      piece = "Come terra buona - p. 60"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c''' {
        \clef "treble^8"
        \key d \major
        \time 4/4
        d4 a8 a4 d4 b8~ | b a g4 g2 |
        fis4 d8 d4 fis e8~ | e fis16 e d4 d2 |
        b'8 b4 b b cis8~ | cis4 cis d2 |
        b8 a b2. | b8 a b a4 b a8~ |
        a8 b4 a b d8 | d2. r8 d,8 |
        e fis g4 a8 g4 fis8 | e4 fis2 e8 d | e1 \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Cristo è risorto veramente - p. 41"
    }
    << 
      \new Staff {
        \set Staff.instrumentName = #"intro "
        \relative c'' {
          \clef treble
          \key f \major
          \time 4/4
          a4-. f-. g-. c8 bes | a4-. a8 bes g f g4 |
          a-. f g c8 bes | a4-. a8 bes g2 \bar "|."
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"controcanto "
        \relative c'' {
          \clef treble
          \key f \major
          \time 4/4
          g4 f8. bes16 a4. r8 | d4 bes8. g16 a4. r16 bes |
          g8. f16 g8. a16 f2 | a1 \bar "|."
        }
      }
    >>
  }

  \score {
    \header {
      piece = "Dall'aurora al tramonto - p. 63"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c''' {
        \clef "treble^8"
        \key e \major
        \time 4/4
        gis2 cis~ | cis \tuplet 3/2 {cis4 b gis} |
        e2 gis~ | gis \tuplet 3/2 {gis4 fis e} |
        cis2 e | a, \tuplet 3/2 {e'4 dis b} |
        cis1 \bar "|."
      }
    }
  }

  \score {
    \header {
      piece = "Del tuo spirito, Signore - p. 48"
    }
    \new Staff {
      \set Staff.instrumentName = #"intro "
      \relative c''' {
        \clef "treble^8"
        \key d \major
        \time 4/4
        \partial 4 a4 | d8 cis cis a a b b4 |
        d, fis e8 d e4 | d1 \bar "|."
      }
    }
  }
}

