\version "2.22.1"

\paper {
    top-margin = 25
    left-margin = 25
    right-margin = 20
    bottom-margin = 20
}

MidiRythmG = {
    g1
}

MidiRythmGEnd= {
    g,1~ | g1
}

MidiRythmA = {
    a1
}

MidiRythmC = {
    c1
}

MidiRythmD = {
    d1
}

MidiRythm = {
    \MidiRythmG | \MidiRythmC | \MidiRythmG | \break
    \MidiRythmG \bar"||" \MidiRythmC | \MidiRythmC | \break
    \MidiRythmG | \MidiRythmG \bar"||" \MidiRythmA | \break
    \MidiRythmD | \MidiRythmGEnd \bar"|." \break
    \MidiRythmG | \MidiRythmC | \MidiRythmG | \break
    \MidiRythmG \bar"||" \MidiRythmC | \MidiRythmC | \break
    \MidiRythmG | \MidiRythmG \bar"||" \MidiRythmA | \break
    \MidiRythmD | \MidiRythmGEnd \bar"|." \break
}

MidiBassG = {
    g1
}

MidiBassGEnd= {
    g,1~ | g1
}

MidiBassA = {
    a1
}

MidiBassC = {
    c1
}

MidiBassD = {
    d1
}

MidiBass = {
    R1 | R1 | R1 | \break
    \MidiBassG \bar"||" \MidiBassC | \MidiBassC | \break
    \MidiBassG | \MidiBassG \bar"||" R1 | \break
    R1 | R1 | R1 \bar"|." \break
    \MidiBassG | \MidiBassC | \MidiBassG | \break
    \MidiBassG \bar"||" \MidiBassC | \MidiBassC | \break
    \MidiBassG | \MidiBassG \bar"||" \MidiBassA | \break
    \MidiBassD | \MidiBassGEnd \bar"|." \break
}

ScoreRythmG = {
    g1\6
}

ScoreRythmGEnd= {
    g,1\6~ | g1\6
}

ScoreRythmA = {
    a1\6
}

ScoreRythmC = {
    c1\5
}

ScoreRythmD = {
    d1\5
}

ScoreRythm = {
    \ScoreRythmG | \ScoreRythmC | R1 | R1 \bar"||" \break
    R1 | R1 | R1 | R1 | \bar"||" \break
    \ScoreRythmA | \ScoreRythmD | \ScoreRythmGEnd \bar"|." \break
    R1 | R1 | R1 | R1 \bar"||" \break
    R1 | R1 | R1 | R1 \bar"||" \break
    R1 | R1 | R1 | R1 \bar"|."
}

ScoreBassG = {
    g1\4
}

ScoreBassGEnd= {
    g,1\4~ | g1\4
}

ScoreBassA = {
    a1\4
}

ScoreBassC = {
    c1\3
}

ScoreBassD = {
    d1\3
}

ScoreBass = {
    R1 | R1 | R1 | \ScoreBassG \bar"||" \break
    \ScoreBassC | R1 | R1 | R1 \bar"||" \break
    R1 | R1 | R1 | R1 | \bar"|." \break
    R1 | R1 | R1 | R1 \bar"||" \break
    R1 | R1 | R1 | R1 \bar"||" \break
    \ScoreBassA | \ScoreBassD | \ScoreBassGEnd \bar"|."
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
            \new StaffGroup <<
                \new Staff {
                    \relative c {
                        \set Staff.instrumentName = #"rythm "
                        \clef "treble_8"
                        \key bes \major
                        \time 4/4
                        \tempo 4 = 144
                        \MidiRythm
                    }
                }
                \new Staff {
                    \relative c, {
                        \set Staff.instrumentName = #"bass "
                        \clef "bass_8"
                        \key bes \major
                        \MidiBass
                    }
                }
            >>
        \layout { }
        \midi { }
        }
    }
    \bookpart {
        \score {
            \header {
                piece = "Score"
            }
            \new StaffGroup <<
                \new GrandStaff <<
                    \set GrandStaff.instrumentName = #"rythm "
                    \new Staff {
                        \relative c' {
                            \clef treble
                            \key bes \major
                            \time 4/4
                            \ScoreRythm
                        }
                    }
                    \new TabStaff {
                        \relative c {
                            \ScoreRythm
                        }
                    }
                >>
                \new GrandStaff <<
                    \set GrandStaff.instrumentName = #"bass "
                    \new Staff {
                        \relative c {
                            \clef bass
                            \key bes \major
                            \time 4/4
                            \ScoreBass
                        }
                    }
                    \new TabStaff {
                        \set Staff.stringTunings = #bass-tuning
                        \relative c, {
                            \ScoreBass
                        }
                    }
                >>
            >>
        }
    }
}
