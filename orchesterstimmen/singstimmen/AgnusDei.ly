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
\include "../../includes/text_erstdruck.ly"

\header {
  \include "header.ly"
  poet = \markup { \box \pad-markup #0.5 "Canto" }
}


global = {
  \key as \major
  \time 2/4
  \override TupletBracket.bracket-visibility = ##f
  \compressFullBarRests
  \override MultiMeasureRest.expand-limit = #1
}


scoreASoprano = \relative c'' {
  \global
  \tempo "Adagio" 8=63
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

scoreASopranoVerse = \lyricmode {
  A -- gnus De -- i,
  A -- gnus __ De -- i,
  qui tol -- lis,
  qui  tol -- lis __
  pec -- ca -- ta mun -- di.

  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis,
  qui tol -- lis
  pec -- ca -- ta mun -- di,

  mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- stri.

  Do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem.

  A -- gnus De -- i, __
  a -- gnus De -- i, __
  qui __ tol -- lis,
  qui tol -- lis __
  pec -- ca -- ta __ mun -- di.

  A -- gnus De -- i,
  a -- gnus De -- i,
  qui  tol -- lis
  pec -- ca -- ta mun -- di,

  mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- stri,
  mi -- se -- re -- re no -- stri.

  Do -- na no -- bis,
  do -- na pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis
  pa -- cem.

  A -- gnus De -- i, __
  a -- gnus __ De -- i,
  qui  tol -- lis
  pec -- ca -- ta __ mun -- di,
  mi -- se -- re -- re __ nos -- tri,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem.

  %Agnus Dei, qui tollis peccata mundi, miserere nobis.
  %Agnus Dei, qui tollis peccata mundi, miserere nobis.
  %Agnus Dei, qui tollis peccata mundi, dona nobis pacem.

}

scoreAAltoVerse = \lyricmode {
  A -- gnus De -- i,
  A -- gnus De -- i,
  qui  tol -- lis __
  pec -- ca -- ta mun -- di.

  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis,
  qui tol -- lis
  pec -- ca -- ta mun -- di,

  mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- stri.

  Do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem.

  A -- gnus De -- i,
  a -- gnus De -- i,
  qui tol -- lis
  pec -- ca -- ta mun -- di.

  A -- gnus De -- i,
  a -- gnus De -- i,
  qui  tol -- lis
  pec -- ca -- ta mun -- di,

  mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- stri,
  mi -- se -- re -- re no -- stri.

  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis
  pa -- cem.

  A -- gnus De -- i,
  a -- gnus De -- i,
  qui  tol -- lis __
  pec -- ca -- ta mun -- di,
  mi -- se -- re -- re nos -- tri,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem.

  %Agnus Dei, qui tollis peccata mundi, miserere nobis.
  %Agnus Dei, qui tollis peccata mundi, miserere nobis.
  %Agnus Dei, qui tollis peccata mundi, dona nobis pacem.

}

scoreATenorVerse = \lyricmode {
  A -- gnus De -- i,
  A -- gnus De -- i,
  qui  tol -- lis __
  pec -- ca -- ta mun -- di.

  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis,
  qui tol -- lis __
  pec -- ca -- ta mun -- di,

  mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- stri.

  Do -- na, do -- na no -- bis __ pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem.

  A -- gnus De -- i,
  a -- gnus De -- i, __
  qui tol -- _ lis
  pec -- ca -- ta mun -- di.

  A -- gnus De -- i,
  a -- gnus De -- i,
  qui  tol -- lis
  pec -- ca -- ta mun -- di,

  mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- stri,
  mi -- se -- re -- re no -- stri.

  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis
  pa -- cem.

  A -- gnus De -- i,
  a -- gnus De -- i,
  qui  tol -- lis
  pec -- ca -- ta mun -- di,
  mi -- se -- re -- re __ nos -- tri,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem.

  %Agnus Dei, qui tollis peccata mundi, miserere nobis.
  %Agnus Dei, qui tollis peccata mundi, miserere nobis.
  %Agnus Dei, qui tollis peccata mundi, dona nobis pacem.

}

scoreABassVerse = \lyricmode {
  A -- gnus De -- i,
  A -- gnus De -- i,
  qui  tol -- lis __
  pec -- ca -- ta mun -- di.

  A -- gnus De -- i,
  A -- gnus De -- i,
  qui tol -- lis,
  qui tol -- lis
  pec -- ca -- ta mun -- di,

  mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- stri.

  Do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem.

  A -- gnus De -- i, __
  a -- gnus De -- i,
  qui tol -- lis
  pec -- ca -- ta mun -- di.

  A -- gnus De -- i,
  a -- gnus De -- i,
  qui  tol -- lis
  pec -- ca -- ta mun -- di,

  mi -- se -- re -- re,
  mi -- se -- re -- re,
  mi -- se -- re -- re no -- stri,
  mi -- se -- re -- re no -- stri.

  pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis
  pa -- cem.

  A -- gnus De -- i, __
  a -- gnus De -- i,
  qui  tol -- lis
  pec -- ca -- ta mun -- di,
  mi -- se -- re -- re nos -- tri,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem.

  %Agnus Dei, qui tollis peccata mundi, miserere nobis.
  %Agnus Dei, qui tollis peccata mundi, miserere nobis.
  %Agnus Dei, qui tollis peccata mundi, dona nobis pacem.

}


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
    \scoreAChoirPart
    \new StaffGroup <<
      \override StaffGroup.SystemStartBracket.collapse-height = #4
      \override Score.SystemStartBar.collapse-height = #4
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
