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
  poet = \markup { \box \pad-markup #0.5 "Corno 2 in As" }
}


global = {
  \key as \major
  \time 2/4
  \override TupletBracket.bracket-visibility = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #1
}


scoreAHornF = \relative c'' {
  \transpose as c { \relative c'' {
    \global
    \tempo "Adagio" 8=63

    as4\p (g
    as4.) r8
    es'4 (as,4
    es'4. r8)
    as,4 c_\crescMark as' as\fp
    R2*2
    r16 es es es r16 es es es
    r8 c ([es as])
    r16 es es es r es es es
    es8 r8 r4
    r4 r16 c (es as)
    R2
    es,4 es
    as4~ as8 r
    es'4\ff r
    R2
    es4 r
    R2
    es4 r
    as4 r
    R2*8
    r8 es8 r4
    r8 es8 r8_\crescMark es8
    r8 es r as,
    r8\f es' r4
    R2
    es4 r4
    R2*2
    \tuplet 3/2 8 {r16\f es [es] es [es es]} es4
    R2*5
    es,8\ff r r4
    as4\p (g
    as4.) r8
    es'4 as,

    es'2
    as,4_\crescMark c
    as' as\sf

    R2*2
    r16\p es es es r16 es es es
    r8 as,4 as8
    r16 es' es es r16 es es es
    es8 r8 r es
    c4 as'
    R2
    es,4 es
    as~ as8 r
    es'4\ff r
    R2
    es4 r
    R2
    r4 as4
    R2*14
    r8\f as,8 r4
    R2
    as4 r
    c2_\crescMark
    r4 es4
    \tuplet 3/2 8 {r16\f as, [as] as [as as]} as4
    es'8 r8 r4
    <<{\stemNeutral es2}\\{s8\> s\! s s}>>
    as,8 r r4
    es2
    as4\p r
    as r
    es' (as,)
    es'8 r r4
    R2*2
    es,2
    as4 r
    c4 r
    R2
    <<
      {
        \stemNeutral es,4 es
        as4
      }
      \\
      {
        s8\< s\> s s
        s4\pp
      }
    >>
    r4
    R2*4

    es2
    as16_\decrescMark [as8 as as as16~]
    as16 [es8 es es es16~]
    es16 [es8 es es es16~]
    es8\pp r as r
    as2\fermata \bar "|."

  } }

}


scoreAHornFPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "french horn"
} \scoreAHornF


\score {
  \scoreAHornFPart

  \layout { }
  \midi {
    \tempo 4=100
  }
}
