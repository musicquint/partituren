\version "2.20.0"
\language "english"

\header {
  title = "Fuge in f"
  instrument = "Organ"
  composer = "Andreas Goß"
}

global = {
  \key f \minor
  \time 4/4
}

rightOne = \relative c'' {
  \global
  \skip 1
  \skip 1
  f2 c4. d8 |
  ef8 c f4. d8 g f |
  e4 c~ c8 g af f |
  df'2 ~ df8 bf c g |
  af c f4~ f8 af g f |
  ef2~ ef8 c f ef| 
  df2~ df8 bf ef df |
  c4 f2 e4 |
  f4 r ef4. d8 | 
  
  g4 c,2 b4 |
  c8 ef, f g af2~ |
  af8 bf f af g2~ |
  g8 c b c d2~ |
  d8 f ef d ef2~|
  ef8 ef d c df2~ |
  df8 f ef df c4. df8| 
  bf4. c8 af bf af g |
  af4 g af r |
}

rightTwo = \relative c'' {
  \global
  \stemUp
  c2 f,4. g8 |
  af f bf4. g8 c bf |
  \stemDown
  af g af bf c g ef g |
  c,4. f8 af4. b,8 |
  c e f g af2~ |
  af8 af g f e2 |
  f8 af bf c df2~ |
  df8 g, af bf c2~ |
  c8 f, bf af g4 ef |
  af2 g |
  \skip 1 |
  g4 af f2 | 
  g8 e4.~ ef8 f ef f | 
  d2~ d8 g f ef |
  f2~ f8 f g af|
  g2 ~ g8 c b c |
  a4 af~ af8  af bf f |
  g2~ g8 e f4 ~ |
  f8 d e4 f4. ef8 |
  df2 c4 r |
  
}

leftOne = \relative c' {
  \global
  R1 |
  R1 |
  R1 |
  R1 |
  \stemDown c2 f,4. g8 |
  af8 f bf4. g8 c bf|
  af f  g af bf2~ |
  bf8 ef, f g af2~ |
  af4 g8 f ef4 g |
  r8 af bf c df g, c bf |
  \stemUp af g af bf c g c b |
  c2 d |
  ef8 c4.~ c8 af g af |
  bf2~ bf8 bf af g |
  af1 |
  g |
  f
  
  
}

leftTwo = \relative c' {
  \global
   R1
   R1
   R1
   R1
   \skip1
   \skip1
   \skip1
   \skip1
   \skip1
   \skip1
   f,2 c4. d8 |
   ef c f4. d8 g f|
   ef8 c d ef f2~ |
   f8 bf, c d ef2~ |
   r4 af, f' d |
   b g c ef | 
   f f, bf2~ |
   bf4 ef, af df'8 bf |
   g4 c8 c, f df d ef~ |
   ef df ef ef, af4 r
   
}



\score {
  <<
    \new PianoStaff \with {
      instrumentName = "Organ"
    } <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } << \rightOne \\ \rightTwo >>
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass << \leftOne \\ \leftTwo >> }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
