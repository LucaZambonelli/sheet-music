\version "2.22.1"

\defineBarLine "[" #'("" "[" "")
\defineBarLine "]" #'("]" "" "")

makePercent = #(define-music-function (note) (ly:music?)
  (make-music 'PercentEvent 'length (ly:music-length note)))

song = "Fives"
album = "Concept Album"
author = "Luca Zambonelli"
execute = 124


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
  R1 | << c4 c, >> << d d' >> << e e, >> << f f' >> |
  R1 | << g4 g, >> << f f' >> << e e, >> << d d' >> |
  R1 | << c4 c, >> << e e' >> << d d, >> << c c' >> |
  R1 | << g'4 g, >> << e e' >> << d d, >> << c c' >> |
  R1 | << c4 c, >> << e e' >> << d d, >> << c c' >> |
  R1 | << c4 c, >> << e e' >> << d d, >> << c c' >> |
}
midiPianoBass = {
  << a2 a, >> << g g' >> | << a1 a, >> |
  << a2 a' >> << g g, >> | << a1 a' >> |
  << a2 a, >> << g g' >> | << a1 a, >> |
  << a2 a' >> << g g, >> | << a1 a' >> |
  << a2 a, >> << g g' >> | << a1 a, >> |
  << a2 a' >> << g g, >> | << a1 a' >> |
}

% rythm section
scoreRythm = {
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | R1 \bar "|.|" \break
  \time 5/4
  \key bes \major
  s8 r1 s8 | s8 r1 s8 | s8 r1 s8 | s8 r1 s8 | \break
  r8 << d\6 f'\3 >> << f4\3 d,\6 >> r2. |
  r2 << c4\6 ees'\3 >> << g\3 ees,\6 >> r |
  s8 \makePercent s1 s8 | s8 \makePercent s1 s8 \bar "|."
}
chordsRythm = {
  \set chordChanges = ##f
  \chordmode {
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | R1 |
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
  \tuplet 3/2 { r4 << d8 f' >> } << f4 d, >> r2. |
  r2 << c4 ees' >> << g ees, >> r |
}


% theme section
scoreTheme = {
  R1
}
midiTheme = {
  R1
}


% bass section
scoreBass = {
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | r2. \tuplet 3/2 { g8\2 f\3 e\3 } |
  \key bes \major
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
  R1 | R1 | R1 | r2. \tuplet 3/2 { g8 f e } |
  \time 5/4
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
  \tuplet 3/2 { d4 d8~ } d4 \tuplet 3/2 { d8 r a' }
    \tuplet 3/2 { c a g } \tuplet 3/2 { g f e } |
}


% drums section
scoreDrums = {
  \drummode {
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | r2 r8 cb cb \makePercent s8 | \makePercent s1 |
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
    r2 \tuplet 3/2 { r4 trio8 } \tuplet 3/2 { trio4 trio8 } |
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
    piece = #album
    composer = #author
    tagline = ##f
  }

  %readable
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
      \new GrandStaff <<
        \set GrandStaff.instrumentName = #"Rythm "
        \set GrandStaff.shortInstrumentName = #"Rt "
        \new Staff {
          <<
            \relative c' {
              \override StringNumber.stencil = ##f
              \clef treble
              \key c \major
              \numericTimeSignature
              \time 4/4
              \tempo 4 = #execute
              \scoreRythm
            }
            \new ChordNames {
              \chordsRythm
            }
          >>
        }
        \new TabStaff {
          \set Staff.stringTunings = \stringTuning <e, a, d g c f'>
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
              \key c \major
              \numericTimeSignature
              \scoreTheme
            }
          }
        \new TabStaff {
          \set Staff.stringTunings = \stringTuning <e, a, d g c f'>
          \relative c {
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
            \key c \major
            \numericTimeSignature
            \time 4/4
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
        \numericTimeSignature
        \scoreDrums
      }
    >>
    \layout { }
  }

  %playable
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
