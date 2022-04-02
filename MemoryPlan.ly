\version "2.22.1"


\paper {
  top-margin = 25
  bottom-margin = 20
  left-matgin = 20
  right-margin = 20
}


\book {

  \bookpart {
    \header {
      title = "Summertime"
      composer = "DuBose Hayward & George Gershwin"
      tagline = ##f
    }
    \score {
      <<
        \new ChordNames {
          \chordmode {
            \set minorChordModifier = \markup { "-" }
            \partial 4 s4 |
            e1:m | s | e:m | s2 \parenthesize e:7.9+ |
            a1:m | s | fis:m7.5- | b:7.9+ |
            e:m | s | e:m | a2:m d:7 |
            g1:7+ | fis2:m7.5- b:7.9+ | e1:m |b:7.9+ |
          }
        }
        \new Staff {
          \set Staff.instrumentName = #"Tenor "
          \relative c'' {
            \clef treble
            \key c \major
            \time 4/4
            \numericTimeSignature
            \partial 4  b8.( g16 \bar ".|:"
            b1 | b8) r a8.( g16 a8. b16 g4 |
            e2 b~ | b4) r b'( g | \break
            a8 a~ a2.) | r4 g8.( e16 g8. e16 g4 |
            fis1~ | fis2) r8 b4( g8 \bar "||" \break
            b8 b~ b2.) | r4 a8.( g16 a8. b16 g4 |
            e2 b~ | b) r4 b( | \break
            d b8 d e g~ g4) | b8( a~ a4 g2 |
            e1~ | e4) r4 r b'8. g16 \bar ":|."
          }
        }
      >>
    }
  }

  \bookpart {
    \header {
      title = "Mr P.C."
      composer = "John Coltrane"
      tagline = ##f
    }
    \score {
      <<
        \new ChordNames {
          \chordmode {
            \set minorChordModifier = \markup { "-" }
            c1:m | s | c2:m bes/c | c1:m |
            f:m | s | c2:m bes/c | c1:m |
            aes:7 | g:7.9+ | c2:m bes/c | c1:m |
          }
        }
        \new Staff {
          \set Staff.instrumentName = #"Flute "
          \relative c'' {
            \clef treble
            \key bes \major
            \time 4/4
            \numericTimeSignature
            c8 c d d ees ees f f | g4. f8 ees c r bes |
            c2 bes4. c8~ | c4 r r2 | \break
            f8 f g g aes aes bes bes | c4. bes8 g f r ees | 
            c2 bes4. c8~ | c4 r ees8 c ees ges | \break
            r f4.~ f4. ges8 | r f4-- ees8 f4( ees-.) |
            c2 bes4. c8~ | c4 r r2 \bar "|."
          }
        }
      >>
    }
  }
}
