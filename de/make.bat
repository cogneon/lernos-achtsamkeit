@echo off
echo Starting lernOS Guide Generation ...

REM Required Software
REM See lernOS Core Repository

REM Variables
set filename="lernOS-Achtsamkeit42"
set chapters=./src/index.md ./src/2-1-lernOS-Wheel.md ./src/2-2-lernOS-Circle.md ./src/2-3-lernOS-Lizenz.md ./src/2-_-lernOS-Grundlagen.md ./src/3-_-Lernpfad_Achtsamkeit.md ./src/3-00-Circle-Gruendung.md ./src/3-01-Energie-Klarheit.md ./src/3-02-Fuehle-erfahre.md ./src/3-03-Ablenkung_Widerstaende.md ./src/3-04-Lebendigkeit-des-Moments.md ./src/3-05-Achtsam-Handeln.md ./src/3-06-Checkup-Reflexion.md ./src/3-07-Balance-Kommunikation.md ./src/3-08-Schatten-Trigger.md ./src/3-09-Schatten-SelbstWirksamkeit.md ./src/3-10-Integration-Werte.md ./src/3-11-Prioritaeten-Alltag.md ./src/3-12-Ende-Anfang.md ./src/4-_-Stop-talking.md

REM Delete Old Versions
echo Deleting old versions ...
del %filename%.docx %filename%.epub %filename%.mobi %filename%.html %filename%.pdf

REM Create Microsoft Word Version (docx)
echo Creating Word version ...
pandoc metadata.yaml -s --resource-path="./src" %chapters% -o %filename%.docx --verbose

REM Create HTML Version (html)
echo Creating HTML version ...
pandoc metadata.yaml -s --resource-path="./src" --toc %chapters% -o %filename%.html --verbose

REM Create Web Version (mkdocs)
echo Creating Web Version ...
python -m mkdocs build

pause
exit

REM Create PDF Version (pdf)
echo Creating PDF version ...
pandoc metadata.yaml --from markdown --resource-path="./src" --template lernOS --number-sections -V lang=de-de %chapters% -o %filename%.pdf 

REM Create eBook Versions (epub, mobi)
echo Creating eBook versions ...
magick -density 300 %filename%.pdf[0] src/images/ebook-cover.jpg
magick mogrify -size 2500x2500 -resize 2500x2500 src/images/ebook-cover.jpg
magick mogrify -crop 1563x2500+102+0 src/images/ebook-cover.jpg
pandoc metadata.yaml -s --resource-path="./src" --epub-cover-image=src/images/ebook-cover.jpg %chapters% -o %filename%.epub
ebook-convert %filename%.epub %filename%.mobi


echo Done. Check for error messages or warnings above. 

pause
