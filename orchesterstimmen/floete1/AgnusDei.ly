%{
  Gottlob Benedikt Bierey: Agnus Dei, based on Ludwig van Beethoven's Opus 10 No. 1

  This file belongs to this repository:
  https://github.com/fzalkow/bierey-beethoven-agnus-dei

  This file is licensed under a Creative Commons Attribution 4.0 International License.
  http://creativecommons.org/licenses/by/4.0/

  Engraving and editing: Frank Zalkow, 2019–2020

  Source: Österreichische Nationalbibliothek, Musiksammlung, Signatur F24.St.Peter.F158
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
  poet = \markup { \box \pad-markup #0.5 "Flauto 1" }
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
  r4 des'\fp
  R2*2

  as4*1/2\p (s4*1/2\turn c8. b16)
  as4 r

  b4*1/8 ( \beforenaturalturn s4*7/8\naturalturn des8. c16)

  r16^\imo es (d es d es f des)
  c8.. as32 es'8.. c32
  f4. es16 (des)
  c8 [es des b]
  b4 (as8) r
  f'4\ff r4
  R2
  es4 r
  R2
  ces4 r
  R2*8
  r32^\imo f,, ([as b] d f as d) f8. \times 4/6 {f64 (es des c b as)}
  g8. [r32 g32] as8. [r32 as32]
  b8. [r32 b32] h8._\crescMark [r32 h32]
  c8. [r32 c32] d8. [r32 d32]
  es8.*1/2_\markup{\dynamic f \italic Solo} [ s8.*1/2^\tweak Y-offset #5 ^\turn r32 es32] (f16\sf\> es) d (c)
  b16\! (a c b as g f b)
  es,8 r r4
  R2
  r4 r8 d'8_\crescMark
  \override TupletBracket.bracket-visibility = ##f \times 2/3 {r16 es [es]} \times 2/3 {es16 [es es]} \times 2/3 {es16 [ges, es']} \times 2/3 {a,!16 [es' a,]} b8
  r8 r4
  R2*4
  g8\ff r r4

  as4*1/2\p^\imo (s4*1/2\turn c8. b16)
  as4 ~ as16 (g as a)
  b4*1/2 (s4*1/2\turn des8. c16)
  b4 ~ \times 2/3 {b16 [f' (es)]} \times 2/3 {des\staccato ([c\staccato h\staccato])}
  c8 r r4
  r4 des4
  R2*2

  as4*1/2\p (s4*1/2\turn c8. b16)
  as4 r4
  b4*1/8 (\beforenaturalturn s4*7/8\naturalturn des8. c16)

  %<< {<c,, as'>4*1/2\p (s4*1/2\turn c'8. b16)} \\ {c,4 des} >>
  %\once \autoBeamOff <c as'>8 <es as> [(<as c> <c es>)]
  %<< {<es, b'>4*1/2 (\beforenaturalturn s4*1/2\naturalturn des'8. c16) } \\ { es,4 as } >>
  b4 r
  c8.. as32 es'8.. c32
  f4. ~ \times 2/3 { f16 (es des) }
  c8 ([es des b])
  b4 (as8) r
  f'4\ff r
  R2
  es4 r
  R2
  ces4 ( fes8..) fes,32
  fes4\fp (es8) r16. es32
  es4\fp (d8) r16. d32
  d4\sfp (des16) r r8
  R2*5
  r16^\imo g,32 ([b des] es [g b des]) f8. \times 2/7 {f64 (es des c b as g)}
  b16. ([as32] g32. [as64 b32. as64]) as,8 r
  R2

  c'8. [r32 c32] des8. [r32 des32]
  es8._\crescMark [r32 es32] e8. [r32 e32]
  \ottava #1 f8. [r32 f32] g8. [r32 g32]
  as4\f \ottava #0 r4


  R2*3
  r4 b,4
  \times 2/3 {r16\f ces16 [ces] } \times 2/3 {ces [ces ces] } ces4
  c!8 r \times 2/3 {r16^\imo d ([f]) }  \times 2/3 {es16\staccato ([des\staccato c?\staccato]) }
  b8.._\rf b32\trill \grace {a32 b} es8.. es32 as,8
  r8 r4
  R2
  <<
    {
      \stemNeutral
      as4\p (c8. b16)
      as4 ~ as8. a16
      b4*1/2 (s4*1/2^\tweak Y-offset #4 ^\turn des8. c16)
      b2
      es4 (des
      c b8 des16. b32)
      as4 (a8 b
      h\< [c des d])
      es4\> des
      \ottava #1 c4\! b16 c des16. b32
      as16 [es'8 es es es16]
      c8 \ottava #0
    }
    \\
    {
      s2 s2 s2 s2 s2 s2 s2 s2 s2 s2
      s8\< s\> s s
      s8\! \ottava #0

    }
  >>
  r8 r4
  des,4^\markup{\italic loco}\pp des4
  c8 r r4
  b4 b
  as8 r r4
  R2*5
  R2\fermataMarkup \bar "|."

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
