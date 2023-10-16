\version "2.22.1"


\defineBarLine "[" #'("|" "[" "")
\defineBarLine "]" #'("]" "" "")


% Martillo chords
chordsMartillo = {
  \chordmode {
    f4. d:m d4:m | g4.:m c:7 c4:7 |
    a4.:m d:m d4:m | g4.:m c:7 c4:7 \bar "[" \break

    f4. d:m d4:m | g4.:m c:7 c4:7 |
    a4.:m d:m d4:m | g4.:m c:7 c4:7 | \break
    f4. d:m d4:m | g4.:m c:7 c4:7 |
    a4.:m d:m d4:m | g4.:m c:7 c4:7 \bar "||" \break

    f4. d:m d4:m | g4.:m c:7 c4:7 |
    a4.:m d:m d4:m | g4.:m c:7 c4:7 | \break
    f4. a:m a4:m | d4.:m g:m g4:m |
    c4.:7 f f4 | f4. f f4 \bar "||" \break

    a4.:7 a:7 a4:7 | a4.:7 a:7 a4:7 |
    d4.:7 d:7 d4:7 | d4.:7 d:7 d4:7 | \break
    g4.:7 g:7 g4:7 | g4.:7 g:7 g4:7 |
    c4.:7 c:7 c4:7 | c4:7 c:7 c:7 c:7 \bar "||" \break

    f4. d:m d4:m | g4.:m c:7 c4:7 |
    a4.:m d:m d4:m | g4.:m c:7 c4:7 | \break
    f4. d:m d4:m | g4.:m c:7 c4:7 |
    a4.:m d:m d4:m | g4.:m c:7 \parenthesize c4:7 \bar "]" f1 \bar "|."
  }
}


% Martillo melody
melodyMartillo = {
  \new Voice = martillo \relative c'' {
    \clef treble
    \key f \major
    \time 4/4
    \tempo 4 = 208

    R1 | R |
    R | r2 r4 a |

    bes4. f8~ f4 r | r8 f~ f f~ f g a4 | 
    bes4. f8~ f4 r | r8 f~ f f~ f g a4 |
    bes4. c8~ c4 r | r8 c~ c c~ c d c4 |
    bes4. a8~ a4 r | r2 r4 a |

    bes4. f8~ f4 r | r8 f~ f f~ f g a4 | 
    bes4. f8~ f4 r | r8 f~ f f~ f g a4 |
    bes4. c8~ c4 r | r8 c~ c c~ c bes a4 |
    g4. f8~ f4 r | R1 |

    a4. b8~ b4 cis | d4. cis8~ cis4 b |
    a4. g8~ g4 fis | e4. fis8~ fis4 r |
    g4. a8~ a4 b | c4. b8~ b4 a |
    g4. f8~ f4 e | c2 r4 a' |

    bes4. f8~ f4 r | r8 f~ f f~ f g a4 | 
    bes4. f8~ f4 r | r8 f~ f f~ f g a4 |
    bes4. c8~ c4 r | r8 c~ c c~ c bes a4 |
    g4. f8~ f4 r | r2 r4 \parenthesize a |

    R1
  }
}


% Martillo lyrics
bridgeMartillo = {
  \lyricmode {
    blo blo blo blo blo blo
    blo blo blo blo blo
    blo blo blo blo blo blo
    blo blo blo blo
  }
}

headAndTailMartillo = {
  \lyricmode {
    Mar -- til -- lo,
    bam -- bi -- no tran -- quil -- lo,
    ma -- tu -- ra di lu -- glio
    lì sot -- to~a~un ce -- spu -- glio.
  }
}
verseOneMartillo = {
  \lyricmode {
    \headAndTailMartillo

    bla bla bla
    bla bla bla bla bla bla
    bla bla bla bla bla bla
    bla bla bla bla bla bla

    \bridgeMartillo

    bla bla bla
    bla bla bla bla bla bla
    bla bla bla bla bla bla
    bla bla bla bla bla bla
  }
}

verseTwoMartillo = {
  \lyricmode {
    ble ble ble
    ble ble ble ble ble ble
    ble ble ble ble ble ble
    ble ble ble ble ble ble

    ble ble ble
    ble ble ble ble ble ble
    ble ble ble ble ble ble
    ble ble ble ble ble ble

    \bridgeMartillo

    ble ble ble
    ble ble ble ble ble ble
    ble ble ble ble ble ble
    ble ble ble ble ble ble
  }
}

verseThreeMartillo = {
  \lyricmode {
    bli bli bli
    bli bli bli bli bli bli
    bli bli bli bli bli bli
    bli bli bli bli bli bli

    bli bli bli
    bli bli bli bli bli bli
    bli bli bli bli bli bli
    bli bli bli bli bli bli

    \bridgeMartillo

    \headAndTailMartillo
  }
}


\book {

  % Martillo
  \bookpart {
    \header{
      title = "Martillo"
      subtitle = "Frutta poco seria"
      composer = "Luca Zambonelli"
      tagline = ##f
    }

    \score {
      <<
        \new ChordNames {
          \set ChordNames.midiInstrument = "acoustic guitar (nylon)"
          \set ChordNames.midiMinimumVolume = #0.5
          \set ChordNames.midiMaximumVolume = #0.5

          \chordsMartillo
        }

        \new Staff {
          \set Staff.midiInstrument = "flute"
          \set Staff.midiMinimumVolume = #1.0
          \set Staff.midiMaximumVolume = #1.0
          \set Staff.instrumentName = #"Lyrics "
          \set Staff.shortInstrumentName = #"Ly "

          \melodyMartillo
        }

        \new Lyrics \lyricsto martillo {
          \verseOneMartillo
        }

        \new Lyrics \lyricsto martillo {
          \verseTwoMartillo
        }

        \new Lyrics \lyricsto martillo {
          \verseThreeMartillo
        }
      >>

      \layout { }
      \midi { }
    }
  }
}
