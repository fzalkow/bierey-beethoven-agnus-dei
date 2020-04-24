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
  poet = \markup { \box \pad-markup #0.5 "Basso" }
}


global = {
  \key as \major
  \time 2/4
  \override TupletBracket.bracket-visibility = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #1
}


scoreAContrabass = \relative c {
  \global
  \tempo "Adagio" 8=63
  R2*8

  as4\p (g)
  as r
  g' (as)
  es4 r
  as c,
  des2
  es4 es
  as,4. r8
  a8.\ff ( \times 2/3 {c32 es f)} a8 r
  R2
  g,8. ( \times 2/3 {b32 des? es)} g8 r
  R2
  ces8. (as32 es ces8) r16. ces32
  b4.\fp r8
  R2*5
  as'8\pp [as as as]
  r g [g g]
  d [d d d]
  r es r f
  r g r_\crescMark g
  r as r as
  r\f a	 r4
  r8\p b r b
  r es, r f
  r g_\crescMark r g
  r as r b
  r8\f	 ces [ces, ces]
  R2*5
  es8\ff r r4
  R2*8
  as,4\p (g)
  as r
  g' (as)
  es r
  as, c
  des2
  es4 es
  as,4 ~ as8 r
  a8.\ff ( \times 2/3 {c32 es f)} a8 r
  R2
  g,8. ( \times 2/3 {b32 des es)} g8 r
  R2
  ces8. (as32 es) ces8 r16. ces32
  ces4. r16. ces32
  ces4\fp (b8) r16. b32
  b4\sfp (es8) r
  R2*7
  g8\pp [g g g]
  r as r b
  r_\crescMark c r c
  r des r des
  r\f d r4
  es,8\p r es r
  r as, r b
  r8_\crescMark c r c
  r des r es
  r8\f fes [fes fes]
  es8 r8 r4
  R2*3
  as8 ([es g es]
  as [es c as])
  g ([es' as, c]
  es [f es des])
  c4 (b
  as des)
  es es
  as,\< (b8 [h])
  c4\> (b)
  as\! (des)
  << {\stemNeutral es4 es4} \\ { s8\< s\> s s\! } >>
  as,8 ([c es as]
  g [f es g)]
  as ([es c as']
  g [f es g,)]
  as ([es' c as]
  g [f g es')]
  as,\staccato_\decrescMark [as' (es c)]
  as\staccato [as' (es c)]
  as\staccato [as' (es c)]
  as8 r as r
  as2\fermata \bar "|."

}


scoreAContrabassPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "contrabass"
} { \clef bass \scoreAContrabass }


\score {
  <<

    \new StaffGroup <<
      \scoreAContrabassPart
    >>

  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
