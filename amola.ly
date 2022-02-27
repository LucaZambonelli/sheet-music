\version "2.22.1"

\paper {
    top-margin = 25
    left-margin = 25
    right-margin = 20
    bottom-margin = 20
}

makePercent =
    #(define-music-function (note) (ly:music?)
    "Make a percent repeat the same length as NOTE."
    (make-music 'PercentEvent 'length (ly:music-length note)))

\book {
    \header{
        tagline = ##f
    }

    \bookpart {
        \score {
            \header {
                piece = "Alleluia"
            }
            \new Staff
            \relative c'' {
                \set Staff.instrumentName = #"intro "
                \clef treble
                \key a \major
                \time 4/4
                \partial 4 e8 fis |
                gis4 gis \tuplet 3/2 { fis e cis } |
                e1 \bar "|."
            }
        }

        \score {
            \header {
                piece = "Alleluia - Cantate al Signore"
            }
            \new Staff
            \relative c'' {
                \set Staff.instrumentName = #"intro "
                \clef treble
                \key c \major
                \time 4/4
                g8 a b c d c d4 |
                c1 \bar "|."
            }
        }

        \score {
            \header {
                piece = "Santo"
            }
            \new Staff
            \relative c'' {
                \set Staff.instrumentName = #"intro "
                \clef treble
                \key g \major
                \time 4/4
                d4 d e g |
                g fis8 e fis2 \bar"|."
            }
        }

        \score {
            \header {
                piece = "Agnello di Dio"
            }
            <<
                \new Staff
                \relative c'' {
                    \set Staff.instrumentName = #"intro "
                    \clef "treble^8"
                    \key g \major
                    \time 6/8
                    \repeat volta 2 {
                        e4.~ e8 fis g | a4.~ a8 g a |
                        b2. | b4 a g
                    }
                    e2. \bar"|."
                }
                \new Staff
                \relative c {
                    \set Staff.instrumentName = #"tra strofe "
                    \repeat percent 5 { \makePercent s2. }
                }
            >>
        }
    }

    \bookpart {
        \score {
            \header {
                piece = "tipo 1"
                }
        \new Staff
        \relative c'' {
            \set Staff.instrumentName = #"ou? "
            \clef "treble^8"
            \key g \major
            \time 4/4
            c8 d e fis g a b4 |
            d,8 e fis g a b d4 |
            b1 \bar"|."
            }
        }

        \score {
            \header {
                piece = "tipo 2"
                }
        \new Staff
        \relative c''' {
            \set Staff.instrumentName = #"ou? "
            \clef "treble^8"
            \key g \major
            \time 4/4
            g2 a4. g8 | fis4 e d2 |
            g4 fis e d | e fis e2 \bar"|."
            }
        }
    }

    \bookpart {
        \score {
            \header {
                piece = "Alleluia (Dio ha visitato) - p. 61"
            }
            \new Staff
            \relative c'' {
                \set Staff.instrumentName = #"intro "
                \clef "treble^8"
                \key g \major
                \time 4/4
                d2 fis4 d | a'1 |
                b2 fis4 d | g1 |
                b2 fis4 d | fis1 | e \bar "|."
            }
        }

        \score {
            \header {
                piece = "Benedetto tu, Signore - p. 42"
            }
            \new Staff
            \relative c' {
                \set Staff.instrumentName = #"intro "
                \clef treble
                \key c \major
                \time 4/4
                f2 g | a1 |
                f2 e | d1 |
                r8 g c e r g, f' e | r g, c e r a, f'16 e c8 \bar "|."
            }
        }

        \score {
            \header {
                piece = "Cantate al Signore un canto nuovo - p. 63"
            }
            \new Staff
            \relative c'' {
                \set Staff.instrumentName = #"intro "
                \clef "treble^8"
                \key f \major
                \time 4/4
                d8 e f c r f a c | bes4-. a-. g-. f8 f \bar"|."
            }
        }

        \score {
            \header {
                piece = "Come il cervo va all'acqua viva - p. 53"
            }
            <<
                \new Staff
                \relative c'' {
                    \set Staff.instrumentName = #"intro "
                    \clef "treble^8"
                    \key f \major
                    \time 4/4
                    d8 e f f a4. a8 | g f d4 c2 |
                    f4 g8 a c4. d8 | c a g4 f4. a8 |
                    g f c4 e d | f g e f |
                    d e c d~ | d1 \bar"|."
                } 
                \new Staff
                \relative c'' {
                    \set Staff.instrumentName = #"strofa "
                    \clef "treble^8"
                    \key f \major
                    \time 4/4
                    R1 | R1 | r2 r4. \makePercent r8 |
                    \repeat percent 5 { \makePercent s1 }
                }
            >>
        }

        \score {
            \header {
                piece = "Come terra buona - p. 60"
            }
            \new Staff
            \relative c {
                \set Staff.instrumentName = #"intro "
                \clef treble
                \key c \major
                \time 4/4
                R1 \bar"|."
            }
        }

        \score {
            \header {
                piece = "Cristo è risorto veramente - p. 41"
            }
            << 
                \new Staff
                \relative c'' {
                    \set Staff.instrumentName = #"intro "
                    \clef treble
                    \key f \major
                    \time 4/4
                    a4-. f-. g-. c8 bes | a4-. a8 bes g f g4 |
                    a-. f g c8 bes | a4-. a8 bes g2 \bar"|."
                }
                \new Staff
                \relative c'' {
                    \set Staff.instrumentName = #"controcanto "
                    \clef treble
                    \key f \major
                    \time 4/4
                    g4 f8. bes16 a4. r8 | d4 bes8. g16 a4. r16 bes |
                    g8. f16 g8. a16 f2 | a1 \bar"|."
                }
            >>
        }

        \score {
            \header {
                piece = "Dall'aurora al tramonto - p. 63"
            }
            \new Staff
            \relative c''' {
                \set Staff.instrumentName = #"intro "
                \clef "treble^8"
                \key e \major
                \time 4/4
                gis2 cis~ | cis \tuplet 3/2 {cis4 b gis} |
                e2 gis~ | gis \tuplet 3/2 {gis4 fis e} |
                cis2 e | a, \tuplet 3/2 {e'4 dis b} |
                cis1 \bar "|."
            }
        }

        \score {
            \header {
                piece = "Del tuo spirito, Signore - p. 48"
            }
            \new Staff
            \relative c''' {
                \set Staff.instrumentName = #"intro "
                \clef "treble^8"
                \key d \major
                \time 4/4
                \partial 4 a4 | d8 cis cis a a b b4 |
                d, fis e8 d e4 | d1 \bar"|."
            }
        }

        \score {
            \header {
                piece = "È la gioia che fa cantare - p. 33"
            }
            \new Staff
            \relative c''' {
                \set Staff.instrumentName = #"intro "
                \clef "treble^8"
                \key a \major
                \time 4/4
                \repeat volta 2 {
                    r4 gis8 gis gis fis e a~ | a gis4 fis e4. |
                }
                \alternative {
                    { r4 gis8 gis gis fis e a~ | a cis4 b8~ b2 | }
                    { b4. a g4~ | g8 fis g a b4-. b \bar "|."}
                }
            }
        }
    }

    \bookpart {
        \score {
            \header {
                piece = "Il canto dell'amore - p. 53"
            }
            \new Staff
            \relative c'' {
                \set Staff.instrumentName = #"intro "
                \clef treble
                \key g \major
                \time 4/4
                a8 d e4 d8 a e'4 | d8 a e'4 fis2 |
                e8 fis g4 fis8 e d4 | e8 fis d2. \bar"|."
            }
        }

        \score {
            \header {
                piece = "Invochiamo la tua presenza - p. 42"
            }
            <<
                \new Staff
                \relative c''' {
                    \set Staff.instrumentName = #"intro "
                    \clef "treble^8"
                    \key f \major
                    \time 4/4
                    r8 f16 f e d c c~ c bes8 c16~ c8 d |
                    c8. bes16~ bes8 a g8. a16~ a8 bes |
                    a8. bes16~ bes8  c d2 |
                    c8. bes16~ bes8 a g2 | f8 e d2. \bar"|."
                }
                \new Staff
                \relative c''' {
                    \set Staff.instrumentName = #"strofa "
                    \clef "treble^8"
                    \key f \major
                    \time 4/4
                    R1 | R | f8 e d2. | R1 | \makePercent s1 |
                }
            >>
        }

        \score {
            \header {
                piece = "Isaia 11 - p. 15"
            }
            \new Staff
            \relative c''' {
                \set Staff.instrumentName = #"intro "
                \clef treble
                \key a \major
                \time 4/4
                r4 a fis e | cis2 e |
                cis4 e cis8 b a4 | gis8 a b4 cis d8 cis~ | \break
                cis2 cis8 e fis gis | a4 gis8 fis gis4 fis8 e |
                fis4 e8 cis e4 cis8 b | cis4 b8 a4. cis8 b | \break
                cis4 b a cis | e b8 cis4 e4.~ |
                e8 cis4 e e fis8 | e4. cis4 b8 a4 |
                fis2 e \bar "|."
            }
        }

        \score {
            \header {
                piece = "Isaia 62 - p. 46"
            }
            \new Staff
            \relative c'' {
                \set Staff.instrumentName = #"intro "
                \clef "treble^8"
                \key b \major
                \time 4/4
                \tuplet 3/2 { fis4 e dis } \tuplet 3/2 { fis e dis } |
                \tuplet 3/2 { b' ais gis } \tuplet 3/2 { b ais gis } |
                \tuplet 3/2 { fis e dis } \tuplet 3/2 { fis e dis } |
                gis2. ais8 b | dis1 \bar"|." 
            }
        }

        \score {
            \header {
                piece = "Iubilate Deo - p. 4"
            }
            \new Staff
            \relative c'' {
                \set Staff.instrumentName = #"intro "
                \clef "treble^8"
                \key g \major
                \time 4/4
                d8 fis b a fis d~ d4 | d8 fis b a fis2 \bar"|."
            }
        }

        \score {
            \header {
                piece = "Ora è tempo di gioia - p. 24"
            }
            <<
                \new Staff
                \relative c'' {
                    \set Staff.instrumentName = #"intro "
                    \clef "treble^8"
                    \key d \major
                    \time 4/4
                    \repeat volta 2 {
                        fis4 d fis2 | g4 e g2 |
                        a4 fis a2 |
                        }
                    \alternative {
                        { g4 e g2 | }
                        { g4. fis16 e d2 \bar "|."}
                        }
                    }
                \new Staff
                \relative c'' {
                    \set Staff.instrumentName = #"tra strofe "
                    \repeat percent 5 { \makePercent s1 }
                    }
            >>
        }

    }

    \bookpart {
        \score {
            \header {
                piece = "Perché tu sei con me - p. 35"
            }
            \new Staff
            \relative c''' {
                \set Staff.instrumentName = #"intro "
                \clef "treble^8"
                \key g \major
                \time 4/4
                \partial 4 a8 b | c4 c c d8 c |
                b a g4 a2 | e4 e8 g fis e d4 |
                e1 \bar"|."
            }
        }

        \score {
            \header {
                piece = "Popoli tutti acclamate - p. 57"
            }
            <<
                \new Staff
                \relative c'' {
                    \set Staff.instrumentName = #"intro "
                    \clef treble
                    \key a \major
                    \time 4/4
                    r4 cis d e | r gis, a b |
                    r cis d e | r gis, a b |
                    a1 \bar "|."
                }
                \new Staff
                \relative c {
                    \set Staff.instrumentName = #"tra strofe "
                    \repeat percent 5 { \makePercent s1 }
                }
            >>
        }

        \score {
            \header {
                piece = "Questo io credo - p. "
            }
            \new Staff
            \relative c'' {
                \set Staff.instrumentName = #"intro "
                \clef treble
                \key c \major
                \time 4/4
                d2. f4 | e2. c4 |
                d2. f4 | e2. c4 |
                d1 \bar"|."
            }
        }

        \score {
            \header {
                piece = "Svegliati, Sion - p. 26"
            }
            <<
                \new Staff
                \relative c'' {
                    \set Staff.instrumentName = #"intro "
                    \clef "treble^8"
                    \key c \major
                    \time 6/8
                    f8. e16 d8 f e d | g8. f16 e8 g f e |
                    a4. g | fis2. \bar"|."
                }
                \new Staff
                \relative c'' {
                    \set Staff.instrumentName = #"al rit. "
                    \clef treble
                    \key g \major
                    \time 6/8
                    r8 r c b c4 | b2. | R2. | R |
                }
            >>
        }

        \score {
            \header {
                piece = "Tu scendi dalle stelle - p. 57"
            }
            \new Staff
            \relative c'' {
                \set Staff.instrumentName = #"soprano "
                \clef "treble^8"
                \key d \major
                \time 6/8
                fis8. g16 a8 g a b |
                e,8. fis16 g8 fis g a |
                d,8. e16 fis8 e fis g |
                cis, d e fis4. |
                d fis \bar "|."
            }
        }

        \score {
            \header {
                piece = "Tu sei - p. 40"
            }
            \new Staff
            \relative c''' {
                \set Staff.instrumentName = #"intro "
                \clef "treble^8"
                \key c \major
                \time 4/4
                \partial 8 c8 |
                c4. b8 b4. a8 | a4. g8 a4. c8 |
                c4. b8 b4. a8 | a4. g8 a2 \bar "|."
            }
        }

        \score {
            \header {
                piece = "Vieni al Signor - p. 51"
            }
            \new Staff
            \relative c'' {
                \set Staff.instrumentName = #"intro "
                \clef "treble^8"
                \key f \major
                \time 4/4
                f16 g a8~ a4 g8 f g4 | f16 g a8~ a c g4 g |
                f8 g~ g f e r e16 d c8 | d1 \bar"|."
            }
        }

        \score {
            \header {
                piece = "Vivere la vita - p. 33"
            }
            \new Staff
            \relative c {
                \clef treble
                \key c \major
                \time 4/4
                R1 \bar"|."
            }
        }
    }
}