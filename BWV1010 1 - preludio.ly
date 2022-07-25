\version "2.22.1"

song = "Preludio"
album = "Suite in MI BEMOLLE maggiore BWV1010"
author= "Luca Zambonelli"
execute = 108

% guitar
scoreGuitar = {
  ees8\f\5 ees'\3( bes\3) g\4( bes\4) ees,\5^. g\4^. bes,\6^. | 
  ees\p\5 ees'\3( bes\3) g\4( bes\4) ees,\5^. g\4^. bes,\6^. | 
}
midiGuitar = {
  \tuplet 3/2 { ees4\f ees'8 } \tuplet 3/2 { bes4 g8 } \tuplet 3/2 { bes4 ees,8 } \tuplet 3/2 { g4 bes,8 }
  \tuplet 3/2 { ees4\p ees'8 } \tuplet 3/2 { bes4 g8 } \tuplet 3/2 { bes4 ees,8 } \tuplet 3/2 { g4 bes,8 }
}

% bass
scoreBass = {
  R1
}
midiBass = {
  R1
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
            \relative c, {
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
            \relative c,, {
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
          \midiGuitar
        }
      }
      \new Staff {
        \set Staff.midiInstrument = "electric bass (finger)"
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #1.0
        \relative c,, {
          \midiBass
        }
      }
    >>
    \midi { }
  }
}
