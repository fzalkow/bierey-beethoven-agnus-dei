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
  poet = \markup { \box \pad-markup #0.5 "Clarinetto 1 in B" }
}


global = {
  \key as \major
  \time 2/4
  \override TupletBracket.bracket-visibility = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #1
}


scoreAClarinet = \relative c'' {
  \transpose b c { \relative c'' {
    \global
    \tempo "Adagio" 8=63

    as'4*1/2\p (s4*1/2\turn c8. b16)
    as4. a8
    b4*1/2 (s4*1/2\turn des8. c16)
    b4. (h8)
    c8.. as32 es'8.._\crescMark c32
    f8.. des32 as'4\fp ~
    as16\> (g) f\staccato es\staccato\! des8 (c)
    es8. (c16) b16 ([des32 c] \times 4/5 {es32 des c des b)}

    as16 es es es


    r16 es es es

    r16 es16 (c as' es c' as es')


    r16 es es es r es es es


    r16 es (d es d es f des)
    c as, (c es)

    r16 c (es as)
    r16 f, (g as a b c des)
    es (d des c b c des g,)
    g4 (as8) r
    f''4\ff r8 r16. es,32\p
    es4 (des8) r
    es'4\ff r8 r16. des,32\p
    des4 (c8) r
    es'4\ff r8 r16. as,,32
    as4.\fp r8
    R2*5
    r32^\imo d ([f as] b [d f as]) c8. \times 4/7 {c64 (b as g f es d?)}
    f16. ([es32] d32. es64 f32. es64) es,8 r
    R2
    r8 b r b
    r8 b r_\crescMark h
    r8 es r d
    r8\f es' r4
    R2
    <<
      {
        \stemNeutral g,4 (as
        b es,
        c' d)
      }
      \\
      { s2 s8 s_\crescMark s s s2 }
    >>
    \times 2/3 {r16\f es [es]} \times 2/3 {es16 [es es]} es4
    g8 r r4
    as,2
    g8 r8 \times 2/3 {r16^\imo a ([c])} \times 2/3 {b (as\staccato g\staccato)}
    f8.._\rf f32\trill \grace{e32 f} b8..\sfp b32
    es,8 r8 r4
    g8\ff r8 r4

    as4*1/2\p ( s4*1/2\turn c8. b16)
    as4~ as16 (g as a)
    b4*1/2 ( s4*1/2\turn des8. c16)
    b4~ \times 2/3 {b16 [f' (es)]} \times 2/3 {des16\staccato [(c\staccato h\staccato)]}
    c8.._\crescMark as32 es'8.. c32
    f8.. des32 as'4\sf ~
    as16\> (g f es) es\! (des) des (c)
    es8. c16 b16\trill ([des32 c] es32 des c64 es des b)
    as16\p es es es

    r16 es es es
    \times 2/3 {r16 es ([c])} \times 2/3 {as'-. [es-. c'-.]} \times 2/3 {as-. [es'-. des-.]} \times 2/3 {c-. [b-. as-.]}
    r16 es es es r16 es es es
    \tuplet 3/2 8 {es,16-. ([g-. b-.] es-. [g-. b-.] des-. [f-. es-.] des-. [c-. b-.])}
    \tuplet 6/4 4 {r16 es-. (c-. as-. es-. c-.) r (c'-. as-. es-. c-. as-.)}
    r8 \tuplet 3/2 8 { f16 ([ges g] as [a b] h [c des])
                       r es ([d]) r des ([c]) r b ([c]) r des ([g,]) }
    des'8 ~ des32 c64 (des es des c des) c8 r
    f'4\ff r8 r16. es,32\p
    es4 (des8) r
    es'4\ff r8 r16. des,32\p
    des4 (c8) r
    \autoBeamOff ces'4\ff (as'8..) as,,32 \autoBeamOn
    heses4.\fp r16. as32
    as4.\fp r16. d32
    d4\sfp (des16) r16 r8
    R2*7

    r16^\imo b'32 ([des? b] g' [es b' g]) des'8. \times 2/7 {c64 (b as g f es des)}


    c8. [r32 c32] des8. [r32 des32]
    es8._\crescMark [r32 es32] e8. [r32 e32]
    f8. [r32 f32] g8. [r32 g32]
    as8.\f [r32 as32*1/2 s32*1/2\turn] b16\sf\> (as) g\staccato f\staccato
    es16\p (d f es des c b es)

    \once \slurUp c,4 (des
    es_\crescMark as,
    f' g)
    \tuplet 3/2 8 {r16\f as [as] as [as as] } as4
    \tuplet 3/2 8 {r16^\imo es,-. [as-.] c?-. [es-. as-.] c?-. [h-. (des!-.)] c-. [(b-. as-.)]}
    <<{\stemNeutral des2 c8}\\{s8\> s\! s s}>>
    r8 \times 2/3 {r16^\imo d ([f]) }  \times 2/3 {es16\staccato ([des\staccato c\staccato]) }

    b8.._\rf b32\trill \grace {a32 b} es8.. es32  % TODO: left/right alignment of first note
    as,16\p [es8 es es es16]
    es16 es8 es es es16

    es16 [es8 es es es16] ~
    es16 [es8 es es es16] ~
    es16 [es8 es es es16] ~
    es16 [es8 e f f16] ~
    f16 [es!8 es es es16] ~
    es16\< [es8 es es es16] ~
    es16\> [es8 es es es16] ~
    es8\! e f8. f16
    << {es4. es8 es8} \\ {s8\< s s\> s s\!} >>
    r r4
    des'4\pp des
    c8 r r4
    b4 b
    as8 r r c,
    des4 des
    c16_\decrescMark [es8 es es es16]
    es16 [c8 c c c16]
    c16 [as8 as as as16~]
    as8\pp r c r
    as2\fermata \bar "|."

                   }

} }


scoreAClarinetPart = \new Staff \with {
  instrumentName =  ""
  midiInstrument = "clarinet"
} \scoreAClarinet



\score {
  <<
    \new StaffGroup <<
      \scoreAClarinetPart
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
