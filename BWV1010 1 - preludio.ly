\version "2.22.1"

song = "Preludio"
album = "Suite in MI BEMOLLE maggiore BWV1010"
author= "Luca Zambonelli"
execute = 100

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
  ees'\1( c\1) g\2 c\1 ees,\3^^ g\2 c,\4^^ s |
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
}

% bass
scoreBass = {
  ees8\3~ |
  ees2\3 ees4\3 bes'8^^\2 ees,\3~ |
  ees2\3 ees4\3 bes'8^^\2 ees,\3~ |
  ees2\3 ees4\3 bes'8^^\2 ees,\3~ |
  ees2\3 ees4\3 bes'8^^\2 ees,\3~ |
  ees2\3 c4\3 aes'8^^\2 ees\3~ |
  ees2\3 c4\3 aes'8^^\2 ees\3~ |
  ees2\3 bes4\4 aes'8^^\2 ees\3~ |
  ees2\3 bes4\4 aes'8^^\2 ees\3~ |
  ees2\3 g,4\4 ees'8^^\3 d\3~ |
  d2\3 g,4\4 d'8^^\3 c\3~ |
  c2\3 ees4\3 g8\2^^ bes,\4~ |
  bes2\4 ees4\3 g8\2^^ s |
}
midiBass = {
  \tuplet 3/2 { r4 ees8\mf~ } |
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
  bes2 ees4 \tuplet 3/2 { g16 r8. r8 } |
}

% drums
scoreDrums = {
  <<
    \new DrumVoice {
      \voiceOne
      \drummode {
        timl8 |
        timl timl timh timh timl4 timh8 timl |
        timl timl timh timh timl4 timh8 timl |
        timl timl timh timh timl4 timh8 timl |
        timl timl timh timh timl4 timh8 timl |
        timl timl timh timh timl4 timh8 timl |
        timl timl timh timh timl4 timh8 timl |
        timl timl timh timh timl4 timh8 timl |
        timl timl timh timh timl4 timh8 timl |
        timl timl timh timh timl4 timh8 timl |
        timl timl timh timh timl4 timh8 timl |
        timl timl timh timh timl4 timh8 timl |
        timl timl timh timh timl4 timh8 s |
      }
    }
    \new DrumVoice {
      \voiceTwo
      \drummode {
        ssl8 |
        ssl ssl ssl ssl ssl ssl ssl ssl |
        ssl ssl ssl ssl ssl ssl ssl ssl |
        ssl ssl ssl ssl ssl ssl ssl ssl |
        ssl ssl ssl ssl ssl ssl ssl ssl |
        ssl ssl ssl ssl ssl ssl ssl ssl |
        ssl ssl ssl ssl ssl ssl ssl ssl |
        ssl ssl ssl ssl ssl ssl ssl ssl |
        ssl ssl ssl ssl ssl ssl ssl ssl |
        ssl ssl ssl ssl ssl ssl ssl ssl |
        ssl ssl ssl ssl ssl ssl ssl ssl |
        ssl ssl ssl ssl ssl ssl ssl ssl |
        ssl ssl ssl ssl ssl ssl ssl s |
      }
    }
  >>
}

midiDrums = {
  <<
    \new DrumVoice {
      \drummode {
        \tuplet 3/2 { r4 bd8\ff } |
        \tuplet 3/2 { bd4\ff bd8 } \tuplet 3/2 { sn4\pp sn8 } bd4\ff \tuplet 3/2 { sn\pp bd8\ff } |
        \tuplet 3/2 { bd4\ff bd8 } \tuplet 3/2 { sn4\pp sn8 } bd4\ff \tuplet 3/2 { sn\pp bd8\ff } |
        \tuplet 3/2 { bd4\ff bd8 } \tuplet 3/2 { sn4\pp sn8 } bd4\ff \tuplet 3/2 { sn\pp bd8\ff } |
        \tuplet 3/2 { bd4\ff bd8 } \tuplet 3/2 { sn4\pp sn8 } bd4\ff \tuplet 3/2 { sn\pp bd8\ff } |
        \tuplet 3/2 { bd4\ff bd8 } \tuplet 3/2 { sn4\pp sn8 } bd4\ff \tuplet 3/2 { sn\pp bd8\ff } |
        \tuplet 3/2 { bd4\ff bd8 } \tuplet 3/2 { sn4\pp sn8 } bd4\ff \tuplet 3/2 { sn\pp bd8\ff } |
        \tuplet 3/2 { bd4\ff bd8 } \tuplet 3/2 { sn4\pp sn8 } bd4\ff \tuplet 3/2 { sn\pp bd8\ff } |
        \tuplet 3/2 { bd4\ff bd8 } \tuplet 3/2 { sn4\pp sn8 } bd4\ff \tuplet 3/2 { sn\pp bd8\ff } |
        \tuplet 3/2 { bd4\ff bd8 } \tuplet 3/2 { sn4\pp sn8 } bd4\ff \tuplet 3/2 { sn\pp bd8\ff } |
        \tuplet 3/2 { bd4\ff bd8 } \tuplet 3/2 { sn4\pp sn8 } bd4\ff \tuplet 3/2 { sn\pp bd8\ff } |
        \tuplet 3/2 { bd4\ff bd8 } \tuplet 3/2 { sn4\pp sn8 } bd4\ff \tuplet 3/2 { sn\pp bd8\ff } |
        \tuplet 3/2 { bd4\ff bd8 } \tuplet 3/2 { sn4\pp sn8 } bd4\ff \tuplet 3/2 { sn\pp r8 } |
      }
    }
    \new DrumVoice {
      \drummode {
        \tuplet 3/2 { r4 hhp8\mf } |
        \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } |
        \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } |
        \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } |
        \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } |
        \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } |
        \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } |
        \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } |
        \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } |
        \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } |
        \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } |
        \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } |
        \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 hhp8 } \tuplet 3/2 { hhp4 r8 } |
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
    tagline = ##f
  }

  % body
  \bookpart {
    \score {
      <<
        \new GrandStaff <<
          \set GrandStaff.instrumentName = #"Guitar "
          \set GrandStaff.shortInstrumentName = #"Gt "
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
          \override VerticalAxisGroup.minimum-Y-extent = #'(3.0 . 4.0)
          \override Stem.length = #4
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
        \midiDrums
      }
    >>
    \midi { }
  }
}
