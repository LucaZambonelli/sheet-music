\version "2.22.1"

\book {
  \header{
  title = "Stairway to Heaven"
  composer = "Led Zeppelin"
  tagline = ##f
  }

  \score {
    \new Staff {
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \set Staff.instrumentName = #"alto "
      \relative c'' {
        \clef treble
        \key d \major
        \time 4/4
        b1 | g |
        g | a8 b b2 r4 |
        b2 cis | e4 d8 cis b4 r8 d | \break
        d2 d | d8 e e2 r4 |
        b e8 d d cis b a | e'4 g8 fis g4 r8 a |
        b2 a | d,8 e e2 r4 \bar "|."
      }
    }
  }

  \score {
    \new Staff {
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \set Staff.instrumentName = #"then "
      \relative c'' {
        \clef treble
        \key d \major
        \time 4/4
        b1 | g2 g |
        g1 | fis8 b b2 r4 \bar "|." \break
      }
    }
  }
}
