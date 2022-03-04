\version "2.22.1"

makePercent = #(define-music-function (note) (ly:music?)
  (make-music 'PercentEvent 'length (ly:music-length note)))


\book {
  \header{
    title = "Canti T-Z"
    composer = "coro di Amola"
    tagline = ##f
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
          f8 g~ g f e r e16 d c8 | d1 \bar "|."
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
      \relative c'' {
      \clef treble
      \key d \major
      \time 4/4
      \tempo 4 = 128
      fis4 fis fis fis | a4 a a fis8 e~ |
      e4 e e fis8 e~ | e4 d b d8 d~ |
      d8 b2.. | r4 cis d e | \tuplet 3/2 { e fis d } a2 |
      \tuplet 3/2 { g'2 a  g } \bar "|."
    }
  }
}
