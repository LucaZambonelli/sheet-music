\version "2.22.1"

song = "Spring"
album = "Concept Album"
author = "Luca Zambonelli"
execute = 108

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

% flute section
scoreFlute = {
  \partial 8 e8 |
  gis gis gis fis16 e b'4. b16 a |
  gis8 gis gis fis16 e b'4. b16 a |
  gis8 a16 b a8 gis fis dis b e | \break
  gis gis gis fis16 e b'4. b16 a |
  gis8 gis gis fis16 e b'4. b16 a |
  gis8 a16 b a8 gis fis4 r8 e | \break
  b' a16 gis a8 b cis b4 e,8 |
  b' a16 gis a8 b cis b4 e,8 |
  cis' b4 a8 gis fis16 e fis4 | e1 \bar "|."
}

midiFlute = {
  \partial 8 e8 |
  gis gis gis fis16 e b'4. b16 a |
  gis8 gis gis fis16 e b'4. b16 a |
  gis8 a16 b a8 gis fis dis b e |
  gis gis gis fis16 e b'4. b16 a |
  gis8 gis gis fis16 e b'4. b16 a |
  gis8 a16 b a8 gis fis4 r8 e |
  b' a16 gis a8 b cis b4 e,8 |
  b' a16 gis a8 b cis b4 e,8 |
  cis' b4 a8 gis fis16 e fis4 | e1 |
}


% rythm section
scoreRythm = {
  s1
}
chordsRythm = {
  \set chordChanges = ##t
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
  s1
}
midiBass = {
  s1
}


% drums section
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
      % cal\ff cah\pp
      \voiceOne
      \drummode {
        s1
      }
    }
    \new DrumVoice  = Maracas {
      % mcs\mf
      \voiceTwo
      \drummode {
        s1
      }
    }
    \new DrumVoice  = Triangle {
      % trc\ff tro\ff
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
    % intro
    \score {
      \new Staff {
        \set Staff.instrumentName = #"Flute"
        \set Staff.shortInstrumentName = #"Fl"
        \relative c'' {
          \clef treble
          \key e \major
          \numericTimeSignature
          \time 4/4
          \tempo 4 = #execute
          \scoreFlute
        }
      }
    }
    % body
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
                \key c \major
                \numericTimeSignature
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
            \relative c {
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
        \set Staff.midiInstrument = "flute"
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #0.8
        \relative c'' {
          \time 4/4
          \tempo 4 = #execute
          \midiFlute
        }
      }
      \new Staff {
        \set Staff.midiInstrument = "electric guitar (clean)"
        \set Staff.midiMinimumVolume = #0.4
        \set Staff.midiMaximumVolume = #0.4
        \relative c' {
          \midiTheme
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
