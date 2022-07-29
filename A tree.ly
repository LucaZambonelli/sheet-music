\version "2.22.1"

song = "TA tree"
album = "A tree"
author = "Luca Zambonelli"
execute = 44


% pad section
scorePadTreble = {
  \partial 4. r8. ges |
  \repeat volta 2 {
    aes aes16~ aes2~ aes16 ges8. | ces ces16~ ces2~ ces16 ges8. |
    aes aes16~ aes4. ges8. ees~ | ees2.~ ees16 ges8. | \break
    aes aes16~ aes2~ aes16 ges8. | des' ces16~ ces2~ ces16 ges8. |
    aes aes16~ aes4. ges8. ees~ | ees2.~ ees16 ges8. | \break
    aes aes16~ aes2~ aes16 ges8. | ces ces16~ ces2~ ces16 ges8. |
    aes aes16~ aes4. ges8. ees~ | ees2.~ ees16 ges8. | \break
    aes aes16~ aes2~ aes16 ges8. | des' ces16~ ces2~ ces16 ges8. |
    aes aes16~ aes2~ aes16 ges8. | 
  }
  \alternative {
    {
     ees2~ ees8 r8. ges |
    }
    {
      ees2~ ees8 r4. \bar "|."
    }
  }
}
scorePadBass = {
  \partial4. aes4.~ |
  \repeat volta 2 {
    << aes1~ aes' >> | << aes,~ ges' >> |
    << aes,~ aes' >> | << aes,8.~ ces' >> << aes,16~ des'~ >> << aes,2.~ des' >>|
    << aes,1~ aes' >> | << aes,~ ges' >> |
    << aes,~ aes' >> | << aes,8.~ des' >> << aes,16~ ces'~ >> << aes,2.~ ces' >>|
    << aes,1~ aes' >> | << aes,~ ges' >> |
    << aes,~ aes' >> | << aes,8.~ ces' >> << aes,16~ des'~ >> << aes,2.~ des' >>|
    << aes,1~ aes' >> | << aes,~ ges' >> |
    << aes,~ aes' >> |
  }
  \alternative {
    {
      << aes,2~ ces'~ >> << aes,8~ ces' >> aes,4.~ |
    }
    {
      << aes2~ ces'~ >> << aes,8~ ces' >> aes,8. r |
    }
  }
}
midiPadTreble = {
  \partial 4. r8. ges\mf |
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
  aes aes16~ aes2~ aes16 ges8. | ees2~ ees8 r8. ges \bar "||" \break

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
  aes aes16~ aes2~ aes16 ges8. | ees2~ ees8 r8. ges \bar "||" \break

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
  aes aes16~ aes2~ aes16 ges8. | ees2~ ees8 r8. ges \bar "||" \break

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
midiPadBass = {
  \partial4. aes4.\mf~ |
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
  << aes,~ aes' >> | << aes,2~ ces'~ >> << aes,8~ ces' >> aes,4.~ |

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
  << aes,~ aes' >> | << aes,2~ ces'~ >> << aes,8~ ces' >> aes,4.~ |

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
  << aes,~ aes' >> | << aes,2~ ces'~ >> << aes,8~ ces' >> aes,4.~ |

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
              \time 4/4
              \tempo 4 = #execute
              \numericTimeSignature
              \key ces \major
              \scorePadTreble
            }
          }
          \new Staff {
            \relative c, {
              \clef "bass_8"
              \numericTimeSignature
              \time 4/4
              \key ces \major
              \scorePadBass
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
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #0.6
        \relative c' {
          \time 4/4
          \tempo 4 = #execute
          \midiPadTreble
        }
      }
      \new Staff {
        \set Staff.midiInstrument = "pad 1 (new age)"
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #0.8
        \relative c, {
          \time 4/4
          \tempo 4 = #execute
          \midiPadBass
        }
      }
    >>
    \midi { }
  }
}
