\version "2.22.1"

song = "Fives"
album = "Concept Album"
author = "Luca Zambonelli"
execute = 120

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
  d1\3 r4 |
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
  d1 r4 |
}


% bass section
scoreBass = {
  \partial 4 \tuplet 3/2 { g8\2 f\3 ees\3 } |
  d8\3 d4.\3 d8\3^^ a'\2 \tuplet 3/2 { c\1 a\2 g\2 } \makePercent s4 |
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
  <<
    \new DrumVoice  = Cajon {
      \voiceOne
      \drummode {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
      }
    }
    \new DrumVoice  = Maracas {
      \voiceTwo
      \drummode {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
        s1 | s1 | r2 r8 mcs  mcs \makePercent s8 | \makePercent s1
      }
    }
    \new DrumVoice  = Triangle {
      \voiceThree
      \drummode {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
      }
    }
  >>
}
scoreDrums = {
  <<
    \new DrumVoice  = Cajon {
      \voiceOne
      \drummode {
        \partial 4 s4 |
        s8 \makePercent s1 s8 | s8 \makePercent s1 s8 |
        cal8 cah r4 cal8 cah cah cal cal cah | s8 \makePercent s1 s8 |
        s8 \makePercent s1 s8 | s8 \makePercent s1 s8 |
        s8 \makePercent s1 s8 | s8 \makePercent s1 s8 |
      }
    }
    \new DrumVoice  = Maracas {
      \voiceTwo
      \drummode {
        \partial 4 s4 |
        s1 s4 | s1 s4 |
        s1 s4 | s1 s4 |
        s1 s4 | s1 s4 |
        s1 s4 | s1 s4 |
      }
    }
    \new DrumVoice  = Triangle {
      \voiceThree
      \drummode {
        \partial 4 s4 |
        s1 s4 | s1 s4 |
        s1 s4 | s1 s4 |
        s1 s4 | s1 s4 |
        s1 s4 | s1 s4 |
      }
    }
  >>
}
midiDrums = {
  <<
    \new DrumVoice  = Cajon {
      \voiceOne
      \drummode {
        r1 | r1 | r1 | r1 |
        r1 | r1 | r1 | r1 |
        r1 | r1 | r1 | r1 |
        r1 r4 | r1 r4 |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
        \tuplet 3/2 { cal4\ff cah8\pp } r4 \tuplet 3/2 { cal\ff cah8\pp }
          \tuplet 3/2 { cah4 cal8\ff } \tuplet 3/2 { cal4 cah8\pp } |
      }
    }
    \new DrumVoice  = Maracas {
      \voiceTwo
      \drummode {
        r1 | r1 | r1 | r1 |
        r1 | r1 | r1 | r1 |
        r1 | r1 |
        r2 \tuplet 3/2 { r4 mcs8\mf } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } 
          \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
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
          instrumentName = #"Perc. "
          shortInstrumentName = #"Pc "
          \override StaffSymbol.line-count = #1
          \override StaffSymbol.staff-space = #2
          \override Stem.length = #4
          \override VerticalAxisGroup.minimum-Y-extent = #'(3.0 . 4.0)
          drumStyleTable = #(alist->hash-table cajon-style)
        } {
          \numericTimeSignature
          \scoreDrumsVerse
        }
      >>
      \layout { }
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
          instrumentName = #"Perc. "
          shortInstrumentName = #"Pc "
          \override StaffSymbol.line-count = #1
          \override StaffSymbol.staff-space = #2
          \override Stem.length = #4
          \override VerticalAxisGroup.minimum-Y-extent = #'(3.0 . 4.0)
          drumStyleTable = #(alist->hash-table cajon-style)
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
