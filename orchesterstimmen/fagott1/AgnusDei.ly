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
  poet = \markup { \box \pad-markup #0.5 "Fagotto 1" }
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

  as'4\p (g
  as4.) r8
  des8 b as c
  es4. r8
  as,4 as4_\crescMark
  as4 f'\fp ~
  f es8 es
  c8. (as16) g8 r8
  as4 (g)
  as16 (es c as' es c' as es')
  g,4 (as)
  es4 r
  r16 as16 (c es) r c, (es as)

  r16 f16 (g as a b c des)
  es16 (d des c b c des g,)
  g4 (as8)

  r8
  es'4\ff r8 r16. f,32\p
  f4. r8
  des'4\ff r8 r16. es,32\p
  es4. r8
  as4\ff r8 r16. ces,!32
  b4.\fp r8

  R2*8
  r8 es8 r8 f8
  r8 g r_\crescMark g
  r as r as
  r\f a r4
  R2
  <<
    {
      \stemNeutral b4 (b
      es h
      c f)
    }
    \\
    {
      s2
      s8 s8_\crescMark s4
      s2
    }
  >>
  \tuplet 3/2 8 {r16\f ges [ges] ges [ges ges]} ges4
  g!8 r r4
  R2
  \tuplet 3/2 8 {r16 b,,,-. [es-.] g-. [b-. es-.] g-. [fis-. (as?)] g-. [(f-. es-.)]}
  as2
  g8 r r4
  des'?8\ff r r4
  as8\p [es g es]
  as8 [(es as c)]

  des8 (b) as (c)
  es (des b g)

  r16._\crescMark as32 es'8 r16. c,32 as'8
  r16. des,32 as'16.f32 des'16.\sf (as32 f'16. des32)
  as8 as b c
  c8. as16 g8 r
  as4\p (g)

  \override TupletBracket.bracket-visibility = ##f
  \tuplet 3/2 8 {as16 ([es c]) as'-. [es-. c'-.] as-. [es'-. des-.] c-. [b-. as-.]}
  g4 (as)
  \tuplet 3/2 8 {es,16-. ([g-. b-.] es-. [g-. b-.] des-. [f-. es-.] des-. [c-. b-.])}
  \tuplet 6/4 4 {r16 es-. (c-. as-. es-. c-.) r (c'-. as-. es-. c-. as-.)}
  \tuplet 3/2 8 {r16 des ([es] f [ges g] as [a b] h [c des])
                 r es ([d]) r des ([c]) r b ([c]) r des ([g,]) }


  g4 (as8) r
  es'4\ff r8 r16. f,32\p
  f4. r8
  des'4\ff r8 r16. es,32\p
  es4. r8
  ces'4\ff (ces8..) \noBeam ces,?32
  ces4.\fp r16. ces32
  ces4\fp (b8) r16. as'32
  as4\sfp (b16) r r8
  R2*5
  des2
  r8 c4 c8
  des2
  r8 c r des
  r_\crescMark es r e
  r f r e
  r\f f r4
  R2
  es,4 es
  as_\crescMark e
  f b
  \tuplet 3/2 8 {r16\f as [as] as [as as] } as4
  as8 r r4
  <<{\stemNeutral es2}\\{s8\> s\! s s}>>
  \tuplet 3/2 8 {r16\f es,-. [as-.] c-. [es-. as-.]  c-. [h (des?)] c-. ([b-. as-.]) }
  des2
  c8\p ([es, g es]
  as [es c as])
  g ([es as c])

  es8 f8 es4~
  es8 as4 g8~
  g as4 b16 des
  r8 c4 g8~
  g\< [as b h]
  c16\> [as8 as g g16~]
  g16\! [as8 as16~] as16 [(a b des)]
  des8\< [c\> des des]
  c8\pp [(c, es as]
  g8[f es g])

  as8 ([es c as]
  g [f es g])
  as ([es c as']
  g [f g es])
  as-._\decrescMark [as (es c)]
  as'-. [as (es c)]
  as'-. [as (es c)]
  as'8\pp r es' r
  es2\fermata  \bar "|."

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
