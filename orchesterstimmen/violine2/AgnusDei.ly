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
  poet = \markup { \box \pad-markup #0.5 "Violino 2" }
}


global = {
  \key as \major
  \time 2/4
  \override TupletBracket.bracket-visibility = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #1
}


scoreAViolinII = \relative c'' {
  \global
  
  \tempo "Adagio" 8=63
  R2*8
  c,4\p (des)
  c r
  es (as)
  g4 r
  es es
  f4. a16 (b)
  as!4 g
  des8 (c32 des es des c8) r
  <es' c'>4\ff r
  R2
  <des? b'>4 r
  R2
  ces8. (as32 es ces8) r16. as32
  as4.\fp r8
  R2
  b8\pp [b b b]
  b [b b b]
  b\< [b b b]
  b\> [b b b]
  b\! [b b b]
  r8 b b b
  as as as as
  g8. [r32 g'] as8. [r32 as]
  b8. [r32 b] h8._\crescMark [r32 h]
  c8. [r32 c] d8. [r32 d]
  es4\f r
  r8\p es, r d
  \times 2/3 {fis'16 ([g g,])} \times 2/3 {r (g' [g,])} \times 2/3 {g' ([as as,])} \times 2/3 {r (as' [as,])}
  \times 2/3 {a'16 ([b b,])} \times 2/3 {r_\crescMark (b' [b,])} \times 2/3 {b' ([h h,])} \times 2/3 {r (h' [h,])}
  \times 2/3 {h'16 ([c c,])} \times 2/3 {r (c' [c,])} \times 2/3 {cis' ([d d,])} \times 2/3 {r (d' [d,])}
  \times 2/3 {d'16\f ([es es,])} \times 2/3 {r (es [es,]} \times 2/3 {es'\sf [ges, es'\sf]} \times 2/3 {a, [es'\sf a,])}
  b8 r r4
  R2*4
  <des,? es>8\ff r r4
  R2*8
  c4\p (des)
  c r
  es (as)
  g r
  es es
  f4. ~ \times 2/3 {f16 (a b)}
  as!4 (g)
  des8 ~ des32 c64 (des es des c des) c8 r
  <es' c'>4\ff r
  R2
  <des? b'>4 r
  R2
  ces8. (as32 fes) ces8 r16. as32
  heses4.\fp r16. as32
  as4.\fp r16.as 32
  as4\sfp (b16) r r8
  R2
  es8\pp [es es es]
  es [es es es]
  es\< [es es es]
  es\> [es es es]
  es\! [es es es]
  r8 es [es es]
  des [des des des]
  c des r g
  r_\crescMark as r as
  r as r <g b>
  r8\f ces r4
  r8\p as, r g
  \times 2/3 {h'16_\markup { \bold\italic{(} \dynamic {pp} \bold\italic{)} } ([c c,])} \times 2/3 {r (c' [c,])} \times 2/3 {c' ([des des,])} \times 2/3 {r (des' [des,])}
  \times 2/3 {d'16_\crescMark ([es es,])} \times 2/3 {r (es' [es,])} \times 2/3 {es' ([e e,])} \times 2/3 {r (e' [e,])}
  \times 2/3 {e'16 ([f f,])} \times 2/3 {r (f' [f,])} \times 2/3 {fis' ([g g,])} \times 2/3 {r (g' [g,])}
  \times 2/3 {g'16\f ([as as,])} \times 2/3 {r (as' [as,])} \times 2/3 {ces' ([ces, ces']} \times 2/3 {as, [as' as,])}
  es8 r r4
  R2*3
  es16\p [es8 es es es16] ~
  es16 [es8 es es es16] ~
  es16 [es8 es es es16] ~
  es16 [es8 es es es16] ~
  es16 [es8 es es es16] ~
  es16 [es8 e f f16] ~
  f16 [es!8 es es es16] ~
  es16\< [es8 es es es16] ~
  es16\> [es8 es es es16] ~
  es8\! e f8. f16
  as8\< ([a\> b g])
  as16\pp [es8 es es es16] ~
  es16 [es8 es es es16] ~
  es16 [es8 es es es16] ~
  es16 [es8 es es es16] ~
  es16 [es8 es es es16] ~
  es16 [es8 es es es16] ~
  es16_\decrescMark [c8 c c c16] ~
  c16 [as8 as as as16] ~
  as16 [as8 as as as16] ~
  as8\pp r as r
  as2\fermata \bar "|."


}

scoreAViolinIIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreAViolinII


\score {
  <<

    \new StaffGroup <<
      \new GrandStaff <<
        \scoreAViolinIIPart
      >>
    >>

  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
