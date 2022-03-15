\version "2.22.1"

\defineBarLine "[" #'("" "[" "")
\defineBarLine "]" #'("]" "" "")

makePercent = #(define-music-function (note) (ly:music?)
  (make-music 'PercentEvent 'length (ly:music-length note)))

song = "Fives"
album = "Concept Album"
author = "Luca Zambonelli"
execute = 120


% piano section
scorePianoTreb = {
  R1 | c4 d e f | R1 | g4 f e d | \break
  R1 | c4 e d c | R1 | g'4 e d c | \break
  R1 | c4 e d c \bar "||" | \makePercent s1 | \makePercent s1 |
}
scorePianoBass = {
  a2 g | a1 | a2 g | a1 |
  a2 g | a1 | a2 g | a1 |
  a2 g | a1 | \makePercent s1 | \makePercent s1 |
}
midiPianoTreb = {
  R1 | << c4\mf c, >> << d d' >> << e e, >> << f f' >> |
  R1 | << g4 g, >> << f f' >> << e e, >> << d d' >> |
  R1 | << c4 c, >> << e e' >> << d d, >> << c c' >> |
  R1 | << g'4 g, >> << e e' >> << d d, >> << c c' >> |
  R1 | << c4 c, >> << e e' >> << d d, >> << c c' >> |
}
midiPianoBass = {
  << a2\mf a, >> << g' g, >> | << a'1 a, >> |
  << a'2 a, >> << g' g, >> | << a'1 a, >> |
  << a'2 a, >> << g' g, >> | << a'1 a, >> |
  << a'2 a, >> << g' g, >> | << a'1 a, >> |
  << a'2 a, >> << g' g, >> | << a'1 a, >> |
}
midiPianoTrebEcho = {
  r1 << c4\mf c, >> << e e' >> << d d, >> << c c' >>
}
midiPianoBassEcho = {
  << a'2\mf a, >> << g' g, >> << a'1 a, >>
}


% rythm section
scoreRythm = {
 \partial 4 s4 \bar "["
  s8 r1 s8 | s8 r1 s8 | s8 r1 s8 | \break
  s8 r1 s8 | r8 << d\6 f'\3 >> << f4\3 d,\6 >> r2. |
  r2 << c4\6 ees'\3 >> << g\3 ees,\6 >> r |
  s8 \makePercent s1 s8 | s8 \makePercent s1 s8 \bar "]"
}
chordsRythm = {
  \set chordChanges = ##f
  \chordmode {
    \partial 4 s4 |
    d1:m7.9- s4 | d1:m7.9- s4 |
    d1:m7.9- s4 | d1:m7.9- s4 |
    d1:m7.9- s4 | d1:m7.9- s4 |
    d1:m7.9- s4 | d1:m7.9- s4 |
  }
}
midiRythm = {
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | R1 |
  r1 r4 | r1 r4 | r1 r4 | r1 r4 |
  \tuplet 3/2 { r4 << d8\mf f' >> } << f4 d, >> r2. |
  r2 << c4 ees' >> << g ees, >> r |
  \tuplet 3/2 { r4 << d8 f' >> } << f4 d, >> r2. |
  r2 << c4 ees' >> << g ees, >> r |
  \tuplet 3/2 { r4 << d8 f' >> } << f4 d, >> r2. |
  r2 << c4 ees' >> << g ees, >> r |
  \tuplet 3/2 { r4 << d8 f' >> } << f4 d, >> r2. |
  r2 << c4 ees' >> << g ees, >> r |
  \tuplet 3/2 { r4 << d8 f' >> } << f4 d, >> r2. |
  r2 << c4 ees' >> << g ees, >> r |
  \tuplet 3/2 { r4 << d8 f' >> } << f4 d, >> r2. |
  r2 << c4 ees' >> << g ees, >> r |
}


% theme section
scoreTheme = {
  \partial 4 s8 c8\3 |
  d2\3~ d8\3 c\3 \tuplet 3/2 { d\3 ees\3 d\3 } \tuplet 3/2 { c\3 d\3 c\3 } |
  a4.\4 bes8\4 r2 r8 c\3 |
  d2\3~ d8\3 c\3 \tuplet 3/2 { d\3 ees\3 d\3 } \tuplet 3/2 { ees\3 f\2 ees\3 } |
  f4.\2 d8\3 r2 r8 c\3 |
  d2\3~ d8\3 c\3 \tuplet 3/2 { d\3 ees\3 d\3 } \tuplet 3/2 { c\3 d\3 c\3 } |
  a4.\4 bes8\4 r2 r8 c\3 |
  d2\3~ d8\3 c\3 \tuplet 3/2 { d\3 ees\3 d\3 } \tuplet 3/2 { ees\3 f\2 ees\3 } |
  d2\3 r2. |
}
midiTheme = {
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | R1 |
  r1 r4 | r1 r4 | r1 r4 | r1 r4 |
  r1 r4 | r1 r4 | r1 r4 | r1 \tuplet 3/2 { r4 c8\mf } |
  d2~ \tuplet 3/2 { d4 c8 } \tuplet 3/2 { d ees d } \tuplet 3/2 { c d c } |
  a4~ \tuplet 3/2 { a4 bes8 } r2 \tuplet 3/2 { r4 c8 } |
  d2~ \tuplet 3/2 { d4 c8 } \tuplet 3/2 { d ees d } \tuplet 3/2 { ees f ees } |
  f4~ \tuplet 3/2 { f4 d8 } r2 \tuplet 3/2 { r4 c8 } |
  d2~ \tuplet 3/2 { d4 c8 } \tuplet 3/2 { d ees d } \tuplet 3/2 { c d c } |
  a4~ \tuplet 3/2 { a4 bes8 } r2 \tuplet 3/2 { r4 c8 } |
  d2~ \tuplet 3/2 { d4 c8 } \tuplet 3/2 { d ees d } \tuplet 3/2 { ees f ees } |
  d2 r2. |
}


% bass section
scoreBass = {
  \partial 4 \tuplet 3/2 { g8\2 f\3 ees\3 } |
  d8\3 d4.\3 d8\3_^ a'\2 \tuplet 3/2 { c\1 a\2 g\2 } \makePercent s4 |
  s8 \makePercent s1 s8 |
  s8 \makePercent s1 s8 |
  s8 \makePercent s1 s8 |
  s8 \makePercent s1 s8 |
  s8 \makePercent s1 s8 |
  s8 \makePercent s1 s8 |
  s8 \makePercent s1 s8 |
}
midiBass = {
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | r2. \tuplet 3/2 { g8\mf f ees } |
  \time 5/4
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f ees } |
}


% drums section
scoreDrumsVerse = {
  \drummode {
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | r2 r8 cb cb \makePercent s8 | \makePercent s1 |
  }
}
scoreDrums = {
  \partial 4 s4 |
  \drummode {
    s8 \makePercent s1 s8 | s8 \makePercent s1 s8 |
    timl8 timh r4 timl8 timh timh timl timl timh | s8 \makePercent s1 s8 |
    s8 \makePercent s1 s8 | s8 \makePercent s1 s8 |
    s8 \makePercent s1 s8 | s8 \makePercent s1 s8 |
  }
}
midiDrums = {
  \drummode {
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 |
    r2 \tuplet 3/2 { r4 trio8\mf } \tuplet 3/2 { trio4 trio8 } |
    \tuplet 3/2 { trio4 trio8 } \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { trio4 trio8 } \tuplet 3/2 { trio4 trio8 } |
    \tuplet 3/2 { trio4 trio8 } \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { trio4 trio8 } \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { trio4 trio8 } |
    \tuplet 3/2 { trio4 trio8 } \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { trio4 trio8 } \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { trio4 trio8 } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
    \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { trio4 trio8 }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> }
      \tuplet 3/2 { << trio4 sn >> << trio8 bd >> }
      \tuplet 3/2 { << trio4 bd >> << trio8 sn >> } |
  }
}


% writing down
\book {
  \header{
    title = #song
    subtitle = #album
    composer = #author
    tagline = ##f
  }

  % verse
  \bookpart {
    \score {
      <<
        \new GrandStaff <<
          \set GrandStaff.instrumentName = #"Piano "
          \set GrandStaff.shortInstrumentName = #"Pn "
          \new Staff {
            \relative c'' {
              \clef treble
              \key c \major
              \numericTimeSignature
              \time 4/4
              \tempo 4 = #execute
              \scorePianoTreb
            }
          }
          \new Staff {
            \relative c' {
              \clef bass
              \key c \major
              \numericTimeSignature
              \time 4/4
              \scorePianoBass
            }
          }
        >>
        \new DrumStaff \with {
          instrumentName = #"Drums "
          shortInstrumentName = #"Dr "
          \override StaffSymbol.line-count = #2
          \override StaffSymbol.staff-space = #2
          \override VerticalAxisGroup.minimum-Y-extent = #'(-3.0 . 4.0)
          \override Stem.length = #4
          \override Stem.direction = #-1
          drumStyleTable = #timbales-style
        } {
          \numericTimeSignature
          \scoreDrumsVerse
        }
      >>
      \layout { }
    }
  }

  % body
  \bookpart {
    \score {
      <<
        \new GrandStaff <<
          \set GrandStaff.instrumentName = #"Rythm "
          \set GrandStaff.shortInstrumentName = #"Rt "
          \new Staff {
            <<
              \relative c' {
                \override StringNumber.stencil = ##f
                \clef treble
                \key bes \major
                \time 5/4
                \scoreRythm
              }
              \new ChordNames {
                \chordsRythm
              }
            >>
          }
          \new TabStaff {
            \set Staff.stringTunings = \stringTuning <e, a, d g c' f'>
            \relative c {
              \scoreRythm
            }
          }
        >>
        \new GrandStaff <<
          \set GrandStaff.instrumentName = #"Lead "
          \set GrandStaff.shortInstrumentName = #"Ld "
          \new Staff {
            \relative c'' {
                \override StringNumber.stencil = ##f
                \clef treble
                \key bes \major
                \scoreTheme
              }
            }
          \new TabStaff {
            \set Staff.stringTunings = \stringTuning <e, a, d g c' f'>
            \relative c' {
              \scoreTheme
            }
          }
        >>
        \new GrandStaff <<
          \set GrandStaff.instrumentName = #"Bass "
          \set GrandStaff.shortInstrumentName = #"Bs "
          \new Staff {
            \relative c' {
              \override StringNumber.stencil = ##f
              \clef bass
              \key bes \major
              \scoreBass
            }
          }
          \new TabStaff {
            \set Staff.stringTunings = #bass-tuning
            \relative c {
              \scoreBass
            }
          }
        >>
        \new DrumStaff \with {
          instrumentName = #"Drums "
          shortInstrumentName = #"Dr "
          \override StaffSymbol.line-count = #2
          \override StaffSymbol.staff-space = #2
          \override VerticalAxisGroup.minimum-Y-extent = #'(-3.0 . 4.0)
          \override Stem.length = #4
          \override Stem.direction = #-1
          drumStyleTable = #timbales-style
        } {
          \scoreDrums
        }
      >>
      \layout { }
    }
  }

  % midi
  \score {
    <<
      \new Staff {
        \set Staff.midiInstrument = "acoustic grand"
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #0.8
        \relative c'' {
          \time 4/4
          \tempo 4 = #execute
          \midiPianoTreb
          \set Staff.midiMinimumVolume = #0.64
          \set Staff.midiMaximumVolume = #0.64
          \midiPianoTrebEcho
          \set Staff.midiMinimumVolume = #0.48
          \set Staff.midiMaximumVolume = #0.48
          \midiPianoTrebEcho
          \set Staff.midiMinimumVolume = #0.32
          \set Staff.midiMaximumVolume = #0.32
          \midiPianoTrebEcho
          \set Staff.midiMinimumVolume = #0.16
          \set Staff.midiMaximumVolume = #0.16
          \midiPianoTrebEcho
        }
      }
      \new Staff {
        \set Staff.midiInstrument = "acoustic grand"
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #0.8
        \relative c' {
          \time 4/4
          \tempo 4 = #execute
          \midiPianoBass
          \midiPianoBassEcho
          \midiPianoBassEcho
          \midiPianoBassEcho
          \midiPianoBassEcho
        }
      }
      \new Staff {
        \set Staff.midiInstrument = "electric guitar (clean)"
        \set Staff.midiMinimumVolume = #0.4
        \set Staff.midiMaximumVolume = #0.4
        \relative c {
          \midiRythm
        }
      }
      \new Staff {
        \set Staff.midiInstrument = "electric guitar (clean)"
        \set Staff.midiMinimumVolume = #1.0
        \set Staff.midiMaximumVolume = #1.0
        \relative c' {
          \midiTheme
        }
      }
      \new Staff {
        \set Staff.midiInstrument = "electric bass (finger)"
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #0.8
        \relative c {
          \midiBass
        }
      }
      \new DrumStaff {
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #0.6
        \midiDrums
      }
    >>
    \midi { }
  }
}
