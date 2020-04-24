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
  poet = \markup { \box \pad-markup #0.5 "Flauto 2" }
}


global = {
  \key as \major
  \time 2/4
  \override TupletBracket.bracket-visibility = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #1
}

scoreAFlute = \relative c'' {
  \global
  \tempo "Adagio" 8=63
  R2*5
  r4 as'\fp
  R2*2

  as4*1/2\p (s4*1/2\turn c8. b16)
  as4 r

  b4*1/8 ( \beforenaturalturn s4*7/8\naturalturn des8. c16)

  R2
  es,4 es4
  f4. a16 (b)
  as4 (g)
  des4 (c8) r
  es'4\ff r4
  R2
  des4 r
  R2
  as4 r
  R2*8
  R2
  g,8. [r32 g32] as8. [r32 as32]
  b8. [r32 b32] h8._\crescMark [r32 h32]
  c8. [r32 c32] d8. [r32 d32]
  es8._\f r16 r4
  R2*3
  r4 f4
  \override TupletBracket.bracket-visibility = ##f \times 2/3 {r16\f a [a]} \times 2/3 {a16 [a a]} a4 b8
  r8 r4
  R2*4
  es,8\ff r r4

  R2*5
  r4 as4\sf
  R2*2

  as4*1/2\p (s4*1/2\turn c8. b16)
  as4 r4
  b4*1/8 (\beforenaturalturn s4*7/8\naturalturn des8. c16)

  %<< {<c,, as'>4*1/2\p (s4*1/2\turn c'8. b16)} \\ {c,4 des} >>
  %\once \autoBeamOff <c as'>8 <es as> [(<as c> <c es>)]
  %<< {<es, b'>4*1/2 (\beforenaturalturn s4*1/2\naturalturn des'8. c16) } \\ { es,4 as } >>
  b4 r
  es,4 es
  f4. ~ \times 2/3 { f16 (a b) }
  as!4 (g)
  <des>4 (<c>8) r
  es'4\ff r
  R2
  des4 r
  R2
  ces4 ( <as>8..) fes32
  fes4\fp (es8) r16. es32
  es4\fp (d8) r16. d32
  d4\sfp (des16) r r8
  R2*8

  c8. [r32 c32] des8. [r32 des32]
  es8._\crescMark [r32 es32] e8. [r32 e32]
  \ottava #1 f8. [r32 f32] g8. [r32 g32]
  as4\f \ottava #0 r4


  R2*3
  r4 r8 g8
  \times 2/3 {r16\f as16 [as] } \times 2/3 {as [as as] } as4
  as8 r r4
  as4_\rf g as8
  r8 r4
  R2
  <<
    {
      s4\p s
      s2
      s2
      s2
      s2
      s2
      s2
      s8\< s8 s4
      s4\> s
      \ottava #1 s4\! s4
      s2
      s8 \ottava #0
    }
    \\
    {
      \stemNeutral
      c,16 c8 c16 es16 es8 es16~
      es16 [es8 es es es16 ~]
      es16 [es8 es es es16 ~]
      es16 [es8 es es es16 ~]
      es16 [es8 es es es16 ~]
      es16 [es8 e f f16 ~]
      f16 [es!8 es es es16 ~]
      es16 [es8 es es es16 ~]
      es16 [es8 es es es16 (]
      \ottava #1 es8) e f8. f16
      as8\< [(a\> b g)]
      as8\! \ottava #0

    }
  >>
  r8 r4
  b,4^\markup{\italic loco}\pp b4
  as8 r r4
  es2
  es8 r r4
  R2*5
  R2\fermataMarkup  \bar "|."

}


scoreAFlutePart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "flute"
  \consists "Merge_rests_engraver"
} \scoreAFlute


\score {
  <<
    \new StaffGroup <<
      \scoreAFlutePart
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
