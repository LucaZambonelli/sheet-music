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
            \partial 4  b8.( g16 |
            b1 | b8) r a8.( g16 a8. b16 g4 |
            e2 b~ | b4) r b'( g | \break
            a8 a~ a2.) | r4 g8.( e16 g8. e16 g4 |
            fis1~ | fis2) r8 b4( g8 \bar "||" \break
            b8 b~ b2.) | r4 a8.( g16 a8. b16 g4 |
            e2 b~ | b) r4 b( | \break
            d b8 d e g~ g4) | b8( a~ a4 g2 |
            e1~ | e4) r4 r2 \bar "|."
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

  \bookpart {
    \header {
      title = "Perdido"
      composer = "Juan Tizol"
      tagline = ##f
    }
    \score {
      <<
        \new ChordNames {
          \chordmode {
            \set minorChordModifier = \markup { "-" }
            s8 |
            c1:m | f:7 | bes4 ees2.:7 | d2:m  g:7+ |
            c1:m | c2:m f:7 | bes2. ees4:7 | d2:m g:7+ |
            c1:m | f:7 | bes4 ees2.:7 | d2:m  g:7+ |
            c1:m | c2:m f:7 | bes1 | s1 |
            d:7 | s | g:7 | s |
            c:7 | s | f:7 | s |
            c1:m | f:7 | bes4 ees2.:7 | d2:m  g:7+ |
            c1:m | c2:m f:7 | bes1 | s1 |
          }
        }
        \new Staff {
          \set Staff.instrumentName = #"Flute "
          \relative c' {
            \clef treble
            \key bes \major
            \time 4/4
            \numericTimeSignature
            \partial 8 c8 |
            ees f~ f2 r8 c8 | ees f4 c8 ees f4 bes,8 |
            d f~ f2 r8 bes, | d f4 bes,8 d f4 c8 | \break
            ees8 f~ f2 r8 c | \tuplet 3/2 { ees4 f d' } c4. f,8 |
            g bes~ bes2. | r2 r4 r8 c, \bar "||" \break
            ees f~ f2 r8 c8 | ees f4 c8 ees f4 bes,8 |
            d f~ f2 r8 bes, | d f4 bes,8 d f4 c8 | \break
            ees8 f~ f2 r8 c | \tuplet 3/2 { ees4 f d' } c4. f,8 |
            g bes~ bes2.~ | bes2 r \bar"||" \break
            d1 | \tuplet 3/2 { a4 b c } d d8 e~ |
            e1 | b8 a~ a2. | \break
            c1 | \tuplet 3/2 { g4 a bes } c c8 d~ |
            d1 | a8 g~ g2 r8 c,8 \bar "||" \break
            ees f~ f2 r8 c8 | ees f4 c8 ees f4 bes,8 |
            d f~ f2 r8 bes, | d f4 bes,8 d f4 c8 | \break
            ees8 f~ f2 r8 c | \tuplet 3/2 { ees4 f d' } c4. f,8 |
            g bes~ bes2.~ | bes2 r \bar"|."
          }
        }
      >>
    }
  }

  \bookpart {
    \header {
      title = "Blue Monk"
      composer = "Thelonious Monk"
      tagline = ##f
    }
    \score {
      <<
        \new ChordNames {
          \chordmode {
            \set minorChordModifier = \markup { "-" }
            c1 | f:7 | c2 g:7 | c c:7 |
            f1 | f:m7-.5- | c2 g:7 | c1 |
            g:7 | s | c | s2 \parenthesize g:7 |
          }
        }
        \new Staff {
          \set Staff.instrumentName = #"Tenor "
          \relative c'' {
            \clef treble
            \key c \major
            \time 4/4
            \numericTimeSignature
            e8 f fis g~ g2 | a8 ais b c~ c2 |
            g8 a g ges f g, dis' e~ | e ees4 d8~ d2 | \break
            a'8 ais b c~ c2 | c8 cis d dis~ dis2 |
            g,8 a g ges f g, dis' e~ | e2. \tuplet 3/2 {g8 g g } | \break
            g g,4.~ g2 | g'8 a g ges f g, dis' e~ |
            e4 g8 a g ges f g, dis' e4.~ e2 \bar "|."
          }
        }
      >>
    }
  }
}
