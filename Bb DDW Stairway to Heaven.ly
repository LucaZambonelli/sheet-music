\book {
  \header{
  title = "Stairway to Heaven"
  composer = "Led Zeppelin"
  tagline = ##f
  }

  \score {
    \new Staff {
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \set Staff.instrumentName = #"Alto "
      \numericTimeSignature
      \transpose f c {
        \relative c'' {
          \key f \major
          d1 | bes |
          bes | c8 f f2 r4 |
          d2 e | g4 f8 e d4 r8 f | \break
          f2 f | f8 g g2 r4 |
          d g8 f f e d c | g'4 bes8 a bes4 r8 c |
          d2 c | f,8 g g2 r4 \bar "|."
        }
      }
    }
  }

  \score {
    \new Staff {
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \set Staff.instrumentName = #"Alto "
      \numericTimeSignature
      \transpose f c {
        \relative c'' {
          \key f \major
          d1 | bes2 bes |
          bes1 | a8 d d2 r4 \bar "|." \break
        }
      }
    }
  }
}
