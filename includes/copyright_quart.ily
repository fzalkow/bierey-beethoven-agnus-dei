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

copyright = \markup {
    \fontsize #-3
    \fill-line {
      \hspace #-8
      \right-column {
        \line {\bold{"Quelle: "}}
        \line {" "}
        \line {\bold{"Weblink: "}}
      }
      \column {
        \line { "Österreichische Nationalbibliothek, Musiksammlung," }
        \line { "Signatur F24.St.Peter.F158" }
        \line { \with-url #"http://data.onb.ac.at/rec/AC14328474" { "http://data.onb.ac.at/rec/AC14328474" } }
      }
      \hspace #-5
      \right-column {
        \line {\bold{"Edition: "}}
        \line {\bold{"Weblink: "}}
        \line {\bold{"Lizenz: "}}
      }
      \column {
        \line { "Frank Zalkow; Edition Lilienteich, Karlsruhe" }
        \line { \with-url #"https://github.com/fzalkow/bierey-beethoven-agnus-dei" { "https://github.com/fzalkow/bierey-beethoven-agnus-dei" } }
        \line { "Creative Commons Attribution 4.0 International License" }
      }
      \hspace #1.5
      \right-column {
        \line { \vspace #1.5 }
        %\line { \with-url #"https://github.com/fzalkow/bierey-beethoven-agnus-dei" {\epsfile #Y #6.0 #"includes/qrcode.eps"} \hspace #0.5 \with-url #"http://creativecommons.org/licenses/by/4.0/" {\epsfile #Y #6.0 #"includes/cc_by.eps"}}
        \line { \with-url #"https://github.com/fzalkow/bierey-beethoven-agnus-dei" {\epsfile #Y #6.0 #"includes/qrcode.eps"} \hspace #0.5 \with-url #"http://creativecommons.org/licenses/by/4.0/" {\epsfile #Y #6.0 #"includes/cc.eps"} {\epsfile #Y #6.0 #"includes/by.eps"}}
      }
      \hspace #3.0
    }
  }
