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
\paper { page-count = 1 }


beforenaturalturn = {\once \override TextScript #'avoid-slur = #'inside \once \override TextScript #'outside-staff-priority = ##f}
naturalturn = ^\markup{ \override #'(baseline-skip . 1) \center-column {\musicglyph #"scripts.turn" {\tiny \natural} }  }
crescMark = \markup{\italic cresc.}
decrescMark = \markup{\italic decresc.}
imo = \markup{1\hspace #-0.75 \super{mo}}
rf = \markup{\dynamic rf}

\include "copyright_a4.ly"

\header {
  \include "header.ly"
  poet = \markup { \box \pad-markup #0.5 "Violoncello" }
}


global = {
  \key as \major
  \time 2/4
  \override TupletBracket.bracket-visibility = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #1
}



scoreACello = \relative c {
  \global

  \tempo "Adagio" 8=63
  R2*8

  as16\p (es') es\staccato es\staccato g,16 (es') es\staccato es\staccato
  as, (es' c as' es c' as es')
  g, (es') es\staccato es\staccato as, (es') es\staccato es\staccato
  es,4 r
  r16 as (c es) r c, (es as)
  r f (g as a b c des)
  es (d des c b c des g,)
  g4 (as8) r
  a,8.\ff ( \times 2/3 {c32 es f)} a8 r
  R2
  g,8. ( \times 2/3 {b32 des? es)} g8 r
  R2
  ces8. (as32 es ces8) r16. ces32
  b4.\fp r8
  R2
  as'8\pp [as as as]
  g [g g g]
  d\< [d d d]
  es\> [es es es\!]
  as [as as as]
  r g [g g]
  d [d d d]
  r es r f
  r g r_\crescMark g
  r as r as
  r\f a	 r4
  r8\p b r b
  \times 2/3 {r16 (r es)} \times 2/3 {b ([g es])} \times 2/3 {r16 (r f')} \times 2/3 {d ([b f])}
  \clef tenor \times 2/3 {r16 (r g')} \times 2/3 {es_\crescMark ([b g])} \times 2/3 {r16 (r g')} \times 2/3 {es ([h g])}
  \times 2/3 {r16 (r as')} \times 2/3 {es ([c as])} \times 2/3 {r16 (r as')} \times 2/3 {f ([d b])}
  \times 2/3 {r16\f (r a')} \times 2/3 {ges ([es ces])} ces8 \clef bass ces,
  \times 2/3 {r16 b\staccato [es\staccato]} \times 2/3 {g!\staccato [b\staccato es\staccato]} \clef tenor  \times 2/3 {g ([fis as!])} \times 2/3 {g\staccato ([f\staccato es\staccato])}
  b2
  es,8 r r4
  R2
  R2
  \clef bass es8\ff r r4
  R2*8
  as,16\p (es') es\staccato es\staccato g,16 (es') es\staccato es\staccato
  \times 2/3 {as,16 ([es' c])} \times 2/3 {as'16\staccato ([es\staccato c'\staccato])} \times 2/3 {as16\staccato ([es'\staccato des\staccato])} \times 2/3 {c16\staccato ([b\staccato as\staccato])}
  g16 (es) es\staccato es\staccato as (es) es\staccato es\staccato
  \times 2/3 {es,16\staccato ([g\staccato b\staccato])} \times 2/3 {es16\staccato ([g\staccato b\staccato]} \times 2/3 {des\staccato [f\staccato es\staccato]} \times 2/3 {des\staccato [c\staccato b\staccato])}
  \times 4/6 {r16 es\staccato (c\staccato as\staccato es\staccato c\staccato)} \times 4/6 {r c'\staccato (as\staccato es\staccato c\staccato as\staccato)}
  \times 2/3 {r16 des ([es]} \times 2/3 {f [ges g]} \times 2/3 {as [a b]} \times 2/3 {h [c des])}
  \times 2/3 {r16 es ([d])} \times 2/3 {r16 des ([c])} \times 2/3 {r16 b ([c])} \times 2/3 {r16 des ([g,])}
  g4 (as8) r

  a,8.\ff ( \times 2/3 {c32 es f)} a8 r
  R2
  g,8. ( \times 2/3 {b32 des es)} g8 r
  R2
  ces8. (as32 es) ces8 r16. ces32
  ces4. r16. ces32
  ces4\fp (b8) r16. b32
  b4\sfp (es8) r
  R2
  des'8\pp [des des des]
  c [c c c]
  g [g g g]
  as [as as as]
  des8 [des des des]
  r c [c c]
  g\pp [g g g]
  r as r b
  r_\crescMark c r c
  r des r des
  r\f d r4
  es,8\p r es r
  \times 2/3 {r16 (r as)} \times 2/3 {es ([c as])} \times 2/3 {r16 (r b')} \times 2/3 {g ([es b])}
  \times 2/3 {r16_\crescMark (r c')} \times 2/3 {as ([es c])} \times 2/3 {r16 (r c')} \times 2/3 {as ([e c])}
  \times 2/3 {r16 (r des')} \times 2/3 {as ([f des])} \times 2/3 {r16 (r des')} \times 2/3 {b ([g es])}
  \times 2/3 {r16\f (r d')} \times 2/3 {ces ([as fes])} fes8 fes
  es r8 r4
  R2*3
  as8 ([es g es]
  as [es c as])
  g ([es as c]
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
  g, [f es g)]
  as ([es c as']
  g [f g es)]
  as\staccato_\decrescMark [as (es c)]
  as'\staccato [as (es c)]
  as'\staccato [as (es c)]
  as'8 r as r
  as2\fermata \bar "|."

}

scoreACelloPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "cello"
} { \clef bass \scoreACello }



\score {
  <<

    \new StaffGroup <<
      \scoreACelloPart
    >>

  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
