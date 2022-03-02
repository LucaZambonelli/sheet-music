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
    << g4~ d'~ g~ >>
    \tuplet 3/2 { << g4 d g, >> << bes8~ f'~ bes~ >> } 
    \tuplet 3/2 { << bes4 f bes, >> << d8~ a'~ d~ >> }
    \tuplet 3/2 { << d4 a d, >> << bes8~ f'~ bes~ >> } |
    \tuplet 3/2 { << bes4 f bes, >> << g8~ d'~ g~ >> }
    \tuplet 3/2 { << g4 d g, >> << f8~ c'~ f~ >> }
    << f2 c2 f,2 >>
}
ScoreRythmGEnd= {
    << g4.\6 d'\5 g\4 >> << bes4\4 f\5 bes,\6 >>
    << d4\6 a'\5 d\4 >> << bes8\4~ f\5~ bes,\6~ >> |
    << bes8\6 f'\5 bes\4 >> << g4\4 d\5 g,\6 >>
    << f8\6~ c'\5~ f\4~ >> << f2\4 c\5 f,\6 >>
}
MidiRythmA = {
    << a4~ ees'~ a~ >>
    \tuplet 3/2 { << a4 ees a, >> << cis8~ g'~ cis~ >> }
    \tuplet 3/2 { << cis4 g cis, >> << ees8~ bes'~ ees~ >> }
    \tuplet 3/2 { << ees4 bes ees, >> << d8~ a'~ d~ >> }
}
ScoreRythmA = {
    << a4.\6 ees'\5 a\4 >> << cis4\4 g\5 cis,\6 >>
    << ees4\6 bes'\5 ees\4 >> <<d8\4~ a\5~ d,\6~ >>
}
MidiRythmC = {
    c4\sustainOn \tuplet 3/2 { ees4 bes'8~ }
    \tuplet 3/2 { bes4 c,8~ } c4\sustainOff 
}
ScoreRythmC = {
    c4\5 ees8\4 bes'4\3 c,4.\5
}
MidiRythmD = {
    \tuplet 3/2 { << d4 a d, >>  << c8~ g'~ c~ >> }
    \tuplet 3/2 { << c4 g c, >>  << a8~ ees'~ a~ >> }
    << a2 ees a, >>
}
ScoreRythmD = {
    << d8\6 a'\5 d\4 >> << c4\4 g\5 c,\6 >>
    << a8\6~ ees'\5~ a\4~ >> << a2\4 ees\5 a,\6 >>
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
    R1
}
MidiBassGEnd= {
    \tuplet 3/2 { g4 g8~ } g2~ \tuplet 3/2 { g4 g8~ } |
    \tuplet 3/2 { g4 g8~ } g2.
}
ScoreBassGEnd= {
    R1 | R1
}
MidiBassA = {
    \tuplet 3/2 { a4 a8~ } a2~ \tuplet 3/2 { a4 a8~ }
}
ScoreBassA = {
    R1
}
MidiBassC = {
    \tuplet 3/2 { c4 ees8~ } \tuplet 3/2 { ees4 f8~ }
    \tuplet 3/2 { f4 bes,8 \glissando } c4
}
ScoreBassC = {
    R1
}
MidiBassD = {
    \tuplet 3/2 { a4 a8~ } a2.
}
ScoreBassD = {
    R1
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
        \tuplet 3/2 { bd4 trio8 } \tuplet 3/2 {sn4 bd8}
        bd4 \tuplet 3/2 { sn trio8 }
    }
}
ScoreDrumsA = {
    \drummode {
        timl8 cb timh timl timl4 timh8 cb
    }
}

MidiDrums = {
    R1 | \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
    \MidiDrumsA | \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
    \MidiDrumsA | \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
    \MidiDrumsA | \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
    \MidiDrumsA | \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
    \MidiDrumsA | \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
    \MidiDrumsA | \MidiDrumsA | \MidiDrumsA |
}
ScoreDrums = {
    R1 | \ScoreDrumsA | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 | R1 |
    R1 | R1 | R1 |
}


\book {
    \header{
        title = "a bluesy blues, but minor"
        composer = "Luca Zambonelli"
        tagline = ##f
    }

%    \bookpart {
%        
%        \score {
%            \header {
%                piece = "MIDI"
%            }
%            
%            \new StaffGroup <<
%            
%                \new Staff {
%                    \set Staff.midiInstrument = "electric guitar (clean)"
%                    \set Staff.instrumentName = #"rythm "
%                    \relative c {
%                        \clef "treble_8"
%                        \key bes \major
%                        \time 4/4
%                        \tempo 4 = 128
%                        \MidiRythm
%                    }
%                }
%                
%                \new Staff {
%                    \set Staff.midiInstrument = "electric bass (finger)"
%                    \set Staff.instrumentName = #"bass "
%                    \relative c, {
%                        \clef "bass_8"
%                        \key bes \major
%                        \MidiBass
%                    }
%                }
%                
%                \new DrumStaff {
%                    \set Staff.instrumentName = #"drums "
%                    \MidiDrums
%                }
%            >>
%        
%        \layout { }
%        \midi { }
%        }
%    }

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
                
                \new DrumStaff \with {
                    instrumentName = #"drums "
                    \override StaffSymbol.line-count = #2
                    \override StaffSymbol.staff-space = #2
                    \override VerticalAxisGroup.minimum-Y-extent = #'(-3.0 . 4.0)
                    \override Stem.length = #4
                    \override Stem.direction = #-1
                    drumStyleTable = #timbales-style
                } \ScoreDrums
            >>
        }
    }
}
