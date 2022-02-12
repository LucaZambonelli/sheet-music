\version "2.22.1"

\paper {
    top-margin = 25
    left-margin = 20
    right-margin = 20
    bottom-margin = 20
}

\book {

    \header{
        title = "CORO DI AMOLA"
        subtitle = "Parti di flauto"
        tagline = ##f
    }

    \markup { \vspace #2 }

    \score {
        \header {
            piece = "Alleluia"
        }
        \new Staff
        \relative c'' {
            \clef treble
            \key a \major
            \time 4/4
            \partial 4 e8 fis |
            gis4 gis fis8 e cis e~ |
            e1 \fermata \bar "|."
        }
    }

    \score {
        \header {
            piece = "Alleluia - Cantate al Signore"
        }
        \new Staff
        \relative c'' {
            \clef treble
            \key c \major
            \time 4/4
            g8 a b c d c d4 |
            c1 \fermata \bar "|."
        }
    }

    \score {
        \header {
            piece = "Santo"
        }
        \new Staff
        \relative c'' {
            \clef treble
            \key g \major
            \time 4/4
            d4 d e g |
            g fis8 e fis2 \fermata \bar"|."
        }
    }

    \score {
        \header {
            piece = "Benedetto tu, Signore - p. 42"
        }
        \new Staff
        \relative c' {
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
            piece = "Dall'aurora al tramonto - p. 63"
        }
        \new Staff
        \relative c''' {
            \clef treble
            \key e \major
            \time 4/4
            gis2 cis~ | cis \tuplet 3/2 {cis4 b gis} |
            e2 gis~ | gis \tuplet 3/2 {gis4 fis e} |
            cis2 e | a, \tuplet 3/2 {e'4 dis b} |
            cis1 \fermata \bar "|."
        }
    }

    \score {
        \header {
            piece = "Isaia 11 - p. 15"
        }
        \new Staff
        \relative c''' {
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

    \pageBreak

    \score {
        \header {
            piece = "Ora è tempo di gioia - p. 24"
        }
        \new Staff
        \relative c'' {
            \clef treble
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
    }

    \score {
        \header {
            piece = "Popoli tutti acclamate - p. 57"
        }
        \new Staff
        \relative c'' {
            \clef treble
            \key a \major
            \time 4/4
            r4 cis d e | r gis, a b |
            r cis d e | r gis, a b |
            a1 \fermata \bar "|."
        }
    }

    \score {
        \header {
            piece = "Svegliati, Sion - p. 26"
        }
        \new Staff
        \relative c'' {
            \clef treble
            \key c \major
            \time 6/8
            f8. e16 d8 f e d |
            g8. f16 e8 g f e |
            a4. g |
            \key g \major
            fis2. \bar "||" \break
            R2. |
            R2. |
            r8 r c b c4 |
            b2. |
            R2. |
            R2. | \bar "|."
        }
    }

    \score {
        \header {
            piece = "Tu scendi dalle stelle - p. 57"
        }
        \new Staff
        \relative c' {
            \clef treble
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
            \clef treble
            \key c \major
            \time 4/4
            \partial 8 c8 |
            c4. b8 b4. a8 | a4. g8 a4. c8 |
            c4. b8 b4. a8 | a4. g8 a2 \bar "|."
        }
    }

}
