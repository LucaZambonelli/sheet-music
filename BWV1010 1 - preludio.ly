\version "2.22.1"

song = "Preludio"
album = "Suite in MI BEMOLLE maggiore BWV1010"
author= "Luca Zambonelli"
originalComposer = "Johann Sebastian Bach"
execute = 100

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


% guitar
scoreGuitar = {
  \partial 8 s8 |
  ees'\1( bes\1) g\2 bes\1 ees,\3^^ g\2 bes,\4^^ r | 
  ees'\1( bes\1) g\2 bes\1 ees,\3^^ g\2 bes,\4^^ r |
  des'\1( bes\1) g\2 bes\1 ees,\3^^ g\2 bes,\4^^ r |
  des'\1( bes\1) g\2 bes\1 ees,\3^^ g\2 bes,\4^^ r | \break
  c'\1( aes\1) ees\2 aes\1 c,\3^^ ees\2 aes,\4^^ r |
  c'\1( aes\1) ees\2 aes\1 c,\3^^ ees\2 aes,\4^^ r |
  aes'\2( f\2) d\3 f\2 bes,\4^^ d\3 aes\4^^ r |
  aes'\2( f\2) d\3 f\2 bes,\4^^ d\3 aes\4^^ r | \break
  g'\2( ees\2) bes\3 ees\2 g,\4^^ bes\3 ees,\5^^ r |
  g'\2( ees\2) bes\3 ees\2 g,\4^^ bes\3 d,\5^^ r |
  ees''\1( c\1) g\2 c\1 ees,\3^^ g\2 c,\4^^ r |
  ees'\1( c\1) g\2 c\1 ees,\3^^ g\2 c,\4^^ r | \break
  ees'\1( c\1) f,\3 a\2 c,\4^^ ees\3 a,\4^^ r |
  ees''\1( c\1) a\2 c\1 f,\3^^ a\2 ees\3^^ s |
}
midiGuitar = {
  \partial 4 r4 |
  \tuplet 3/2 { ees'4\mf bes8 } \tuplet 3/2 { g4 bes8 } \tuplet 3/2 { ees,16 r8. g8 }
    \tuplet 3/2 { bes,16 r8. r8 } |
  \tuplet 3/2 { ees'4 bes8 } \tuplet 3/2 { g4 bes8 } \tuplet 3/2 { ees,16 r8. g8 }
    \tuplet 3/2 { bes,16 r8.  r8 } |
  \tuplet 3/2 { des'4 bes8 } \tuplet 3/2 { g4 bes8 } \tuplet 3/2 { ees,16 r8. g8 }
    \tuplet 3/2 { bes,16 r8.  r8 } |
  \tuplet 3/2 { des'4 bes8 } \tuplet 3/2 { g4 bes8 } \tuplet 3/2 { ees,16 r8. g8 }
    \tuplet 3/2 { bes,16 r8.  r8 } |
  \tuplet 3/2 { c'4 aes8 } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { c,16 r8. ees8 }
    \tuplet 3/2 { aes,16 r8.  r8 } |
  \tuplet 3/2 { c'4 aes8 } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { c,16 r8. ees8 }
    \tuplet 3/2 { aes,16 r8.  r8 } |
  \tuplet 3/2 { aes'4 f8 } \tuplet 3/2 { d4 f8 } \tuplet 3/2 { bes,16 r8. d8 }
    \tuplet 3/2 { aes16 r8.  r8 } |
  \tuplet 3/2 { aes'4 f8 } \tuplet 3/2 { d4 f8 } \tuplet 3/2 { bes,16 r8. d8 }
    \tuplet 3/2 { aes16 r8.  r8 } |
  \tuplet 3/2 { g'4 ees8 } \tuplet 3/2 { bes4 ees8 } \tuplet 3/2 { g,16 r8. bes8 }
    \tuplet 3/2 { ees,16 r8.  r8 } |
  \tuplet 3/2 { g'4 ees8 } \tuplet 3/2 { bes4 ees8 } \tuplet 3/2 { g,16 r8. bes8 }
    \tuplet 3/2 { d,16 r8.  r8 } |
  \tuplet 3/2 { ees''4 c8 } \tuplet 3/2 { g4 c8 } \tuplet 3/2 { ees,16 r8. g8 }
    \tuplet 3/2 { c,16 r8.  r8 } |
  \tuplet 3/2 { ees'4 c8 } \tuplet 3/2 { g4 c8 } \tuplet 3/2 { ees,16 r8. g8 }
    \tuplet 3/2 { c,16 r8.  r8 } |
  \tuplet 3/2 { ees'4 c8 } \tuplet 3/2 { f,4 a8 } \tuplet 3/2 { c,16 r8. ees8 }
    \tuplet 3/2 { a,16 r8.  r8 } |
  \tuplet 3/2 { ees''4 c8 } \tuplet 3/2 { a4 c8 } \tuplet 3/2 { f,16 r8. a8 }
    \tuplet 3/2 { ees16 r8.  r8 } |
}


% bass
scoreBass = {
  \partial 8 ees8\3~ |
  ees2\3 ees4\3 bes'8^^\2 ees,\3~ |
  ees2\3 ees4\3 bes'8^^\2 ees,\3~ |
  ees2\3 ees4\3 bes'8^^\2 ees,\3~ |
  ees2\3 ees4\3 bes'8^^\2 ees,\3~ | \break
  ees2\3 c4\3 aes'8^^\2 ees\3~ |
  ees2\3 c4\3 aes'8^^\2 ees\3~ |
  ees2\3 bes4\4 aes'8^^\2 ees\3~ |
  ees2\3 bes4\4 aes'8^^\2 ees\3~ | \break
  ees2\3 g,4\4 ees'8^^\3 d\3~ |
  d2\3 g,4\4 d'8^^\3 c\3~ |
  c2\3 ees4\3 g8\2^^ bes,\4~ |
  bes2\4 ees4\3 g8\2^^ a,\4~ | \break
  a2\4 ees'4\3 a8\2^^ f,\4~ |
  f2\4 a4\4 g'8\2^^ s8 |
}
midiBass = {
  \partial 4 \tuplet 3/2 { r4 ees8\mf~ } |
  ees2 ees4 \tuplet 3/2 { bes'16 r8. ees,8~ } |
  ees2 ees4 \tuplet 3/2 { bes'16 r8. ees,8~ } |
  ees2 ees4 \tuplet 3/2 { bes'16 r8. ees,8~ } |
  ees2 ees4 \tuplet 3/2 { bes'16 r8. ees,8~ } |
  ees2 c4 \tuplet 3/2 { aes'16 r8. ees8~ } |
  ees2 c4 \tuplet 3/2 { aes'16 r8. ees8~ } |
  ees2 bes4 \tuplet 3/2 { aes'16 r8. ees8~ } |
  ees2 bes4 \tuplet 3/2 { aes'16 r8. ees8~ } |
  ees2 g,4 \tuplet 3/2 { ees'16 r8. d8~ } |
  d2 g,4 \tuplet 3/2 { d'16 r8. c8~ } |
  c2 ees4 \tuplet 3/2 { g16 r8. bes,8~ } |
  bes2 ees4 \tuplet 3/2 { g16 r8. a,8 } |
  a2 ees'4 \tuplet 3/2 { a16 r8. f,8 } |
  f2 a4 \tuplet 3/2 { g'16 r8. r8 } |
}


% drums
scoreDrums = {
  <<
    \new DrumVoice {
      \voiceOne
      \drummode {
        \partial 8 cal8 |
        cal cal cah cah cal4 cah8 cal |
      }
    }
    \new DrumVoice {
      \voiceTwo
      \drummode {
        \partial 8 mcs8 |
        mcs mcs mcs mcs mcs mcs mcs mcs |
      }
    }
  >>
  \makePercent s1 |
  \makePercent s1 |
  \makePercent s1 | \break
  \makePercent s1 |
  \makePercent s1 |
  \makePercent s1 |
  \makePercent s1 | \break
  \makePercent s1 |
  \makePercent s1 |
  \makePercent s1 |
  \makePercent s1 | \break
  \makePercent s1 |
  \makePercent s1 |
}

midiDrums = {
  <<
    \new DrumVoice {
      \drummode {
        \partial 4 \tuplet 3/2 { r4 cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp cal8\ff } |
        \tuplet 3/2 { cal4\ff cal8 } \tuplet 3/2 { cah4\pp cah8 } cal4\ff \tuplet 3/2 { cah\pp r8\ff } |
      }
    }
    \new DrumVoice {
      \drummode {
        \partial 4 \tuplet 3/2 { r4 mcs8\mf } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } |
        \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 mcs8 } \tuplet 3/2 { mcs4 r8 } |
      }
    }
  >>
}

% writing down
\book {
  \header {
    title = #song
    subtitle = #album
    composer = #author
    poet = #originalComposer
    tagline = ##f
  }

  % body
  \bookpart {
    \score {
      <<
        \new GrandStaff <<
          \set GrandStaff.instrumentName = #"Chitarra "
          \set GrandStaff.shortInstrumentName = #"Ct "
          \new Staff {
            \relative c'' {
              \override StringNumber.stencil = ##F
              \clef treble
              \key ees \major
              \numericTimeSignature
              \time 4/4
              \tempo 4 = #execute
              \scoreGuitar
            }
          }
          \new TabStaff {
            \set Staff.stringTunings = \stringTuning < e, a, d g c' f' >
            \relative c' {
              \scoreGuitar
            }
          }
        >>
        \new GrandStaff <<
          \set GrandStaff.instrumentName = #"Basso "
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
        \set Staff.midiInstrument = "overdriven guitar"
        \set Staff.midiMinimumVolume = #0.19
        \set Staff.midiMaximumVolume = #0.19
        \relative c' {
          \tempo 4 = #execute
          \midiGuitar
        }
      }
      \new Staff {
        \set Staff.midiInstrument = "electric bass (finger)"
        \set Staff.midiMinimumVolume = #0.33
        \set Staff.midiMaximumVolume = #0.33
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
