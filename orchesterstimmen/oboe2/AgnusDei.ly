%{
  Gottlob Benedikt Bierey: Agnus Dei, based on Ludwig van Beethoven's Opus 10 No. 1

  This file belongs to this repository:
  https://github.com/fzalkow/bierey-beethoven-agnus-dei

  This file is licensed under a Creative Commons Attribution 4.0 International License.
  http://creativecommons.org/licenses/by/4.0/

  Engraving and editing: Frank Zalkow, 2019–2020

  Source: Austrian National Library, music collection, signature F24.St.Peter.F158
  http://digital.onb.ac.at/RepViewer/viewer.faces?doc=DTL_7300129&order=1&view=SINGLE
%}

\version "2.19.81"
\include "deutsch.ly"

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
  poet = \markup { \box \pad-markup #0.5 "Oboe 2" }
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
  as4 as_\crescMark as des\fp
  R2*2
  c,4\p (des)
  c8 c ([es as])

  es4 as

  g8 r r4

  es4 es
  f4. a16 (b)
  as!4 g
  b4 (as8) r
  es'4\ff	r4
  R2
  des4 r
  R2
  es4 r8 r16. es,32 es4\fp (d16)
  r16 r8

  R2*8
  r8 es r d
  r8 es r_\crescMark es
  r8 c r d
  r8\f es' r4
  R2*2 R2_\crescMark
  << { s4 s } \\ { \stemNeutral c4 as } >>
  \times 2/3 {r16\f es' [es]} \times 2/3 {es16 [es es]} es4

  es8 r r4
  es4 d
  es8

  r8 r4
  R2*2
  b8_\ff r8 r4
  R2*4
  as4_\crescMark as as des\sf
  R2*2

  c,4\p des
  c8 es ([as c])

  es,4 as


  g8 r g r
  as4 es
  f4. ~ \times 2/3 { f16 (a b) }
  as!4 (g)
  g4 (as8) r
  es'4\ff r
  R2
  des4 r
  R2
  ces4 (fes8..)
  fes,32 \noBeam fes4\fp (es8)
  r16.
  es32 es4\fp (d8)
  r16.
  f32
  f4\sfp (g16) r r8
  R2*8
  r8 c, r es
  r es r e
  r f r g
  r\f as r4
  R2*2 R2_\crescMark

  f4 g
  \times 2/3 {b16\rest\f ces [ces]} \times 2/3 {ces [ces ces]} ces4

  c!8 r r4
  R2*3

  es,2\p~
  es2
  es4 as8. as16
  g2
  es~
  es8 r e16 f8 f16~
  f16 es!4. es16~
  es2\<
  es2\>
  es8\! e f8. f16
  as8\< [(a\> b g)]
  as8\!

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
