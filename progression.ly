\version "2.22.1"

\defineBarLine "[" #'("" "[" "")
\defineBarLine "]" #'("]" "" "")

makePercent = #(define-music-function (note) (ly:music?)
  (make-music 'PercentEvent 'length (ly:music-length note)))

song = "Progression"
album = "Next Works"
author = "Luca Zambonelli"
execute = 128


% rythm section
scoreRythm = {
  \key ges \major R1 | R | R | R | R | \key g \major R | \break
  R | R \bar "||" R | R | \key aes \major R | R | \break
  R | R | R | \key a \major R | R | R | \break
  R | R | \key bes \major R | R | R | R | \break
  R | \key b \major R | R | R | R | R | \break
  \key c \major R | R | R | R | R | \key des \major R | \break
  R | R | R | R \bar "||" \key d \major R | R | \break
  R | R | R | \key ees \major R | R | R | \break
  R | R | \key e \major R | R | R | R | \break
  R | \key f \major R | R | R | R | R | \break
  \key ges \major R | R | R | R | R | \key g \major R | \break
  R | R | R | R | \key aes \major R | R | \bar "||" \break
  R | R | R | \key a \major R | R | R | \break
  R | R | \key bes \major R | R | R | R | \break
  R | \key b \major R | R | R | \bar "||" R | R | \break
  \key c \major R | R | R | R | R | \key des \major R | \break
  R | R | R | R | \key d \major R | R | \break
  R | R | R | \key ees \major R | R | R | \break
  R | R | \key e \major R | R | R | R | \break
  R | \key f \major R | R | R | R | R \bar "|."
}
chordsRythm = {
  \set chordChanges = ##t
  \chordmode {
    bes1:m ees:m6- aes:m7 des:7 ges
    b:m e:m6- a:m7 d:7 g
    c:m f:m6- bes:m7 ees:7 aes
    cis:m fis:m6- b:m7 e:7 a
    d:m g:m6- c:m7 f:7 bes
    dis:m gis:m6- cis:m7 fis:7 b
    e:m a:m6- d:m7 g:7 c
    f:m bes:m6- ees:m7 aes:7 des
    fis:m b:m6- e:m7 a:7 d
    g:m c:m6- f:m7 bes:7 ees
    gis:m cis:m6- fis:m7 b:7 e
    a:m d:m6- g:m7 c:7 f
    bes1:m ees:m6- aes:m7 des:7 ges
    b:m e:m6- a:m7 d:7 g
    c:m f:m6- bes:m7 ees:7 aes
    cis:m fis:m6- b:m7 e:7 a
    d:m g:m6- c:m7 f:7 bes
    dis:m gis:m6- cis:m7 fis:7 b
    e:m a:m6- d:m7 g:7 c
    f:m bes:m6- ees:m7 aes:7 des
    fis:m b:m6- e:m7 a:7 d
    g:m c:m6- f:m7 bes:7 ees
    gis:m cis:m6- fis:m7 b:7 e
    a:m d:m6- g:m7 c:7 f
  }
}
midiRythm = {
  R1
}


% theme section
scoreTheme = {
  R1
}
midiTheme = {
  R1
}


% bass section
scoreBass = {
  R1
}
midiBass = {
  R1
}


% drums section
scoreDrums = {
  \drummode {
    R1
  }
}
midiDrums = {
  \drummode {
    R1
  }
}


% writing down
\book {
  \header{
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
          \set GrandStaff.instrumentName = #"Rythm "
          \set GrandStaff.shortInstrumentName = #"Rt "
          \new Staff {
            <<
              \relative c' {
                \override StringNumber.stencil = ##f
                \clef treble
                \numericTimeSignature
                \time 4/4
                \tempo 4 = #execute
                \scoreRythm
              }
              \new ChordNames {
                \chordsRythm
              }
            >>
          }
          \new TabStaff {
            \set Staff.stringTunings = \stringTuning <e, a, d g b e'>
            \relative c {
              \scoreRythm
            }
          }
        >>
        \new GrandStaff <<
          \set GrandStaff.instrumentName = #"Lead "
          \set GrandStaff.shortInstrumentName = #"Ld "
          \new Staff {
            \relative c'' {
                \override StringNumber.stencil = ##f
                \clef treble
                \numericTimeSignature
                \scoreTheme
              }
            }
          \new TabStaff {
            \set Staff.stringTunings = \stringTuning <e, a, d g c' f'>
            \relative c {
              \scoreTheme
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
          \override VerticalAxisGroup.minimum-Y-extent = #'(-3.0 . 4.0)
          \override Stem.length = #4
          \override Stem.direction = #-1
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
        \set Staff.midiInstrument = "electric guitar (clean)"
        \set Staff.midiMinimumVolume = #0.4
        \set Staff.midiMaximumVolume = #0.4
        \relative c {
          \time 4/4
          \tempo 4 = #execute
          \midiRythm
        }
      }
      \new Staff {
        \set Staff.midiInstrument = "electric guitar (clean)"
        \set Staff.midiMinimumVolume = #1.0
        \set Staff.midiMaximumVolume = #1.0
        \relative c' {
          \midiTheme
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
      \new DrumStaff {
        \set Staff.midiMinimumVolume = #0.6
        \set Staff.midiMaximumVolume = #0.6
        \midiDrums
      }
    >>
    \midi { }
  }
}