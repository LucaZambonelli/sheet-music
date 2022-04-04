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
            s4 | e1:m | s | e:m | s2 \parenthesize e:7.9+ |
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
            \partial 4  b8.( g16 | b1 | b8) r a8.( g16 a8. b16 g4 | e2 b~ | b4) r b'( g | \break
            a8 a~ a2.) | r4 g8.( e16 g8. e16 g4 | fis1~ | fis2) r8 b4( g8 \bar "||" \break
            b8 b~ b2.) | r4 a8.( g16 a8. b16 g4 | e2 b~ | b) r4 b( | \break
            d b8 d e g~ g4) | b8( a~ a4 g2 | e1~ | e4) r4 r2 \bar "|."
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
            c8 c d d ees ees f f | g4. f8 ees c r bes | c2 bes4. c8~ | c4 r r2 | \break
            f8 f g g aes aes bes bes | c4. bes8 g f r ees | c2 bes4. c8~ | c4 r ees8 c ees ges | \break
            r f4.~ f4. ges8 | r f4-- ees8 f4( ees-.) | c2 bes4. c8~ | c4 r r2 \bar "|."
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
            s8 | c1:m | f:7 | bes4 ees2.:7 | d2:m  g:7+ |
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
            \partial 8 c8 | ees f~ f2 r8 c8 | ees f4 c8 ees f4 bes,8 |
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
            e8 f fis g~ g2 | a8 ais b c~ c2 | g8 a g ges f g, dis' e~ | e ees4 d8~ d2 | \break
            a'8 ais b c~ c2 | c8 cis d dis~ dis2 | g,8 a g ges f g, dis' e~ | e2. \tuplet 3/2 {g8 g g } | \break
            g g,4.~ g2 | g'8 a g ges f g, dis' e~ | e4 g8 a g ges f g, dis' e4.~ e2 \bar "|."
          }
        }
      >>
    }
  }

  \bookpart {
    \header {
      title = "Autumn Leaves"
      composer = "Joseph Kosma"
      tagline = ##f
    }
    \score {
      <<
        \new ChordNames {
          \chordmode {
            \set minorChordModifier = \markup { "-" }
            s2. | d1:m | g:7 | c:7+ | f:7+.4+ |
            b:m7.5- | e:7.9+ | a:m | s |
            d1:m | g:7 | c:7+ | f:7+.4+ |
            b:m7.5- | e:7.4+ | a:m | s |
            b:m7.5- | e:7.9+ | a:m | s |
            d:m | g:7 | c:7+ | f:7+.4+ |
            b:m7.5- | e:7.9+ | a2:m d:7 | g:m c:7 |
            f1:7+ | b2:m7.5- e:7.9+ | a1:m | a:7.9+ |
          }
        }
        \new Staff {
          \set Staff.instrumentName = #"Tenor "
          \relative c'' {
            \clef treble
            \key c \major
            \time 4/4
            \numericTimeSignature
            \partial 2. a4 b c \bar "||" f1~ | f4 g, a b | e2 e~ | e4 f, g a | \break
            d1~ | d4 e, fis gis | c1 | r4 a b c \bar "||" \break
            f1~ | f4 g, a b | e2 e~ | e4 f, g a | \break
            d1~ | d4 b d c | a1 | r2 gis4 a \bar "||" \break
            b e, b'2~ | b4 b a b | c1~ | c4 c b c | \break
            d1~ | d4 g,4 g' f | e1~ | e2 dis4 e \bar "||" \break
            f f d d | b2. f'4 | e2 e~ | e a, | \break
            d2. c4 | b2 c4 e, | a1 | R \bar "|."
          }
        }
      >>
    }
  }

  \bookpart {
    \header {
      title = "Interplay"
      composer = "Bill Evans"
      tagline = ##f
    }
    \score {
      <<
        \new ChordNames {
          \chordmode {
            \set minorChordModifier = \markup { "-" }
            f1:m | bes:m | f:m | f:7.9+ |
            bes:m | s | f:m | aes:7 |
            g2.:m7.5- \parenthesize c4:7.9+ | c1:7.9+ | f2:m d:m7.5- | des:7+ ges:7+ |
          }
        }
        \new Staff {
          \set Staff.instrumentName = #"Flute "
          \relative c' {
            \clef treble
            \key aes \major
            \time 4/4
            \numericTimeSignature
            f4. c'8 r aes r f |
            \tuplet 3/2 { bes4 c8 } \tuplet 3/2 { r g ees } f4 r8 aes |
            g f bes aes des c aes f |
            des f \tuplet 3/2 { g ees f } r4 f'--~ | \break
            f4. c8 bes4 des8 f |
            c bes \tuplet 3/2 { r ees f } bes,4 r8 des |
            ees f c des \tuplet 3/2 { bes4 ees8 } \tuplet 3/2 { c aes f'~ } |
            \tuplet 3/2 { f des bes } \tuplet 3/2 { c aes f } r4 c'--~ | \break
            c bes--~ \tuplet 3/2 { bes g8 } c4--~ |
            \tuplet 3/2 { c des8~ } \tuplet 3/2 { des bes g } c4 r8 des~ |
            des c \tuplet 3/2 { aes f c } \tuplet 3/2 { des f aes } \tuplet 3/2 { c g f } |
            \tuplet 3/2 { bes aes f } \tuplet 3/2 { g aes f } r2 \bar "|."
          }
        }
      >>
    }
  }
}
