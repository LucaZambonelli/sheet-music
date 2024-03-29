\version "2.22.1"

song = "Minor Blues"
album = "Concept Album"
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


% rythm section
scoreRythm = {
  \bar "[" g4\6 bes8\5 f'4\4 g,4.\6 | c4\5 ees8\4 bes'4\3 c,4.\5 |
  \makePercent s1 | \makePercent s1 \bar"||" \break
  \makePercent s1 | \makePercent s1 |
  \makePercent s1 | \makePercent s1 | \bar"||" \break
  r8 << a4\6 ees'\5 a\4 >> << cis4\4 g\5 cis,\6 >>
    << ees4\6 bes'\5 ees\4 >> <<d8\4~ a\5~ d,\6~ >> |
  << d8\6 a'\5 d\4 >> << c4\4 g\5 c,\6 >>
    << a8\6~ ees'\5~ a\4~ >> << a2\4 ees\5 a,\6 >> |
  r8 << g4\6 d'\5 g\4 >> << bes4\4 f\5 bes,\6 >>
    << d4\6 a'\5 d\4 >> << bes8\4~ f\5~ bes,\6~ >> |
  << bes8\6 f'\5 bes\4 >> << g4\4 d\5 g,\6 >>
    << f8\6~ c'\5~ f\4~ >> << f2\4 c\5 f,\6 >> \bar"]"
  << g1\6 c\5 e\4 \fermata >> \bar "|."
}
chordsRythm = {
  \set chordChanges = ##t
  \chordmode {
    g1:m7 | c:m7 | g:m7 | g:m7 |
    c:m7 | c:m7 | g:m7 | g:m7 |
    a:7.5- | d:m7 | g:m7 | g:m7 |
    c
  }
}
midiRythm = {
  g4\sustainOn\mf \tuplet 3/2 { bes4 f'8~ }
    \tuplet 3/2 { f4 g,8~ } \tuplet 3/2 { g4~ g16 r\sustainOff } |
  c4\sustainOn \tuplet 3/2 { ees4 bes'8~ }
    \tuplet 3/2 { bes4 c,8~ } \tuplet 3/2 { c4~ c16 r\sustainOff } |
  g4\sustainOn \tuplet 3/2 { bes4 f'8~ }
    \tuplet 3/2 { f4 g,8~ } \tuplet 3/2 { g4~ g16 r\sustainOff } |
  g4\sustainOn \tuplet 3/2 { bes4 f'8~ }
    \tuplet 3/2 { f4 g,8~ } \tuplet 3/2 { g4~ g16 r\sustainOff } |
  c4\sustainOn \tuplet 3/2 { ees4 bes'8~ }
    \tuplet 3/2 { bes4 c,8~ } \tuplet 3/2 { c4~ c16 r\sustainOff } |
  c4\sustainOn \tuplet 3/2 { ees4 bes'8~ }
    \tuplet 3/2 { bes4 c,8~ } \tuplet 3/2 { c4~ c16 r\sustainOff } |
  g4\sustainOn \tuplet 3/2 { bes4 f'8~ }
    \tuplet 3/2 { f4 g,8~ } \tuplet 3/2 { g4~ g16 r\sustainOff } |
  g4\sustainOn \tuplet 3/2 { bes4 f'8~ }
    \tuplet 3/2 { f4 g,8~ } \tuplet 3/2 { g4~ g16 r\sustainOff } |
  \tuplet 3/2 { r4 << a8~ ees'~ a~ >> }
    \tuplet 3/2 { << a4 ees a, >> << cis8~ g'~ cis~ >> }
    \tuplet 3/2 { << cis4 g cis, >> << ees8~ bes'~ ees~ >> }
    \tuplet 3/2 { << ees4 bes ees, >> << d8~ a'~ d~ >> } |
  \tuplet 3/2 { << d4 a d, >>  << c8~ g'~ c~ >> }
    \tuplet 3/2 { << c4 g c, >>  << a8~ ees'~ a~ >> }
    << a2 ees a, >> |
  \tuplet 3/2 { r4 << g8~ d'~ g~ >> }
    \tuplet 3/2 { << g4 d g, >> << bes8~ f'~ bes~ >> } 
    \tuplet 3/2 { << bes4 f bes, >> << d8~ a'~ d~ >> }
    \tuplet 3/2 { << d4 a d, >> << bes8~ f'~ bes~ >> } |
  \tuplet 3/2 { << bes4 f bes, >> << g8~ d'~ g~ >> }
    \tuplet 3/2 { << g4 d g, >> << f8~ c'~ f~ >> }
    << f2 c f, >> |
  g4\sustainOn \tuplet 3/2 { bes4 f'8~ }
    \tuplet 3/2 { f4 g,8~ } \tuplet 3/2 { g4~ g16 r\sustainOff } |
  c4\sustainOn \tuplet 3/2 { ees4 bes'8~ }
    \tuplet 3/2 { bes4 c,8~ } \tuplet 3/2 { c4~ c16 r\sustainOff } |
  g4\sustainOn \tuplet 3/2 { bes4 f'8~ }
    \tuplet 3/2 { f4 g,8~ } \tuplet 3/2 { g4~ g16 r\sustainOff } |
  g4\sustainOn \tuplet 3/2 { bes4 f'8~ }
    \tuplet 3/2 { f4 g,8~ } \tuplet 3/2 { g4~ g16 r\sustainOff } |
  c4\sustainOn \tuplet 3/2 { ees4 bes'8~ }
    \tuplet 3/2 { bes4 c,8~ } \tuplet 3/2 { c4~ c16 r\sustainOff } |
  c4\sustainOn \tuplet 3/2 { ees4 bes'8~ }
    \tuplet 3/2 { bes4 c,8~ } \tuplet 3/2 { c4~ c16 r\sustainOff } |
  g4\sustainOn \tuplet 3/2 { bes4 f'8~ }
    \tuplet 3/2 { f4 g,8~ } \tuplet 3/2 { g4~ g16 r\sustainOff } |
  g4\sustainOn \tuplet 3/2 { bes4 f'8~ }
    \tuplet 3/2 { f4 g,8~ } \tuplet 3/2 { g4~ g16 r\sustainOff } |
  \tuplet 3/2 { r4 << a8~ ees'~ a~ >> }
    \tuplet 3/2 { << a4 ees a, >> << cis8~ g'~ cis~ >> }
    \tuplet 3/2 { << cis4 g cis, >> << ees8~ bes'~ ees~ >> }
    \tuplet 3/2 { << ees4 bes ees, >> << d8~ a'~ d~ >> } |
  \tuplet 3/2 { << d4 a d, >>  << c8~ g'~ c~ >> }
    \tuplet 3/2 { << c4 g c, >>  << a8~ ees'~ a~ >> }
    << a2 ees a, >> |
  \tuplet 3/2 { r4 << g8~ d'~ g~ >> }
    \tuplet 3/2 { << g4 d g, >> << bes8~ f'~ bes~ >> } 
    \tuplet 3/2 { << bes4 f bes, >> << d8~ a'~ d~ >> }
    \tuplet 3/2 { << d4 a d, >> << bes8~ f'~ bes~ >> } |
  \tuplet 3/2 { << bes4 f bes, >> << g8~ d'~ g~ >> }
    \tuplet 3/2 { << g4 d g, >> << f8~ c'~ f~ >> }
    << f2 c f, >> |
  << g1 c e >> |
}


% theme section
scoreTheme = {
  r4. g8\4 \tuplet 3/2 { f\4 g\4 bes\3~ } bes4\3 |
  r4. c8\3 \tuplet 3/2 { bes\3 c\3 ees\2~ } ees4\2 |
  r4. g,8\4 \tuplet 3/2 { f\4 g\4 f\4 } g\4 bes\3 |
  g\4 f\4 \tuplet 3/2 { g\4 bes\3 g\4~ } g4\4 r |
  r4. c8\3 \tuplet 3/2 { bes\3 c\3 ees\2~ } ees4\2 |
  r4. c8\3 \tuplet 3/2 { bes\3 c\3 bes\3~ } bes4\3 |
  r4. g8\4 \tuplet 3/2 { f\4 g\4 f\4 } g\4 bes\3 |
  g\4 bes\4 \tuplet 3/2 { c\3 d\3 f\2~ } f4\2 r |
  cis\3 \tuplet 3/2 { a8\4 g\4 a\4~ } a4\4 cis8\3 d\3~ |
  d4\3 \tuplet 3/2 { c8\3 a\4 c\3~ } c4\3 a8\4 g\4~ |
  g4\4 \tuplet 3/2 { f8\4 g\4 bes\3~ } bes4\3 g8\4 f\4~ |
  f1\4 |
  R1 | 
}
midiTheme = {
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | R1 |
  r4 \tuplet 3/2 { r4 g8\mf } \tuplet 3/2 { f g bes~ } bes4 |
  r4 \tuplet 3/2 { r4 c8 } \tuplet 3/2 { bes c ees~ } ees4 |
  r4 \tuplet 3/2 { r4 g,8 } \tuplet 3/2 { f g f } \tuplet 3/2 { g4 bes8 } |
  \tuplet 3/2 { g4 f8 } \tuplet 3/2 { g bes g~ } g4 r |
  r4 \tuplet 3/2 { r4 c8 } \tuplet 3/2 { bes c ees~ } ees4 |
  r4 \tuplet 3/2 { r4 c8 } \tuplet 3/2 { bes c bes~ } bes4 |
  r4 \tuplet 3/2 { r4 g8 } \tuplet 3/2 { f g f } \tuplet 3/2 { g4 bes8 } |
  \tuplet 3/2 { g4 bes8 } \tuplet 3/2 { c d f~ } f4 r |
  cis \tuplet 3/2 { a8 g a~ } a4 \tuplet 3/2 { cis d8~ } |
  d4 \tuplet 3/2 { c8 a c~ } c4 \tuplet 3/2 { a g8~ } |
  g4 \tuplet 3/2 { f8 g bes~ } bes4 \tuplet 3/2 { g f8~ } |
  f1 |
  R1 |
}


% bass section
scoreBass = {
  R1 | R1 | R1 | R1 |
  c8\3 ees4\3 f\2 bes,8\3 \glissando c4 | \makePercent s1 |
  g8\4 bes4\4 c\3 f,8\4 \glissando g4\4 | \makePercent s1 |
  a1\3~ | a1\3 | g'1\1~ | g1\1 |
  R1
}
midiBass = {
  R1 | R1 | R1 | R1 |
  \tuplet 3/2 { c4\mf ees8~ } \tuplet 3/2 { ees4 f8~ } \tuplet 3/2 { f4 bes,8 } c4 |
  \tuplet 3/2 { c4 ees8~ } \tuplet 3/2 { ees4 f8~ } \tuplet 3/2 { f4 bes,8 } c4 |
  \tuplet 3/2 { g4 bes8~ } \tuplet 3/2 { bes4 c8~ } \tuplet 3/2 { c4 f,8 } g4 |
  \tuplet 3/2 { g4 bes8~ } \tuplet 3/2 { bes4 c8~ } \tuplet 3/2 { c4 f,8 } g4 |
  a1~ | a1 | g'1~ | g1 |
  \tuplet 3/2 { g,4 bes8~ } \tuplet 3/2 { bes4 c8~ } \tuplet 3/2 { c4 f,8 } g4 |
  \tuplet 3/2 { c4 ees8~ } \tuplet 3/2 { ees4 f8~ } \tuplet 3/2 { f4 bes,8 } c4 |
  \tuplet 3/2 { g4 bes8~ } \tuplet 3/2 { bes4 c8~ } \tuplet 3/2 { c4 f,8 } g4 |
  \tuplet 3/2 { g4 bes8~ } \tuplet 3/2 { bes4 c8~ } \tuplet 3/2 { c4 f,8 } g4 |
  \tuplet 3/2 { c4 ees8~ } \tuplet 3/2 { ees4 f8~ } \tuplet 3/2 { f4 bes,8 } c4 |
  \tuplet 3/2 { c4 ees8~ } \tuplet 3/2 { ees4 f8~ } \tuplet 3/2 { f4 bes,8 } c4 |
  \tuplet 3/2 { g4 bes8~ } \tuplet 3/2 { bes4 c8~ } \tuplet 3/2 { c4 f,8 } g4 |
  \tuplet 3/2 { g4 bes8~ } \tuplet 3/2 { bes4 c8~ } \tuplet 3/2 { c4 f,8 } g4 |
  a1~ | a1 | g'1~ | g1 |
  R1 |
}


% drums section
scoreDrums = {
  \drummode {
    R1 | R1 | r2 cal4 cal8 tro | cal tro cah cal r2 |
    \makePercent s1 | \makePercent s1 | \makePercent s1 | \makePercent s1 |
    \makePercent s1 | \makePercent s1 | \makePercent s1 | \makePercent s1 |
    R1 |
  }
}
midiDrums = {
  \drummode {
    R1 | R1 |
    r2 cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    \tuplet 3/2 { cal4\ff tro8 } \tuplet 3/2 { cah4\pp cal8\ff } cal4\ff \tuplet 3/2 { cah\pp trio8\ff } |
    R1 |
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
                \key bes \major
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
              \key bes \major
              \numericTimeSignature
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
