\version "2.22.1"

song = "Preludio"
album = "Suite in MI BEMOLLE maggiore BWV1010"
author= "Luca Zambonelli"
execute = 96

% guitar
scoreGuitar = {
  \partial 8 r8\5 |
  ees'\3( bes\3) g\4( bes\4) ees,\5^. g\4^. bes,\6^. r | 
  ees'\3( bes\3) g\4( bes\4) ees,\5^. g\4^. bes,\6^. r |
  des'\3( bes\3) g\4( bes\4) ees,\5^. g\4^. bes,\6^. r |
  des'\3( bes\3) g\4( bes\4) ees,\5^. g\4^. bes,\6^. r | \break
  c'\3( aes\3) ees\4( aes\4) c,\5^. ees\5^. aes,\6^. r |
  c'\3( aes\3) ees\4( aes\4) c,\5^. ees\5^. aes,\6^. r |
  aes'\4( f\4) d\5( f\5) bes,\6^. d\5^. aes\6^. r |
  aes'\4( f\4) d\5( f\5) bes,\6^. d\5^. aes\6^. r | \break
  g'\4( ees\4) bes\5( ees\5) g\4^. bes,\6^. ees\5^. r |
  g\4( ees\4) bes\5( ees\5) g\4^. bes,\6^. d\5^. r |
}
midiGuitar = {
  \partial 4 r4 |
  \tuplet 3/2 { ees'4 bes8 } \tuplet 3/2 { g4 bes8 } \tuplet 3/2 { ees,8 r g16 r }
    \tuplet 3/2 { bes,8 r r } |
  \tuplet 3/2 { ees'4 bes8 } \tuplet 3/2 { g4 bes8 } \tuplet 3/2 { ees,8 r g16 r }
    \tuplet 3/2 { bes,8 r  r } |
  \tuplet 3/2 { des'4 bes8 } \tuplet 3/2 { g4 bes8 } \tuplet 3/2 { ees,8 r g16 r }
    \tuplet 3/2 { bes,8 r  r } |
  \tuplet 3/2 { des'4 bes8 } \tuplet 3/2 { g4 bes8 } \tuplet 3/2 { ees,8 r g16 r }
    \tuplet 3/2 { bes,8 r  r } |
  \tuplet 3/2 { c'4 aes8 } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { c,8 r ees16 r }
    \tuplet 3/2 { aes,8 r  r } |
  \tuplet 3/2 { c'4 aes8 } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { c,8 r ees16 r }
    \tuplet 3/2 { aes,8 r  r } |
  \tuplet 3/2 { aes'4 f8 } \tuplet 3/2 { d4 f8 } \tuplet 3/2 { bes,8 r d16 r }
    \tuplet 3/2 { aes8 r  r } |
  \tuplet 3/2 { aes'4 f8 } \tuplet 3/2 { d4 f8 } \tuplet 3/2 { bes,8 r d16 r }
    \tuplet 3/2 { aes8 r  r } |
  \tuplet 3/2 { g'4 ees8 } \tuplet 3/2 { bes4 ees8 } \tuplet 3/2 { g8 r bes,16 r }
    \tuplet 3/2 { ees8 r  r }
  \tuplet 3/2 { g4 ees8 } \tuplet 3/2 { bes4 ees8 } \tuplet 3/2 { g8 r bes,16 r }
    \tuplet 3/2 { d8 r  r }
}

% bass
scoreBass = {
  ees8\3~ |
  ees2\3 ees4\3 bes8^.\4 ees\3~ |
  ees2\3 ees4\3 bes8^.\4 ees\3~ |
  ees2\3 ees4\3 bes8^.\4 ees\3~ |
  ees2\3 ees4\3 bes8^.\4 ees\3~ |
  ees2\3 c4\3 aes8^.\4 ees'\3~ |
  ees2\3 c4\3 aes8^.\4 ees'\3~ |
  ees2\3 bes4\4 aes8^.\4 ees'\3~ |
  ees2\3 bes4\4 aes8^.\4 ees'\3~ |
  ees2\3 g,4\4 ees'8^.\3 d\3~ |
  d2\3 g,4\4 d'8^.\3 r |
}
midiBass = {
  \tuplet 3/2 { r4 ees8~ } |
  ees2 ees4 \tuplet 3/2 { bes8 r ees~ } |
  ees2 ees4 \tuplet 3/2 { bes8 r ees~ } |
  ees2 ees4 \tuplet 3/2 { bes8 r ees~ } |
  ees2 ees4 \tuplet 3/2 { bes8 r ees~ } |
  ees2 c4 \tuplet 3/2 { aes8 r ees'~ } |
  ees2 c4 \tuplet 3/2 { aes8 r ees'~ } |
  ees2 bes4 \tuplet 3/2 { aes8 r ees'~ } |
  ees2 bes4 \tuplet 3/2 { aes8 r ees'~ } |
  ees2 g,4 \tuplet 3/2 { ees'8 r d~ } |
  d2 g,4 \tuplet 3/2 { d'8 r r } |
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
            \relative c' {
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
            \relative c {
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
      >>
      \layout { }
    }
  }

  % midi
  \score {
    <<
      \new Staff {
        \set Staff.midiInstrument = "electric guitar (clean)"
        \set Staff.midiMinimumVolume = #1.0
        \set Staff.midiMaximumVolume = #1.0
        \relative c {
          \tempo 4 = #execute
          \midiGuitar
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
