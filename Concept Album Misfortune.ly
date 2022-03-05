\version "2.22.1"
\paper {
  #(set-paper-size "a4" 'landscape)
}

\defineBarLine "[" #'("" "[" "")
\defineBarLine "]" #'("]" "" "")


makePercent = #(define-music-function (note) (ly:music?)
  (make-music 'PercentEvent 'length (ly:music-length note)))


\book {
  \header{
    title = "Misfortune (and Bad Weather)"
    piece = "Concept Album"
    composer = "Luca Zambonelli"
    tagline = ##f
  }

  \score {
    <<
      \new Staff {
        \set Staff.instrumentName = #"Flute "
        \set Staff.midiInstrument = "flute"
        \relative c'' {
          \clef treble
          \key c \major
          \time 5/4
          \tempo 4 = 108
          \bar "[" \tuplet 3/2 { ges4 aes8 } \tuplet 3/2 { r4 ges8 }
          \tuplet 3/2 { aes bes c } \tuplet 3/2 { d4 c8~ } \tuplet 3/2 { c4 r8 } |
          \tuplet 3/2 { ges4 aes8 } \tuplet 3/2 { r4 ges8 }
          \tuplet 3/2 { aes bes c } \tuplet 3/2 { d4 c8 } ges16 r8. |
          \tuplet 3/2 { ges4 aes8 } \tuplet 3/2 { r4 ges8 }
          \tuplet 3/2 { aes bes c } \tuplet 3/2 { d4 c8~ } \tuplet 3/2 { c4 r8 } |
          \tuplet 3/2 { ges4 aes8 } \tuplet 3/2 { r4 ges8 }
          \tuplet 3/2 { aes bes c } ges4~ \tuplet 3/2 { ges r8 } \bar "||" \break
          \tuplet 3/2 { f4 g8 } \tuplet 3/2 { r4 f8 }
          \tuplet 3/2 { g a b } \tuplet 3/2 { cis4 b8~ } \tuplet 3/2 { b4 r8 } |
          \tuplet 3/2 { f4 g8 } \tuplet 3/2 { r4 f8 }
          \tuplet 3/2 { g a b } \tuplet 3/2 { cis4 b8 } g16 r8. |
          \tuplet 3/2 { ges4 aes8 } \tuplet 3/2 { r4 ges8 }
          \tuplet 3/2 { aes bes c } \tuplet 3/2 { d4 c8~ } \tuplet 3/2 { c4 r8 } |
          \tuplet 3/2 { ges4 aes8 } \tuplet 3/2 { r4 ges8 }
          \tuplet 3/2 { aes bes c } ges4~ \tuplet 3/2 { ges r8 } \bar "||" \break
          \tuplet 3/2 { r4 bes8 } \tuplet 3/2 { e d c }
          \tuplet 3/2 { bes4 aes8 } \tuplet 3/2 { d c bes} \tuplet 3/2 { aes4 ges8 } |
          \tuplet 3/2 { c bes aes } \tuplet 3/2 { ges4 e8 }
          \tuplet 3/2 { bes' aes ges } \tuplet 3/2 { e4 d8 } \tuplet 3/2 {aes'4 r8 } |
          \tuplet 3/2 { ges4 aes8 } \tuplet 3/2 { r4 ges8 }
          \tuplet 3/2 { aes bes c } \tuplet 3/2 { d4 c8~ } \tuplet 3/2 { c4 r8 } |
          \tuplet 3/2 { ges4 aes8 } \tuplet 3/2 { r4 ges8 }
          \tuplet 3/2 { aes bes c } d4~ \tuplet 3/2 { d r8 } \bar "]"
        }
      }
      \new Staff {
        \set Staff.instrumentName = #"Guitar "
        \set Staff.midiInstrument = "electric guitar (clean)"
        \relative c {
        }
      }
    >>
  \layout { }
  \midi { }
  }
}
