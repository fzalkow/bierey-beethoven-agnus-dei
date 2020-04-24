copyright = \markup {
    \fontsize #-3
    \fill-line {
      \hspace #1.0
      \right-column {
        \line {\bold{"Quelle: "}}
        \line {" "}
        \line {\bold{"Weblink: "}}
      }
      %\hspace #0.1
      \column {
        \line { "Österreichische Nationalbibliothek, Musiksammlung," }
        \line { "Signatur F24.St.Peter.F158" }
        \line { \with-url #"http://data.onb.ac.at/rec/AC14328474" { "http://data.onb.ac.at/rec/AC14328474" } }
      }
      \hspace #2.0
      \right-column {
        \line {\bold{"Editierung & Notensatz: "}}
        \line {\bold{"Weblink: "}}
        \line {\bold{"Lizenz: "}}
      }
      %\hspace #0.1
      \column {
        \line { "Frank Zalkow" }
        \line { \with-url #"https://github.com/fzalkow/bierey-beethoven-agnus-dei" { "https://github.com/fzalkow/bierey-beethoven-agnus-dei" } }
        \line { "Creative Commons Attribution 4.0 International License" }
      }
      \hspace #2.0
      \right-column {
        \line { \vspace #1.5 }
        \line { \with-url #"https://github.com/fzalkow/bierey-beethoven-agnus-dei" {\epsfile #Y #6.0 #"qrcode.eps"} \hspace #0.5 \with-url #"http://creativecommons.org/licenses/by/4.0/" {\epsfile #Y #6.0 #"cc_by.eps"}}
      }
      \hspace #1.0
    }
  }
