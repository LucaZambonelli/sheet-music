\version "2.22.1"

\paper {
    top-margin = 25
    left-margin = 25
    right-margin = 20
    bottom-margin = 20
}

gbar = {
    \tuplet 3/2 {g4\6 f'8\4~} \tuplet 3/2 {f4\4 bes8\3~}
    \tuplet 3/2 {bes4\3 << f8\4~ g,\6~ >>} << f'4\4 g,\6 >> |
}

cbar = {
    \tuplet 3/2 {c4\6 bes'8\4~} \tuplet 3/2 {bes4\4 ees8\3~}
    \tuplet 3/2 {ees4\3 << bes8\4~ c,\6~ >>} << bes'4\4 c,\6 >> |
}

bluesyblues = {
    \gbar | \cbar | \repeat percent 2 { \gbar } \bar"||" \break
    \repeat percent 2 { \cbar} | \repeat percent 2 { \gbar } \bar "||" \break
}

\book {
    \header{
        piece = "a bluesy blues"
        composer = "Luca Zambonelli"
        tagline = ##f
    }

    \score {
        <<
        \new Staff
        \relative c' {
            \clef treble
            \key bes \major
            \time 4/4
            \bluesyblues
            }
        \new TabStaff
        \relative c {
            \bluesyblues
            }
        >>
    }
}
