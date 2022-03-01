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
        piece = "a bluesy blues"
        composer = "Luca Zambonelli"
        tagline = ##f
    }

    \score {
    \new Staff
    \relative c {
        \clef "treble_8"
        \key bes \major
        \time 4/4
        \tuplet 3/2 {g4 f'8~} \tuplet 3/2 {f4 bes'8~}
        \tuplet 3/2 {bes4 << f,8~ g,~ >>} << f'4 g, >> |
        }
    }
}
