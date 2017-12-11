\version "2.16"
\include "deutsch.ly"
\header {
  title = "Glorious Kingdom"
  composer = "Spiritual"
  arranger = "Arr.: W. Kelber"
  %poet = "???"
  subsubtitle = "v0.2beta"
}

szopran = \relative c' {
  \tempo 4 = 120
  \repeat volta 2 {
  g'4 g8 g ~ g g a g | r8 fis4 a8 d,2 | %Virgin Mary had a baby boy
  c'4 c8 c ~ c c c c | r8 h4 h8 g2 |
  d'4 d8 f ~ f f f f | r8 e4 e8 c4 c8 c |
  a4 a8 a a4 a | } \alternative { { r4 g g r8 s8 | } { r4 g g r4 | } } %say that his name was Jesus.
  
  r4 g8 g ~ g g4 g8 | g4. h8 ~ h2 | %He came from the...
  r4 h8 h ~ h h4 g8 | h8 h h( g) a4 g |
  r4 g8 g ~ g g4 g8 | g4. h8 ~ h2 |
  r4 h8 h ~ h h4 g8 | h8 h h( g) a4 g |
  
  r4 e'2. | d4. h8 h4 g4 | %Oh, yes, believe us.
  r4 e'2. | d4. h8 h4 g4 |
  r4 e'2. | d4. h8 h4 g4 |
  r4 h8 h ~ h h4 g8 | h8 h h( g) a4 g ~ | g2. r8 s8 |
}

alt = \relative c' {
  \repeat volta 2 {
  d4 d8 d ~ d d d d | r8 d4 fis8 d2 | %Virgin Mary had a baby boy
  fis4 fis8 g ~ g g a a | r8 g4 g8 d2 |
  g4 g8 h ~ h h h h | r8 g4 g8 g4 a8 g |
  fis4 fis8 fis fis4 fis | } \alternative { { r4 d d r8 s8 } { r4 d d r4 } }
  
  r4 d8 d ~ d d4 d8 | d4. g8 ~ g2 | %He came from the...
  r4 g8 g ~ g g4 d8 | g8 g g( d) fis4 d |
  r4 d8 d ~ d d4 d8 | e4. g8 ~ g2 |
  r4 g8 g ~ g g4 d8 | g8 g g( d) fis4 d |
  
  r4 g2. | g4. g8 g4 d4 | %Oh, yes, believe us.
  r4 g2. | g4. g8 g4 d4 |
  r4 <g b>2. | <g h>4. g8 g4 d4 |
  r4 g8 g ~ g g4 d8 | g8 g g( d) fis4 d ~ | d2. r8 s8 |
}

tenor = \relative c' {
  \repeat volta 2 {
  h4 h8 h ~ h h h h | r8 c4 c8 c2 | %Virgin Mary had a baby boy
  d4 d8 d ~ d d d d | r8 d4 d8 h2 |
  h4 h8 d ~ d d d d | r8 c4 c8 e4 e8 e |
  c4 c8 c c4 c | } \alternative { { r4 h h r8 s8 | } { r4 h h r4 | } }
  
  r4 h8 h ~ h h4 h8 | h4. d8 ~ d2 | %He came from the...
  r4 d8 d ~ d d4 h8 | d8 d d h c4 h |
  r4 h8 h ~ h h4 h8 | c4. d8 ~ d2 |
  r4 d8 d ~ d c4 h8 | c8 c c4 c4 h |
  
  r4 c2. | h4. d8 d4 h4 | %Oh, yes, believe us.
  r4 c2. | h4. d8 d4 h4 |
  r4 c2. | h4. d8 d4 h4 |
  r4 d8 d ~ d d4 h8 | d8 d d h c4 h ~ | h2. r8 s8 |
}

basszus = \relative c {
  \repeat volta 2 {
  g'4 g8 g ~ g g d d | r8 a'4 d,8 d2 | %Virgin Mary had a baby boy
  d4 d8 e ~ e e fis fis | r8 g4 <g g,>8 <g g,>2 |
  g4 g8 g ~ g g g g | r8 c,4 h8 a4 c8 c |
  d4 d8 d d4 d | } \alternative { { r4 g4 g r8 s8 | } { r4 g4 g8 \new Voice = basszusA { d8 d4 | } } } %say that his name was Jesus.
  
  \new Voice = basszusB {
  \set melismaBusyProperties = #'()
  g,1 ~ | g2 r8 d'8 d4 | %(He came) down.
  g,1 ~ | g2 r8 d'8 d4 |
  g,1 ~ | g2 r8 d'8 d4 |
  g,1 ~ | g2 r2 |
  \unset melismaBusyProperties
  }
  
  r4 c2. | g'4. g8 g4 g | %Oh, yes, believe us.
  r4 c,2. | g'4. g8 g4 g |
  r4 c,2. | g'4. g8 g4 g |
  r4 g8 g ~ g g4 g8 | g8 g g4 d g, ~ | g2. r8 s8 |
}

szoveg = \lyricmode {
  Vir -- gin Ma -- ry had a ba -- by boy,
  Vir -- gin Ma -- ry had a ba -- by boy,
  Vir -- gin Ma -- ry had a ba -- by boy,
  and they say that his name was Je -- sus.
  
  Je -- sus.
  
  He came from the Glo -- ry,
  He came from the Glo -- ri -- ous King -- dom.
  He came from the Glo -- ry,
  He came from the Glo -- ri -- ous King -- dom.
  
  Oh, yes, be -- lieve us.
  Oh, yes, be -- lieve us.
  Oh, yes, be -- lieve us.
  He came from the Glo -- ri -- ous King -- dom!
}
szovegBasszusA = \lyricmode {
  He came
}
szovegBasszusB = \lyricmode {
  down,
  He came down,
  He came down,
  He came down,
}

\score {
    <<
      %\new Lyrics = szopranSzoveg
      \new Staff  {     
         \set Staff.instrumentName = "SA"
         \set Staff.shortInstrumentName = "SA"
         \key g \major
         << \voiceOne \szopran \\ \new Voice = alt { \voiceTwo \alt } >>
         \bar "|."
      }

      \new Lyrics \lyricsto alt { \szoveg }
      \new Staff {     
         \set Staff.instrumentName = \markup {"TB"}
         \set Staff.shortInstrumentName = "TB"
         \key g \major
         \clef bass
         << \voiceOne \tenor \\ \new Voice { \voiceTwo \basszus } >>
         
      }
      \new Lyrics = basszus \lyricsto basszusA { \szovegBasszusA }
      \context Lyrics = basszus \lyricsto basszusB { \szovegBasszusB }
   >>
   \layout { 
      %\context {
      %   \Voice
      %    \consists "Ambitus_engraver"
      %}
      %indent = 1.2\cm
      %short-indent = 0.3\cm
   }
   \midi { }
}
