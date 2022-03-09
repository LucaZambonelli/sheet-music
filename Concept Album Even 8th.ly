\version "2.22.1"

\defineBarLine "[" #'("" "[" "")
\defineBarLine "]" #'("]" "" "")

makePercent = #(define-music-function (note) (ly:music?)
  (make-music 'PercentEvent 'length (ly:music-length note)))

song = "Even 8th"
album = "Concept Album"
author = "Luca Zambonelli"
execute = 144


% rythm section
scoreRythm = {
  R1 | R1 |
  R1 | R1 |
}
chordsRythm = {
  \set chordChanges = ##f
  \chordmode {
    s1 | s1 |
    b:m7.5-.11- | b:m7.5-.11- |
    b:m7.5-.11- | b:m7.5-.11- |
    b:m7.5-.11- | b:m7.5-.11- |
  }
}
midiRythm = {
  R1
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
  R1 | R1 |
  a8\4 a\4 b\4 b\4 c\3 c\3 b4\4 | c8\3 c\3 d\3 d\3 c\3 c\3 b4\4 |
  \makePercent s1 | \makePercent s1 |
  \makePercent s1 | \makePercent s1 |
}
midiBass = {
  R1 | R1 |
  a8 a b b c c b4 | c8 c d d c c b4 |
  a8 a b b c c b4 | c8 c d d c c b4 |
  a8 a b b c c b4 | c8 c d d c c b4 |
}


% drums section
scoreDrums = {
  \drummode {
    timl8 timl timh timh timl timl timh4 |
    \makePercent s1 |
    \makePercent s1 |
    \makePercent s1 |
    \makePercent s1 |
    \makePercent s1 |
    \makePercent s1 |
    \makePercent s1 |
  }
}
midiDrums = {
  \drummode {
    bd8\mf bd sn sn bd bd sn4 |
    bd8 bd sn sn bd bd sn4 |
    bd8 bd sn sn bd bd sn4 |
    bd8 bd sn sn bd bd sn4 |
    bd8 bd sn sn bd bd sn4 |
    bd8 bd sn sn bd bd sn4 |
    bd8 bd sn sn bd bd sn4 |
    bd8 bd sn sn bd bd sn4 |
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
                \key ees \major
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
                \key ees \major
                \numericTimeSignature
                \scoreTheme
              }
            }
          \new TabStaff {
            \set Staff.stringTunings = \stringTuning <e, a, d g c' f'>
            \relative c {
              \scoreTheme
            }
          }
        >>
        \new GrandStaff <<
          \set GrandStaff.instrumentName = #"Bass "
          \set GrandStaff.shortInstrumentName = #"Bs "
          \new Staff {
            \relative c {
              \override StringNumber.stencil = ##f
              \clef bass
              \key ees \major
              \numericTimeSignature
              \time 4/4
              \scoreBass
            }
          }
          \new TabStaff {
            \set Staff.stringTunings = #bass-tuning
            \relative c, {
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
  }

  % midi
  \score {
    <<
      \new Staff {
        \set Staff.midiInstrument = "electric guitar (clean)"
        \set Staff.midiMinimumVolume = #0.4
        \set Staff.midiMaximumVolume = #0.4
        \relative c {
          \time 4/4
          \tempo 4 = #execute
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
        \relative c, {
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
