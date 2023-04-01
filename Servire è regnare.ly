\version "2.22.1"

\header {
  tagline = ##f
}

\book {
  \paper {
    system-system-spacing.basic-distance = #18
  }
  \score {
    \relative c'' {
      \key f \major
      \time 4/4
      \numericTimeSignature
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      <<
        \new Voice = "flute"
        { 
          \voiceOne
          c2~ c8 bes a4 | f4. g16 a g2 |
          r2 d'8 c d e | c2 r8 c16 bes c8 d16 e |
          f4. e8 d2 | c r8 bes'16 a g4 |
          a2.~ a8 g | f2 e8 f g e |
          f2 r | R | a8 g a bes a4 g |
          f2 r | r r4 r8 d16 e |
          f4. g8 f4 r | r r8 cis16 d e4 a |
          d, r8 e f4. d8 | c2 r8 d16 f e d e8 |
          f2 g | a8 g a bes a4 g | f2 e8 d e4 |
          f1 | r |
          r2 f8 e d4 | c4. f8 d e~ e4 |
          r2 f8 e f g | a2 c |
          r1 | R2 | a8 g a bes a4 g |
          f2 r | r r4 r8 d16 e |
          f4. g8 f4 r | r r8 bes16 a g8. a16 bes a g f |
          d4. e8 f4. d8 | c2. r4 |
          f8 g a4 c2 | r d,8 c d e |
          f2 g | a8 g a bes a4 g |
          f2 c8 d e4 | d1 |
        }
        \new Voice = "soprano"
        <<
          { 
            \voiceTwo
            \magnifyMusic 0.67 {
              R1 | r2 r4 r8 c, \bar "||"
              d c d e f4. d8 | c c c a g c r c | \break
              d c d e f4 r8 d | c c c f f g r g |
              a g f e f4 f8 g | a g f a g f e r16 e | \break
              f8 e f g f4 f | \time 2/4 r e8 c | \time 4/4 d4 d r2 \bar "||"
              a'4 a8 f g4 g8 a | bes4 a8 g f4 r8 d16 e | \break
              f8 f f g f4 d8 d~ | d e~ e4 r a,8 a |
              d c d e f4 r8 d | c4. d8 c4 a8 a | \break
              d e f d e d r c | d4 d2. | r2 r4 r8 c \bar "||"
              d c d e f4. d8 | c c c a g c r c | \break
              d c d e f4. d8 | c c c f f g r g |
              a g f e f4 f8 g | a g f a g f e r16 e | \break
              f8 e f g f4 f | \time 2/4 r e8 c | \time 4/4 d4 d r2 \bar "||"
              a'4 a8 f g4 g8 a | bes4 a8 g f4 r8 d16 e | \break
              f8 f f g f4 d8 d~ | d e~ e4 r a,8 a |
              d c d e f4. d8 | c4. d8 c4 a8 a | \break
              d e f d e d r c | d4 d2. \bar "||"
              R1 | R |
              R | R \bar "|."
            }
          }
          \addlyrics {
            \lyricmode { 
              Guar --
              dia -- mo~a Te che sei ma -- e -- stro e Si -- gno -- re; chi --
              na -- to~a ter -- ra stai, ci mo -- stri che l'a -- mo -- re è
              cin -- ger -- si~il grem -- biu -- le, sa -- per -- si~in -- gi -- noc -- chia -- a -- re c'in --
              se -- gni che a -- ma -- re è ser -- vi -- re.
              Fa' che~im -- pa -- ria -- mo, Si -- gno -- re, da Te, che~il più
              gran -- de~è chi più sa ser -- vi -- re, chi s'ab --
              bas -- sa~e chi si sa pie -- ga -- a -- re, per -- ché
              gran -- de è sol -- tan -- to l'a -- mo -- re. E
              ti ve -- dia -- mo poi, Ma -- e -- stro e Si -- gno -- re, che
              la -- vi~i pie -- di~a noi che sia -- mo tue crea -- tu -- re; e
              cin -- to del grem -- biu -- le, che~è~il man -- to tuo re -- ga -- a -- le, c'in --
              se -- gi che ser -- vi -- re è re -- gna -- re.
              Fa' che~im -- pa -- ria -- mo, Si -- gno -- re, da Te, che~il più
              gran -- de~è chi più sa ser -- vi -- re, chi s'ab --
              bas -- sa~ chi si sa pie -- ga -- a -- re, per -- ché
              gran -- de è sol -- tan -- to l'a -- mo -- re.
            }
          }
        >>
      >>
    }
    \layout {
      #(layout-set-staff-size 17)
    } 
    \midi { }
  }
}
