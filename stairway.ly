\version "2.22.1"

\paper {
    top-margin = 25
    left-margin = 25
    right-margin = 20
    bottom-margin = 20
}

\book {
    \header{
        tagline = ##f
    }

    \score {
        \new Staff {
            \relative c'' {
                \override Score.BarNumber.break-visibility = ##(#f #f #f)
                \set Staff.instrumentName = #"intro "
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
            \relative c'' {
                \override Score.BarNumber.break-visibility = ##(#f #f #f)
                \set Staff.instrumentName = #"poi "
                \clef treble
                \key d \major
                \time 4/4
                b1 | g2 g |
                g1 | fis8 b b2 r4 \bar "|." \break
            }
        }
    }
}