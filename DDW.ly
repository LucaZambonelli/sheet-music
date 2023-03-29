\version "2.22.1"

#(set-default-paper-size "a5")
\paper {
  print-page-number  = ##f
}

\header{
  tagline = ##f
}

\bookpart {
  \score {
    \new TabStaff {
      \set Staff.stringTunings = #bass-tuning
      \relative c {
        \override Score.BarNumber.break-visibility = ##(#f #f #f)
        \tuplet 3/2 { e8\1 e\1 e\1 } \tuplet 3/2 { e\1 e\1 e\1 }
          \tuplet 3/2 { d\1 d\1 d\1 } \tuplet 3/2 { d\1 d\1 d\1 } |
        \tuplet 3/2 { b\2 b\2 b\2 } \tuplet 3/2 { b\2 b\2 b\2 }
          \tuplet 3/2 { g\2 g\2 g\2 } \tuplet 3/2 { g\2 g\2 g\2 } \bar "|."
      }
    }
  }

  \score {
    \new TabStaff {
      \set Staff.stringTunings = #bass-tuning
      \relative c, {
        \override Score.BarNumber.break-visibility = ##(#f #f #f)
        \bar ".|:" e4\3 g8\2 e\3 d4\3 b8\4 d\3 | e4\3 g8\2 e\3 a\2 g\2 e4\3 |
        d8\3 e~\3 e2.\3 | g8\2 e~\3 e2. \bar ":|."
      }
    }
  }

  \score {
    \new TabStaff {
      \set Staff.stringTunings = #bass-tuning
      \time 15/8
      \relative c {
        \override Score.BarNumber.break-visibility = ##(#f #f #f)
        g32(\2 a16.)\2 g32(\2 a16.)\2 g16\2 e\3 c8(\4 g2)\4
          d'16\3 e\3 g\2 r d\3 e\3 a\2 r des,8\3 a'16\2 d,\3 r e\3 \bar "|."
      }
    }
  }
}

\bookpart {
  \score {
    \new TabStaff {
      \set Staff.stringTunings = #bass-tuning
      \relative c, {
        \override Score.BarNumber.break-visibility = ##(#f #f #f)
        r8 d\3 bes'\2 g\2 \tuplet 3/2 { d2\3 bes4\4 } |
        g8\4 g\4 g\4 g\4 g\4 g\4 g\4 g\4 |
        g\4 d'\3 bes'\2 g\2 \tuplet 3/2 { d2\3 bes4\4 } | \break
        g8\4 g\4 g\4 g\4 g\4 g\4 g\4 g\4 |
        g\4 d'\3 bes'\2 g\2 \tuplet 3/2 { d2\3 bes4\4 } |
        g8\4 g\4 g\4 g\4 g\4 g\4 g\4 g\4 | \break
        g\4 d'\3 bes'\2 g\2 \tuplet 3/2 { d2\3 bes4\4 } |
        g8\4 g\4 g\4 g\4 g\4 g\4 g\4 g\4 |
        r g'\2 ees'\1 c\1 \tuplet 3/2 { g2\2 ees4\3 } | \break
        c8\3 c\3 c\3 c\3 c\3 c\3 c\3 c\3 |
        c\3 g'\2 ees'\1 c\1 \tuplet 3/2 { g2\2 ees4\3 } |
        c8\3 c\3 c\3 c\3 c\3 c\3 c\3 c\3 | \break
        r8 d\3 bes'\2 g\2 \tuplet 3/2 { d2\3 bes4\4 } |
        g8\4 g\4 g\4 g\4 g\4 g\4 g\4 g\4 |
        g\4 d'\3 bes'\2 g\2 \tuplet 3/2 { d2\3 bes4\4 } | \break
        g8\4 g\4 g\4 g\4 g\4 g\4 g'4\2 |
        f,\4 a8\4 a\4 ais\4 ais\4 b\4 b\4 |
        c4\3 e8\3 e\3 f\3 f\3 fis\3 fis\3 | \break
        g1~\2 | g\2 | f,4\4 g2.\4 \bar "|."
      }
    }
  }
}
