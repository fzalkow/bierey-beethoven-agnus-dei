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
  poet = \markup { \box \pad-markup #0.5 "Clarinetto 2 in B" }
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

    c4 des\p
    c4. r8
    es4 es8 as!
    g4. r8
    es4 as_\crescMark
    as des\fp~
    des\>
    b8\! as
    as8 [es es] r

    r16 es, es es r16 es es es

    r8 r16 as es c' as es'

    r16 es es es r es es es
    R2
    r16 as, (c es)

    r16 c (es as)
    r16 f, (g as a b c des)
    es (d des c b c des g,)
    g4 (as8) r
    c'4\ff r8 r16. c,32\p
    c4 (b8) r
    b'4\ff r8 r16. b,32\p
    b4 (as8) r
    ces'4\ff r8 r16. es,,32
    f4.\fp r8
    R2*8
    r8 g r as
    r8 b r_\crescMark h
    r8 c r ces
    r8\f c' r4
    R2
    <<
      {
        \stemNeutral es,4 d
        g es
        es as
      }
      \\
      { s2 s8 s_\crescMark s s s2 }
    >>
    \times 2/3 {r16\f a [a]} \times 2/3 {a16 [a a]} a4
    b8 r r4
    as2
    g8 r8 r4
    es4_\rf d\sfp
    es8 r8 r4
    es8\ff r8 r4

    c4\p (des
    c4.) r8
    es4 es8 as
    g4. r8
    es4_\crescMark as
    as4 des\sf (
    as4\>) es8\! es
    es8 [es es] r
    r16\p es, es es


    r16 es es es
    \times 2/3 {r16 es' ([c])} \times 2/3 {as'-. [es-. c'-.]} \times 2/3 {as-. [es'-. des-.]} \times 2/3 {c-. [b-. as-.]}
    r16 es, es es r16 es es es
    \tuplet 3/2 8 {es16-. ([g-. b-.] es-. [g-. b-.] des-. [f-. es-.] des-. [c-. b-.])}
    \tuplet 6/4 4 {r16 es-. (c-. as-. es-. c-.) r (c'-. as-. es-. c-. as-.)}
    r8 \tuplet 3/2 8 { f16 ([ges g] as [a b] h [c des])
                       r es ([d]) r des ([c]) r b ([c]) r des ([g,]) }
    des'8 ~ des32 c64 (des es des c des) c8 r
    c'4\ff r8 r16. c,32\p
    c4 (b8) r
    b'4\ff r8 r16. b,32\p
    b4 (as8) r
    \autoBeamOff ces4\ff (ces'!8..) fes,,32 \autoBeamOn
    ges4.\fp r16. f!32
    f4.\fp r16. d'32
    d4\sfp (des16) r16 r8
    R2*8

    r8 es r es
    r_\crescMark as r as
    r as r b
    r\f f r4
    R2

    \once \slurUp as,4\p (g
    c_\crescMark as4
    as des)
    \tuplet 3/2 8 {r16\f d [d] d [d d] } d4
    R2
    <<{\stemNeutral as'4 g as8}\\{s8\> s\! s s}>>
    r8 r4

    as4_\rf g
    as16\p c,8 c16 des16 des8 des16 (
    c16) c8 c c c16

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
    b'4\pp b
    as8 r r4
    des,4 des
    c8 r r as
    b4 b
    as16_\decrescMark [c8 c c c16]
    c16 [as8 as as as16~]
    as16 [es8 es es es16~]
    es8\pp r es r
    es2\fermata \bar "|."

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
