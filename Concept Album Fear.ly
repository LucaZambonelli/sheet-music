\version "2.22.1"

song = "Fear"
album = "Concept Album"
author = "Luca Zambonelli"
execute = 76

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


% theme section
scoreTheme = {
  \partial 4 c'4\3 \bar "["
  ees2.\2 ees8\2 c\3 | bes2.\3 \tuplet 3/2 { bes8\3 aes\4 f\4 } | f1\4 | ees2.\5 c'4\3 \bar "||" \break
  ees2.\2 c8\3 b\3 | bes2.\3 \tuplet 3/2 { bes8\3 aes\4 f\4 } | ees1\5~ | ees1\5 \bar "||" \break
  g,8\6 bes\6 c\5 bes\6 c\5 d4.\5 |
  c8\5 d\5 f\4 d\5 f\4 g4.\4 |
  f8\4 aes\4 bes\3 aes\4 bes\3 b\3 c4\3~ |
  c1 \bar "]" \break
}
midiTheme = {
  r1 | r |

  r | r | r | r |
  r | r | r | r2. c'4 |

  ees2.\mf \tuplet 3/2 { ees4 c8 } | bes2. \tuplet 3/2 { bes8 aes f } |
  f1 | ees2. c'4 |
  ees2. \tuplet 3/2 { c4 b8 } | bes2. \tuplet 3/2 { bes8 aes f } |
  ees1~ | ees1 |
  \tuplet 3/2 { g,4 bes8 } \tuplet 3/2 { c4 bes8 } \tuplet 3/2 { c4 d8~ } d4 |
  \tuplet 3/2 { c4 d8 } \tuplet 3/2 { f4 d8 } \tuplet 3/2 { f4 g8~ } g4 |
  \tuplet 3/2 { f4 aes8 } \tuplet 3/2 { bes4 aes8 } \tuplet 3/2 { bes4 b8 } c4~ |
  c2. c4 |

  ees2. \tuplet 3/2 { ees4 c8 } | bes2. \tuplet 3/2 { bes8 aes f } |
  f1 | ees2. c'4 |
  ees2. \tuplet 3/2 { c4 b8 } | bes2. \tuplet 3/2 { bes8 aes f } |
  ees1~ | ees1 |
  \tuplet 3/2 { g,4 bes8 } \tuplet 3/2 { c4 bes8 } \tuplet 3/2 { c4 d8~ } d4 |
  \tuplet 3/2 { c4 d8 } \tuplet 3/2 { f4 d8 } \tuplet 3/2 { f4 g8~ } g4 |
  \tuplet 3/2 { f4 aes8 } \tuplet 3/2 { bes4 aes8 } \tuplet 3/2 { bes4 b8 } c4~ |
  c1 |
}


% bass section
scoreBass = {
  s4 |
  f4.\2 ees8\3 ees2\3  | des4.\3 c8\3 c2\3 |
  \makePercent s1 | \makePercent s |
  \makePercent s | \makePercent s |
  \makePercent s | \makePercent s |
  g8\4 bes4\4 d\3 f4.\2 | c8\3 e4\3 c\3 bes4.\4 |
  c8\3 f4\2 ees4\3 f8\2 f4\2~ | f1\2 |
}
chordsBass = {
  \set chordChanges = ##f
  \chordmode {
    s4 |
    f4.:m7 f8:m7/ees s2 | f4.:m7/des f8:m7/c s2 | f4.:m7 f8:m7/ees s2 | f4.:m7/des f8:m7/c s2 |
    f4.:m7 f8:m7/ees s2 | f4.:m7/des f8:m7/c s2 | f4.:m7 f8:m7/ees s2 | f4.:m7/des f8:m7/c s2 |
    g1:m7 | c:7 | f:m7 | s |
  }
}
midiBass = {
  r1 | r1 |

  \tuplet 3/2 { g4\mf bes8~ } \tuplet 3/2 { bes4 d8~ } \tuplet 3/2 { d4 f8~ } f4  |
  \tuplet 3/2 { c e8~ } \tuplet 3/2 { e4 c8~ } \tuplet 3/2 { c4 bes8~ } bes4  |
  \tuplet 3/2 { c f8~ } \tuplet 3/2 { f4 ees8~ } \tuplet 3/2 { ees4 f8 } f4~ |
  f1 |

  f4~ \tuplet 3/2 { f4 ees8 } ees2 |
  des4~ \tuplet 3/2 { des c8 } c2 |
  f4~ \tuplet 3/2 { f4 ees8 } ees2 |
  des4~ \tuplet 3/2 { des c8 } c2 |

  f4~ \tuplet 3/2 { f4 ees8 } ees2 |
  des4~ \tuplet 3/2 { des c8 } c2 |
  f4~ \tuplet 3/2 { f4 ees8 } ees2 |
  des4~ \tuplet 3/2 { des c8 } c2 |
  f4~ \tuplet 3/2 { f4 ees8 } ees2 |
  des4~ \tuplet 3/2 { des c8 } c2 |
  f4~ \tuplet 3/2 { f4 ees8 } ees2 |
  des4~ \tuplet 3/2 { des c8 } c2 |
  \tuplet 3/2 { g4 bes8~ } \tuplet 3/2 { bes4 d8~ } \tuplet 3/2 { d4 f8~ } f4  |
  \tuplet 3/2 { c e8~ } \tuplet 3/2 { e4 c8~ } \tuplet 3/2 { c4 bes8~ } bes4  |
  \tuplet 3/2 { c f8~ } \tuplet 3/2 { f4 ees8~ } \tuplet 3/2 { ees4 f8 } f4~ |
  f1 |

  f4~ \tuplet 3/2 { f4 ees8 } ees2 |
  des4~ \tuplet 3/2 { des c8 } c2 |
  f4~ \tuplet 3/2 { f4 ees8 } ees2 |
  des4~ \tuplet 3/2 { des c8 } c2 |
  f4~ \tuplet 3/2 { f4 ees8 } ees2 |
  des4~ \tuplet 3/2 { des c8 } c2 |
  f4~ \tuplet 3/2 { f4 ees8 } ees2 |
  des4~ \tuplet 3/2 { des c8 } c2 |
  \tuplet 3/2 { g4 bes8~ } \tuplet 3/2 { bes4 d8~ } \tuplet 3/2 { d4 f8~ } f4  |
  \tuplet 3/2 { c e8~ } \tuplet 3/2 { e4 c8~ } \tuplet 3/2 { c4 bes8~ } bes4  |
  \tuplet 3/2 { c f8~ } \tuplet 3/2 { f4 ees8~ } \tuplet 3/2 { ees4 f8 } f4~ |
  f1 |
}


% drums section
scoreDrums = {
  <<
    \new DrumVoice  = Cajon {
      \voiceOne
      \drummode {
        s4 |
        cal8 cah cah cal cal4 cah | \makePercent s1 |
        \makePercent s | \makePercent s |
        \makePercent s | \makePercent s |
        \makePercent s | \makePercent s |
        \makePercent s | \makePercent s |
        \makePercent s | \makePercent s |
      }
    }
  >>
}
midiDrums = {
  <<
    \new DrumVoice  = Cajon {
      \voiceOne
      \drummode {
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |

        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |

        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |

        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |

        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
        \tuplet 3/2 { cal4\ff cah8\pp } \tuplet 3/2 { cah4 cal8\ff } cal4 cah\pp |
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
          \set GrandStaff.instrumentName = #"Lead "
          \set GrandStaff.shortInstrumentName = #"Ld "
          \new Staff {
            \relative c'' {
              \override StringNumber.stencil = ##f
              \clef "treble^8"
              \key aes \major
              \numericTimeSignature
              \time 4/4
              \tempo 4 = #execute
              \scoreTheme
            }
          }
          \new TabStaff {
            \set Staff.stringTunings = \stringTuning <e, a, d g b e'>
            \relative c {
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
                \key aes \major
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
        \set Staff.midiInstrument = "overdriven guitar"
        \set Staff.midiMinimumVolume = #0.4
        \set Staff.midiMaximumVolume = #0.4
        \relative c' {
          \time 4/4
          \tempo 4 = #execute
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
