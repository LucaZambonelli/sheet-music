\version "2.22.1"
\paper {
  #(set-paper-size "a4" 'landscape)
}

\defineBarLine "[" #'("" "[" "")
\defineBarLine "]" #'("]" "" "")


makePercent = #(define-music-function (note) (ly:music?)
  (make-music 'PercentEvent 'length (ly:music-length note)))

MidiRythmG = {
  g4\sustainOn \tuplet 3/2 { bes4 f'8~ }
  \tuplet 3/2 { f4 g,8~ } g4\sustainOff 
}
ScoreRythmG = {
  g4\6 bes8\5 f'4\4 g,4.\6
}
MidiRythmGEnd= {
  \tuplet 3/2 { r4 << g8~ d'~ g~ >> }
  \tuplet 3/2 { << g4 d g, >> << bes8~ f'~ bes~ >> } 
  \tuplet 3/2 { << bes4 f bes, >> << d8~ a'~ d~ >> }
  \tuplet 3/2 { << d4 a d, >> << bes8~ f'~ bes~ >> } |
  \tuplet 3/2 { << bes4 f bes, >> << g8~ d'~ g~ >> }
  \tuplet 3/2 { << g4 d g, >> << f8~ c'~ f~ >> }
  << f2 c2 f,2 >>
}
ScoreRythmGEnd= {
  r8 << g4\6 d'\5 g\4 >> << bes4\4 f\5 bes,\6 >>
  << d4\6 a'\5 d\4 >> << bes8\4~ f\5~ bes,\6~ >> |
  << bes8\6 f'\5 bes\4 >> << g4\4 d\5 g,\6 >>
  << f8\6~ c'\5~ f\4~ >> << f2\4 c\5 f,\6 >>
}
MidiRythmA = {
  \tuplet 3/2 { r4 << a8~ ees'~ a~ >> }
  \tuplet 3/2 { << a4 ees a, >> << cis8~ g'~ cis~ >> }
  \tuplet 3/2 { << cis4 g cis, >> << ees8~ bes'~ ees~ >> }
  \tuplet 3/2 { << ees4 bes ees, >> << d8~ a'~ d~ >> }
}
ScoreRythmA = {
  r8 << a4\6 ees'\5 a\4 >> << cis4\4 g\5 cis,\6 >>
  << ees4\6 bes'\5 ees\4 >> <<d8\4~ a\5~ d,\6~ >>
}
MidiRythmC = {
  c4\sustainOn \tuplet 3/2 { ees4 bes'8~ }
  \tuplet 3/2 { bes4 c,8~ } c4\sustainOff 
}
ScoreRythmC = {
  c4\5 ees8\4 bes'4\3 c,4.\5
}
MidiRythmD = {
  \tuplet 3/2 { << d4 a d, >>  << c8~ g'~ c~ >> }
  \tuplet 3/2 { << c4 g c, >>  << a8~ ees'~ a~ >> }
  << a2 ees a, >>
}
ScoreRythmD = {
  << d8\6 a'\5 d\4 >> << c4\4 g\5 c,\6 >>
  << a8\6~ ees'\5~ a\4~ >> << a2\4 ees\5 a,\6 >>
}

MidiRythm = {
  \MidiRythmG | \MidiRythmC | \MidiRythmG | \MidiRythmG |
  \MidiRythmC | \MidiRythmC | \MidiRythmG | \MidiRythmG |
  \MidiRythmA | \MidiRythmD | \MidiRythmGEnd |
  \MidiRythmG | \MidiRythmC | \MidiRythmG | \MidiRythmG |
  \MidiRythmC | \MidiRythmC | \MidiRythmG | \MidiRythmG |
  \MidiRythmA | \MidiRythmD | \MidiRythmGEnd |
  \MidiRythmG | \MidiRythmC | \MidiRythmG | \MidiRythmG |
  \MidiRythmC | \MidiRythmC | \MidiRythmG | \MidiRythmG |
  \MidiRythmA | \MidiRythmD | \MidiRythmGEnd |
  << g1 c e >>
}
ScoreRythm = {
  \bar "[" \ScoreRythmG | \ScoreRythmC | \makePercent s1 |
  \makePercent s1 \bar"||" \makePercent s1 | \makePercent s1 | \break
  \makePercent s1 | \makePercent s1 | \bar"||" \ScoreRythmA |
  \ScoreRythmD | \ScoreRythmGEnd \bar"]"
  << g\6 c\5 e\4 \fermata >> \bar "|."
}
ScoreChords = {
  \set chordChanges = ##t
  \chordmode {
    g1:m7 c:m7 g:m7 g:m7
    c:m7 c:m7 g:m7 g:m7
    a:7.5- d:m7 g:m7 g:m7
    c
  }
}


MidiBassG = {
  \tuplet 3/2 { g4 bes8~ } \tuplet 3/2 { bes4 c8~ }
  \tuplet 3/2 { c4 f,8 } g4
}
MidiBassGdo = {
  \tuplet 3/2 { g,4 bes8~ } \tuplet 3/2 { bes4 c8~ }
  \tuplet 3/2 { c4 f,8 } g4
}
ScoreBassG = {
  g8\4 bes4\4 c\3 f,8\4 \glissando g4\4 
}
MidiBassGEnd= {
  g'1~ | g1
}
ScoreBassGEnd= {
  g'1\1~ | g1\1
}
MidiBassA = {
  a1~
}
ScoreBassA = {
  a1\3~
}
MidiBassC = {
  \tuplet 3/2 { c4 ees8~ } \tuplet 3/2 { ees4 f8~ }
  \tuplet 3/2 { f4 bes,8 } c4
}
ScoreBassC = {
  c8\3 ees4\3 f\2 bes,8\3 \glissando c4
}
MidiBassD = {
  a1
}
ScoreBassD = {
  a1\3
}

MidiBass = {
  R1 | R1 | R1 |
  R1 | \MidiBassC | \MidiBassC |
  \MidiBassG | \MidiBassG | \MidiBassA |
  \MidiBassD | \MidiBassGEnd |
  \MidiBassGdo | \MidiBassC | \MidiBassG |
  \MidiBassG | \MidiBassC | \MidiBassC |
  \MidiBassG | \MidiBassG | \MidiBassA |
  \MidiBassD | \MidiBassGEnd |
  \MidiBassGdo | \MidiBassC | \MidiBassG |
  \MidiBassG | \MidiBassC | \MidiBassC |
  \MidiBassG | \MidiBassG | \MidiBassA |
  \MidiBassD | \MidiBassGEnd |
}
ScoreBass = {
  R1 | R1 | R1 |
  R1 | \ScoreBassC | \makePercent s1 |
  \ScoreBassG | \makePercent s1 | \ScoreBassA |
  \ScoreBassD | \ScoreBassGEnd |
  R1
}


MidiDrumsAHalf = {
  \drummode {
    r2
    bd4 \tuplet 3/2 { sn trio8 }
  }
}
MidiDrumsA = {
  \drummode {
    \tuplet 3/2 { bd4 trio8 } \tuplet 3/2 {sn4 bd8}
    bd4 \tuplet 3/2 { sn trio8 }
  }
}
ScoreDrumsAIn = {
  \drummode {
    r2 timl4 timh8 cb
  }
}
ScoreDrumsAOut = {
  \drummode {
    timl8 cb timh timl r2
  }
}

MidiDrums = {
  R1 | R1 | \MidiDrumsAHalf |
  \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
  \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
  \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
  \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
  \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
  \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
  \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
  \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
  \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
  \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
  \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
}
ScoreDrums = {
  R1 | R1 | \ScoreDrumsAIn |
  \ScoreDrumsAOut | \makePercent s1 | \makePercent s1 |
  \makePercent s1 | \makePercent s1 | \makePercent s1 |
  \makePercent s1 | \makePercent s1 | \makePercent s1 |
  R1
}


\book {
  \header{
    title = "a bluesy blues, but minor"
    composer = "Luca Zambonelli"
    tagline = ##f
  }

  \score {
    <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = #"Guitar "
        \set GrandStaff.shortInstrumentName = #"Gt "
        \new Staff {
          <<
            \relative c' {
              \override StringNumber.stencil = ##f
              \clef treble
              \key bes \major
              \time 4/4
              \ScoreRythm
            }
            \new ChordNames {
              \ScoreChords
            }
          >>
        }
        \new TabStaff {
          \set Staff.stringTunings = \stringTuning <e, a, d g c f'>
          \relative c {
            \ScoreRythm
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
            \time 4/4
            \ScoreBass
          }
        }
        \new TabStaff {
          \set Staff.stringTunings = #bass-tuning
          \relative c, {
            \ScoreBass
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
      } \ScoreDrums
    >>
    \layout { }
  }

  \score {
    <<
      \new Staff {
        \set Staff.midiInstrument = "electric guitar (clean)"
        \relative c {
          \time 4/4
          \tempo 4 = 96
          \MidiRythm
        }
      }
      \new Staff {
        \set Staff.midiInstrument = "electric bass (finger)"
        \relative c, {
          \MidiBass
        }
      }
      \new DrumStaff {
          \MidiDrums
      }
    >>
    \midi { }
  }
}
