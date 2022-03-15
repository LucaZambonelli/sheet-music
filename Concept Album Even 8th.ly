\version "2.22.1"

\defineBarLine "[" #'("|" "[" "")
\defineBarLine "]" #'("]" "" "")

makePercent = #(define-music-function (note) (ly:music?)
  (make-music 'PercentEvent 'length (ly:music-length note)))

song = "Even 8th"
album = "Concept Album"
author = "Luca Zambonelli"
execute = 136


% rythm section
scoreRythm = {
  R1 | R1 | R1 | R1 \bar "[" \break
  R1 | R1 | R1 | R1 | \break
  r8 b8\6 << b2.\6 d\5 a'\4 >> |
  r8 b,8\6 << b2.\6 f'\5 a\4 >> |
  \makePercent s1 | \makePercent s1 \bar "]"
}
chordsRythm = {
  \set chordChanges = ##f
  \chordmode {
    s1 | s1 |
    s1 | s1 |
    b:m7.5-.11- | b:m7.5-.11- |
    b:m7.5-.11- | b:m7.5-.11- |
    b:m7.5-.11- | b:m7.5-.11- |
    b:m7.5-.11- | b:m7.5-.11- |
  }
}
midiRythm = {
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | R1 |
  r8 b8\mf << b2. d a' >> |
  r8 b,8 << b2. f' a >> |
  r8 b,8 << b2. d a' >> |
  r8 b,8 << b2. f' a >> |
  r8 b,8 << b2. d a' >> |
  r8 b,8 << b2. f' a >> |
  r8 b,8 << b2. d a' >> |
  r8 b,8 << b2. f' a >> |
  r8 b,8 << b2. d a' >> |
  r8 b,8 << b2. f' a >> |
  r8 b,8 << b2. d a' >> |
  r8 b,8 << b2. f' a >> |
}


% theme section
scoreTheme = {
  R1 | R1 | R1 | r2. a8.\4 b16\4~ | 
  b4.\4 c16\4 d\4 b4..\4 a16\4 | g4.\5 f16\5 ees\5 d4\6 c8.\6 b16\6~ |
  b4.\6 c16\6 d\6 ees4..\5 f16\5 | g4.\5 a16\4 b\4 b4\4 a8.\4 b16\4~ | 
  b4.\4 c16\4 d\4 b4..\4 a16\4 | g4.\5 f16\5 ees\5 d4\6 c8.\6 b16\6~ |
  b4.\6 c16\6 d\6 ees4..\5 f16\5 | g4.\5 a16\4 b\4 b2\4 | 
}
midiTheme = {
  R1 | R1 | R1 | R1 | 
  R1 | R1 | R1 | R1 | 
  R1 | R1 | R1 | r2. a8.\mf b16~ | 
  b4. c16  d b4.. a16 | g4. f16 ees d4 c8. b16~ |
  b4. c16 d ees4.. f16 | g4. a16 b b4 a8. b16~ |
  b4. c16  d b4.. a16 | g4. f16 ees d4 c8. b16~ |
  b4. c16 d ees4.. f16 | g4. a16 b b2 |
}


% bass section
scoreBass = {
  R1 |
  R1 |
  R1 |
  R1 |
  a8\4 a\4 b\4 b16\4 b\4 c8\3 c\3 b8.\4 b16\4 |
  c8\3 c\3 d\3 d16\3 d\3 c8\3 c\3 b8.\4 b16\4 |
  \makePercent s1 |
  \makePercent s1 |
  \makePercent s1 |
  \makePercent s1 |
  \makePercent s1 |
  \makePercent s1 |
}
midiBass = {
  R1 | R1 |
  R1 | R1 |
  a8\mf a b b16 b c8 c b8. b16 | c8 c d d16 d c8 c b8. b16 |
  a8 a b b16 b c8 c b8. b16 | c8 c d d16 d c8 c b8. b16 |
  a8 a b b16 b c8 c b8. b16 | c8 c d d16 d c8 c b8. b16 |
  a8 a b b16 b c8 c b8. b16 | c8 c d d16 d c8 c b8. b16 |
  a8 a b b16 b c8 c b8. b16 | c8 c d d16 d c8 c b8. b16 |
  a8 a b b16 b c8 c b8. b16 | c8 c d d16 d c8 c b8. b16 |
  a8 a b b16 b c8 c b8. b16 | c8 c d d16 d c8 c b8. b16 |
  a8 a b b16 b c8 c b8. b16 | c8 c d d16 d c8 c b8. b16 |
}


% drums section
scoreDrums = {
  \drummode {
    timl8 timl timh timh16 timh timl8 timl timh8. timl16 |
    \makePercent s1 |
    \makePercent s1 |
    \makePercent s1 |
    \makePercent s1 |
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
    bd8\mf bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
    bd8 bd sn sn16 sn bd8 bd sn8. bd16 |
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
            \relative c' {
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
        \relative c'' {
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
