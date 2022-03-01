\version "2.22.1"

\paper {
    top-margin = 25
    left-margin = 25
    right-margin = 20
    bottom-margin = 20
}

MidiRythmG = {
    g4\sustainOn \tuplet 3/2 { bes4 f'8~ } \tuplet 3/2 { f4 g,8~ } g4\sustainOff 
}

MidiRythmGEnd= {
    R1 | R1
}

MidiRythmA = {
    a4\sustainOn~ \tuplet 3/2 { a4 cis8~ } cis4 r
}

MidiRythmC = {
    c4\sustainOn \tuplet 3/2 { ees4 bes'8~ } \tuplet 3/2 { bes4 c,8~ } c4\sustainOff 
}

MidiRythmD = {
    R1
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
    R1
}

MidiBassGEnd= {
    R1 | R1
}

MidiBassA = {
    R1
}

MidiBassC = {
    R1
}

MidiBassD = {
    R1
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

MidiDrumsA = {
    \drummode {
        R1
    }
}

MidiDrumsB = {
    \drummode {
        R1
    }
}

MidiDrums = {
    R1 | R1 | R1 | \break
    R1 \bar"||" R1 | R1 | \break
    \MidiDrumsA | \MidiDrumsA \bar"||" R1 | \break
    R1 | R1 | R1 \bar"|." \break
    \MidiDrumsA | \MidiDrumsA | \MidiDrumsA | \break
    \MidiDrumsA \bar"||" \MidiDrumsA | \MidiDrumsA | \break
    \MidiDrumsA | \MidiDrumsA \bar"||" \MidiDrumsB | \break
    \MidiDrumsB | \MidiDrumsB | \MidiDrumsB \bar"|."
}

ScoreRythmG = {
    R1
}

ScoreRythmGEnd= {
    R1 | R1
}

ScoreRythmA = {
    R1
}

ScoreRythmC = {
    R1
}

ScoreRythmD = {
    R1
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
    R1
}

ScoreBassGEnd= {
    R1 | R1
}

ScoreBassA = {
    R1
}

ScoreBassC = {
    R1
}

ScoreBassD = {
    R1
}

ScoreBass = {
    R1 | R1 | R1 | \ScoreBassG \bar"||" \break
    \ScoreBassC | R1 | R1 | R1 \bar"||" \break
    R1 | R1 | R1 | R1 | \bar"|." \break
    R1 | R1 | R1 | R1 \bar"||" \break
    R1 | R1 | R1 | R1 \bar"||" \break
    \ScoreBassA | \ScoreBassD | \ScoreBassGEnd \bar"|."
}

ScoreDrumsA = {
    \drummode {
        R1
    }
}

ScoreDrumsB = {
    \drummode {
        R1
    }
}

ScoreDrums = {
    R1 | R1 | R1 | R1 \bar"||" \break
    R1 | R1 | \ScoreDrumsA | R1 \bar"||" \break
    R1 | R1 | R1 | R1 \bar"|." \break
    R1 | R1 | R1 | R1 \bar"||" \break
    R1 | R1 | R1 | R1 \bar"||" \break
    \ScoreDrumsB | R1 | R1 | R1 \bar"|."
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
                    \set Staff.midiInstrument = "electric guitar (clean)"
                    \set Staff.instrumentName = #"rythm "
                    \relative c {
                        \clef "treble_8"
                        \key bes \major
                        \time 4/4
                        \tempo 4 = 128
                        \MidiRythm
                    }
                }
                \new Staff {
                    \set Staff.midiInstrument = "electric bass (finger)"
                    \set Staff.instrumentName = #"bass "
                    \relative c, {
                        \clef "bass_8"
                        \key bes \major
                        \MidiBass
                    }
                }
                \new DrumStaff {
                    \set Staff.instrumentName = #"drums "
                    \MidiDrums
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
                \new DrumStaff {
                    \set Staff.instrumentName = #"drums "
                    \ScoreDrums
                }
            >>
        }
    }
}
