\version "2.20.0"

\language "english"

\header {
  title = "Ave Maria"
  composer = "Andreas Goß"
}

global = {
  \key f \major
  \time 2/4
  \partial 8
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.
  a8 | 				% Partial m0
  c8 a[ g] f | 			%m1
  bf8. \(c32 bf a8\) r16 f | 	%m2
  d'4~ d16 f e d | 		%m3
  c8\( [cs d a]\) |		%m4
  c!4~ c16 bf a bf |		%m5
  a4 r |				%m6
  f' a,8 b|			%m7
  c16 b a g c8 f,|		%m8
  e4 d8. e16|			%m9
  f4 r8 fs|			%m10
  g a r a|			%m11
  g8. [f16 e8] r |		%m12
  R1 |				%m13/14
  g4. a8 |
  a\( [bf\) bf] r |
  d4 d8 c |
  b [f' ef d]|
  ef4. ef8|
  ef [cs d g] |
  bf,4 d8 c|
  bf4 r8 bf|
  bf [gs a cs]|
  d4 f8. e16|
  d4 r8 d|
  c4 r8 c |

}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  A- ve, a- ve Ma- ri -__ a,
  a- ve Ma- ri- a,  gra - ti- a ple -_  na
}

altoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  f8 | 				% partial m0
  a f [e] f |			%m1
  d\( [e f\)] c'~ |		%m2
  c bf~ bf16 d c bf |		%m3
  a8 a4 f8 |			%m4
  g2 |				%m5
  a4 r|				%m6
  f f8 f|			%m7
  f4 e8 d |			%m8
  c4 b |				%m9
  c r8 ds|			%m10
  e f r f |
  e [d c] r |
  g'4. a8 |
  a\( [bf\) bf] bf |
  bf4. c8 |
  c\( [d\) d] r|
  f,2 |
  f4 r8 g|
  ef'[ d c bf] |
  a4 bf8 g |
  f4. ef8 |

}

verseAltoVoice = \lyricmode {
  % Lyrics follow here.
  A- ve, a- ve Ma- ri - a,
  a- ve Ma- ri- a,  gra- ti -- a ple- na
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  r8 |
  f4 c8 a |
  bf g a16 f'\( [e ef] |
  d8\) f4 f8~ |
  f8 [e f ef] |
  d4 e |
  f r |
  d d8 d|
  d4 c8 a |
  g2 |
  f4 r8 c'|
  c4 r8 c|
  c \([b c]\) r|
  e4. fs8 |
  fs\( [g\) g] d |
  d4. ef8|
  ef\( [d\) d] r|
  bf4 bf8 af |
  g4 r8 b|
  c4. c8|
  c8 r4 df8|
  d!4. c8|
  
}

verseTenorVoice = \lyricmode {
  % Lyrics follow here.

}

bassVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  r8 |
  f,4 c'8 d |
  g, c f,16 f\( [g a] |
  bf2\) |
  f8 a' \([d c]\)|
  g4 c|
  f,8 f4 e8 |
  d4 r4 |
  g, a8 d |
  e [c g' g,] |
  a4 r8  a |
  g f r f|
  g4 c8 r|
  c4. c8|
  c [g g] g'|
  g4. f8 |
  f [bf, bf] r|
  R2 |
  g'4 g8 f |
  ef[ bf' a g] |
  f4. e!8|
  f2 |
  g4 r|
  
  
  
  
}

verseBassVoice = \lyricmode {
  % Lyrics follow here.

}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "choir aahs"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

\score {
  \new ChoirStaff<<
    <<
    \sopranoVoicePart
    \altoVoicePart
    \tenorVoicePart
    \bassVoicePart
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
