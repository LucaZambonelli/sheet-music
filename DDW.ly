\version "2.22.1"


#(set-default-paper-size "a5")


\defineBarLine "]" #'("]" "" "")


\book{
  \paper {
    print-page-number  = ##f
  }


  \header{
    tagline = ##f
  }


  \bookpart {
    % I got mine
    \score {
      \new TabStaff {
        \set Staff.stringTunings = #bass-tuning
        \relative c, {
          \override Score.BarNumber.break-visibility = ##(#f #f #f)
          b4.\4 b8\4 bes\4 a4.\4 | a8\4 aes\4 g4.\4 ges4.\4 | f1\1 \bar "|."
        }
      }
    }

    % Black night intro
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

  % Black night riff
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

    % The ocean
    \score {
      \new TabStaff {
        \set Staff.stringTunings = #bass-tuning
        \time 15/8
        \relative c {
          \override Score.BarNumber.break-visibility = ##(#f #f #f)
          \bar ".|:" g32(\2 a16.)\2 g32(\2 a16.)\2 g16\2 e\3 c8(\4 g2)\4
            d'16\3 e\3 g\2 r d\3 e\3 a\2 r des,8\3 a'16\2 d,\3 r e\3 \bar ":|."
        }
      }
    }

    % Hocus pocus bass
    \score {
      \new TabStaff {
        \set Staff.stringTunings = #bass-tuning
        \relative c, {
          \override Score.BarNumber.break-visibility = ##(#f #f #f)
          s1 \bar ".|:" \break
          g8\4 a\4 r a\4 a4.\4 a8\4 | g8\4 a\4 a\4 a\4 a2\4 |
          e'4\2 f2\2 c4~\3 | c\3 bes\3 e,2\4 | \break
          g8\4 a\4 r a\4 a4.\4 a8\4 | g8\4 a\4 a\4 a\4 a2\4 |
          e'4\2 f2\2 d4~\3 | d\3 b\3 e2\2 \bar ":|." \break
          a,4.\4 c\3 d4~\3 | d1\3 |
          << d4.\3 a'\2 >> << f\2 c'\1 >> << g4~\2 d'~\1 >> | << g,1\2 d'\1 >> \bar "|."
        }
      }
    }
  }


  \bookpart {
    % Demon's eye
    \score {
      \new TabStaff {
        \set Staff.stringTunings = #bass-tuning
        \relative c, {
          \override Score.BarNumber.break-visibility = ##(#f #f #f)
          s1 \bar ".|:" \break
          \tuplet 3/2 { bes8\4 g4\4 } \tuplet 3/2 { bes8\4 g4\4 }
            \tuplet 3/2 { bes8\4 g4\4 } \tuplet 3/2 { bes8\4 g4\4 } |
          \tuplet 3/2 { bes8\4 g4\4 } \tuplet 3/2 { bes8\4 g4\4 }
            \tuplet 3/2 { bes8\4 g4\4 } \tuplet 3/2 { bes8\4 g4\4 } |
          \tuplet 3/2 { bes8\4 g4\4 } \tuplet 3/2 { bes8\4 g4\4 }
            \tuplet 3/2 { bes8\4 g4\4 } \tuplet 3/2 { bes8\4 g4\4 } \bar ":|.|:" \break
          r8 d'\3 bes'\2 g\2 \tuplet 3/2 { d2\3 bes4\4 } |
          g8\4 g\4 g\4 g\4 g\4 g\4 g\4 g\4 |
          g\4 d'\3 bes'\2 g\2 \tuplet 3/2 { d2\3 bes4\4 } | \break
          g8\4 g\4 g\4 g\4 g\4 g\4 g\4 g\4 \bar "||"
          g\4 d'\3 bes'\2 g\2 \tuplet 3/2 { d2\3 bes4\4 } |
          g8\4 g\4 g\4 g\4 g\4 g\4 g\4 g\4 | \break
          g\4 d'\3 bes'\2 g\2 \tuplet 3/2 { d2\3 bes4\4 } |
          g8\4 g\4 g\4 g\4 g\4 g\4 g\4 g\4 \bar "||"
          r g'\2 ees'\1 c\1 \tuplet 3/2 { g2\2 ees4\3 } | \break
          c8\3 c\3 c\3 c\3 c\3 c\3 c\3 c\3 |
          c\3 g'\2 ees'\1 c\1 \tuplet 3/2 { g2\2 ees4\3 } |
          c8\3 c\3 c\3 c\3 c\3 c\3 c\3 c\3 \bar "||" \break
          r8 d\3 bes'\2 g\2 \tuplet 3/2 { d2\3 bes4\4 } |
          g8\4 g\4 g\4 g\4 g\4 g\4 g\4 g\4 |
          g\4 d'\3 bes'\2 g\2 \tuplet 3/2 { d2\3 bes4\4 } | \break
          g8\4 g\4 g\4 g\4 g\4 g\4 g\4 g\4 \bar "||"
          g\4 g\4 g\4 g\4 g\4 g\4 g'4\2 |
          f,\4 a8\4 a\4 ais\4 ais\4 b\4 b\4 | \break
          c4\3 e8\3 e\3 f\3 f\3 fis\3 fis\3 |
          g1~\2 \bar "]" g\2 | f,4\4 g2.\4 \bar ":|."
        }
      }
    }
  }


  \bookpart {
    \paper {
      system-system-spacing.basic-distance = #7
    }

    % Hocus pocus keyboard
    \score {
      \new Staff {
        \relative c' {
          \numericTimeSignature
          \override Score.BarNumber.break-visibility = ##(#f #f #f)
          s1 \bar ".|:" \break
          \time 4/4
          << e2~ a c >> << e, b' d >> | << f, a c >> << e, g c >> |
          << f, a d >> << e, g c >> | << fis, a b~ >> << e, gis b >> \bar ":|." \break
          << a1~ cis e >> | << a,~ d f >> | << a,~ c e >> | << a,~ d f >> |
          << a,~ e' g >> | << a,2~ c f >> << a,~ d g >> | << a,1~ cis a' >> | << a, cis a' >> \bar "|."
        }
      }
      \layout {
        #(layout-set-staff-size 14)
      }
    }

    % Hocus pocus flute
    \score {
      \new Staff {
        \relative c''' {
          \numericTimeSignature
          \override Score.BarNumber.break-visibility = ##(#f #f #f)
          \clef "treble^8"
          s1 \bar ".|:" \break
          \time 4/4
          a8 a16 a a8_. a_. a_. a_. c4 | a8 a16 a a8_. a_. d^. cis^. a4 \bar ":|."
          e' d c8 a g4 | e' d c8 a g4 |
          a2_. b^. | c^. d^. | e f4 g | a1 \bar "|."
        }
      }
      \layout {
        #(layout-set-staff-size 14)
      }
    }
    % Stairway to heaven
    \score {
      \new Staff {
        \relative c'' {
          \numericTimeSignature
          \override Score.BarNumber.break-visibility = ##(#f #f #f)
          \clef treble
          \key g \major
          s1 | \break
          \time 4/4
          R1^\markup { \italic "intro" } | R | R | g8 a a2 r4 |
          e'1 | c | c | d8 e e2 r4 | \break
          e2 fis | a4 g8 fis e4 r8 g8 | g2 g | g8 a a2 r4 |
          e4 a8 g g fis e d | a'4 c8 b c4 r8 d | e2 d | g, 8 a a2 r4 \bar "||" \break
          a2^\markup { \italic "verse 1" } aes | g fis | f1 | g8 a a2. |
          e1 | c | c | b8 e e2. \bar "||" \break
          R1 | R^\markup { \italic "Oh and she's buying..." } | R | R \bar "||"
          g,4^\markup { \italic "verse 2" } c8 b b a g fis | a4 b c r | e2 fis | g8 a a2. | \break
          e1 | c | c | g'8 e e2 r4 \bar "||"
          e1^\markup { \italic "to interlude" }  | c | c | b8 e e2 r4 \bar "|."
        }
      }
      \layout {
        #(layout-set-staff-size 14)
      }
    }
  }
}
