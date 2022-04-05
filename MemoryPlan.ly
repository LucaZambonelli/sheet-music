\version "2.22.1"


\paper {
  top-margin = 25
  bottom-margin = 20
  left-matgin = 20
  right-margin = 20
}


\book {

%  \bookpart {
%    \header {
%      title = "Summertime"
%      composer = "DuBose Hayward & George Gershwin"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            s4 |
%            e1:m | s | e:m | s2 \parenthesize e:7.9+ |
%            a1:m | s | fis:m7.5- | b:7.9+ |
%            e:m | s | e:m | a2:m d:7 |
%            g1:7+ | fis2:m7.5- b:7.9+ | e1:m |b:7.9+ |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Tenor "
%          \relative c'' {
%            \clef treble
%            \key c \major
%            \time 4/4
%            \numericTimeSignature
%            \partial 4  b8.( g16 \bar ".|"
%            b1 | b8) r a8.( g16 a8. b16 g4 | e2 b~ | b4) r b'( g | \break
%            a8 a~ a2.) | r4 g8.( e16 g8. e16 g4 | fis1~ | fis2) r8 b4( g8 \bar "||" \break
%            b8 b~ b2.) | r4 a8.( g16 a8. b16 g4 | e2 b~ | b) r4 b( | \break
%            d b8 d e g~ g4) | b8( a~ a4 g2 | e1~ | e4) r4 r2 \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Mr P.C."
%      composer = "John Coltrane"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            c1:m | s | c2:m bes/c | c1:m |
%            f:m | s | c2:m bes/c | c1:m |
%            aes:7 | g:7.9+ | c2:m bes/c | c1:m |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Flute "
%          \relative c'' {
%            \clef treble
%            \key bes \major
%            \time 4/4
%            \numericTimeSignature
%            c8 c d d ees ees f f | g4. f8 ees c r bes | c2 bes4. c8~ | c4 r r2 | \break
%            f8 f g g aes aes bes bes | c4. bes8 g f r ees | c2 bes4. c8~ | c4 r ees8 c ees ges | \break
%            r f4.~ f4. ges8 | r f4-- ees8 f4( ees-.) | c2 bes4. c8~ | c4 r r2 \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Perdido"
%      composer = "Juan Tizol"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            s8 |
%            c1:m | f:7 | bes4 ees2.:7 | d2:m  g:7+ |
%            c1:m | c2:m f:7 | bes2. ees4:7 | d2:m g:7+ |
%            c1:m | f:7 | bes4 ees2.:7 | d2:m  g:7+ |
%            c1:m | c2:m f:7 | bes1 | s1 |
%            d:7 | s | g:7 | s |
%            c:7 | s | f:7 | s |
%            c1:m | f:7 | bes4 ees2.:7 | d2:m  g:7+ |
%            c1:m | c2:m f:7 | bes1 | s1 |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Flute "
%          \relative c' {
%            \clef treble
%            \key bes \major
%            \time 4/4
%            \numericTimeSignature
%            \partial 8 c8 \bar ".|"
%            ees f~ f2 r8 c8 | ees f4 c8 ees f4 bes,8 |
%            d f~ f2 r8 bes, | d f4 bes,8 d f4 c8 | \break
%            ees8 f~ f2 r8 c | \tuplet 3/2 { ees4 f d' } c4. f,8 |
%            g bes~ bes2. | r2 r4 r8 c, \bar "||" \break
%            ees f~ f2 r8 c8 | ees f4 c8 ees f4 bes,8 |
%            d f~ f2 r8 bes, | d f4 bes,8 d f4 c8 | \break
%            ees8 f~ f2 r8 c | \tuplet 3/2 { ees4 f d' } c4. f,8 |
%            g bes~ bes2.~ | bes2 r \bar"||" \break
%            d1 | \tuplet 3/2 { a4 b c } d d8 e~ |
%            e1 | b8 a~ a2. | \break
%            c1 | \tuplet 3/2 { g4 a bes } c c8 d~ |
%            d1 | a8 g~ g2 r8 c,8 \bar "||" \break
%            ees f~ f2 r8 c8 | ees f4 c8 ees f4 bes,8 |
%            d f~ f2 r8 bes, | d f4 bes,8 d f4 c8 | \break
%            ees8 f~ f2 r8 c | \tuplet 3/2 { ees4 f d' } c4. f,8 |
%            g bes~ bes2.~ | bes2 r \bar"|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Blue Monk"
%      composer = "Thelonious Monk"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            c1 | f:7 | c2 g:7 | c c:7 |
%            f1 | f:m7-.5- | c2 g:7 | c1 |
%            g:7 | s | c | s2 \parenthesize g:7 |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Tenor "
%          \relative c'' {
%            \clef treble
%            \key c \major
%            \time 4/4
%            \numericTimeSignature
%            e8 f fis g~ g2 | a8 ais b c~ c2 | g8 a g ges f g, dis' e~ | e ees4 d8~ d2 | \break
%            a'8 ais b c~ c2 | c8 cis d dis~ dis2 | g,8 a g ges f g, dis' e~ | e2. \tuplet 3/2 {g8 g g } | \break
%            g g,4.~ g2 | g'8 a g ges f g, dis' e~ | e4 g8 a g ges f g, dis' e4.~ e2 \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Autumn Leaves"
%      composer = "Joseph Kosma"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            s2. |
%            d1:m | g:7 | c:7+ | f:7+.4+ |
%            b:m7.5- | e:7.9+ | a:m | s |
%            d1:m | g:7 | c:7+ | f:7+.4+ |
%            b:m7.5- | e:7.4+ | a:m | s |
%            b:m7.5- | e:7.9+ | a:m | s |
%            d:m | g:7 | c:7+ | f:7+.4+ |
%            b:m7.5- | e:7.9+ | a2:m d:7 | g:m c:7 |
%            f1:7+ | b2:m7.5- e:7.9+ | a1:m | a:7.9+ |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Tenor "
%          \relative c'' {
%            \clef treble
%            \key c \major
%            \time 4/4
%            \numericTimeSignature
%            \partial 2. a4 b c \bar ".|"
%            f1~ | f4 g, a b | e2 e~ | e4 f, g a | \break
%            d1~ | d4 e, fis gis | c1 | r4 a b c \bar "||" \break
%            f1~ | f4 g, a b | e2 e~ | e4 f, g a | \break
%            d1~ | d4 b d c | a1 | r2 gis4 a \bar "||" \break
%            b e, b'2~ | b4 b a b | c1~ | c4 c b c | \break
%            d1~ | d4 g,4 g' f | e1~ | e2 dis4 e \bar "||" \break
%            f f d d | b2. f'4 | e2 e~ | e a, | \break
%            d2. c4 | b2 c4 e, | a1 | R \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Interplay"
%      composer = "Bill Evans"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            f1:m | bes:m | f:m | f:7.9+ |
%            bes:m | s | f:m | aes:7 |
%            g2.:m7.5- \parenthesize c4:7.9+ | c1:7.9+ | f2:m d:m7.5- | des:7+ ges:7+ |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Flute "
%          \relative c' {
%            \clef treble
%            \key aes \major
%            \time 4/4
%            \numericTimeSignature
%            f4. c'8 r aes r f |
%            \tuplet 3/2 { bes4 c8 } \tuplet 3/2 { r g ees } f4 r8 aes |
%            g f bes aes des c aes f |
%            des f \tuplet 3/2 { g ees f } r4 f'--~ | \break
%            f4. c8 bes4 des8 f |
%            c bes \tuplet 3/2 { r ees f } bes,4 r8 des |
%            ees f c des \tuplet 3/2 { bes4 ees8 } \tuplet 3/2 { c aes f'~ } |
%            \tuplet 3/2 { f des bes } \tuplet 3/2 { c aes f } r4 c'--~ | \break
%            c bes--~ \tuplet 3/2 { bes g8 } c4--~ |
%            \tuplet 3/2 { c des8~ } \tuplet 3/2 { des bes g } c4 r8 des~ |
%            des c \tuplet 3/2 { aes f c } \tuplet 3/2 { des f aes } \tuplet 3/2 { c g f } |
%            \tuplet 3/2 { bes aes f } \tuplet 3/2 { g aes f } r2 \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Summer Samba"
%      composer = "Marcos Valle & Sergio Valle"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            f1:7+ | s | b:m7.5- | e:7.9+ |
%            bes:7+ | s | ees:7 | s |
%            a:m | d:7.9- | g:m | e2:m7.5- a:7.9+ |
%            d1:m | g:7 | g:m | des4:7 c2.:7 |
%            f1:7+ | s | b:m7.5- | e:7.9+ |
%            bes:7+ | s | ees:7 | s |
%            a:m | d:7.9- | g:m | c:7.9- |
%            f:7+ | bes:7 | f:7+ | g:m/c |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Flute "
%          \relative c' {
%            \clef treble
%            \key f \major
%            \time 4/4
%            \numericTimeSignature
%            a8 c d4 e8 ees d4 | a8 c d e~ e ees d4 |
%            a8 c d4 e8 ees d4 | gis,8 c d e~ e ees d4 | \break
%            d8 f g4 a8 aes g4 | d8 f g a~ a aes g4 |
%            des8 f g4 a8 aes g4 | des8 f g a~ a aes g4 \bar "||" \break
%            r c c,2~ | c ees'8 d c bes |
%            a1~ | a2 c8 b bes a | \break
%            g1~ | g2 a8 aes g ges |
%            f d f d f d f aes~ | aes f g4 r2 \bar "||" \break
%            a,8 c d4 e8 ees d4 | a8 c d e~ e ees d4 |
%            a8 c d4 e8 ees d4 | gis,8 c d e~ e ees d4 | \break
%            d8 f g4 a8 aes g4 | d8 f g a~ a aes g4 |
%            des8 f g4 a8 aes g4 | des8 f g a~ a aes g4 \bar "||" \break
%            r c c,2~ | c ees'8 d c bes |
%            a1~ | a | \break
%            g8 ges f4 f8 fis g4 | g8 ges f4 f8 fis g4 |
%            f1 | R \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "There will never be another you"
%      composer = "Harry Warren"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            s4 |
%            ees1 | s | d:m7.5- | g:7.9+ |
%            c:m | s | bes:m | ees:7 |
%            aes | des:7.4+ | ees | c:m |
%            f:7.4+ | s | f:m | bes:7 |
%            ees1 | s | d:m7.5- | g:7.9+ |
%            c:m | s | bes:m | ees:7 |
%            aes | des:7.4+ | ees | a2:m d:7 |
%            ees aes:7 | g:m c:7.9+ | f:m bes:7 | ees \parenthesize bes:7 |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Flute "
%          \relative c' {
%            \clef treble
%            \key ees \major
%            \time 4/4
%            \numericTimeSignature
%            \partial 4 bes4 \bar ".|"
%            c d ees f | g bes f4. ees8 | f1~ | f2. g4 | \break
%            ees f g bes | c ees c4. bes8 | c1~ | c2. bes4 \bar"||" \break
%            ees c bes aes | g f g4. aes8 | bes4 g f ees f ees f4. ees8 | \break
%            d'4 c bes a | g f g f | aes1~ | aes2. bes,4 \bar "||" \break
%            c d ees f | g bes f4. ees8 | f1~ | f2. g4 | \break
%            ees f g bes | c ees c4. bes8 | c1~ | c2. bes4 \bar "||" \break
%            ees c bes aes | g f g4. aes8 | bes4 g f ees d'2. c4 | \break
%            bes ees d c | bes ees, bes' aes | f2 g | ees1 \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Comin' Home Baby"
%      composer = "Earl Hagen"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            s4. |
%            a1:m | s | s | s |
%            d:m | s | a:m | s |
%            c:7 | b2:7 bes:7 | a1:m | s |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Tenor "
%          \relative c'' {
%            \clef treble
%            \key g \major
%            \time 4/4
%            \numericTimeSignature
%            \partial 4. a8 c e-^ \bar ".|"
%            R1 | r8 a, c e d c a g | a4-^ r r2 | r r8 a c e | \break
%            d d r4 r2 | r8 a c e d c a g | a4-^ r r2 | r r8 a c4-^ | \break
%            e1 | dis2 d | c8 a-^ r4 r2 | e8-^ r e4 r2 \bar "|." 
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Straight, No Chaser"
%      composer = "Thelonous Monk"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            s8 |
%            f1:7 | bes:7 | f:7 | s |
%            bes:7 | s | f:7 | a2:m7 d:7 |
%            g1:m7 | c:7 | f:7 | s |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Flute "
%          \relative c' {
%            \clef treble
%            \key f \major
%            \time 4/4
%            \numericTimeSignature
%            \partial 8 c8 \bar ".|"
%            f g gis a~ a c, f g | gis a bes aes~ aes4. c,8 |
%            f g gis a~ a c, f g | gis a  bes c, f g aes4 | \break
%            r8 c, f g gis a bes aes~ | aes1 |
%            r8 c, f g gis a4 c,8 | f g gis a~ a c, f g | \break
%            gis a bes c, cis d dis e~ | e f fis g gis a bes c, |
%            f g gis a~ a2~ | a1 \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Garôta De Ipanema"
%      composer = "Antonio Carlos Jobim"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            f1:7+ | s | g:7 | s |
%            g:m | ges:7 | f:7+ | ges:7
%            f1:7+ | s | g:7 | s |
%            g:m | ges:7 | f:7+ | s |
%            ges:7+ | s | b:7.4+ | s |
%            fis:m | s | a:m/d | d:7 |
%            g:m | s | bes:m/ees | ees:7 |
%            a:m | d:7.4+.9+ | g:m | c:7.4+.9- |
%            f:7+ | s | g:7 | s |
%            g:m | ges:7 | f:7+ | ges:7 |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Flute "
%          \relative c'' {
%            \clef treble
%            \key f \major
%            \time 4/4
%            \numericTimeSignature
%            g4. e8 e4 d8 g~ | g4 e8 e~ e e d g~ |
%            g4 e e d8 g~ | g g e e~ e e d f~ | \break
%            f d4 d8~ d d c e~ | e c4 c8~ c c bes4 |
%            r bes2. | R1 \bar "||" \break
%            g'4. e8 e4 d8 g~ | g4 e8 e~ e e d g~ |
%            g4 e e d8 g~ | g g e e~ e e d f~ | \break
%            f d4 d8~ d d c e~ | e c4 c8~ c c bes4 |
%            r bes2. | R1 \bar "||" \break
%            f'1~ | \tuplet 3/2 { f4 ges f } \tuplet 3/2 { ees f ees } |
%            cis4. dis8~ dis2~ | dis2. r8 gis~ | \break
%            gis1~ | \tuplet 3/2 { gis4 a gis } \tuplet 3/2 { fis gis fis } |
%            e4. fis8~ fis2~ | fis2. r8 a~ \bar "||" \break
%            a1~ | \tuplet 3/2 { a4 bes a } \tuplet 3/2 { g a g } |
%            f4. g8~ g2~ | g2 \tuplet 3/2 { r4 a bes } | \break
%            \tuplet 3/2 { c c, d } \tuplet 3/2 { e f g } | gis2.  a4 |
%            \tuplet 3/2 { bes bes, c } \tuplet 3/2 { d e f } | fis2. r4 \bar "||" \break
%            g4. e8 e4 d8 g~ | g4 e8 e~ e e d g~ |
%            g4 e e d8 g~ | g g e e~ e e d a'~ | \break
%            a4. f8 f f d c'~ | c4. e,8 \tuplet 3/2 { e4 e d } |
%            f1 | R1 \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Cantaloupe Island"
%      composer = "Herbie Hancock"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            g1:m | s | s | s |
%            g:m | s | s | s |
%            ees:7 | s | s | s |
%            e:m | s | s | s |
%            g:m | s | s | s |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Tenor "
%          \relative c'' {
%            \clef treble
%            \key c \major
%            \time 4/4
%            \numericTimeSignature
%            R1 | R | R | r2 r4 g8-- g-. \bar ".|" \break
%            r2 bes8( c-.) c4->~ | c4. bes8( c d-.) f,( g-.) | R1 | r2 r4 g8-- g-. \bar "||"  \break
%            r2 bes8( c-.) c4->~ | c4. bes8( c d-.) f,( g-.) | R1 | r2 d'8( f-.) d( f-.) \bar "||" \break
%            g,4.-^ g8->~ g2 | r2 d'8( f-.) d( f-.) | g,4.-^ g8->~ g2 | R1 \bar "||" \break
%            R1 | R | R | R \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Serenade To A Cuckoo"
%      composer = "Roland Kirk"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            f2:m f:m/ees | f:m/des f:m/c | f2:m f:m/ees | f:m/des f:m/c |
%            f2:m f:m/ees | f:m/des f:m/c | f2:m f:m/ees | f:m/des f:m/c |
%            bes:m7 ees:7 | aes:7+ des:7+ | g:m7.5- c:7 | f:m f:7 |
%            bes:m7 ees:7 | aes:7+ des:7+ | g:m7.5- c:7 | f1:m |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Flute "
%          \relative c'' {
%            \clef treble
%            \key aes \major
%            \time 4/4
%            \numericTimeSignature
%            r8 c4-. f,8 c'4. f,8 | c' c bes bes aes f4 ees8 |
%            f4 f8 f aes aes4 c8~ | c1 | \break
%            r8 c4-. f,8 c'4. f,8 | c' c bes bes aes f4 ees8 |
%            f4 f8 f aes f ees f~ | f1 \bar "||" \break
%            r8 f'4-^ r8 bes,2 | r8 ees4-^ r8 aes,2 |
%            r8 des4 r8 g,2 | g8 aes bes c~ c2 | \break
%            r8 f4-^ r8 bes,2 | r8 ees4-^ r8 aes,2 |
%            r8 des4 r8 g,2 | g8 aes g f~ f2 \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Satin Doll"
%      composer = "Billy Strayhorn, Duke Ellington & Johnny Mercer"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            d2:m g:7 | d:m g:7 | e:m a:7 | e:m a:7 |
%            a:m d:7 | aes:m des:7 | c:7 b:7 | bes:7 a:7 |
%            d2:m g:7 | d:m g:7 | e:m a:7 | e:m a:7 |
%            a:m d:7 | aes:m des:7 | c1 | s |
%            g:m | c:7 | f | s |
%            a:m | d:7 | g:7 | s |
%            d2:m g:7 | d:m g:7 | e:m a:7 | e:m a:7 |
%            a:m d:7 | aes:m des:7 | c1 | a:7 |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Flute "
%          \relative c'' {
%            \clef treble
%            \key c \major
%            \time 4/4
%            \numericTimeSignature
%            a8. g16 a8 g~ g a4. | r8 a4. g8 a4. | b8. a16 b8 a~ a b4. | r8 b4. a8 b4. | \break
%            r8 d4. c8 d4. | r8 bes4. aes4 bes8 g~ | g1~ | g4 r r2 \bar"||" \break
%            a8. g16 a8 g~ g a4. | r8 a4. g8 a4. | b8. a16 b8 a~ a b4. | r8 b4. a8 b4. | \break
%            r8 d4. c8 d4. | r8 bes4. aes4 bes8 g~ | g1 | r2 r4 r8 g \bar"||" \break
%            c4 bes8. a16 g8. a16 bes4 | c4 bes8. a16 g8. a16 bes8 c~ | c1~ | c2. r8 c | \break
%            d8. c16 b8 a~ a8. b16 c4 | d8. c16 b8 a~ a8. b16 c8 d~ | d1~ | d8 r r4 r2 \bar"||" \break
%            a8. g16 a8 g~ g a4. | r8 a4. g8 a4. | b8. a16 b8 a~ a b4. | r8 b4. a8 b4. | \break
%            r8 d4. c8 d4. | r8 bes4. aes4 bes8 g~ | g1~ | g4 r r2 \bar"|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Blue Bossa"
%      composer = "Kenny Dorham"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            s4 |
%            d1:m | s | g:m | s |
%            e:m7.5- | a:7.9+ | d:m | s |
%            f:m | bes:7 | ees:7+ | s |
%            e:m7.5- | a:7.9+ | d:m | e2:m7.5- a:7.9+ |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Tenor "
%          \relative c'' {
%            \clef treble
%            \key f \major
%            \time 4/4
%            \numericTimeSignature
%            \partial 4 a4-^ \bar ".|"
%            a'4.( g8 f e4-. d8~ | d2~ d8) c r bes~ | bes2~ bes8 a' r g~ | g1 | \break
%            g4.( f8 e d4-. c8~ | c2~ c8) bes r a~ | a2~  a8 g' r f~ | f1 \bar "||" \break
%            f4.( ees8 d c4-. bes8~ | bes2~ bes8) aes r aes~ | aes4. g8 c4. bes8 | bes2. r4 | \break
%            bes-^ a8( c c4.) bes8 | bes4-^ a8( c c4.) bes8( | a1~ | a2) r2 \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Now's The Time"
%      composer = "Charlie Parker"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            s8 |
%            g1 | c | g | g:7 |
%            c:7 | s | g:7 | s2 b:m7-.5- |
%            a1:m | d:7 | g:7 | d:7 | 
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Tenor "
%          \relative c' {
%            \clef treble
%            \key c \major
%            \time 4/4
%            \numericTimeSignature
%            \partial 8 d8 \bar ".|"
%            g g a d, g4 r8 d | g g a d, g4 r8 d |
%            g g a d, g g a d, | g g a d, g4 r8 d | \break
%            g g a d, g c,~ c4 | g'8 g a d, g cis,~ cis4 |
%            g'8 g a d, g g a d, | g g a d, g4 r8 bes~ | \break
%            \tuplet 3/2 { bes16 c bes } g8 e dis e4 r | r8 a~ a4 g8 a g f |
%            r d r4 d r | R1 \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "I Got Rythm"
%      composer = "Ira Gershwin & George Gershwin"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            c2:7+ a:m | d:m g:7 | e:m a:7 | d:m g:7 |
%            g:m c:7 | f:7+ bes:7 | d:m/g g:7 | c:7+ g:7.9+ |
%            c:7+ a:m | d:m g:7 | e:m a:7 | d:m g:7 |
%            g:m c:7 | f:7+ bes:7 | d:m/g g:7 | c1:7+ |
%            e:7 | s | a:7 | s |
%            d:7 | s | g:7 | s |
%            c2:7+ a:m | d:m g:7 | e:m a:7 | d:m g:7 |
%            g:m c:7 | f:7+ bes:7 | d:m/g g:7 | c:7+ g:7.9+ |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Tenor "
%          \relative c'' {
%            \clef treble
%            \key c \major
%            \time 4/4
%            \numericTimeSignature
%            r4 g~ g8 a4. | c d8~ d2 | r4 d~ d8 c4. | a g8~ g2 | \break
%            r4 g~ g8 a4. | c4. d8~ d f4 d8 | e4 e d8 e d4 | c2. r4 \bar "||" \break
%            r g~ g8 a4. | c d8~ d2 | r4 d~ d8 c4. | a g8~ g2 | \break
%            r4 g~ g8 a4. | c d8~ d f4 d8 | e4 e d8 e d4 | c1 \bar "||" \break
%            r4 e~ e8 e4. | e fis8~ fis2 | r4 e~ e8 e4. | e a,8~ a2 | \break
%            r4 d~ d8 d4. | d e8~ e2 | r4 d~ d8 d4. | d1 \bar "||" \break
%            r4 g,~ g8 a4. | c d8~ d2 | r4 d~ d8 c4. | a g8~ g2 | \break
%            r4 g~ g8 a4. | c4. d8~ d f4 d8 | e4 e d8 e d4 | c2. r4 \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Maiden Voyage"
%      composer = "Herbie Hancock"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            s4 |
%            a1:m/d | s | s | s | c:m/f | s | s | s |
%            a:m/d | s | s | s | c:m/f | s | s | s |
%            bes:m/ees | s | s | s | des:m | s | s | s |
%            a:m/d | s | s | s | c:m/f | s | s | s |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Flute "
%          \relative c'' {
%            \clef treble
%            \key c \major
%            \time 4/4
%            \numericTimeSignature
%            \partial 4 a8( d \bar ".|"
%            d1~ | d~ | d2) r | r r4 c8( d | \break
%            ees f c2.~ | c1~ c2) r | r r4 a8( d \bar "||" \break
%            d1~ | d~ | d2) r | r r4 c8( d | \break
%            ees f c2.~ | c1~ c2) r | r r4 c8( f \bar "||" \break
%            f1~ | f | f2) r | r r4 ees8( e | \break
%            e fis cis2.~ | cis1~ | cis2) r | r r4 a8( d | \bar "||" \break
%            d1~ | d~ | d2) r | r r4 c8( d | \break
%            ees f c2.~ | c1~ c2) r | R1 \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "You And The Night An The Music"
%      composer = "Arthur Schwartz"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            c1:m6.9 | d2:m7.5- g:7.9+ | g:m7.5- c:7.9- | f1:m |
%            d:m7.5- | g:7 | c:7+ | d2:m g:7.9+ |
%            c1:m6.9 | d2:m7.5- g:7.9+ | g:m7.5- c:7.9- | f1:m |
%            d:m7.5- | g:7 | c:7+ | s |
%            aes:7 | s | g:7 | d2:m g:7 |
%            aes1:7 | a2:m d:7 | g:7 d:m7.5- | g:7 g:7.9+ |
%            c1:m | d2:m7.5- g:7.9+ | g:m7.5- c:7.9- | f1:m |
%            d2:m7.5- g:7.9- | c:m7+ a:m7.5- | d:7.9+ g:7.9- | c:m g:7.9+ |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Flute "
%          \relative c'' {
%            \clef treble
%            \key ees \major
%            \time 4/4
%            \numericTimeSignature
%            \tuplet 3/2 { g4 aes fis } \tuplet 3/2 { g aes fis } | g g2. |
%            \tuplet 3/2 { g4 aes fis } g8 c4 g8 | f1 | \break
%            \tuplet 3/2 { f4 g e } \tuplet 3/2 { f g e } | f f2 g4 |
%            e1 | R \bar "||" \break
%            \tuplet 3/2 { g4 aes fis } \tuplet 3/2 { g aes fis } | g g2. |
%            \tuplet 3/2 { g4 aes fis } g8 c4 g8 | f1 | \break
%            \tuplet 3/2 { f4 g e } \tuplet 3/2 { f g e } | f f2 g4 |
%            e1 | r4 g a c \bar "||" \break
%            \tuplet 3/2 { ees f d } \tuplet 3/2 { ees f d } | ees ees2 c4 |
%            \tuplet 3/2 { d ees cis } \tuplet 3/2 { d ees cis } | d1 | \break
%            \tuplet 3/2 { c4 d b } \tuplet 3/2 { c d b } | c c2 d4 |
%            b4. g8 aes4. f8 | g1 \bar "||" \break
%            \tuplet 3/2 { g4 aes fis } \tuplet 3/2 { g aes fis } | g g2. |
%            \tuplet 3/2 { g4 aes fis } g8 c4 g8 | f1 | \break
%            \tuplet 3/2 { f4 g e } \tuplet 3/2 { f g aes } | f a b c |
%            ees2 d | c2. r4 \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Song For My Father"
%      composer = "Horace Silver"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            s4. |
%            f1:m | s | ees:7 | s | des:7 | c:7 | f:m | s |
%            f1:m | s | ees:7 | s | des:7 | c:7 | f:m | s |
%            ees:7 | s | f:m | s | ees2:7 des:7 | c1:7 | f:m | s |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Flute "
%          \relative c'' {
%            \clef treble
%            \key aes \major
%            \time 4/4
%            \numericTimeSignature
%            \partial 4. c8-. f-. aes-. \bar ".|"
%            c-> bes aes bes->~ bes aes f aes->~ | aes f-. ees f->~ f ees c ees->~ |
%            ees1~ | ees2. g,8 ges | \break
%            f des'~ des2. | r2 f4. g8~ |
%            g1~ | g2 r8 c,-. f-. aes-. \bar "||" \break
%            c-> bes aes bes->~ bes aes f aes->~ | aes f-. ees f->~ f ees c ees->~ |
%            ees1~ | ees2. g,8 ges | \break
%            f des'~ des2. | r2 f4. g8~ |
%            g1~ | g2 r8 ees4.-> \bar "||" \break
%            ees8 des-^ r f~ f2~ | f r8 f4.-> |
%            f8 ees-^ r g~ g2~ | g r8 ees4.-> | \break
%            ees8 des-^ r f~ f2~ | f8 r r4 aes4. bes8~ |
%            bes1~ | bes2 r \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "One For Daddy-O"
%      composer = "Nat Adderley"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            s2. |
%            c1:m | d2:m7.5-  g:7.9+ | c1:m | c:7.9+ |
%            f:m | s2 \parenthesize g:7.9+ | c1:m | s |
%            d:m7.5- | g:7.9+ | c:m | d2:m7.5- g:7.9+ |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Tenor "
%          \relative c' {
%            \clef treble
%            \key c \major
%            \time 4/4
%            \numericTimeSignature
%            \partial 2. c4-. ees8.--( g16 a4-.) \bar ".|"
%            c-. r r2 | r4 c,-. ees8.--( g16 a4-.) |
%            c-. bes-. g8--( f-.) r ees | r4 c-. ees8.--( g16 a4-.) | \break
%            c-. r r2 | r4 c,-. ees8.--( g16 a4-.) |
%            c-. bes-. g8--( f-.) r ees | r4 c-. ees8.--( g16 a4-.) | \break
%            bes8.( g16 bes8. g16~ g4 bes8. g16 | bes8. g16~ g4 bes8. g16 b8 c) |
%            R1 | R \bar "|."
%          }
%        }
%      >>
%    }
%  }

%  \bookpart {
%    \header {
%      title = "Watermelon Man"
%      composer = "Herbie Hancock"
%      tagline = ##f
%    }
%    \score {
%      <<
%        \new ChordNames {
%          \chordmode {
%            \set minorChordModifier = \markup { "-" }
%            g1:7 | s | s | s | c:7 | s | g:7 | s |
%            d:7 | c:7 | d:7 | c:7 | d:7 | c:7 | g:7 | s |
%          }
%        }
%        \new Staff {
%          \set Staff.instrumentName = #"Tenor "
%          \relative c'' {
%            \clef treble
%            \key c \major
%            \time 4/4
%            \numericTimeSignature
%            f1~ | f4 g,8 g d'( e4-.) g,8~ | g1~ | g2 r | \break
%            g'1~ | g4 g,8 g d'( e4-.) g,8~ | g1~ | g2 r \bar "||" \break
%            r4 d8( d a'4 b | bes8 a g e g4 a-.) | r d,8( d a'4 b | bes8 a g e d4 e-.) | \break
%            r d8( d a'4 bes | g-.) g8 g d'( e4-.) g,8~ | g1 | R \bar "|."
%          }
%        }
%      >>
%    }
%  }

  \bookpart {
    \header {
      title = "Have You Met Miss Jones"
      composer = "Lorenz Hart & Richard Rodgers"
      tagline = ##f
    }
    \score {
      <<
        \new ChordNames {
          \chordmode {
            \set minorChordModifier = \markup { "-" }
            f1:7+ | d:7.9- | g:m | c:7 |
            a:m | d:m | g:m | c:7 |
            f:7+ | d:7.9- | g:m | c:7 |
            a:m | d:m | c:m | f:7 |
            bes:7+ | aes2:m des:7 | ges1:7+ | e2:m a:7 |
            d1:7+ | aes2:m des:7 | ges1:7+ | g2:m c:7 |
            f1:7+ | d:7.9- | g:m | c:7 |
            a2:m d:7 | g:m c:7 | f1:7+ | g2:m c:7 |
          }
        }
        \new Staff {
          \set Staff.instrumentName = #"Flute "
          \relative c'' {
            \clef treble
            \key f \major
            \time 4/4
            \numericTimeSignature
            a4 d, c d | c2. r4 | d e f g | a bes c2 | \break
            d4 g, f g | f2. a4 | bes1~ bes2. r4 \bar "||" \break
            a d, c d | c2. r4 | d e f g | a bes c2 | \break
            d4 g, f g | f2. a4 | c1~ | c4 d d d \bar "||" \break
            c bes f g | aes aes aes aes | aes ges des ees | e! e e e | \break
            e d fis a |  des2 des | bes1~ | bes2. r4 \bar "||" \break
            a d, c d c2. r4 | d e f g | a bes c d | e1~ | \break
            e4 d a g | f1 | R \bar "|."
          }
        }
      >>
    }
  }
}
