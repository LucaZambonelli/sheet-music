\version "2.22.1"

song = "Therapy"
album = "A Tree"
author = "Luca Zambonelli"
execute = 44


% pad section
padTreble = {
  \partial 4. r8. ges |
  aes aes16~ aes2~ aes16 ges8. | ces ces16~ ces2~ ces16 ges8. |
  aes aes16~ aes4. ges8. ees~ | ees2.~ ees16 ges8. | \break
  aes aes16~ aes2~ aes16 ges8. | des' ces16~ ces2~ ces16 ges8. |
  aes aes16~ aes4. ges8. ees~ | ees2.~ ees16 ges8. | \break
  aes aes16~ aes2~ aes16 ges8. | ces ces16~ ces2~ ces16 ges8. |
  aes aes16~ aes4. ges8. ees~ | ees2.~ ees16 ges8. | \break
  aes aes16~ aes2~ aes16 ges8. | des' ces16~ ces2~ ces16 ges8. |
  aes aes16~ aes2~ aes16 ges8. | ees2~ ees8 r8. ges \bar "||" \break

  aes aes16~ aes2~ aes16 ges8. | ces ces16~ ces2~ ces16 ges8. |
  aes aes16~ aes4. ges8. ees~ | ees2.~ ees16 ges8. | \break
  aes aes16~ aes2~ aes16 ges8. | des' ces16~ ces2~ ces16 ges8. |
  aes aes16~ aes4. ges8. ees~ | ees2.~ ees16 ges8. | \break
  aes aes16~ aes2~ aes16 ges8. | ces ces16~ ces2~ ces16 ges8. |
  aes aes16~ aes4. ges8. ees~ | ees2.~ ees16 ges8. | \break
  aes aes16~ aes2~ aes16 ges8. | des' ces16~ ces2~ ces16 ges8. |
  aes aes16~ aes2~ aes16 ges8. | ees2~ ees8 r4. \bar "|." \break
}
padBass = {
  \partial4. aes4.~ |
  << aes1~ aes' >> | << aes,~ ges' >> |
  << aes,~ aes' >> | << aes,8.~ ces' >> << aes,16~ des'~ >> << aes,2.~ des' >>|
  << aes,1~ aes' >> | << aes,~ ges' >> |
  << aes,~ aes' >> | << aes,8.~ des' >> << aes,16~ ces'~ >> << aes,2.~ ces' >>|
  << aes,1~ aes' >> | << aes,~ ges' >> |
  << aes,~ aes' >> | << aes,8.~ ces' >> << aes,16~ des'~ >> << aes,2.~ des' >>|
  << aes,1~ aes' >> | << aes,~ ges' >> |
  << aes,~ aes' >> | << aes,2~ ces'~ >> << aes,8~ ces' >> aes,4.~ |

  << aes1~ aes' >> | << aes,~ ges' >> |
  << aes,~ aes' >> | << aes,8.~ ces' >> << aes,16~ des'~ >> << aes,2.~ des' >>|
  << aes,1~ aes' >> | << aes,~ ges' >> |
  << aes,~ aes' >> | << aes,8.~ des' >> << aes,16~ ces'~ >> << aes,2.~ ces' >>|
  << aes,1~ aes' >> | << aes,~ ges' >> |
  << aes,~ aes' >> | << aes,8.~ ces' >> << aes,16~ des'~ >> << aes,2.~ des' >>|
  << aes,1~ aes' >> | << aes,~ ges' >> |
  << aes,~ aes' >> | << aes,2~ ces'~ >> << aes,8~ ces' >> aes,8. r |
}

% writing down
\book {
  \header{
    title = #song
    subtitle = #album
    composer = #author
    tagline = ##f
  }

  % score
  \bookpart {
    \score {
      <<
        \new GrandStaff <<
          \set GrandStaff.instrumentName = #"Pad "
          \set GrandStaff.shortInstrumentName = #"Pd "
          \new Staff {
            \relative c' {
              \clef "treble_8"
              \key ces \major
              \time 4/4
              \tempo 4 = #execute
              \numericTimeSignature
              \padTreble
            }
          }
          \new Staff {
            \relative c, {
              \clef "bass_8"
              \key ces \major
              \numericTimeSignature
              \time 4/4
              \padBass
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
        \set Staff.midiInstrument = "pad 1 (new age)"
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #0.8
        \relative c' {
          \time 4/4
          \tempo 4 = #execute
          \padTreble
        }
      }
      \new Staff {
        \set Staff.midiInstrument = "pad 1 (new age)"
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #0.8
        \relative c, {
          \time 4/4
          \tempo 4 = #execute
          \padBass
        }
      }
    >>
    \midi { }
  }
}
