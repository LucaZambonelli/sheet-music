\version "2.22.1"

song = "Even 8th"
album = "Concept Album"
author = "Luca Zambonelli"
execute = 136

% bar definition
\defineBarLine "[" #'("|" "[" "")
\defineBarLine "]" #'("]" "" "")

% symbol definition
makePercent = #(
  define-music-function
  (note)
  (ly:music?)
  (make-music 'PercentEvent 'length (ly:music-length note))
)

% percussions definition
drumPitchNames.cal = #'cal
drumPitchNames.cah = #'cah
drumPitchNames.mcs = #'mcs
drumPitchNames.trc = #'trc
drumPitchNames.tro = #'tro
#(define cajon-style
  '(
    (cal  default  #f          -1)
    (cah  default  #f           1)   
    (mcs  cross    #f           0)
    (trc  cross    "halfopen"   2)
    (tro  cross    #f           2)
  )
)
midiDrumPitches.cal = c,
midiDrumPitches.cah = d,
midiDrumPitches.mcs = gis,
midiDrumPitches.trc = gis''
midiDrumPitches.tro = a''


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
  <<
    \new DrumVoice  = Cajon {
      \voiceOne
      \drummode {
        cal8 cal cah cah16 cah cal8 cal cah8. cal16 |
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
    \new DrumVoice  = Maracas {
      \voiceTwo
      \drummode {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
      }
    }
    \new DrumVoice  = Triangle {
      \voiceThree
      \drummode {
        s1 | s1 | tro4 tro tro tro | s1 |
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
      }
    }
  >>
}
midiDrums = {
  <<
    \new DrumVoice  = Cajon {
      \voiceOne
      \drummode {
        cal8\ff cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
        cal8 cal cah\pp cah16 cah cal8\ff cal cah8.\pp cal16\ff |
      }
    }
    \new DrumVoice  = Maracas {
      \voiceTwo
      \drummode {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
      }
    }
    \new DrumVoice  = Triangle {
      \voiceThree
      \drummode {
        s1 | s1 | tro4\ff tro tro tro | tro tro tro tro |
        tro tro tro tro | tro tro tro tro | tro tro tro tro | tro tro tro tro |
        tro tro tro tro | tro tro tro tro | tro tro tro tro | tro tro tro tro |
        tro tro tro tro | tro tro tro tro | tro tro tro tro | tro tro tro tro |
        tro tro tro tro | tro tro tro tro | tro tro tro tro | tro tro tro tro |
      }
    }
  >>
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
          instrumentName = #"Perc. "
          shortInstrumentName = #"Pc "
          \override StaffSymbol.line-count = #1
          \override StaffSymbol.staff-space = #2
          \override Stem.length = #4
          \override VerticalAxisGroup.minimum-Y-extent = #'(3.0 . 4.0)
          drumStyleTable = #(alist->hash-table cajon-style)
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
        \set Staff.midiInstrument = "overdriven guitar"
        \set Staff.midiMinimumVolume = #0.4
        \set Staff.midiMaximumVolume = #0.4
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
        \set Staff.midiMinimumVolume = #0.2
        \set Staff.midiMaximumVolume = #1.0
        \set Staff.drumPitchTable = #(alist->hash-table midiDrumPitches)
        \midiDrums
      }
    >>
    \midi { }
  }
}
