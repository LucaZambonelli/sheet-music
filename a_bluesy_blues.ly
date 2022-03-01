\version "2.22.1"

\paper {
    top-margin = 25
    left-margin = 25
    right-margin = 20
    bottom-margin = 20
}

MidiRythmG = {
    \tuplet 3/2 {g4\sustainOn f'8~} \tuplet 3/2 {f4 bes8~}
    \tuplet 3/2 {bes4 << f8~ g,~ >>} << f'4 g,\sustainOff>>
}

MidiRythmGlo = {
    \tuplet 3/2 {g,4\sustainOn f'8~} \tuplet 3/2 {f4 bes8~}
    \tuplet 3/2 {bes4 << f8~ g,~ >>} << f'4 g,\sustainOff>>
}

MidiRythmC = {
    \tuplet 3/2 {c4\sustainOn bes'8~} \tuplet 3/2 {bes4 ees8~}
    \tuplet 3/2 {ees4 << bes8~ c,~ >>} << bes'4 c,\sustainOff >>
}

MidiRythmA = {
    a4\sustainOn~ \tuplet 3/2 { a << cis'8~ g'~ a,,>> }
    << cis'2 g' a,,\sustainOff>>
}

MidiRythmD = {
    d4\sustainOn~ \tuplet 3/2 { d << f'8~ c'~ d,,>> }
    << f'2 c' d,,\sustainOff>>
}

MidiRythmDhi = {
    d'4\sustainOn~ \tuplet 3/2 { d << f'8~ c'~ d,,>> }
    << f'2 c' d,,\sustainOff>>
}

MidiRythm = {
    \MidiRythmG | \MidiRythmC | \MidiRythmG | \break
    \MidiRythmG \bar"||" \MidiRythmC | \MidiRythmC | \break
    \MidiRythmG | \MidiRythmG \bar"||" \MidiRythmA | \break
    \MidiRythmD | \MidiRythmGlo | \MidiRythmDhi \bar"|." \break
    \MidiRythmGlo | \MidiRythmC | \MidiRythmG | \break
    \MidiRythmG \bar"||" \MidiRythmC | \MidiRythmC | \break
    \MidiRythmG | \MidiRythmG \bar"||" \MidiRythmA | \break
    \MidiRythmD | \MidiRythmGlo | \MidiRythmDhi \bar"|." \break
}

ScoreRythmG = {
    g8\6 f'\4~ f\4 bes\3~ bes\3 << f\4~ g,\6 >> << f'4\4 g,\6 >>
}

ScoreRythmC = {
    c8\6 bes'\4~ bes\4 ees\3~ ees\3 << bes\4~ c,\6 >> << bes'4\4 c,\6 >>
}

ScoreRythm = {
    \ScoreRythmG | \ScoreRythmC | \ScoreRythmG | \break
    \ScoreRythmG \bar"||" \ScoreRythmC | \ScoreRythmC | \break
    \ScoreRythmG | \ScoreRythmG | \bar"||"
}

\book {
    \header{
        title = "a bluesy blues, but minor"
        composer = "Luca Zambonelli"
        tagline = ##f
    }

    \bookpart {
        \score {
            \header {
                piece = "MIDI"
            }
            \new Staff
            \relative c {
                \set Staff.instrumentName = #"rythm guitar "
                \clef "treble_8"
                \key bes \major
                \time 4/4
                \tempo 4 = 144
                \MidiRythm
            }
        \layout { }
        \midi { }
        }
    }

    \bookpart {
        \score {
            \header {
                piece = "Score"
            }
            <<
            \new Staff
            \relative c' {
                \set Staff.instrumentName = #"rythm guitar "
                \clef treble
                \key bes \major
                \time 4/4
                \ScoreRythm
                }
            \new TabStaff
            \relative c {
                \ScoreRythm
                }
            >>
        }
    }
}
