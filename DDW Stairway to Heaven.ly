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
          \key g \major
          e1 | c |
          c | d8 e e2 r4 |
          e2 fis | a4 g8 fis e4 r8 g | \break
          g2 g | g8 a a2 r4 |
          e a8 g g fis e d | a'4 c8 b c4 r8 d |
          e2 d | g,8 a a2 r4 \bar "|."
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
          \key g \major
          e1 | c2 c |
          c1 | b8 e e2 r4 \bar "|." \break
        }
      }
    }
  }
}
