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
  \partial 2 r8 r4. |
  R1 | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
}
chordsRythm = {
  \set chordChanges = ##t
  \chordmode {
    s8 s4.
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
  \partial 2 r8 r4. |
  R1 | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
}


% theme section
scoreTheme = {
  \key f \major r8 r4. |
  \key ges \major R1 | R | R | R | R |
  \key g \major R |  R | R | R | R |
  \key aes \major R | R | R | R | R |
  \key a \major R | R | R |  R | R |
  \key bes \major R | R | R | R | R |
  \key b \major R | R | R | R | R |
  \key c \major R | R | R | R | R |
  \key des \major R | R | R | R | R |
  \key d \major R | R | R | R | R |
  \key ees \major R | R | R | R | R |
  \key e \major R | R | R | R | R |
  \key f \major R | R | R | R | R |
  \key ges \major R | R | R | R | R |
  \key g \major R | R | R | R | R |
  \key aes \major R | R | | R | R | R |
  \key a \major R | R | R | R | R |
  \key bes \major R | R | R | R | R |
  \key b \major R | R | R | | R | R |
  \key c \major R | R | R | R | R |
  \key des \major R | R | R | R | R |
  \key d \major R | R | R | R | R |
  \key ees \major R | R | R | R | R |
  \key e \major R | R | R | R | R |
  \key f \major R | R | R | R | R |
}
midiTheme = {
  r8 r4. |
  R1 | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
  R | R | R | R | R |
}


% bass section
scoreBass = {
  r8 f8\2 f\2 f\2 \bar "||"
  bes4.\1 f8\2~ f\2 bes\1 bes\1 bes\1 | ees,4.\3 bes'8\2~ bes\2 ees,\3 ees\3 ees\3 |
  aes4.\2 ees8\3~ ees\3 aes\2 aes\2 aes\2 | des,4.\3 aes'8\2~ aes\2 des,\3 des\3 des\3 | \break
  ges4.\2 des8\3~ des\3 ges\2 ges\2 ges\2 | b,4.\3 fis'8\2~ fis\2 b,\3 b\3 b\3 |
  e4.\2 b8\3~ b\3 e\2 e\2 e\2 | a,4.\4 e'8\3~ e8\3 a,\4 a\4 a\4 \bar "||" % verse ends
  d4.\3 a8\4~ a\4 d\3 d\3 d\3 | g,4.\4 d'8\3~ d\3 g,\4 g\4 g\4 | \break
  c4.\3 g8\4~ g\4 c\3 c\3 c\3 | f4.\2 c'8\1~ c\1 f,\2 f\2 f\2 |
  bes4.\1 f8\2~ f\2 bes\1 bes\1 bes\1 | ees,4.\3 bes'8\2~ bes\2 ees,\3 ees\3 ees\3 |
  aes4.\2 ees8\3~ ees\3 aes\2 aes\2 aes\2 | cis,4.\3 gis'8\2~ gis\2 cis,\3 cis\3 cis\3 \bar"||" \break % A1 ends
  fis4.\2 cis8\3~ cis\3 fis\2 fis\2 fis\2 | b,4.\3 fis'8\2~ fis\2 b,\3 b\3 b\3 |
  e4.\2 b8\3~ b\3 e\2 e\2 e\2 | a,4.\4 e'8\3~ e8\3 a,\4 a\4 a\4 |
  d4.\3 a8\4~ a\4 d\3 d\3 d\3 | g,4.\4 d'8\3~ d\3 g,\4 g\4 g\4 | \break
  c4.\3 g8\4~ g\4 c\3 c\3 c\3 | f4.\2 c'8\1~ c\1 f,\2 f\2 f\2 \bar "||" % A2 ends
  bes4.\1 f8\2~ f\2 bes\1 bes\1 bes\1 | dis,4.\3 ais'8\2~ ais\2 dis,\3 dis\3 dis\3 |
  gis4.\2 dis8\3~ dis\3 gis\2 gis\2 gis\2 | cis,4.\3 gis'8\2~ gis\2 cis,\3 cis\3 cis\3 | \break
  fis4.\2 cis8\3~ cis\3 fis\2 fis\2 fis\2 | b,4.\3 fis'8\2~ fis\2 b,\3 b\3 b\3 |
  e4.\2 b8\3~ b\3 e\2 e\2 e\2 | a,4.\4 e'8\3~ e8\3 a,\4 a\4 a\4 \bar "||" % B ends
  d4.\3 a8\4~ a\4 d\3 d\3 d\3 | g,4.\4 d'8\3~ d\3 g,\4 g\4 g\4 | \break
  c4.\3 g8\4~ g\4 c\3 c\3 c\3 | f4.\2 c'8\1~ c\1 f,\2 f\2 f\2 |
  bes4.\1 f8\2~ f\2 bes\1 bes\1 bes\1 | ees,4.\3 bes'8\2~ bes\2 ees,\3 ees\3 ees\3 |
  aes4.\2 ees8\3~ ees\3 aes\2 aes\2 aes\2 | des,4.\3 aes'8\2~ aes\2 des,\3 des\3 des\3 \bar "||" \break % A3 ends
  fis4.\2 cis8\3~ cis\3 fis\2 fis\2 fis\2 | b,4.\3 fis'8\2~ fis\2 b,\3 b\3 b\3 |
  e4.\2 b8\3~ b\3 e\2 e\2 e\2 | a,4.\4 e'8\3~ e8\3 a,\4 a\4 a\4 |
  d4.\3 a8\4~ a\4 d\3 d\3 d\3 | g,4.\4 d'8\3~ d\3 g,\4 g\4 g\4 | \break
  c4.\3 g8\4~ g\4 c\3 c\3 c\3 | f4.\2 c'8\1~ c\1 f,\2 f\2 f\2 \bar "||" % A1 ends
  bes4.\1 f8\2~ f\2 bes\1 bes\1 bes\1 | ees,4.\3 bes'8\2~ bes\2 ees,\3 ees\3 ees\3 |
  gis4.\2 dis8\3~ dis\3 gis\2 gis\2 gis\2 | cis,4.\3 gis'8\2~ gis\2 cis,\3 cis\3 cis\3 | \break
  fis4.\2 cis8\3~ cis\3 fis\2 fis\2 fis\2 | b,4.\3 fis'8\2~ fis\2 b,\3 b\3 b\3 |
}
midiBass = {
  \tuplet 3/2 { r4 f8 } \tuplet 3/2 { f4 f8 } |
  bes4~ \tuplet 3/2 { bes4 f8~ } \tuplet 3/2 { f4 bes8 } \tuplet 3/2 { bes4 bes8 } |
  ees,4~ \tuplet 3/2 { ees4 bes'8~ } \tuplet 3/2 { bes4 ees,8 } \tuplet 3/2 { ees4 ees8 } |
  aes4~ \tuplet 3/2 { aes4 ees8~ } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { aes4 aes8 } |
  des,4~ \tuplet 3/2 { des4 aes'8~ } \tuplet 3/2 { aes4 des,8 } \tuplet 3/2 { des4 des8 } |
  ges4~ \tuplet 3/2 { ges4 des8~ } \tuplet 3/2 { des4 ges8 } \tuplet 3/2 { ges4 ges8 } |
  b,4~ \tuplet 3/2 { b4 fis'8~ } \tuplet 3/2 { fis4 b,8 } \tuplet 3/2 { b4 b8 } |
  e4~ \tuplet 3/2 { e4 b8~ } \tuplet 3/2 { b4 e8 } \tuplet 3/2 { e4 e8 } |
  a,4~ \tuplet 3/2 { a4 e'8~ } \tuplet 3/2 { e4 a,8 } \tuplet 3/2 { a4 a8 } |
  d4~ \tuplet 3/2 { d4 a8~ } \tuplet 3/2 { a4 d8 } \tuplet 3/2 { d4 d8 } |
  g,4~ \tuplet 3/2 { g4 d'8~ } \tuplet 3/2 { d4 g,8 } \tuplet 3/2 { g4 g8 } |
  c4~ \tuplet 3/2 { c4 g8~ } \tuplet 3/2 { g4 c8 } \tuplet 3/2 { c4 c8 } |
  f4~ \tuplet 3/2 { f4 c'8~ } \tuplet 3/2 { c4 f,8 } \tuplet 3/2 { f4 f8 } |
  bes4~ \tuplet 3/2 { bes4 f8~ } \tuplet 3/2 { f4 bes8 } \tuplet 3/2 { bes4 bes8 } |
  ees,4~ \tuplet 3/2 { ees4 bes'8~ } \tuplet 3/2 { bes4 ees,8 } \tuplet 3/2 { ees4 ees8 } |
  aes4~ \tuplet 3/2 { aes4 ees8~ } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { aes4 aes8 } |
  des,4~ \tuplet 3/2 { des4 aes'8~ } \tuplet 3/2 { aes4 des,8 } \tuplet 3/2 { des4 des8 } |
  ges4~ \tuplet 3/2 { ges4 des8~ } \tuplet 3/2 { des4 ges8 } \tuplet 3/2 { ges4 ges8 } |
  b,4~ \tuplet 3/2 { b4 fis'8~ } \tuplet 3/2 { fis4 b,8 } \tuplet 3/2 { b4 b8 } |
  e4~ \tuplet 3/2 { e4 b8~ } \tuplet 3/2 { b4 e8 } \tuplet 3/2 { e4 e8 } |
  a,4~ \tuplet 3/2 { a4 e'8~ } \tuplet 3/2 { e4 a,8 } \tuplet 3/2 { a4 a8 } |
  d4~ \tuplet 3/2 { d4 a8~ } \tuplet 3/2 { a4 d8 } \tuplet 3/2 { d4 d8 } |
  g,4~ \tuplet 3/2 { g4 d'8~ } \tuplet 3/2 { d4 g,8 } \tuplet 3/2 { g4 g8 } |
  c4~ \tuplet 3/2 { c4 g8~ } \tuplet 3/2 { g4 c8 } \tuplet 3/2 { c4 c8 } |
  f4~ \tuplet 3/2 { f4 c'8~ } \tuplet 3/2 { c4 f,8 } \tuplet 3/2 { f4 f8 } |
  bes4~ \tuplet 3/2 { bes4 f8~ } \tuplet 3/2 { f4 bes8 } \tuplet 3/2 { bes4 bes8 } |
  ees,4~ \tuplet 3/2 { ees4 bes'8~ } \tuplet 3/2 { bes4 ees,8 } \tuplet 3/2 { ees4 ees8 } |
  aes4~ \tuplet 3/2 { aes4 ees8~ } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { aes4 aes8 } |
  des,4~ \tuplet 3/2 { des4 aes'8~ } \tuplet 3/2 { aes4 des,8 } \tuplet 3/2 { des4 des8 } |
  ges4~ \tuplet 3/2 { ges4 des8~ } \tuplet 3/2 { des4 ges8 } \tuplet 3/2 { ges4 ges8 } |
  b,4~ \tuplet 3/2 { b4 fis'8~ } \tuplet 3/2 { fis4 b,8 } \tuplet 3/2 { b4 b8 } |
  e4~ \tuplet 3/2 { e4 b8~ } \tuplet 3/2 { b4 e8 } \tuplet 3/2 { e4 e8 } |
  a,4~ \tuplet 3/2 { a4 e'8~ } \tuplet 3/2 { e4 a,8 } \tuplet 3/2 { a4 a8 } |
  d4~ \tuplet 3/2 { d4 a8~ } \tuplet 3/2 { a4 d8 } \tuplet 3/2 { d4 d8 } |
  g,4~ \tuplet 3/2 { g4 d'8~ } \tuplet 3/2 { d4 g,8 } \tuplet 3/2 { g4 g8 } |
  c4~ \tuplet 3/2 { c4 g8~ } \tuplet 3/2 { g4 c8 } \tuplet 3/2 { c4 c8 } |
  f4~ \tuplet 3/2 { f4 c'8~ } \tuplet 3/2 { c4 f,8 } \tuplet 3/2 { f4 f8 } |
  bes4~ \tuplet 3/2 { bes4 f8~ } \tuplet 3/2 { f4 bes8 } \tuplet 3/2 { bes4 bes8 } |
  ees,4~ \tuplet 3/2 { ees4 bes'8~ } \tuplet 3/2 { bes4 ees,8 } \tuplet 3/2 { ees4 ees8 } |
  aes4~ \tuplet 3/2 { aes4 ees8~ } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { aes4 aes8 } |
  des,4~ \tuplet 3/2 { des4 aes'8~ } \tuplet 3/2 { aes4 des,8 } \tuplet 3/2 { des4 des8 } |
  ges4~ \tuplet 3/2 { ges4 des8~ } \tuplet 3/2 { des4 ges8 } \tuplet 3/2 { ges4 ges8 } |
  b,4~ \tuplet 3/2 { b4 fis'8~ } \tuplet 3/2 { fis4 b,8 } \tuplet 3/2 { b4 b8 } |
  e4~ \tuplet 3/2 { e4 b8~ } \tuplet 3/2 { b4 e8 } \tuplet 3/2 { e4 e8 } |
  a,4~ \tuplet 3/2 { a4 e'8~ } \tuplet 3/2 { e4 a,8 } \tuplet 3/2 { a4 a8 } |
  d4~ \tuplet 3/2 { d4 a8~ } \tuplet 3/2 { a4 d8 } \tuplet 3/2 { d4 d8 } |
  g,4~ \tuplet 3/2 { g4 d'8~ } \tuplet 3/2 { d4 g,8 } \tuplet 3/2 { g4 g8 } |
  c4~ \tuplet 3/2 { c4 g8~ } \tuplet 3/2 { g4 c8 } \tuplet 3/2 { c4 c8 } |
  f4~ \tuplet 3/2 { f4 c'8~ } \tuplet 3/2 { c4 f,8 } \tuplet 3/2 { f4 f8 } |
  bes4~ \tuplet 3/2 { bes4 f8~ } \tuplet 3/2 { f4 bes8 } \tuplet 3/2 { bes4 bes8 } |
  ees,4~ \tuplet 3/2 { ees4 bes'8~ } \tuplet 3/2 { bes4 ees,8 } \tuplet 3/2 { ees4 ees8 } |
  aes4~ \tuplet 3/2 { aes4 ees8~ } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { aes4 aes8 } |
  des,4~ \tuplet 3/2 { des4 aes'8~ } \tuplet 3/2 { aes4 des,8 } \tuplet 3/2 { des4 des8 } |
  ges4~ \tuplet 3/2 { ges4 des8~ } \tuplet 3/2 { des4 ges8 } \tuplet 3/2 { ges4 ges8 } |
  b,4~ \tuplet 3/2 { b4 fis'8~ } \tuplet 3/2 { fis4 b,8 } \tuplet 3/2 { b4 b8 } |
  e4~ \tuplet 3/2 { e4 b8~ } \tuplet 3/2 { b4 e8 } \tuplet 3/2 { e4 e8 } |
  a,4~ \tuplet 3/2 { a4 e'8~ } \tuplet 3/2 { e4 a,8 } \tuplet 3/2 { a4 a8 } |
  d4~ \tuplet 3/2 { d4 a8~ } \tuplet 3/2 { a4 d8 } \tuplet 3/2 { d4 d8 } |
  g,4~ \tuplet 3/2 { g4 d'8~ } \tuplet 3/2 { d4 g,8 } \tuplet 3/2 { g4 g8 } |
  c4~ \tuplet 3/2 { c4 g8~ } \tuplet 3/2 { g4 c8 } \tuplet 3/2 { c4 c8 } |
  f4~ \tuplet 3/2 { f4 c'8~ } \tuplet 3/2 { c4 f,8 } \tuplet 3/2 { f4 f8 } |
  bes4~ \tuplet 3/2 { bes4 f8~ } \tuplet 3/2 { f4 bes8 } \tuplet 3/2 { bes4 bes8 } |
  ees,4~ \tuplet 3/2 { ees4 bes'8~ } \tuplet 3/2 { bes4 ees,8 } \tuplet 3/2 { ees4 ees8 } |
  aes4~ \tuplet 3/2 { aes4 ees8~ } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { aes4 aes8 } |
  des,4~ \tuplet 3/2 { des4 aes'8~ } \tuplet 3/2 { aes4 des,8 } \tuplet 3/2 { des4 des8 } |
  ges4~ \tuplet 3/2 { ges4 des8~ } \tuplet 3/2 { des4 ges8 } \tuplet 3/2 { ges4 ges8 } |
  b,4~ \tuplet 3/2 { b4 fis'8~ } \tuplet 3/2 { fis4 b,8 } \tuplet 3/2 { b4 b8 } |
  e4~ \tuplet 3/2 { e4 b8~ } \tuplet 3/2 { b4 e8 } \tuplet 3/2 { e4 e8 } |
  a,4~ \tuplet 3/2 { a4 e'8~ } \tuplet 3/2 { e4 a,8 } \tuplet 3/2 { a4 a8 } |
  d4~ \tuplet 3/2 { d4 a8~ } \tuplet 3/2 { a4 d8 } \tuplet 3/2 { d4 d8 } |
  g,4~ \tuplet 3/2 { g4 d'8~ } \tuplet 3/2 { d4 g,8 } \tuplet 3/2 { g4 g8 } |
  c4~ \tuplet 3/2 { c4 g8~ } \tuplet 3/2 { g4 c8 } \tuplet 3/2 { c4 c8 } |
  f4~ \tuplet 3/2 { f4 c'8~ } \tuplet 3/2 { c4 f,8 } \tuplet 3/2 { f4 f8 } |
  bes4~ \tuplet 3/2 { bes4 f8~ } \tuplet 3/2 { f4 bes8 } \tuplet 3/2 { bes4 bes8 } |
  ees,4~ \tuplet 3/2 { ees4 bes'8~ } \tuplet 3/2 { bes4 ees,8 } \tuplet 3/2 { ees4 ees8 } |
  aes4~ \tuplet 3/2 { aes4 ees8~ } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { aes4 aes8 } |
  des,4~ \tuplet 3/2 { des4 aes'8~ } \tuplet 3/2 { aes4 des,8 } \tuplet 3/2 { des4 des8 } |
  ges4~ \tuplet 3/2 { ges4 des8~ } \tuplet 3/2 { des4 ges8 } \tuplet 3/2 { ges4 ges8 } |
  b,4~ \tuplet 3/2 { b4 fis'8~ } \tuplet 3/2 { fis4 b,8 } \tuplet 3/2 { b4 b8 } |
  e4~ \tuplet 3/2 { e4 b8~ } \tuplet 3/2 { b4 e8 } \tuplet 3/2 { e4 e8 } |
  a,4~ \tuplet 3/2 { a4 e'8~ } \tuplet 3/2 { e4 a,8 } \tuplet 3/2 { a4 a8 } |
  d4~ \tuplet 3/2 { d4 a8~ } \tuplet 3/2 { a4 d8 } \tuplet 3/2 { d4 d8 } |
  g,4~ \tuplet 3/2 { g4 d'8~ } \tuplet 3/2 { d4 g,8 } \tuplet 3/2 { g4 g8 } |
  c4~ \tuplet 3/2 { c4 g8~ } \tuplet 3/2 { g4 c8 } \tuplet 3/2 { c4 c8 } |
  f4~ \tuplet 3/2 { f4 c'8~ } \tuplet 3/2 { c4 f,8 } \tuplet 3/2 { f4 f8 } |
  bes4~ \tuplet 3/2 { bes4 f8~ } \tuplet 3/2 { f4 bes8 } \tuplet 3/2 { bes4 bes8 } |
  ees,4~ \tuplet 3/2 { ees4 bes'8~ } \tuplet 3/2 { bes4 ees,8 } \tuplet 3/2 { ees4 ees8 } |
  aes4~ \tuplet 3/2 { aes4 ees8~ } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { aes4 aes8 } |
  des,4~ \tuplet 3/2 { des4 aes'8~ } \tuplet 3/2 { aes4 des,8 } \tuplet 3/2 { des4 des8 } |
  ges4~ \tuplet 3/2 { ges4 des8~ } \tuplet 3/2 { des4 ges8 } \tuplet 3/2 { ges4 ges8 } |
  b,4~ \tuplet 3/2 { b4 fis'8~ } \tuplet 3/2 { fis4 b,8 } \tuplet 3/2 { b4 b8 } |
  e4~ \tuplet 3/2 { e4 b8~ } \tuplet 3/2 { b4 e8 } \tuplet 3/2 { e4 e8 } |
  a,4~ \tuplet 3/2 { a4 e'8~ } \tuplet 3/2 { e4 a,8 } \tuplet 3/2 { a4 a8 } |
  d4~ \tuplet 3/2 { d4 a8~ } \tuplet 3/2 { a4 d8 } \tuplet 3/2 { d4 d8 } |
  g,4~ \tuplet 3/2 { g4 d'8~ } \tuplet 3/2 { d4 g,8 } \tuplet 3/2 { g4 g8 } |
  c4~ \tuplet 3/2 { c4 g8~ } \tuplet 3/2 { g4 c8 } \tuplet 3/2 { c4 c8 } |
  f4~ \tuplet 3/2 { f4 c'8~ } \tuplet 3/2 { c4 f,8 } \tuplet 3/2 { f4 f8 } |
  bes4~ \tuplet 3/2 { bes4 f8~ } \tuplet 3/2 { f4 bes8 } \tuplet 3/2 { bes4 bes8 } |
  ees,4~ \tuplet 3/2 { ees4 bes'8~ } \tuplet 3/2 { bes4 ees,8 } \tuplet 3/2 { ees4 ees8 } |
  aes4~ \tuplet 3/2 { aes4 ees8~ } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { aes4 aes8 } |
  des,4~ \tuplet 3/2 { des4 aes'8~ } \tuplet 3/2 { aes4 des,8 } \tuplet 3/2 { des4 des8 } |
  ges4~ \tuplet 3/2 { ges4 des8~ } \tuplet 3/2 { des4 ges8 } \tuplet 3/2 { ges4 ges8 } |
  b,4~ \tuplet 3/2 { b4 fis'8~ } \tuplet 3/2 { fis4 b,8 } \tuplet 3/2 { b4 b8 } |
  e4~ \tuplet 3/2 { e4 b8~ } \tuplet 3/2 { b4 e8 } \tuplet 3/2 { e4 e8 } |
  a,4~ \tuplet 3/2 { a4 e'8~ } \tuplet 3/2 { e4 a,8 } \tuplet 3/2 { a4 a8 } |
  d4~ \tuplet 3/2 { d4 a8~ } \tuplet 3/2 { a4 d8 } \tuplet 3/2 { d4 d8 } |
  g,4~ \tuplet 3/2 { g4 d'8~ } \tuplet 3/2 { d4 g,8 } \tuplet 3/2 { g4 g8 } |
  c4~ \tuplet 3/2 { c4 g8~ } \tuplet 3/2 { g4 c8 } \tuplet 3/2 { c4 c8 } |
  f4~ \tuplet 3/2 { f4 c'8~ } \tuplet 3/2 { c4 f,8 } \tuplet 3/2 { f4 f8 } |
  bes4~ \tuplet 3/2 { bes4 f8~ } \tuplet 3/2 { f4 bes8 } \tuplet 3/2 { bes4 bes8 } |
  ees,4~ \tuplet 3/2 { ees4 bes'8~ } \tuplet 3/2 { bes4 ees,8 } \tuplet 3/2 { ees4 ees8 } |
  aes4~ \tuplet 3/2 { aes4 ees8~ } \tuplet 3/2 { ees4 aes8 } \tuplet 3/2 { aes4 aes8 } |
  des,4~ \tuplet 3/2 { des4 aes'8~ } \tuplet 3/2 { aes4 des,8 } \tuplet 3/2 { des4 des8 } |
  ges4~ \tuplet 3/2 { ges4 des8~ } \tuplet 3/2 { des4 ges8 } \tuplet 3/2 { ges4 ges8 } |
  b,4~ \tuplet 3/2 { b4 fis'8~ } \tuplet 3/2 { fis4 b,8 } \tuplet 3/2 { b4 b8 } |
  e4~ \tuplet 3/2 { e4 b8~ } \tuplet 3/2 { b4 e8 } \tuplet 3/2 { e4 e8 } |
  a,4~ \tuplet 3/2 { a4 e'8~ } \tuplet 3/2 { e4 a,8 } \tuplet 3/2 { a4 a8 } |
  d4~ \tuplet 3/2 { d4 a8~ } \tuplet 3/2 { a4 d8 } \tuplet 3/2 { d4 d8 } |
  g,4~ \tuplet 3/2 { g4 d'8~ } \tuplet 3/2 { d4 g,8 } \tuplet 3/2 { g4 g8 } |
  c4~ \tuplet 3/2 { c4 g8~ } \tuplet 3/2 { g4 c8 } \tuplet 3/2 { c4 c8 } |
  f4~ \tuplet 3/2 { f4 c'8~ } \tuplet 3/2 { c4 f,8 } \tuplet 3/2 { f4 f8 } |
}


% drums section
scoreDrums = {
  \drummode {
    r8 r4. |
    R1 | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
  }
}
midiDrums = {
  \drummode {
    r8 r4. |
    R1 | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
    R | R | R | R | R |
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