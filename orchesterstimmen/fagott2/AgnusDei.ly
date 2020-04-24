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
  poet = \markup { \box \pad-markup #0.5 "Fagotto 2" }
}


global = {
  \key as \major
  \time 2/4
  \override TupletBracket.bracket-visibility = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #1
}


scoreABassoon = \relative c {
  \global
  \tempo "Adagio" 8=63

  as4\p (g
  as4.) r8
  g'4 (as)
  es4. r8
  as4 c,4_\crescMark
  des4 f\fp ~
  f g8 as
  es4 es8 r8
  as,4 (g)
  as16 (es' c as' es c' as es')
  g,4 (as)
  es4 r
  r16 as16 (c es) r c, (es as)

  des,2
  es4 es
  as,4.

  r8
  a'4\ff r8 r16. a,32\p
  b4. r8
  g'4\ff r8 r16. g,32\p
  as4. r8
  ces4\ff r4
  b,4.\fp r8

  R2*8
  r8 es'8 r8 f8
  r8 g r_\crescMark g
  r as r as
  r\f a r4
  R2
  <<
    {
      \stemNeutral es4 f
      g g
      as b
    }
    \\
    {
      s2
      s8 s8_\crescMark s4
      s2
    }
  >>
  \tuplet 3/2 8 {r16\f ces [ces] ces [ces ces]} ces4
  b8 r r4
  R2
  \tuplet 3/2 8 {r16 b,,-. [es-.] g-. [b-. es-.] g-. [fis-. (as?)] g-. [(f-. es-.)]}
  b2
  es8 r r4
  b'8\ff r r4
  as,8\p ([es' g, es'])
  as,8 [(es' as c)]

  g4 as
  es2

  r16._\crescMark as32 es'8 r16. c,32 as'8
  r8 r16. f32 f4\sf
  f8 f g as
  es4 es8 r
  as,4\p (g)

  as4 r
  g'4 as
  es, r
  as as
  des2
  es4 es

  as, (as8) r
  a'4\ff r8 r16. a,32\p
  b4. r8
  g'4\ff r8 r16. g,32\p
  as4. r8
  ces4\ff (fes8..) \noBeam ces?32
  ces4.\fp r16. ces32
  ces4\fp (b8) r16. f'32
  f4\sfp (g16) r r8
  R2*5
  des'2
  r8 c4 c8
  b2
  r8 as r b
  r_\crescMark c r c
  r des r des
  r\f d r4
  R2
  as,4 b
  c_\crescMark c
  des es
  \tuplet 3/2 8 {r16\f fes [fes] fes [fes fes] } fes4
  es8 r r4
  <<{\stemNeutral es2}\\{s8\> s\! s s}>>
  \tuplet 3/2 8 {r16\f es,-. [as-.] c-. [es-. as-.]  c-. [h (des?)] c-. ([b-. as-.]) }
  es2
  as8\p ([es g es]
  as [es c as])
  g ([es as c])

  es8 [f es des]
  c4 (b
  as des)
  es (es
  as,\< b8 h)
  c4\> (b)
  as\! des
  es4\< es8\> b'
  as\pp ([c, es as]
  g [f es g])

  as ([es c as]
  g [f es g])
  as ([es c as']
  g [f g es])
  as-._\decrescMark [as (es c)]
  as'-. [as (es c)]
  as'-. [as (es c)]
  as'8\pp r c r
  c2\fermata  \bar "|."

}


scoreABassoonPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "bassoon"
} { \clef bass \scoreABassoon }


\score {
  <<
    \new StaffGroup <<
      \scoreABassoonPart
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
