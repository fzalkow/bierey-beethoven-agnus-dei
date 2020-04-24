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

#(set-default-paper-size "a3")


beforenaturalturn = {\once \override TextScript #'avoid-slur = #'inside \once \override TextScript #'outside-staff-priority = ##f}
naturalturn = ^\markup{ \override #'(baseline-skip . 1) \center-column {\musicglyph #"scripts.turn" {\tiny \natural} }  }
crescMark = \markup{\italic cresc.}
decrescMark = \markup{\italic decresc.}
imo = \markup{1\hspace #-0.75 \super{mo}}
rf = \markup{\dynamic rf}

\include "copyright_a3.ly"
\include "text_erstdruck.ly"

\header {
  \include "header.ly"
}


global = {
  \key as \major
  \time 2/4
  \override TupletBracket.bracket-visibility = ##f
}

scoreAFlute = \relative c'' {
  \global
  \tempo "Adagio" 8=63
  R2
  R2*4
  r4 << {des'} \\ {as\fp} >>
  R2*2

  as4*1/2\p (s4*1/2\turn c8. b16)
  as4 r

  b4*1/2 ( \beforenaturalturn s4*1/2\naturalturn des8. c16)

  r16^\imo es (d es d es f des)
  << \mergeDifferentlyDottedOn  {c8.. as32 es'8.. c32} \\ {<es, c'>4 <es es'>4} >>
  <f f'>4. <a es'>16 (<b des>)
  << {c8 [es des b]} \\ {as4 (g)} >>
  <des b'>4 (<c as'>8) r
  <es' f>4\ff r4
  R2
  <des es>4 r
  R2
  <as ces>4 r
  R2*8
  r32^\imo f, ([as b] d f as d) f8. \times 4/6 {f64 (es des c b as)}
  <g, g'>8. [r32 <g g'>32] <as as'>8. [r32 <as as'>32]
  <b b'>8. [r32 <b b'>32] <h h'>8._\crescMark [r32 <h h'>32]
  <c c'>8. [r32 <c c'>32] <d d'>8. [r32 <d d'>32]
  <es es'>8.*1/2_\markup{\dynamic f \italic Solo} [ s8.*1/2^\tweak Y-offset #5 ^\turn r32 es'32] (f16\sf\> es) d (c)
  b16\! (a c b as g f b)
  es,8 r r4
  R2
  r4 << {r8 d'8_\crescMark} \\ {f,4} >>
  << { \override TupletBracket.bracket-visibility = ##f \times 2/3 {r16 es' [es]} \times 2/3 {es16 [es es]} \times 2/3 {es16 [ges, es']} \times 2/3 {a,!16 [es' a,]} b8 } \\ { \override TupletBracket.bracket-visibility = ##f \times 2/3 {r16\f a [a]} \times 2/3 {a16 [a a]} a4 b8 } >>
  r8 r4
  R2*4
  <es, g>8\ff r r4

  as4*1/2\p^\imo (s4*1/2\turn c8. b16)
  as4 ~ as16 (g as a)
  b4*1/2 (s4*1/2\turn des8. c16)
  b4 ~ \times 2/3 {b16 [f' (es)]} \times 2/3 {des\staccato ([c\staccato h\staccato])}
  c8 r r4
  r4 << {des4} \\ {as4\sf} >>
  R2*2

  as4*1/2\p (s4*1/2\turn c8. b16)
  as4 r4
  b4*1/2 (\beforenaturalturn s4*1/2\naturalturn des8. c16)

  %<< {<c,, as'>4*1/2\p (s4*1/2\turn c'8. b16)} \\ {c,4 des} >>
  %\once \autoBeamOff <c as'>8 <es as> [(<as c> <c es>)]
  %<< {<es, b'>4*1/2 (\beforenaturalturn s4*1/2\naturalturn des'8. c16) } \\ { es,4 as } >>
  b4 r
  << { c8.. as32 es'8.. c32 } \\ { es,4 es } >>
  <f f'>4. ~ \times 2/3 { <f f'>16 (<a es'> <b des>) }
  << { c8 ([es des b]) } \\ { as!4 (g) } >>
  <des b'>4 (<c as'>8) r
  <es' f>4\ff r
  R2
  <des es>4 r
  R2
  << { \autoBeamOff ces4^(_( \stemNeutral <as fes'>8..) \autoBeamOn  \once \stemUp fes32 } \\ { ces'4 s8.. fes,32 } >>
  fes4\fp (es8) r16. es32
  es4\fp (d8) r16. d32
  d4\sfp (des16) r r8
  R2*5
  r16^\imo g,32 ([b des] es [g b des]) f8. \times 2/7 {f64 (es des c b as g)}
  b16. ([as32] g32. [as64 b32. as64]) as,8 r
  R2

  <c c'>8. [r32 <c c'>32] <des des'>8. [r32 <des des'>32]
  <es es'>8._\crescMark [r32 <es es'>32] <e e'>8. [r32 <e e'>32]
  \ottava #1 <f f'>8. [r32 <f f'>32] <g g'>8. [r32 <g g'>32]
  <as as'>4\f \ottava #0 r4


  R2*3
  r4 << {b4} \\ {r8 g8} >>
  \times 2/3 {r16\f <as ces>16 [<as ces>] } \times 2/3 {<as ces> [<as ces> <as ces>] } <as ces>4
  <as c!>8 r \times 2/3 {r16^\imo d ([f]) }  \times 2/3 {es16\staccato ([des\staccato c?\staccato]) }
  << { b8.._\rf b32\trill \grace {a32 b} es8.. es32 as,8 } \\ { as4 g as8 } >>  % TODO: left/right alignment of first note
  r8 r4
  R2
  <<
    {
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
      \stemNeutral <as, c>8 \ottava #0
    }
    \\
    {
      c,16 c8 c16 es16 es8 es16~
      es16 [es8 es es es16 ~]
      es16 [es8 es es es16 ~]
      es16 [es8 es es es16 ~]
      es16 [es8 es es es16 ~]
      es16 [es8 e f f16 ~]
      f16 [es!8 es es es16 ~]
      es16 [es8 es es es16 ~]
      es16 [es8 es es es16 (]
      \ottava #1 es8) e f8. f16
      as8\< [(a\> b g)]
      s8\! \ottava #0

    }
  >>
  r8 r4
  <des b>4^\markup{\italic loco}\pp <des b>4
  <as c>8 r r4
  << {b4 b} \\ {es,2} >>
  <es as>8 r r4
  R2*5
  R2\fermataMarkup






}

scoreAOboe = \relative c'' {
  \global
  R2*4
  << {c4 es f as\fp} \\ {as,4 as_\crescMark as des} >>
  R2 R2
  << {as4*1/2\p (s4*1/2\turn c8. b16)} \\ {c,4 (des)} >>
  <c as'>8 <c es> ([<es as> <as c>])

  <<
    {
      b4*1/2 ( \beforenaturalturn s4*1/2\naturalturn des8. c16)
    } \\ {
      es,4 as
  } >>

  <g b>8 r r4

  << { c8.. as32 es'8.. c32 } \\ { es,4 es } >>
  <f f'>4. << { es'16 (des) } \\ { a16 (b) } >>
  << { c8 ([es des b]) } \\ { as!4 g } >>
  <b des>4 (<as c>8) r
  <es' c'>4\ff	r4
  R2
  <des b'>4 r
  R2
  <es as>4 r8 r16. << { es,32 es4\fp d16 } \\ { es32 es4 (d16) } >> r16 r8

  R2*8
  r8 <es g> r << { d } \\ { d } >>
  r8 << { es } \\ { es } >> r_\crescMark << { es } \\ { es } >>
  r8 <c es> r <d f>
  r8\f <es' ges> r4
  R2*2
  << { r4 es4_\crescMark ~ es (d) } \\ { R2 c4 as } >>
  \times 2/3 {r16\f <es' ges> [<es ges>]} \times 2/3 {<es ges>16 [<es ges> <es ges>]} <es ges>4
  << {
    b'4~ \times 2/3 {b16 [(a c)]} \times 2/3 {b16\staccato [(as\staccato g\staccato)]}
    f8.. f32\trill \grace{e32 f} b8.. b32
    es,8
     } \\ {
       es8 r r4
       es4 d
       es8
  } >>
  r8 r4
  R2*2
  <b des!>8_\ff r8 r4
  R2*4
  << { c4_\crescMark es f as\sf	 } \\ { as,4 as as des } >>
  R2 R2

  << {as4*1/2\p (s4*1/2\turn c8. b16)} \\ {c,4 des} >>
  <c as'>8 <es as> ([<as c> <c es>])

  << {b4*1/2 (\beforenaturalturn s4*1/2\naturalturn des8. c16) } \\ { es,4 as } >>


  <g b>8 r <g es'> r
  << { c8.. as32 es'8.. c32 } \\ { as4 es } >>
  <f f'>4. ~ \times 2/3 { <f f'>16 (<a es'> <b des>) }
  << { c8 ([es des b]) } \\ { as!4 (g) } >>
  <g des'>4 (<as c>8) r
  <es' c'>4\ff r
  R2
  <des b'>4 r
  R2
  \once \slurDown <ces ces'~>4 (<fes ces'>8..)
  << { fes,32 fes4\fp es8 } \\ { fes32 fes4 (es8) } >>
  r16.
  << { es32 es4\fp d8 } \\ { es32 es4 (d8) } >>
  r16.
  <f as>32
  <f as>4\sfp (<g b>16) r r8
  R2*8
  r8 <c, es> r <es g>
  r <es as> r <e as>
  r <f as> r <g b>
  r\f <as ces> r4
  R2*2
  << {
    \override TupletBracket.bracket-visibility = ##f
    r4_\crescMark as4 ~
    (as4 des)
    \times 2/3 {b16\rest\f d [d]} \times 2/3 {d [d d]} d4
     } \\ {
       \override TupletBracket.bracket-visibility = ##f
       R2
       f,4 g
       \times 2/3 {b16\rest ces [ces]} \times 2/3 {ces [ces ces]} ces4
  } >>
  <c! es>8 r r4
  R2*3
  <<
    {
      as4\p c8. b16
      as4 ~ as8. a16
      b4*1/2 s4*1/2\turn des8. c16
      b2
      es4 (des
      c b8 des16. b32)
      as4 a8 b
      h\< [c des d]
      es4\> des
      c\! b16 c des16. b32
      as16 [es'8 es es es16]
      \stemNeutral <as, c>8
    }
    \\
    {
      es2~
      es2
      es4 as8. as16
      g2
      es~
      es8 r e16 f8 f16~
      f16 es!4. es16~
      es2
      es2
      es8 e f8. f16
      as8\< [(a\> b g)]
      s8\!    }
  >>
  r r4
  R2*9
  R2\fermataMarkup








}

scoreAClarinet = \relative c'' {
  \transpose b c { \relative c'' {
    \global
    <<
      {
        as'4*1/2\p (s4*1/2\turn c8. b16)
        as4. a8
        b4*1/2 (s4*1/2\turn des8. c16)
        b4. (h8)
        c8.. as32 es'8.._\crescMark c32
        f8.. des32 as'4\fp ~
        as16\> (g) f\staccato es\staccato\! des8 (c)
        es8. (c16) b16 ([des32 c] \times 4/5 {es32 des c des b)}

        as16 <es, es'> <es es'> <es es'>
      }
      \\
      {
        c'4 des
        c4. r8
        es4 es8 as!
        g4. r8
        es4 as
        as des~
        des
        b8 as
        as8 [es es] r
        r16 s s s
      }
    >>
    r16 <es, es'> <es es'> <es es'>

    <<
      {
        r16 es'16 (c as' es c' as es')
      }
      \\
      {
        r8 r16 as,, es c' as es'
      }
    >>
    r16 <es es'> <es es'> <es es'> r <es es'> <es es'> <es es'>

    <<
      {
        r16 es' (d es d es f des)
        c as, (c es)
      }
      \\
      {
        R2
        r16 s s s
      }
    >>
    r16 c (es as)
    r16 f, (g as a b c des)
    es (d des c b c des g,)
    g4 (as8) r
    <c' f>4\ff r8 r16. <c, es>32\p
    <c es>4 (<b des>8) r
    <b' es>4\ff	r8 r16. <b, des>32\p
    <b des>4 (<as c>8) r
    <ces' es>4\ff r8 r16. <es,, as>32
    <f as>4.\fp r8
    R2*5
    r32^\imo d' ([f as] b [d f as]) c8. \times 4/7 {c64 (b as g f es d?)}
    f16. ([es32] d32. es64 f32. es64) es,8 r
    R2
    r8 <g, b> r <as b>
    r8 <<{b} \\ {b}>> r_\crescMark <<{h} \\ {h}>>
    r8 <c es> r <ces d>
    r8\f <c' es> r4
    R2
    <<
      {
        g4 (as
        b es,
        c' d)
      }
      \\
      {
        es,4 d
        g es
        es as
      }
      \\
      { s2 s8 s_\crescMark s s s2 }
    >>
    \times 2/3 {r16\f <a es'> [<a es'>]} \times 2/3 {<a es'>16 [<a es'> <a es'>]} <a es'>4
    <b g'>8 r r4
    <<{as2} \\ {as2}>>
    <<{g8} \\ {g8}>> r8 \times 2/3 {r16^\imo a ([c])} \times 2/3 {b (as\staccato g\staccato)}
    <<{f8.._\rf f32\trill \grace{e32 f} b8..\sfp b32} \\ {es,4 d}>>
    <<{es8} \\ {es8}>> r8 r4
    <es g>8\ff r8 r4
    <<
      {
        as4*1/2\p ( s4*1/2\turn c8. b16)
        as4~ as16 (g as a)
        b4*1/2 ( s4*1/2\turn des8. c16)
        b4~ \times 2/3 {b16 [f' (es)]} \times 2/3 {des16\staccato [(c\staccato h\staccato)]}
        c8.._\crescMark as32 es'8.. c32
        f8.. des32 as'4\sf ~
        as16 (g f es) es (des) des (c)
        es8. c16 b16\trill ([des32 c] es32 des c64 es des b)
        as16\p <es, es'> <es es'> <es es'>
      }
      \\
      {c'4 (des
       c4.) r8
       es4 es8 as
       g4. r8
       es4 as
       as4 des (
       as4\>) es8\! es
       es8 [es es] r
       r16 s s s
      }
    >>
    r16 <es, es'> <es es'> <es es'>
    \times 2/3 {r16 es' ([c])} \times 2/3 {as'-. [es-. c'-.]} \times 2/3 {as-. [es'-. des-.]} \times 2/3 {c-. [b-. as-.]}
    r16 <es, es'> <es es'> <es es'> r16 <es es'> <es es'> <es es'>
    \tuplet 3/2 8 {es16-. ([g-. b-.] es-. [g-. b-.] des-. [f-. es-.] des-. [c-. b-.])}
    \tuplet 6/4 4 {r16 es-. (c-. as-. es-. c-.) r (c'-. as-. es-. c-. as-.)}
    r8 \tuplet 3/2 8 { f16 ([ges g] as [a b] h [c des])
                       r es ([d]) r des ([c]) r b ([c]) r des ([g,]) }
    des'8 ~ des32 c64 (des es des c des) c8 r
    <c' f>4\ff r8 r16. <c, es>32\p
    <c es>4 (<b des>8) r
    <b' es>4\ff	 r8 r16. <b, des>32\p
    <b des>4 (<as c>8) r
    \autoBeamOff <ces ces'>4\ff^(_(<ces'! as'>8..) <fes,, as>32 \autoBeamOn
    <ges heses>4.\fp r16. <f! as>32
    <f as>4.\fp r16. <<{d'32}\\{d32}>>
    <<{d4\sfp (des16)}\\{d4 des16}>> r16 r8
    R2*7

    r16^\imo b'32 ([des? b] g' [es b' g]) des'8. \times 2/7 {c64 (b as g f es des)}

    <<
      {

        c8. [r32 c32] des8. [r32 des32]
        es8._\crescMark [r32 es32] e8. [r32 e32]
        f8. [r32 f32] g8. [r32 g32]
        as8.\f [r32 as32*1/2 s32*1/2\turn] b16\sf\> (as) g\staccato f\staccato
        es16\p (d f es des c b es)
      }
      \\
      {

        r8 es, r es
        r as r as
        r as r b
        r f r4
        R2
      }
    >>
    \once \slurUp <as, c>4 (<g des'>
    <c es>_\crescMark <<{as4}\\{as4}>>
    <as f'> <des g>)
    \tuplet 3/2 8 {r16\f <d as'> [<d as'>] <d as'> [<d as'> <d as'>] } <d as'>4
    \tuplet 3/2 8 {r16^\imo es,-. [as-.] c?-. [es-. as-.] c?-. [h-. (des!-.)] c-. [(b-. as-.)]}
    <<{des2 c8}\\{as4 g as8}\\{s8\> s\! s s}>>
    r8 \times 2/3 {r16^\imo d ([f]) }  \times 2/3 {es16\staccato ([des\staccato c\staccato]) }
    <<
      {
        b8.._\rf b32\trill \grace {a32 b} es8.. es32  % TODO: left/right alignment of first note
        as,16\p [es8 es es es16]
        s2}
      \\
      {
        as4 g
        as16 c,8 c16 des16 des8 des16 (
        \stemNeutral <c es>16) <c es>8 <c es> <c es> <c es>16
      }
    >>
    es16 [es8 es es es16] ~
    es16 [es8 es es es16] ~
    es16 [es8 es es es16] ~
    es16 [es8 e f f16] ~
    f16 [es!8 es es es16] ~
    es16\< [es8 es es es16] ~
    es16\> [es8 es es es16] ~
    es8\! e f8. f16
    << {es4. es8 es8} \\ {s8\< s\>s s s\!} >>
    r r4
    <b' des>4\pp <b des>
    <as c>8 r r4
    <des, b'>4 <des b'>
    <c as'>8 r r <as c>
    <b des>4 <b des>
    <as c>16_\decrescMark [<c es>8 <c es> <c es> <c~ es>16]
    <c es>16 [<as c>8 <as c> <as c> <as~ c>16]
    <as c>16 [<es as>8 <es as> <es as> <es as>16~]
    <es as>8\pp r <es c'> r
    <es as>2\fermata

                   }

} }

scoreABassoon = \relative c {
  \global

  <as as'>4\p (<g g'>
  <as as'>4.) r8
  <<{des'8 b as c}\\{g4 (as)}>>
  <es es'>4. r8
  <<{as4}\\{as4}>> <c, as'>4_\crescMark
  <des as'>4 <f f'>\fp ~
  <f f'> <g es'>8 <as es'>
  <<{c8. (as16) g8}\\{es4 es8}>> r8
  <as, as'>4 (<g g'>)
  <as as'>16 (es' c as' es c' as es')
  <<{g,4 (as)}\\{g4 as}>>
  es4 r
  r16 as16 (c es) r c, (es as)
  <<
    {
      r16 f16 (g as a b c des)
      es16 (d des c b c des g,)
      g4 (as8)
    }
    \\
    {
      des,2
      es4 es
      as,4.
    }
  >>
  r8
  <a' es'>4\ff r8 r16. <a, f'>32\p
  <b f'>4. r8
  <g' des'>4\ff	 r8 r16. <g, es'>32\p
  <as es'>4. r8
  <ces as'>4\ff	 <<{r8 r16. ces!32}\\{r4}>>
  <b, b'>4.\fp r8

  R2*8
  r8 <<{es'8}\\{es8}>> r8 f8
  r8 g r_\crescMark g
  r as r as
  r\f a r4
  R2
  <<
    {
      b4 (b
      es h
      c f)
    }
    \\
    {
      es, f
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
  \tuplet 3/2 8 {r16\f <ces ges'> [<ces ges'>] <ces ges'> [<ces ges'> <ces ges'>]} <ces ges'>4
  <b g'!>8 r r4
  R2
  \tuplet 3/2 8 {r16^\markup{\italic {a 2}} b,,-. [es-.] g-. [b-. es-.] g-. [fis-. (as?)] g-. [(f-. es-.)]}
  <b as'>2
  <es g>8 r r4
  <b' des?>8\ff r r4
  <<{as8\p [es g es]}\\{as,8 ([es' g, es'])}>>
  <as, as'>8 [(es' as c)]

  <<
    {
      des8 (b) as (c)
      es (des b g)
    }
    \\
    {
      g4 as
      es2
    }
  >>
  r16._\crescMark as32 es'8 r16. c,32 as'8
  <<{r16. des,32 as'16.f32 des'16.\sf (as32 f'16. des32)}\\{r8 r16. f,32 f4}>>
  <f as>8 <f as> <g b> <as c>
  <<{c8. as16 g8}\\{es4 es8}>> r
  <as, as'>4\p (<g g'>)
  <<
    {
      \override TupletBracket.bracket-visibility = ##f
      \tuplet 3/2 8 {as'16 ([es c]) as'-. [es-. c'-.] as-. [es'-. des-.] c-. [b-. as-.]}
      g4 (as)
      \tuplet 3/2 8 {es,16-. ([g-. b-.] es-. [g-. b-.] des-. [f-. es-.] des-. [c-. b-.])}
      \tuplet 6/4 4 {r16 es-. (c-. as-. es-. c-.) r (c'-. as-. es-. c-. as-.)}
      \tuplet 3/2 8 {r16 des ([es] f [ges g] as [a b] h [c des])
                     r es ([d]) r des ([c]) r b ([c]) r des ([g,]) }
    }
    \\
    {
      as,4 r
      g'4 as
      es, r
      as as
      des2
      es4 es
  }>>
  <as, g'>^(_(<as as'>8) r
  <a' es'>4\ff	r8 r16. <a, f'>32\p
  <b f'>4. r8
  <g' des'>4\ff r8 r16. <g, es'>32\p
  <as es'>4. r8
  <ces ces'>4\ff^(_(<fes ces'>8..) <<{ces?32}\\{ces?32}>>
  <<{ces4.\fp}\\{ces4.}>> r16. <<{ces32}\\{ces32}>>
  ces4\fp (b8) r16. <f' as>32
  <f as>4\sfp (<g b>16) r r8
  R2*5
  <<{des'2}\\{des2}>>
  r8 c4 c8
  <b des>2
  r8 <as c> r <b des>
  r_\crescMark <c es> r <c e>
  r <des f> r <des e>
  r\f <d f> r4
  R2
  <as, es'>4 <b es>
  <c as'>_\crescMark <c e>
  <des f> <es b'>
  \tuplet 3/2 8 {r16\f <fes as> [<fes as>] <fes as> [<fes as> <fes as>] } <fes as>4
  <es as>8 r r4
  <<{\stemNeutral es2}\\{s8\> s\! s s}>>
  \tuplet 3/2 8 {r16\f es,-. [as-.] c-. [es-. as-.]  c-. [h (des?)] c-. ([b-. as-.]) }
  <es des'>2
  <as c>8\p ([es g es]
  as [es c as])
  g ([es as c])
  <<
    {
      s4 es~
      es8 as4 g8~
      g as4 b16 des
      r8 c4 g8~
      g\< [as b h]
      c16\> [as8 as g g16~]
      g16\! [as8 as16~] as16 [(a b des)]
      des8\< [c\> des des]
      c8\pp c, s4
      s2
    }
    \\
    {
      es8 [f es des]
      c4 (b
      as des)
      es (es
      as, b8 h)
      c4 (b)
      as des
      es4 es8 b'
      as ([c, es as]
      \stemNeutral g [f es g])
    }
  >>
  as ([es c as]
  g [f es g])
  as ([es c as']
  g [f g es])
  as-._\decrescMark [as (es c)]
  as'-. [as (es c)]
  as'-. [as (es c)]
  as'8\pp r <c es> r
  <c es>2\fermata

}

scoreAHornF = \relative c'' {
  \transpose as c { \relative c'' {
    \global
    <as es'>4\p (<g es'>
    <as es'>4.) r8
    <es' b'>4 (<as, as'>4
    <es' b'>4. r8)
    <<{as2 as4 as4\fp}\\{as,4 c_\crescMark as' as}>>
    R2
    R2
    r16 <<{ es es es}\\{es es es}>> r16 <<{ es es es}\\{es es es}>>
    r8 <c as'> ([<es c'> <as es'>])
    r16 <es es'> <es es'> <es es'> r <es es'> <es es'> <es es'>
    <<{es8}\\{es8}>> r8 r4
    <<{r16 as ([c es]) es8. c16}\\{r4 r16 c, (es as)}>>
    R2
    <es, es'>4 <es es'>
    <as es'>4~ <as es'>8 r
    <es' c'>4\ff r
    R2
    <es b'>4 r
    R2
    <es as>4 r
    <<{as4}\\{as4}>> r
    R2*8
    r8 <<{es8}\\{es8}>> r4
    r8 <<{es8}\\{es8}>> r8_\crescMark <<{es8}\\{es8}>>
    r8 <es c'> r <as, as'>
    r8\f <es' c'> r4
    R2
    <<{es4}\\{es4}>> r4
    R2*2
    \tuplet 3/2 8 {r16\f	 <es es'> [<es es'>] <es es'> [<es es'> <es es'>]} <es es'>4
    R2*5
    <es, es'>8\ff r r4
    <as es'>4\p (<g es'>
    <as es'>4.) r8
    <es' b'>4 <as, as'>
    <<
      {
        b'4. r8
        as2_\crescMark
        as4 as\sf
      }
      \\
      {
        es2
        as,4 c
        as' as
      }
    >>
    R2*2
    r16\p <<{es es es}\\{es es es}>> r16 <<{es es es}\\{es es es}>>
    r8 <<{c [(es as)]}\\{as,4 as8}>>
    r16 <<{es' es es}\\{es es es}>> r16 <<{es es es}\\{es es es}>>
    <<{es8}\\{es8}>> r8 r <es b'>
    <c as'>4 <as' c>
    R2
    <es, es'>4 <es es'>
    <as es'>~ <as es'>8 r
    <es' c'>4\ff r
    R2
    <es b'>4 r
    R2
    r4 <<{as4}\\{as4}>>
    R2*14
    r8\f <as, as'>8 r4
    R2
    <as es'>4 r
    <c as'>2_\crescMark
    r4 <es b'>4
    \tuplet 3/2 8 {r16\f <as, as'> [<as as'>] <as as'> [<as as'> <as as'>]} <as as'>4
    <es' c'>8 r8 r4
    <<{es2}\\{es2}\\{s8\> s\! s s}>>
    <as, es'>8 r r4
    <es es'>2
    <as es'>4\p r
    <as es'> r
    es' (<as, es'>)
    es'8 r r4
    R2*2
    <<{\stemNeutral <es, es'~>2 \stemUp es'4 es8 es}\\{s2 as,4 r} >>
    <c es>4 r
    R2
    <<
      {
        \stemNeutral <es, es'>4 <es es'>
        \stemUp <as es'>8 ([c es as]
        g [f es g])
        as ([es c as])
        es'2
        c4 r
      }
      \\
      {
        s8\< s\> s s
        as4\pp r
        R2
        \once \override MultiMeasureRest.staff-position = #-6
        R2
        R2
        R2
      }
    >>
    <es es'>2
    <as es'>16_\decrescMark [<as es'>8 <as es'> <as es'> <as~ es'>16]
    <as es'>16 [<es c'>8 <es c'> <es c'> <es~ c'>16]
    <es c'>16 [<es as>8 <es as> <es as> <es as>16~]
    <es as>8\pp r <as c> r
    as2\fermata

  } }

}

scoreAViolinI = \relative c'' {
  \global

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
  R2
  R2
  R2
  R2
  <g,, g'>8\ff r r4
  R2
  R2
  R2
  R2
  R2
  R2
  R2
  R2
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
  b4\< ~ b8*1/3 [ (\beforenaturalturn s8*2/3\naturalturn c16. des32])
  des8\> (c16) r\! r4

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
  R2
  R2
  R2

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
  as2^\fermata





}

scoreAViolinII = \relative c'' {
  \global

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
  R2
  R2
  R2
  R2
  <des,? es>8\ff r r4
  R2
  R2
  R2
  R2
  R2
  R2
  R2
  R2
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
  R2
  R2
  R2
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
  as2\fermata


}

scoreAViola = \relative c' {
  \global

  R2*8
  es,2\p ~
  es4 r
  es'2~
  es8 r8 r4
  as,2
  r16 f (g as a b c des)
  es (d des c b c des g,)
  g4 (as8) r
  <es' c'>4\ff r
  R2
  <es b'>4 r
  R2
  ces'8. (as32 es ces8) r16. es,32
  f4.\fp r8
  R2
  R2
  R2
  as8\< as as (g16. f32)
  fis8\> [(g) g\staccato g\staccato\!]
  as8 [as as as]
  r8 g [g g]
  b8 [b b b]
  r8 <g b> r <b d>
  r8 <b es> r8_\crescMark <h es>
  r8 <c es> r <d f>
  r8\f <c ges'> r4
  r8\p b r b

  \times 2/3 {r16 (r es)} \times 2/3 {b ([g es])} \times 2/3 {r16 (r f')} \times 2/3 {d ([b f])}
  \times 2/3 {r16 (r g')} \times 2/3 {es_\crescMark ([b g])} \times 2/3 {r16 (r g')} \times 2/3 {es ([h g])}
  \times 2/3 {r16 (r as')} \times 2/3 {es ([c as])} \times 2/3 {r16 (r as')} \times 2/3 {f ([d b])}
  \times 2/3 {r16\f (r a')} \times 2/3 {ges ([es ces])} <es ges?>8 <es ges>
  <es g!>8 r r4
  R2
  R2
  R2
  R2
  b8\ff	r r4
  R2
  R2
  R2
  R2
  R2
  R2
  R2
  R2

  es,2\p ~
  es4 r
  es'2~
  es8 r8 r4
  as,2
  r8 \times 2/3 {f16 ([ges g]} \times 2/3 {as [a b]} \times 2/3 {h [c des])}
  \times 2/3 {r16 es ([d])} \times 2/3 {r16 des ([c])} \times 2/3 {r16 b ([c])} \times 2/3 {r16 des ([g,])}
  g4 (as8) r
  <es' c'>4\ff r
  R2
  <es b'>4\ff r
  R2
  ces'8. (as32 fes) ces8 r16. fes,32
  ges4.\fp r16. f!32
  f4.\fp r16. f32
  f4\sfp (g16) r r8
  R2
  R2
  R2
  des'8\< des des (c16. b32)
  h8\> [c c\staccato c\staccato\!]
  des8 [des des des]
  r8 c [c c]
  es8 [es es es]
  r8 c r es
  r8_\crescMark es r e
  r8 f r e
  r8\f f r4
  r8\p es, r es
  \times 2/3 {r16 (r as')} \times 2/3 {es ([c as])} \times 2/3 {r16 (r b')} \times 2/3 {g ([es b])}
  \times 2/3 {r16_\crescMark (r c')} \times 2/3 {as ([es c])} \times 2/3 {r16 (r c')} \times 2/3 {as ([e c])}
  \times 2/3 {r16 (r des')} \times 2/3 {as ([f des])} \times 2/3 {r16 (r des')} \times 2/3 {b ([g es])}
  \times 2/3 {r16\f (r d')} \times 2/3 {ces ([as fes])} <as ces?>8 <as ces>
  <as c!>8 r r4
  R2
  R2
  R2
  c,16\p c8 c16 des16 des8 des16
  c16 [c8 c8 c8 c16]
  des4 (as'8. as16)
  g4. es,8 ~
  es8 as4 g8 ~
  g8 as4 b16 des
  r8 c4 g8~
  g8\< ([as b h])
  c16\> [as8 as g g16 ~]
  g16\! as8 as16~ as16 ([a b des ~])
  des8\< ([c\> des <b des>\!])
  <as c>8 r  r4
  b'4 b
  as8 r r4
  des,4 des
  c8 r8 r as
  b4 b
  as8\staccato_\decrescMark [as (es c)]
  as'8\staccato [as (es c)]
  es16 [<c es>8 <c es> <c es> <c es>16 ~]
  <c es>8\pp r es8 r
  <c es>2\fermata




}

scoreACello = \relative c {
  \global
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
  as2\fermata

}

scoreAContrabass = \relative c {
  \global
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
  as2\fermata

}

scoreASoprano = \relative c'' {
  \global
  \autoBeamOff
  \dynamicUp

  as4*1/2^\markup{Solo} s4*1/2\turn c8. [b16]
  as4. a8
  %b4*1/3 \beforenaturalturn s4*2/3\naturalturn des8.. [c32]
  b4*1/2 s4*1/2\turn des8.. [c32]
  b4 b8 h
  c8.. [as32] es'8..^\crescMark  c32
  f8.. [des32] as'4\fp  ~
  as16\> [g] f [es\!] des8 c
  es8. [c16] b8 r

  as4^\markup{Tutti \dynamic p} c8. [b16]
  as4 as8 r
  b4 des8. [c16]
  b4 b8 r16 b
  c8.. [as32] es'8.. c32
  f4. (es16 [des])
  c8 es des b
  b4 as8 r
  r4 f8\> c'
  c4\p b8 r
  r4 es,8\> b'
  b4\p as8 r
  ces8.\f ces16 ces8 as
  as4 f8 r
  R2
  R2
  R2
  R2
  R2
  d'4.\p d8
  es4 b8 r
  f'4 as,
  g4 as
  b h^\crescMark
  c d
  es8\f es r4
  g,4\p (as)
  g r
  b8 g r4^\crescMark
  c8 as r4
  es'4\f es
  es8 g,8 r4
  f4\p (b)
  g r
  R2
  R2
  R2

  as4*1/2^\markup{Solo} s4*1/2\turn c8. [b16]
  as4 ~ as16 [g] as [a]
  % b4*1/3 \beforenaturalturn s4*2/3\naturalturn des8. [c16]
  b4*1/2 s4*1/2\turn des8. [c16]
  b4 \times 2/3 {b16 ([f' es])} \times 2/3 {des16 ([c h])}
  c8.. [as32] es'8.. c32
  f8.. [des32] as'4\>  ~
  as16\! [g] f [es] es [des] des [c]
  es8. [c16] b8 r

  as4^\markup{Tutti \dynamic p} c8. [b16]
  as4 as8 r
  b4 des8. [c16]
  b4 b8 r8
  r4 r8.. c32
  f4.~ \times 2/3 {f16 ([es des])}
  c8 es des b
  b4 as8 r
  r4 f8\> c'
  c4\p b8 r
  r4 es,8\> b'
  b4\p as8 r
  ces8.\ff ces16 ces8 fes,
  fes4\> es8\! f16 f
  f4\> f\!
  f4\> g8\! r8
  R2

  g4.*1/2^\markup{Solo} s4.*1/2\turn as?16. [b32]
  b8 (as4) a8
  b4.*5/6 \beforenaturalturn s4.*1/6\naturalturn c16. [des32]
  des8 c r4

  g4^\markup{Tutti \dynamic p} g4
  as as
  b b
  c des
  es^\crescMark e
  f g
  as8\f f r4
  es16\p ([d f es] des [c b es])
  c8 r r4
  <c es>8^\crescMark <as c> r4
  <des f>8 <as des> r4
  d4\f d
  es8 c r4
  b\p (es)
  c r
  R2
  as4\p c8. [b16]
  as4 as8. [a16]
  b4 des8. [c16]
  b4 b8 b
  es4 (des)
  c b8 [des16. b32]
  as4 a8 [b]
  h8 c r4
  es4 des
  c4 b16 [c des16. b32]
  as8\< (es'4.\>)
  c8\! r8 r4
  des2\pp
  c8 r r4
  b2
  as8 r r4
  es2
  es8 r r4
  es8^\decrescMark es es es
  es2
  es4 r
  R2^\fermataMarkup
  \bar "|."

}

scoreAAlto = \relative c' {
  \global
  \autoBeamOff
  \dynamicUp

  es4^\markup{Solo} es
  es4 es8 r
  es4 es8 [as]
  g4 g8 r
  r4 r8..^\crescMark as32
  as4 as4\fp ~
  as8 as b as
  c8. [as16] g8 r
  es4^\markup{Tutti \dynamic p} es
  es4 es8 r
  es4 as
  g4 g8 r16 es
  as4 as8.. es32
  f4. (a16 [b])
  as!8 as g g
  des4 c8 r
  r4 f8\> es
  es4\p des8 r
  r4 es8\> des
  des4\p c8 r
  ces'8.\f ces16 ces8 as
  f4 f8 r
  R2
  R2
  R2
  R2
  R2
  f4.\p f8
  g4 b8 r
  as4 f
  es4 d
  r8 << {\stemNeutral es4 es8 } \\ {s8 s4^\crescMark} >>
  as4 ces
  c!8\f c r4
  es,\p (f)
  es r
  g8 es r4^\crescMark
  as8 es r4
  ges4\f ges
  g!8 es r4
  es4\p (d)
  es4 r
  R2
  R2
  R2

  es4^\markup{Solo} es
  es es
  es4 es8 [as]
  g4 g8 r
  r4 r8.. as32
  << {\stemNeutral as2} \\ {s4^\< s4\!} >>
  as8 as es es
  es4 es8 r

  es4^\markup{Tutti \dynamic p} es
  es4 es8 r
  es4 es
  es es8 r
  r4 r8.. as32
  f4. ~ \times 2/3 {f16 ([a b])}
  as!8 as g g
  g4 as8 r
  r4 f8\> es
  es4\p des8 r
  r4 es8\> des
  des4\p c8 r
  ces'8.\ff ces16 ces8 fes,
  fes4\> es8\! es16 es
  es4\> d\!
  d4\> des8\! r
  R2
  R2
  R2
  R2
  R2
  es4\p es
  es es
  es es
  es g
  r8^\crescMark as4 as8
  as4 b
  ces8\f ces r4
  as4\p (g)
  as8 r r4

  as8^\crescMark es r4
  as8 f r4
  as4\f as
  as8 as r4
  as4\p (g)
  as r4
  R2
  es4\p es
  es4 es4
  es8 [g] as4
  g4 g8 g
  es2
  es8. [e16] r f8. ~
  f16 [es!8.] es8 es
  es8 es r4
  es4 es
  es8 [e] f4
  as8\< ([a\> b g])
  as!8\! r r4
  b2\pp
  as8 r r4
  es2
  es8 r8 r4
  des2
  c8 r r4
  c8^\decrescMark c c c
  c2
  c4 r
  R2^\fermataMarkup


}

scoreATenor = \relative c' {
  \global
  \autoBeamOff
  \dynamicUp

  c4^\markup{Solo} des
  c4 c8 r
  des8 [b] as [c]
  es4 es8 r
  r4 r8..^\crescMark es32
  des4 des\fp ~
  des8 des es es
  es4 es8 r

  c4^\markup{Tutti \dynamic p} des
  c4 c8 r
  es4 es
  es4 es8 r16 es
  es4 as,8.. as32
  f8 ([g16 as] a [b c des])
  es16 [d] des [c] b [c] des [g,]
  g4 as8 r
  r4 f8\> f
  f4\p f8 r
  r4 es8\> es
  es4\p es8 r
  ces'8.\f ces16 ces8 es
  es4 d8 r
  R2

  d4.*2/3^\markup{Solo} s4.*1/3\turn es16. [f32]
  f8 (es4) e8
  f4.*1/3 \beforenaturalturn s4.*2/3\naturalturn g16. [as32]
  as8 g r4^\markup{Tutti}

  b,4.\p b8
  b4 es8 r
  b4 b
  b4 b
  b4 es^\crescMark
  es f
  ges8\f ges r4
  es4\p (d)
  es4 r
  r4 h8^\crescMark h
  r4 d8 b?
  a4\f a
  b8 b r4
  as4\p (f)
  g r
  R2
  R2
  R2

  c4^\markup{Solo} des
  c c
  des8 [(b)] as [(c)]
  es8 [(des)] b [(g)]
  r4 r8.. as32
  as8..\< [f32] des'16.\! ([as32 f'16. des32])
  as8 as b c
  c8. [as16] g8 r

  c4^\markup{Tutti \dynamic p} des
  c4 c8 r
  b4 as
  g4 g8 r
  r4 r8.. as32
  as4 ~ \times 2/3 {as16 ([a b]} \times 2/3 {h16 [c des])}
  es8 c b? des
  des4 c8 r
  r4 f,8\> f8
  f4\p f8 r
  r4 es8\> es
  es4\p es8 r
  ces'8.\ff ces16 ces8 as
  <ges heses>4\> <ges heses>8\! as?16 as
  as4\> as\!
  as4\> b8\! r8
  R2
  R2
  R2
  R2
  R2

  des4\p des
  c4 c
  des des
  c es
  es^\crescMark c
  f e
  f8\f as, r4
  c4\p (b)
  c8 r r4
  r4^\crescMark e8 e
  r4 des?8 b
  ces4\f ces
  c!8 es r4
  des4\p (b)
  c4 r
  R2
  c4\p des
  c c
  des8 [es] es4
  es4 es8 es
  es8 (as,4 g8 ~
  g) as4 b16 [des]
  r8 c4 g8
  g8 as r4
  as4 g ~
  g16 as8~ [as16] ~ as16 [a] b [des] ~
  des8\< c\> ([des b\!])
  c8 r r4
  es2\pp
  es8 r r4
  des2
  c8 r r4
  b2
  as8 r r4
  as8^\decrescMark as as as
  as2
  as4 r
  R2^\fermataMarkup
}

scoreABass = \relative c {
  \global
  \autoBeamOff
  \dynamicUp

  as'4^\markup{Solo} g
  as4 as8 r
  g4 as
  es es8 r
  r4 r8..^\crescMark c32
  des4
  f\fp ~
  f8 f g as
  es4 es8 r

  as,4^\markup{Tutti \dynamic p} g
  as4 as'8 r
  g4 as
  es4 es8 r16 g
  as4 c,8.. c32 des2

  es8 es es es
  as,4 as8 r
  r4 f'8\> a,
  b4\p b8 r
  r4 es8\> g,
  as4\p as8 r
  ces'8.\f ces16 ces8 ces,
  b4 b8 r
  R2
  R2
  R2
  R2
  R2
  as'4.\p as8
  g4 g8 r
  d4 d
  es4 f
  g g^\crescMark
  as as
  a8\f a r4
  b2\p
  es,4 r
  r4 g8^\crescMark g
  r4 f8 d
  ces4\f ces
  b8 b r4
  b2\p
  es4 r
  R2
  R2
  R2

  as8^\markup{Solo} [es] g [es]
  as [es] as [c]
  g4 as
  es4 es8 r
  r4 r8.. c32
  des4\< (f\!)
  f8 f g as
  es4 es8 r

  as4^\markup{Tutti \dynamic p} g
  as4 as8 r
  g4 as
  es4 es8 r
  r4 r8.. as,32
  des2
  es8 es es es
  as,4 as8 r
  r4 f'8\> a,
  b4\p b8 r
  r4 es8\> g,
  as4\p as8 r
  ces'8.\ff ces16 ces8 ces,
  ces4\> ces8\! ces16 ces
  ces4\> b\!
  b\> es8\! r
  R2
  R2
  R2
  R2
  R2
  R2
  R2
  g4 g
  as b
  c^\crescMark c
  des des
  d8\f d, r4
  es2\p
  as8 r r4
  r4^\crescMark c8 c
  r4 b8 g
  fes4\f fes
  es8 es r4
  es2\p as4 r4
  R2
  as8\p [es] g [es]
  as [es] c [as']
  g [es] as [c,]
  es [f] es des
  c4 (b)
  as des
  es es
  as,8 as r4
  c4 b
  as des
  << {\stemNeutral es2 as,8} \\ { \dynamicUp s8\< s\> s s\! } >>
  r r4
  g'8\pp ([f es g])
  as8 r r4
  g8 ([f es g])
  as8 r r4
  es2
  as,8 r r4
  as8^\decrescMark as as as
  as2
  as4 r
  R2^\fermataMarkup
  \bar "|."

}


scoreAFlutePart = \new Staff \with {
  instrumentName = "Flauti."
  midiInstrument = "flute"
  \consists "Merge_rests_engraver"
} \scoreAFlute

scoreAOboePart = \new Staff \with {
  instrumentName = "Oboi."
  midiInstrument = "oboe"
} \scoreAOboe

scoreAClarinetPart = \new Staff \with {
  instrumentName =  \markup { \center-column { "Clarinetti" \line { "in B." } } }
  midiInstrument = "clarinet"
} \scoreAClarinet

scoreABassoonPart = \new Staff \with {
  instrumentName = "Fagotti."
  midiInstrument = "bassoon"
} { \clef bass \scoreABassoon }

scoreAHornFPart = \new Staff \with {
  instrumentName = "Corni in As."
  midiInstrument = "french horn"
} \scoreAHornF

scoreAViolinIPart = \new Staff \with {
  instrumentName = "Violino 1."
  midiInstrument = "violin"
} \scoreAViolinI

scoreAViolinIIPart = \new Staff \with {
  instrumentName = "Violino 2."
  midiInstrument = "violin"
} \scoreAViolinII

scoreAViolaPart = \new Staff \with {
  instrumentName = "Viola."
  midiInstrument = "viola"
} { \clef alto \scoreAViola }

scoreACelloPart = \new Staff \with {
  instrumentName = "Violoncello."
  midiInstrument = "cello"
} { \clef bass \scoreACello }

scoreAContrabassPart = \new Staff \with {
  instrumentName = "Basso."
  midiInstrument = "contrabass"
} { \clef bass \scoreAContrabass }

scoreAChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Soprano."
  } { \scoreASoprano }
  \addlyrics { \scoreASopranoVerse }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Alto."
  } { \scoreAAlto }
  \addlyrics { \scoreAAltoVerse }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenore."
  } { \clef "treble_8" \scoreATenor }
  \addlyrics { \scoreATenorVerse }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Basso."
  } { \clef bass \scoreABass }
  \addlyrics { \scoreABassVerse }
>>

\score {
  <<
    \new StaffGroup <<
      \scoreAFlutePart
      \scoreAOboePart
      \scoreAClarinetPart
      \scoreABassoonPart
    >>
    \scoreAHornFPart
    \new StaffGroup <<
      \new GrandStaff <<
        \scoreAViolinIPart
        \scoreAViolinIIPart
      >>
      \scoreAViolaPart
      \scoreACelloPart
      %\scoreAContrabassPart
    >>
    \scoreAChoirPart
    \new StaffGroup <<
      \override StaffGroup.SystemStartBracket.collapse-height = #4
      \override Score.SystemStartBar.collapse-height = #4
      \scoreAContrabassPart
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
