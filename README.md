# Gottlob Benedikt Bierey: Agnus Dei, based on Ludwig van Beethoven's Opus 10 No. 1

## Introduction

This repository contains LilyPond files for "Agnus Dei" of Gottlob Benedikt Bierey, based on Ludwig van Beethoven's Opus 10 No. 1. To typeset the files, you need a recent LilyPond version that supports version 2.19.81. Furthermore, you need to add the `includes` directory to the search path for input files:

```
lilypond -dno-point-and-click -I ./includes AgnusDei.ly
```

In the [releases of this Github repository](https://github.com/fzalkow/bierey-beethoven-agnus-dei/releases), you find pre-compiled PDF files for the full score as well as the orchestral parts.

## Background

The vocal ensemble St. Lorenz (conductor Matthias Ank) from Nuremberg, Germany, planned to perform the orchestral version of the "Agnus Dei" on March 23, 2020. Because of the 2019/20 coronavirus pandemic, the concert did not happen. A modern sheet music edition for the piece was available from the Carus music publisher only for a version with an organ accompaniment. That was the reason I decided to typeset the original orchestral version for the rehearsals and the concert. In this repository, I provide the source files for my edition. Please note that there are differences in the lyrics between the orchestral version and the organ version of Carus.

## License

This project is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).

## Source

The source for this project is hosted in the Austrian National Library, music collection, signature F24.St.Peter.F158.
http://digital.onb.ac.at/RepViewer/viewer.faces?doc=DTL_7300129&order=1&view=SINGLE
