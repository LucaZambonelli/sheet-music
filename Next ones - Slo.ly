\version "2.22.1"

song = "Slo"
album = "Next ones"
author = "Luca Zambonelli"
execute = 96

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


% piano section
scoreOrganTreb = {
  r2 c4 b8 a \bar "["
  e2 c'4 b8 a | e2 c'4 b8 a |
  f2 d'4 c8 b | f2 c'4 b8 a | \break
  e2 c'4 b8 a | e2 c'4 b8 a |
  f2 d'4 c8 b | f2 c'4 b8 a \bar "]"
}
scoreOrganBass = {
  R1 |
  g | e |
  d | d |
  g | e |
  d | d |
}
midiOrganTreb = {
  r2 c4\mf b8 a |
  e2 c'4 b8 a | e2 c'4 b8 a | f2 d'4 c8 b | f2 c'4 b8 a |
  e2 c'4 b8 a | e2 c'4 b8 a | f2 d'4 c8 b | f2 c'4 b8 a |
  e2 c'4 b8 a | e2 c'4 b8 a | f2 d'4 c8 b | f2 c'4 b8 a |
  e2 c'4 b8 a | e2 c'4 b8 a | f2 d'4 c8 b | f2 c'4 b8 a |
}
midiOrganBass = {
  R1
  g\mf | e | d | d |
  g | e | d | d |
  g | e | d | d |
  g | e | d | d |
}


% rythm section
scoreRythm = {
  s1
}
chordsRythm = {
  \set chordChanges = ##f
  \chordmode {
    s1
  }
}
midiRythm = {
  s1
}


% theme section
scoreTheme = {
  s1
}
midiTheme = {
  s1
}


% bass section
scoreBass = {
  s1 |
  g8\2 f\2 e\2 d\3 c2\3 | d8\3 e\2 f\2 g\2 a2\1 |
  d,8\3 e\2 f\2 g\2 a2\1 | g8\2 f\2 e\2 d\3 c2\3 |
  g'8\2 f\2 e\2 d\3 c2\3 | d8\3 e\2 f\2 g\2 a2\1 |
  d,8\3 e\2 f\2 g\2 a2\1 | g8\2 f\2 e\2 d\3 c2\3 |
}
midiBass = {
  s1
  g8\mf f e d c2 | d8 e f g a2 | d,8 e f g a2 | g8 f e d c2 |
  g'8 f e d c2 | d8 e f g a2 | d,8 e f g a2 | g8 f e d c2 |
  g'8 f e d c2 | d8 e f g a2 | d,8 e f g a2 | g8 f e d c2 |
  g'8 f e d c2 | d8 e f g a2 | d,8 e f g a2 | g8 f e d c2 |
}


% drums section
scoreDrumsVerse = {
  <<
    \new DrumVoice  = Cajon {
      \voiceOne
      \drummode {
        s1
      }
    }
    \new DrumVoice  = Maracas {
      \voiceTwo
      \drummode {
        s1
      }
    }
    \new DrumVoice  = Triangle {
      \voiceThree
      \drummode {
        s1
      }
    }
  >>
}
scoreDrums = {
  <<
    \new DrumVoice  = Cajon {
      \voiceOne
      \drummode {
        s1
      }
    }
    \new DrumVoice  = Maracas {
      \voiceTwo
      \drummode {
        s1
      }
    }
    \new DrumVoice  = Triangle {
      \voiceThree
      \drummode {
        s1
      }
    }
  >>
}
midiDrums = {
  <<
    \new DrumVoice  = Cajon {
      \voiceOne
      \drummode {
        s1
      }
    }
    \new DrumVoice  = Maracas {
      \voiceTwo
      \drummode {
        s1
      }
    }
    \new DrumVoice  = Triangle {
      \voiceThree
      \drummode {
        s1
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

  \bookpart {
    % verse
    % body
    \score {
      <<
        \new GrandStaff <<
          \set GrandStaff.instrumentName = #"Organ "
          \set GrandStaff.shortInstrumentName = #"Og "
          \new Staff {
            \relative c'' {
              \clef treble
              \key c \major
              \numericTimeSignature
              \time 4/4
              \tempo 4 = #execute
              \scoreOrganTreb
            }
          }
          \new Staff {
            \relative c' {
              \clef bass
              \key c \major
              \numericTimeSignature
              \time 4/4
              \scoreOrganBass
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
                \scoreRythm
              }
              \new ChordNames {
                \chordsRythm
              }
            >>
          }
          \new TabStaff {
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
                \time 4/4
                \scoreTheme
              }
            }
          \new TabStaff {
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
          instrumentName = #"Perc. "
          shortInstrumentName = #"Pc "
          \override StaffSymbol.line-count = #1
          \override StaffSymbol.staff-space = #2
          \override Stem.length = #4
          \override VerticalAxisGroup.minimum-Y-extent = #'(3.0 . 4.0)
          drumStyleTable = #(alist->hash-table cajon-style)
        } {
          \numericTimeSignature
          \time 4/4
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
        \set Staff.midiInstrument = "drawbar organ"
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #0.8
        \relative c'' {
          \time 4/4
          \tempo 4 = #execute
          \midiOrganTreb
        }
      }
      \new Staff {
        \set Staff.midiInstrument = "drawbar organ"
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #0.8
        \relative c' {
          \midiOrganBass
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
        \set Staff.midiInstrument = "overdriven guitar"
        \set Staff.midiMinimumVolume = #0.4
        \set Staff.midiMaximumVolume = #0.4
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
        \set Staff.midiMinimumVolume = #0.2
        \set Staff.midiMaximumVolume = #1.0
        \set Staff.drumPitchTable = #(alist->hash-table midiDrumPitches)
        \midiDrums
      }
    >>
    \midi { }
  }
}
