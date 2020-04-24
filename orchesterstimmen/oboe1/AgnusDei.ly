\version "2.19.81"
\include "deutsch.ly"
% http://digital.onb.ac.at/RepViewer/viewer.faces?doc=DTL_7300129&order=1&view=SINGLE

#(set-default-paper-size "a4")


beforenaturalturn = {\once \override TextScript #'avoid-slur = #'inside \once \override TextScript #'outside-staff-priority = ##f}
naturalturn = ^\markup{ \override #'(baseline-skip . 1) \center-column {\musicglyph #"scripts.turn" {\tiny \natural} }  }
crescMark = \markup{\italic cresc.}
decrescMark = \markup{\italic decresc.}
imo = \markup{1\hspace #-0.75 \super{mo}}
rf = \markup{\dynamic rf}

\include "copyright_a4.ly"

\header {
  \include "header.ly"
  poet = \markup { \box \pad-markup #0.5 "Oboe 1" }
}


global = {
  \key as \major
  \time 2/4
  \override TupletBracket.bracket-visibility = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #1
}


scoreAOboe = \relative c'' {
  \global
  \tempo "Adagio" 8=63
  R2*4
  c4 es_\crescMark f as\fp
  R2*2
  as,4*1/2\p (s4*1/2\turn c8. b16)
  as8 es ([as c])

  b4*1/2 ( \beforenaturalturn s4*1/2\naturalturn des8. c16)

  b8 r r4

  c8.. as32 es'8.. c32
  f4. es16 (des)
  c8 ([es des b])
  des4 (c8) r
  c'4\ff r4
  R2
  b4 r
  R2
  as4 r8 r16. es,32 es4\fp (d16) r16 r8

  R2*8
  r8 g r d
  r8 es r_\crescMark es
  r8 es r f
  r8\f ges' r4
  R2*2
  r4 es4_\crescMark ~ es (d)
  \times 2/3 {r16\f ges [ges]} \times 2/3 {ges16 [ges ges]} ges4

  b4~ \times 2/3 {b16 [(a c)]} \times 2/3 {b16\staccato [(as\staccato g\staccato)]}
  f8.. f32\trill \grace{e32 f} b8.. b32
  es,8

  r8 r4
  R2*2
  des!8_\ff r8 r4
  R2*4
  c4_\crescMark es f as\sf
  R2*2

  as,4*1/2\p (s4*1/2\turn c8. b16)
  as8 as ([c es])

  b4*1/2 (\beforenaturalturn s4*1/2\naturalturn des8. c16)


  b8 r es r
  c8.. as32 es'8.. c32
  f4. ~ \times 2/3 { f16 (es des) }
  c8 ([es des b])
  des4 (c8) r
  c'4\ff r
  R2
  b4 r
  R2
  ces4~ ces8..\noBeam
  fes,,32 fes4\fp (es8)
  r16.
  es32 es4\fp (d8)
  r16.
  as'32
  as4\sfp (b16) r r8
  R2*8
  r8 es, r g
  r as r as
  r as r b
  r\f ces r4
  R2*2

  \override TupletBracket.bracket-visibility = ##f
  r4_\crescMark as4 ~
  (as4 des)
  \times 2/3 {b16\rest\f d [d]} \times 2/3 {d [d d]} d4


  es8 r r4
  R2*3
  <<
    {
      \stemNeutral as,4\p c8. b16
      as4 ~ as8. a16
      b4*1/2 s4*1/2\turn des8. c16
      b2
      es4 (des
      c b8 des16. b32)
      as4 a8 b
      h\< [c des d]
      es4\> des
      c\! b16 c des16. b32
      as16 [es'8 es es es16]
      c8
    }
    \\
    {
      s2 s2 s2 s2 s2 s2 s2 s2 s2 s2
      s8\< s\> s s
      s8\!    }
  >>
  r r4
  R2*9
  R2\fermataMarkup \bar "|."



}


scoreAOboePart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "oboe"
} \scoreAOboe


\score {
  <<
    \new StaffGroup <<
      \scoreAOboePart >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
