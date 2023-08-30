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
  cis' b4 a8 gis fis16 e fis4 | e2 r \bar "|."
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
  cis' b4 a8 gis fis16 e fis4 | e2 r |
}


% theme section
scoreTheme = {
  \partial 8 e8\2 \bar "["
  \tuplet 3/2 { g\2 g\2 g\2 } fis\2 e\2 b'4\1~ \tuplet 3/2 { b\1 a8\1 } |
  \tuplet 3/2 { g\2 g\2 g\2 } fis\2 e\2 b'4\1~ \tuplet 3/2 { b\1 a8\1 } |
  \tuplet 3/2 { g\2 a\1 b\1 } a\1 g\2 fis\2 d\3 b\3 e\2 | \break
  \tuplet 3/2 { g\2 g\2 g\2 } fis\2 e\2 b'4\1~ \tuplet 3/2 { b\1 a8\1 } |
  \tuplet 3/2 { g\2 g\2 g\2 } fis\2 e\2 b'4\1~ \tuplet 3/2 { b\1 a8\1 } |
  \tuplet 3/2 { g\2 a\1 b\1 } a\1 g\2 fis4\2 r8 e\2 | \break
  \tuplet 3/2 { b'\1 a\1 g\2 } a\1 b\1 c\1 b\1~ b\1 e,\2 |
  \tuplet 3/2 { b'\1 a\1 g\2 } a\1 b\1 c\1 b\1~ b\1 e,\2 |
  c'\1 b\1~ b\1 a\1 \tuplet 3/2 { g\2 fis\2 e\2 } fis\2 e\2 |
  e2\2 r4 r8 e8\2 \bar "]"
}

midiTheme = {
  \partial 8 s8 |
  s1 | s1 | s1 |
  s1 | s1 | s1 |
  s1 | s1 | s1 |
  
  r2. \tuplet 3/2 { r4 e8\mf } |

  \tuplet 3/2 { g8 g g } \tuplet 3/2 { fis4 e8 } b'4~ \tuplet 3/2 { b a8 } |
  \tuplet 3/2 { g8 g g } \tuplet 3/2 { fis4 e8 } b'4~ \tuplet 3/2 { b a8 } |
  \tuplet 3/2 { g a b } \tuplet 3/2 { a4 g8 } \tuplet 3/2 { fis4 d8 }
    \tuplet 3/2 { b4 e8 } |
  \tuplet 3/2 { g8 g g } \tuplet 3/2 { fis4 e8 } b'4~ \tuplet 3/2 { b a8 } |
  \tuplet 3/2 { g8 g g } \tuplet 3/2 { fis4 e8 } b'4~ \tuplet 3/2 { b a8 } |
  \tuplet 3/2 { g a b } \tuplet 3/2 { a4 g8 } fis4 \tuplet 3/2 { r4 e8 } |
  \tuplet 3/2 { b' a g } \tuplet 3/2 { a4 b8 } \tuplet 3/2 { c4 b8~ }
    \tuplet 3/2 { b4 e,8 } |
  \tuplet 3/2 { b' a g } \tuplet 3/2 { a4 b8 } \tuplet 3/2 { c4 b8~ }
    \tuplet 3/2 { b4 e,8 } |
  \tuplet 3/2 { c'4 b8~ } \tuplet 3/2 { b4 a8 } \tuplet 3/2 { g fis e }
    \tuplet 3/2 { fis4 e8 } |
  e2 r4 \tuplet 3/2 { r4 e8 } |

  \tuplet 3/2 { g8 g g } \tuplet 3/2 { fis4 e8 } b'4~ \tuplet 3/2 { b a8 } |
  \tuplet 3/2 { g8 g g } \tuplet 3/2 { fis4 e8 } b'4~ \tuplet 3/2 { b a8 } |
  \tuplet 3/2 { g a b } \tuplet 3/2 { a4 g8 } \tuplet 3/2 { fis4 d8 }
    \tuplet 3/2 { b4 e8 } |
  \tuplet 3/2 { g8 g g } \tuplet 3/2 { fis4 e8 } b'4~ \tuplet 3/2 { b a8 } |
  \tuplet 3/2 { g8 g g } \tuplet 3/2 { fis4 e8 } b'4~ \tuplet 3/2 { b a8 } |
  \tuplet 3/2 { g a b } \tuplet 3/2 { a4 g8 } fis4 \tuplet 3/2 { r4 e8 } |
  \tuplet 3/2 { b' a g } \tuplet 3/2 { a4 b8 } \tuplet 3/2 { c4 b8~ }
    \tuplet 3/2 { b4 e,8 } |
  \tuplet 3/2 { b' a g } \tuplet 3/2 { a4 b8 } \tuplet 3/2 { c4 b8~ }
    \tuplet 3/2 { b4 e,8 } |
  \tuplet 3/2 { c'4 b8~ } \tuplet 3/2 { b4 a8 } \tuplet 3/2 { g fis e }
    \tuplet 3/2 { fis4 e8 } |
  e2 r4 \tuplet 3/2 { r4 e8 } |

  \tuplet 3/2 { g8 g g } \tuplet 3/2 { fis4 e8 } b'4~ \tuplet 3/2 { b a8 } |
  \tuplet 3/2 { g8 g g } \tuplet 3/2 { fis4 e8 } b'4~ \tuplet 3/2 { b a8 } |
  \tuplet 3/2 { g a b } \tuplet 3/2 { a4 g8 } \tuplet 3/2 { fis4 d8 }
    \tuplet 3/2 { b4 e8 } |
  \tuplet 3/2 { g8 g g } \tuplet 3/2 { fis4 e8 } b'4~ \tuplet 3/2 { b a8 } |
  \tuplet 3/2 { g8 g g } \tuplet 3/2 { fis4 e8 } b'4~ \tuplet 3/2 { b a8 } |
  \tuplet 3/2 { g a b } \tuplet 3/2 { a4 g8 } fis4 \tuplet 3/2 { r4 e8 } |
  \tuplet 3/2 { b' a g } \tuplet 3/2 { a4 b8 } \tuplet 3/2 { c4 b8~ }
    \tuplet 3/2 { b4 e,8 } |
  \tuplet 3/2 { b' a g } \tuplet 3/2 { a4 b8 } \tuplet 3/2 { c4 b8~ }
    \tuplet 3/2 { b4 e,8 } |
  \tuplet 3/2 { c'4 b8~ } \tuplet 3/2 { b4 a8 } \tuplet 3/2 { g fis e }
    \tuplet 3/2 { fis4 e8 } |
  e1 |
}


% bass section
scoreBass = {
  \partial 8 s8 |
  \tuplet 3/2 { e\2 e\2 e\2 } g\2 b,\1 e,4\4~ e8\4 fis\4|
  \tuplet 3/2 { g\4 g\4 g\4} b\3 d\3 c4\3 b8\3 g\4 |
  fis\4 a\4 e'\2 c\3 b\3 a\4 fis\4 e\4 |
  \tuplet 3/2 { e'\2 e\2 e\2 } g\2 a\1 b4\1~ b8\1 a,\4 |
  s1 | s |
  s | s | s | s |
}

chordsBass = {
  \set chordChanges = ##t
  \chordmode {
    \partial 8 s8 |
    e1:m | g2 c:7+ | fis:m7.5- b:m7 |
    e1:m | b2:m e:m7 | a:m7 d:7 |
    g c | g:7+ c:7+ | fis:m7.5- b:m7 | e1:m |
  }
}

midiBass = {
  \partial 8 s8 |
  s1 | s | s |
  s | s | s |
  s | s | s | s |

  \tuplet 3/2 { e8\mf e e } \tuplet 3/2 { g4 b,8 } e,4~ \tuplet 3/2 { e fis8 } |
  \tuplet 3/2 { g g g } \tuplet 3/2 { b4 d8 } c4 \tuplet 3/2 { b g8 } |
  \tuplet 3/2 { fis4 a8 } \tuplet 3/2 { e'4 c8 } \tuplet 3/2 { b4 a8 }
    \tuplet 3/2 { fis4 e8 } |
  \tuplet 3/2 { e' e e } \tuplet 3/2 { g4 a8 } b4~ \tuplet 3/2 { b a,8 } |
  s1 | s |
  s | s | s | s |
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
          \set GrandStaff.instrumentName = #"Lead "
          \set GrandStaff.shortInstrumentName = #"Ld "
          \new Staff {
            \relative c'' {
                \override StringNumber.stencil = ##f
                \clef treble
                \key e \minor
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
            <<
              \relative c {
                \override StringNumber.stencil = ##f
                \clef bass
                \key e \minor
                \numericTimeSignature
                \time 4/4
                \scoreBass
              }
              \new ChordNames {
                \chordsBass
              }
            >>
          }
          \new TabStaff {
            \set Staff.stringTunings = #bass-tuning
            \relative c, {
              \scoreBass
            }
          }
        >>
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
    >>
    \midi { }
  }
}
