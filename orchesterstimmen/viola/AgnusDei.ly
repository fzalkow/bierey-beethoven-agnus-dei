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
  poet = \markup { \box \pad-markup #0.5 "Viola" }
}


global = {
  \key as \major
  \time 2/4
  \override TupletBracket.bracket-visibility = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #1
}



scoreAViola = \relative c' {
  \global
  \tempo "Adagio" 8=63
  R2*8
  es,2\p ~
  es4 r
  es'2~
  es8 r8 r4
  as,2
  r16 f (g as a b c des)
  es (d des c b c des g,)
  g4 (as8) r
  <es' c'>4\ff r
  R2
  <es b'>4 r
  R2
  ces'8. (as32 es ces8) r16. es,32
  f4.\fp r8
  R2*3
  as8\< as as (g16. f32)
  fis8\> [(g) g\staccato g\staccato\!]
  as8 [as as as]
  r8 g [g g]
  b8 [b b b]
  r8 <g b> r <b d>
  r8 <b es> r8_\crescMark <h es>
  r8 <c es> r <d f>
  r8\f <c ges'> r4
  r8\p b r b

  \times 2/3 {r16 (r es)} \times 2/3 {b ([g es])} \times 2/3 {r16 (r f')} \times 2/3 {d ([b f])}
  \times 2/3 {r16 (r g')} \times 2/3 {es_\crescMark ([b g])} \times 2/3 {r16 (r g')} \times 2/3 {es ([h g])}
  \times 2/3 {r16 (r as')} \times 2/3 {es ([c as])} \times 2/3 {r16 (r as')} \times 2/3 {f ([d b])}
  \times 2/3 {r16\f (r a')} \times 2/3 {ges ([es ces])} <es ges?>8 <es ges>
  <es g!>8 r r4
  R2*4
  b8\ff	r r4
  R2*8

  es,2\p ~
  es4 r
  es'2~
  es8 r8 r4
  as,2
  r8 \times 2/3 {f16 ([ges g]} \times 2/3 {as [a b]} \times 2/3 {h [c des])}
  \times 2/3 {r16 es ([d])} \times 2/3 {r16 des ([c])} \times 2/3 {r16 b ([c])} \times 2/3 {r16 des ([g,])}
  g4 (as8) r
  <es' c'>4\ff r
  R2
  <es b'>4\ff r
  R2
  ces'8. (as32 fes) ces8 r16. fes,32
  ges4.\fp r16. f!32
  f4.\fp r16. f32
  f4\sfp (g16) r r8
  R2*3
  des'8\< des des (c16. b32)
  h8\> [c c\staccato c\staccato\!]
  des8 [des des des]
  r8 c [c c]
  es8 [es es es]
  r8 c r es
  r8_\crescMark es r e
  r8 f r e
  r8\f f r4
  r8\p es, r es
  \times 2/3 {r16 (r as')} \times 2/3 {es ([c as])} \times 2/3 {r16 (r b')} \times 2/3 {g ([es b])}
  \times 2/3 {r16_\crescMark (r c')} \times 2/3 {as ([es c])} \times 2/3 {r16 (r c')} \times 2/3 {as ([e c])}
  \times 2/3 {r16 (r des')} \times 2/3 {as ([f des])} \times 2/3 {r16 (r des')} \times 2/3 {b ([g es])}
  \times 2/3 {r16\f (r d')} \times 2/3 {ces ([as fes])} <as ces?>8 <as ces>
  <as c!>8 r r4
  R2*3
  c,16\p c8 c16 des16 des8 des16
  c16 [c8 c8 c8 c16]
  des4 (as'8. as16)
  g4. es,8 ~
  es8 as4 g8 ~
  g8 as4 b16 des
  r8 c4 g8~
  g8\< ([as b h])
  c16\> [as8 as g g16 ~]
  g16\! as8 as16~ as16 ([a b des ~])
  des8\< ([c\> des <b des>\!])
  <as c>8 r  r4
  b'4 b
  as8 r r4
  des,4 des
  c8 r8 r as
  b4 b
  as8\staccato_\decrescMark [as (es c)]
  as'8\staccato [as (es c)]
  es16 [<c es>8 <c es> <c es> <c es>16 ~]
  <c es>8\pp r es8 r
  <c es>2\fermata \bar "|."




}


scoreAViolaPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "viola"
} { \clef alto \scoreAViola }


\score {
  <<

    \new StaffGroup <<
      \scoreAViolaPart
    >>

  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
