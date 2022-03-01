\version "2.22.1"
\paper {
    top-margin = 25
    left-margin = 25
    right-margin = 20
    bottom-margin = 20
}


MidiRythmG = {
    g4\sustainOn \tuplet 3/2 { bes4 f'8~ }
    \tuplet 3/2 { f4 g,8~ } g4\sustainOff 
}
ScoreRythmG = {
    g4\6 bes8\5 f'4\4 g,4.\6 
}
MidiRythmGEnd= {
    g4~ \tuplet 3/2 { g4 bes8~ } 
    \tuplet 3/2 { bes4 d8~ } \tuplet 3/2 { d4 bes8~ } |
    \tuplet 3/2 { bes4 g8~ } \tuplet 3/2 { g4 f8~ }
    f2
}
ScoreRythmGEnd= {
    g4.\6 bes4\6 d\6 bes8\6~ |
    bes\6 g4\6 f8\6~ f2\6
}
MidiRythmA = {
    a4~ \tuplet 3/2 { a4 cis8~ }
    \tuplet 3/2 { cis4 ees8~ } \tuplet 3/2 { ees4 d8~ }
}
ScoreRythmA = {
    a4.\5 cis4\5 ees4\5 d8\5~
}
MidiRythmC = {
    c4\sustainOn \tuplet 3/2 { ees4 bes'8~ }
    \tuplet 3/2 { bes4 c,8~ } c4\sustainOff 
}
ScoreRythmC = {
    c4\5 ees8\4 bes'4\3 c,4.\5
}
MidiRythmD = {
    \tuplet 3/2 { d4 c8~ } \tuplet 3/2 { c4 a8~ }
    a2
}
ScoreRythmD = {
    d8\5 c4\5 a8\5~ a2\5
}

MidiRythm = {
    R1 | R1 | R1 \bar".|" \break
    \MidiRythmG | \MidiRythmC | \MidiRythmG | \break
    \MidiRythmG \bar"||" \MidiRythmC | \MidiRythmC | \break
    \MidiRythmG | \MidiRythmG \bar"||" \MidiRythmA | \break
    \MidiRythmD | \MidiRythmGEnd \bar"|." \break
    \MidiRythmG | \MidiRythmC | \MidiRythmG | \break
    \MidiRythmG \bar"||" \MidiRythmC | \MidiRythmC | \break
    \MidiRythmG | \MidiRythmG \bar"||" \MidiRythmA | \break
    \MidiRythmD | \MidiRythmGEnd \bar"|." \break
}
ScoreRythm = {
    R1 | R1 | R1 \bar".|" \break
    \ScoreRythmG | \ScoreRythmC | R1 | R1 \bar"||" \break
    R1 | R1 | R1 | R1 | \bar"||" \break
    \ScoreRythmA | \ScoreRythmD | \ScoreRythmGEnd \bar"|." \break
    R1 | R1 | R1 | R1 \bar"||" R1 | R1 | R1 | R1 \bar"||" \break
    R1 | R1 | R1 | R1 \bar"|."
}


MidiBassG = {
    \tuplet 3/2 { g4 bes8~ } \tuplet 3/2 { bes4 c8~ }
    \tuplet 3/2 { c4 f,8 \glissando } g4
}
ScoreBassG = {
    g8\4 bes4\4 c\3 f,8\4 \glissando ( g4\4 )
}
MidiBassGEnd= {
    \tuplet 3/2 { g4 g8~ } g2~ \tuplet 3/2 { g4 g8~ } |
    \tuplet 3/2 { g4 g8~ } g2.
}
ScoreBassGEnd= {
    g8\4 g2.\4 g8~\4 |
    g8\4 g2..\4
}
MidiBassA = {
    \tuplet 3/2 { a4 a8~ } a2~ \tuplet 3/2 { a4 a8~ }
}
ScoreBassA = {
    a8\4 a2.\4 a8~\4
}
MidiBassC = {
    \tuplet 3/2 { c4 ees8~ } \tuplet 3/2 { ees4 f8~ }
    \tuplet 3/2 { f4 bes,8 \glissando } c4
}
ScoreBassC = {
    c8\3 ees4\3 f\2 bes,8\3 \glissando ( c4\3 )
}
MidiBassD = {
    \tuplet 3/2 { a4 a8~ } a2.
}
ScoreBassD = {
    a8\4 a2..\4
}

MidiBass = {
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | \MidiBassC |
    \MidiBassC | \MidiBassG | \MidiBassG | R1 |
    R1 | R1 | R1 | \MidiBassG |
    \MidiBassC | \MidiBassG | \MidiBassG | \MidiBassC |
    \MidiBassC | \MidiBassG | \MidiBassG | \MidiBassA |
    \MidiBassD | \MidiBassGEnd |
}
ScoreBass = {
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | \ScoreBassC |
    R1 | \ScoreBassG | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | \ScoreBassA |
    \ScoreBassD | \ScoreBassGEnd |
}


MidiDrumsA = {
    \drummode {
        bd4 bd bd bd
    }
}
ScoreDrumsA = {
    \drummode {
        bd4 bd bd bd
    }
}
MidiDrumsB = {
    \drummode {
        sn4 trio sn sn
    }
}
ScoreDrumsB = {
    \drummode {
        sn4 trio sn sn
    }
}

MidiDrums = {
    R1 | \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
    \MidiDrumsA | \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
    \MidiDrumsA | \MidiDrumsA | \MidiDrumsA | R1 |
    R1 | R1 | R1 | \MidiDrumsA |
    \MidiDrumsA | \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
    \MidiDrumsA | \MidiDrumsA | \MidiDrumsA | \MidiDrumsB |
    \MidiDrumsB | \MidiDrumsB | \MidiDrumsB |
}
ScoreDrums = {
    R1 | \ScoreDrumsA | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | \ScoreDrumsB |
    R1 | R1 | R1 |
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
                            \override StringNumber.stencil = ##f
                            \clef treble
                            \key bes \major
                            \time 4/4
                            \ScoreRythm
                        }
                    }
                    
                    \new TabStaff {
                        \set Staff.stringTunings = \stringTuning <e, a, d g c f'>
                        \relative c {
                            \ScoreRythm
                        }
                    }
                >>
                
                \new GrandStaff <<
                    \set GrandStaff.instrumentName = #"bass "
                    
                    \new Staff {
                        \relative c {
                            \override StringNumber.stencil = ##f
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
