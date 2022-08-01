\version "2.22.1"

song = "A tree"
album = "A tree"
author = "Luca Zambonelli"
execute = 44


% pad section
scorePadTreble = {
  \partial 4. r8. ges |
  \repeat volta 4 {
    aes aes16~ aes2~ aes16 ges8. |
    ces ces16~ ces2~ ces16 ges8. |
    aes aes aes ges ees4~ | \break
    ees2.~ ees16 ges8. |
    aes aes16~ aes2~ aes16 ges8. |
    des' ces16~ ces2~ ces16 ges8. |
  }
  \alternative {
    {
      aes aes aes ges ees4~ | \break
      ees2.~ ees16 ges8. |
    }
    {
      aes aes16~ aes2~ aes16 ges8. |
      ees2~ ees8 r4. |
      r2. r16 r8. \bar "|."
    }
  }
}
scorePadBass = {
  \partial4. aes4.~ |
  \repeat volta 2 {
    << aes1~ aes' >> |
    << aes,~ ges' >> |
    << aes,2.~ aes' >> << aes,8.~ aes' >> << aes,16~ des'~ >> |
    << aes,8~ des' >> << aes,~ ces'~ >> << aes,2.~ ces' >> |
    << aes,1~ aes' >> |
    << aes,~ ges' >> |
  }
  \alternative {
    {
      << aes,2.~ aes' >> << aes,8.~ aes' >> << aes,16~ des'~ >> |
      << aes,8~ des' >> << aes,~ ces'~ >> << aes,2.~ ces' >> |
    }
    {
      << aes,1~ aes' >> |
      << aes,2~ ces'~ >> << aes,8~ ces' >> aes,4. |
      aes2.~ aes16 r8. |
    }
  }
}
midiPadTreble = {
}
midiPadBass = {
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
