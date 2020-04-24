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
\paper { page-count = 1 }


beforenaturalturn = {\once \override TextScript #'avoid-slur = #'inside \once \override TextScript #'outside-staff-priority = ##f}
naturalturn = ^\markup{ \override #'(baseline-skip . 1) \center-column {\musicglyph #"scripts.turn" {\tiny \natural} }  }
naturalturnraised = ^\markup{ \raise #5 \override #'(baseline-skip . 1) \center-column {\musicglyph #"scripts.turn" {\tiny \natural} }  }

crescMark = \markup{\italic cresc.}
decrescMark = \markup{\italic decresc.}
imo = \markup{1\hspace #-0.75 \super{mo}}
rf = \markup{\dynamic rf}

\include "copyright_a4.ly"

\header {
  \include "header.ly"
  poet = \markup { \box \pad-markup #0.5 "Violino 1" }
}


global = {
  \key as \major
  \time 2/4
  \override TupletBracket.bracket-visibility = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #1
}


scoreAViolinI = \relative c'' {
  \global
  \tempo "Adagio" 8=63
  R2*8
  as4*1/2\p (s4*1/2\turn c8. b16)
  as4 r

  b4*1/2 ( \beforenaturalturn s4*1/2\naturalturn des8. c16)

  b4 r
  \slashedGrace es,8 c'8.. as32 \slashedGrace es8 es'8.. c32
  \slashedGrace f,8 f'4. es16 (des)
  c8 ([es des b])
  b4 (as8) r
  f''8.\ff ( \times 2/3 {es32 c a)} f8 r
  R2
  es'8. ( \times 2/3 {des?32 b g)} es8 r
  R2
  ces'8. (as32 es ces8) r16. es,32
  es4\fp (d16) e (f) a (
  b) cis (d) e (f) g (as f)
  d4\pp ~ d8*1/2 [ (s8*1/2\turn es16. f32)]
  f8 (es4 e8)
  f4\< ~ f8*1/3 [( \beforenaturalturn s8*2/3\naturalturn g16. as32)]
  as8\> (g) r4
  d,8\! [d d d]
  r8 es [es es]
  f [f f f]
  g8. [r32 g'] as8. [r32 as]
  b8. [r32 b] h8._\crescMark [r32 h]
  c8. [r32 c] d8. [r32 d]
  es4\f	r
  r8\p g,,? r as
  \times 2/3 {fis'16 ([g g,])} \times 2/3 {r (g' [g,])} \times 2/3 {g' ([as as,])} \times 2/3 {r (as' [as,])}
  \times 2/3 {a'16 ([b b,])} \times 2/3 {r_\crescMark (b' [b,])} \times 2/3 {b' ([h h,])} \times 2/3 {r (h' [h,])}
  \times 2/3 {h'16 ([c c,])} \times 2/3 {r (c' [c,])} \times 2/3 {cis' ([d d,])} \times 2/3 {r (d' [d,])}
  \times 2/3 {d'16\f ([es es,])} \times 2/3 {r (es' [es,]} \times 2/3 {es'\sf [ges, es'\sf]} \times 2/3 {a, [es'\sf a,])}
  b8 r r4
  R2*4
  <g,, g'>8\ff r r4
  R2*8
  as'4*1/2\p (s4*1/2\turn c8. b16)
  as4 r

  b4*1/2 ( \beforenaturalturn s4*1/2\naturalturn des8. c16)

  b4 r
  \slashedGrace es,8 c'8.. as32 \slashedGrace es8 es'8.. c32
  \slashedGrace f,8 f'4. ~ \times 2/3 { f16 (es des)}
  c8 ([es des b])
  b4 (as8) r
  f''8.\ff ( \times 2/3 {es32 c a)} f8 r
  R2
  es'8. ( \times 2/3 {des32 b g)} es8 r
  R2
  ces'8. (as32 fes) ces8 r16. fes,32
  fes4\fp (es8) r16. es32
  es4\fp (d8) r16. d32
  \autoBeamOff d4\sfp (des16) a' [(b) c] ( \autoBeamOn
  des16) fis (g) a (b) c (des c)

  g4\pp ~ g8*1/2 ( [s8*1/2\turn as!16. b32]
  b8 as4 a8)
  b4\< ~ b8*1/3 [ (\beforenaturalturn s8*2/3\naturalturnraised c16. des32]) des8\> (c16) r\! r4

  g,8 [g g g]
  r as [as as]
  b [b b b]
  c8. [r32 c] des8. [r32 des]
  es8._\crescMark [r32 es] e8. [r32 e]
  f8. [r32 f] g8. [r32 g]
  as4\f	r
  r8\p c,,? r des

  \times 2/3 {h'16\pp ([c c,])} \times 2/3 {r (c' [c,])} \times 2/3 {c' ([des des,])} \times 2/3 {r (des' [des,])}
  \times 2/3 {d'16_\crescMark ([es es,])} \times 2/3 {r (es' [es,])} \times 2/3 {es' ([e e,])} \times 2/3 {r (e' [e,])}
  \times 2/3 {e'16 ([f f,])} \times 2/3 {r (f' [f,])} \times 2/3 {fis' ([g g,])} \times 2/3 {r (g' [g,])}
  \times 2/3 {g'16\f ([as as,])} \times 2/3 {r (as' [as,])} \times 2/3 {ces' ([ces, ces']} \times 2/3 {as, [as' as,])}
  es'8 r r4
  R2*3

  as,4\p (c8. b16)
  as4 ~ ( as8. a16)
  b4*1/2 ( s4*1/2\turn des8. c16)
  b2
  es4 (des
  c b8 des16. b32)
  as4 ( a8 b
  h\< [c des d])
  es4\> ( des
  c\! b16 c des16. b32)
  << {\stemNeutral as16 [es'8 es es es16] c8} \\ {s8\< s8\> s8 s8 s8\!} >>
  r8 r4
  des4\pp des
  c8 r r4
  b4 b
  as8 r r c,
  des4 des
  c16_\decrescMark [es8 es es es16~ ]
  es16 [c8 c c c16~ ]
  c16 [as8 as as as16~ ]
  as8\pp r c r
  as2^\fermata \bar "|."





}

scoreAViolinIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreAViolinI



\score {
  <<

    \new StaffGroup <<
      \new GrandStaff <<
        \scoreAViolinIPart
      >>

    >>

  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
