\version "2.22.1"

song = "Preludio"
album = "Suite in MI BEMOLLE maggiore BWV1010"
author= "Luca Zambonelli"
execute = 96

% guitar
scoreGuitar = {
  ees8\f\5 ees'\3( bes\3) g\4( bes\4) ees,\5^. g\4^. bes,\6^. |
  ees\p\5 ees'\3( bes\3) g\4( bes\4) ees,\5^. g\4^. bes,\6^. |
  ees\f\5 des'\3( bes\3) g\4( bes\4) ees,\5^. g\4^. bes,\6^. |
  ees\p\5 des'\3( bes\3) g\4( bes\4) ees,\5^. g\4^. bes,\6^. | \break
  ees\f\5 c'\3( aes\3) ees\4( aes\4) c,\5^. ees\5^. aes,\6^. |
  ees'\p\5 c'\3( aes\3) ees\4( aes\4) c,\5^. ees\5^. aes,\6^. |
  ees'\f\5 aes\4( f\4) d\5( f\5) bes,\6^. d\5^. aes\6^. |
  ees'\p\5 aes\4( f\4) d\5( f\5) bes,\6^. d\5^. aes\6^. | \break
}
midiGuitar = {
  \tuplet 3/2 { ees4\f ees'8 } \tuplet 3/2 { bes4 g8 } \tuplet 3/2 { bes4 ees,16 r }
    \tuplet 3/2 { g8 r bes,16 r }
  \tuplet 3/2 { ees4\p ees'8 } \tuplet 3/2 { bes4 g8 } \tuplet 3/2 { bes4 ees,16 r }
    \tuplet 3/2 { g8 r  bes,16 r }
  \tuplet 3/2 { ees4\f des'8 } \tuplet 3/2 { bes4 g8 } \tuplet 3/2 { bes4 ees,16 r }
    \tuplet 3/2 { g8 r  bes,16 r }
  \tuplet 3/2 { ees4\p des'8 } \tuplet 3/2 { bes4 g8 } \tuplet 3/2 { bes4 ees,16 r }
    \tuplet 3/2 { g8 r  bes,16 r }
  \tuplet 3/2 { ees4\f c'8 } \tuplet 3/2 { aes4 ees8 } \tuplet 3/2 { aes4 c,16 r }
    \tuplet 3/2 { ees8 r  aes,16 r }
  \tuplet 3/2 { ees'4\p c'8 } \tuplet 3/2 { aes4 ees8 } \tuplet 3/2 { aes4 c,16 r }
    \tuplet 3/2 { ees8 r  aes,16 r }
  \tuplet 3/2 { ees'4\f aes8 } \tuplet 3/2 { f4 d8 } \tuplet 3/2 { f4 bes,16 r }
    \tuplet 3/2 { d8 r  aes16 r }
  \tuplet 3/2 { ees'4\p aes8 } \tuplet 3/2 { f4 d8 } \tuplet 3/2 { f4 bes,16 r }
    \tuplet 3/2 { d8 r  aes16 r }
}

% bass
scoreBass = {
  ees4.\f\3 ees4\3 ees4\3 bes8\4 |
  ees4.\p\3 ees4\3 ees4\3 bes8\4 |
  ees4.\f\3 ees4\3 ees4\3 bes8\4 |
  ees4.\p\3 ees4\3 ees4\3 bes8\4 |
  ees4.\f\3 ees4\3 c4\3 aes8\4 |
  ees'4.\p\3 ees4\3 c4\3 aes8\4 |
  ees'4.\f\3 ees4\3 bes4\4 aes8\4 |
  ees'4.\p\3 ees4\3 bes4\4 aes8\4 |
}
midiBass = {
  ees4\f~ \tuplet 3/2 { ees4 ees8~ } \tuplet 3/2 { ees4 ees8~ } \tuplet 3/2 { ees4 bes8 } |
  ees4\p~ \tuplet 3/2 { ees4 ees8~ } \tuplet 3/2 { ees4 ees8~ } \tuplet 3/2 { ees4 bes8 } |
  ees4\f~ \tuplet 3/2 { ees4 ees8~ } \tuplet 3/2 { ees4 ees8~ } \tuplet 3/2 { ees4 bes8 } |
  ees4\p~ \tuplet 3/2 { ees4 ees8~ } \tuplet 3/2 { ees4 ees8~ } \tuplet 3/2 { ees4 bes8 } |
  ees4\f~ \tuplet 3/2 { ees4 ees8~ } \tuplet 3/2 { ees4 c8~ } \tuplet 3/2 { c4 aes8 } |
  ees'4\p~ \tuplet 3/2 { ees4 ees8~ } \tuplet 3/2 { ees4 c8~ } \tuplet 3/2 { c4 aes8 } |
  ees'4\f~ \tuplet 3/2 { ees4 ees8~ } \tuplet 3/2 { ees4 bes8~ } \tuplet 3/2 { bes4 aes8 } |
  ees'4\p~ \tuplet 3/2 { ees4 ees8~ } \tuplet 3/2 { ees4 bes8~ } \tuplet 3/2 { bes4 aes8 } |
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
        \set Staff.midiMinimumVolume = #0.2
        \set Staff.midiMaximumVolume = #0.6
        \relative c {
          \tempo 4 = #execute
          \midiGuitar
        }
      }
      \new Staff {
        \set Staff.midiInstrument = "electric bass (finger)"
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #1.0
        \relative c, {
          \midiBass
        }
      }
    >>
    \midi { }
  }
}
