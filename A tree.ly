\version "2.22.1"

song = "A tree"
album = "A tree"
author = "Luca Zambonelli"
execute = 44


% pad section
scorePadTreble = {
  \partial 4. r8. g |
  \repeat volta 4 {
    a a16~ a2~ a16 g8. |
    c c16~ c2~ c16 g8. |
    a a a g e4~ | \break
    e2.~ e16 g8. |
    a a16~ a2~ a16 g8. |
    d' c16~ c2~ c16 g8. |
  }
  \alternative {
    {
      a a a g e4~ | \break
      e2.~ e16 g8. |
    }
    {
      a a16~ a2~ a16 g8. |
      e2~ e8 r4. |
      r2. r16 r8. \bar "|."
    }
  }
}
scorePadBass = {
  \partial4. a4.~ |
  \repeat volta 2 {
    << a1~ a' >> |
    << a,~ g' >> |
    << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
    << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
    << a,1~ a' >> |
    << a,~ g' >> |
  }
  \alternative {
    {
      << a,2.~ a' >> << a,8.~ a' >> << a,16~ c'~ >> |
      << a,8~ c' >> << a,~ a'~ >> << a,2~ a'~ >> << a,16~ a' >> a,8.~ |
    }
    {
      << a1~ a' >> |
      << a,2~ c'~ >> << a,8~ c' >> a,4.~ |
      a2.~ a16 r8. |
    }
  }
}
midiPadTreble = {
  \partial 4. r8. g |

  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a16~ a2~ a16 g8. |
  e2~ e8 r4. |
  r2. r16 g8. |

  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a16~ a2~ a16 g8. |
  e2~ e8 r4. |
  r2. r16 g8. |

  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a16~ a2~ a16 g8. |
  e2~ e8 r4. |
  r2. r16 g8. |

  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  c c16~ c2~ c16 g8. |
  a a a g e4~ |
  e2.~ e16 g8. |
  a a16~ a2~ a16 g8. |
  d' c16~ c2~ c16 g8. |
  a a16~ a2~ a16 g8. |
  e2~ e8 r4. |
  r2. r16 r8. |

}
midiPadBass = {
  \partial4. a4.~ |

  << a1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ c'~ >> |
  << a,8~ c' >> << a,~ a'~ >> << a,2~ a'~ >> << a,16~ a' >> a,8.~ |
  << a1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ c'~ >> |
  << a,8~ c' >> << a,~ a'~ >> << a,2~ a'~ >> << a,16~ a' >> a,8.~ |
  << a1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ c'~ >> |
  << a,8~ c' >> << a,~ a'~ >> << a,2~ a'~ >> << a,16~ a' >> a,8.~ |
  << a1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,1~ a' >> |
  << a,2~ c'~ >> << a,8~ c' >> a,4.~ |
  a1~ |

  << a~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ c'~ >> |
  << a,8~ c' >> << a,~ a'~ >> << a,2~ a'~ >> << a,16~ a' >> a,8.~ |
  << a1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ c'~ >> |
  << a,8~ c' >> << a,~ a'~ >> << a,2~ a'~ >> << a,16~ a' >> a,8.~ |
  << a1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ c'~ >> |
  << a,8~ c' >> << a,~ a'~ >> << a,2~ a'~ >> << a,16~ a' >> a,8.~ |
  << a1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,1~ a' >> |
  << a,2~ c'~ >> << a,8~ c' >> a,4.~ |
  a1~ |

  << a~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ c'~ >> |
  << a,8~ c' >> << a,~ a'~ >> << a,2~ a'~ >> << a,16~ a' >> a,8.~ |
  << a1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ c'~ >> |
  << a,8~ c' >> << a,~ a'~ >> << a,2~ a'~ >> << a,16~ a' >> a,8.~ |
  << a1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ c'~ >> |
  << a,8~ c' >> << a,~ a'~ >> << a,2~ a'~ >> << a,16~ a' >> a,8.~ |
  << a1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,1~ a' >> |
  << a,2~ c'~ >> << a,8~ c' >> a,4.~ |
  a1~ |

  << a~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ c'~ >> |
  << a,8~ c' >> << a,~ a'~ >> << a,2~ a'~ >> << a,16~ a' >> a,8.~ |
  << a1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ c'~ >> |
  << a,8~ c' >> << a,~ a'~ >> << a,2~ a'~ >> << a,16~ a' >> a,8.~ |
  << a1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ c'~ >> |
  << a,8~ c' >> << a,~ a'~ >> << a,2~ a'~ >> << a,16~ a' >> a,8.~ |
  << a1~ a' >> |
  << a,~ g' >> |
  << a,2.~ a' >> << a,8.~ a' >> << a,16~ d'~ >> |
  << a,8~ d' >> << a,~ c'~ >> << a,2.~ c' >> |
  << a,1~ a' >> |
  << a,~ g' >> |
  << a,1~ a' >> |
  << a,2~ c'~ >> << a,8~ c' >> a,4.~ |
  a2.~ a16 r8. |
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
              \key c \major
              \scorePadTreble
            }
          }
          \new Staff {
            \relative c, {
              \clef "bass_8"
              \numericTimeSignature
              \time 4/4
              \key c \major
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
