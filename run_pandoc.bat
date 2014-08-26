REM pandoc slide.md -t beamer -V theme:Warsaw -o slide.pdf

pandoc slide.md --slide-level 2 -t beamer -o slide.tex

REM activate double texing if you need the table of content
REM pdflatex talk.tex
pdflatex talk.tex

REM "D:\util\EvincePortable\EvincePortable.exe" talk.pdf

"D:\util\SumatraPDFPortable\SumatraPDFPortable.exe" talk.pdf
