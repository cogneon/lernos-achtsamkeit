@echo off
echo Starting lernOS PDF Guide Generation ...

REM Required Software
REM See lernOS Core Repository

REM Variables
REM set filename="lernOS-Achtsamkeit42"
REM set chapters=./src/index.md ./src/2-1-lernOS-Wheel.md ./src/2-2-lernOS-Circle.md ./src/2-3-lernOS-Lizenz.md ./src/2-_-lernOS-Grundlagen.md ./src/3-_-Lernpfad_Achtsamkeit.md ./src/3-00-Circle-Gruendung.md ./src/3-01-Energie-Klarheit.md ./src/3-02-Fuehle-erfahre.md ./src/3-03-Ablenkung_Widerstaende.md ./src/3-04-Lebendigkeit-des-Moments.md ./src/3-05-Achtsam-Handeln.md ./src/3-06-Checkup-Reflexion.md ./src/3-07-Balance-Kommunikation.md ./src/3-08-Schatten-Trigger.md ./src/3-09-Schatten-SelbstWirksamkeit.md ./src/3-10-Integration-Werte.md ./src/3-11-Prioritaeten-Alltag.md ./src/3-12-Ende-Anfang.md ./src/4-_-Stop-talking.md

REM Delete Old Versions
echo Deleting old versions ...
del lernOS-Achtsamkeit42-Woche*.pdf

REM Create PDF Version (pdf)

set filename="lernOS-Achtsamkeit42-Woche00"
set chapters=./src/3-00-Circle-Gruendung.md
pandoc metadataWeeklyPDFs.yaml --from markdown --resource-path="./src" --template lernOS -V lang=de-de %chapters% -o %filename%.pdf 

set filename="lernOS-Achtsamkeit42-Woche01"
set chapters=./src/3-01-Energie-Klarheit.md
pandoc metadataWeeklyPDFs.yaml --from markdown --resource-path="./src" --template lernOS -V lang=de-de %chapters% -o %filename%.pdf 

set filename="lernOS-Achtsamkeit42-Woche02"
set chapters=./src/3-02-Fuehle-erfahre.md
pandoc metadataWeeklyPDFs.yaml --from markdown --resource-path="./src" --template lernOS -V lang=de-de %chapters% -o %filename%.pdf 

set filename="lernOS-Achtsamkeit42-Woche03"
set chapters=./src/3-03-Ablenkung_Widerstaende.md
pandoc metadataWeeklyPDFs.yaml --from markdown --resource-path="./src" --template lernOS -V lang=de-de %chapters% -o %filename%.pdf 

set filename="lernOS-Achtsamkeit42-Woche04"
set chapters=./src/3-04-Lebendigkeit-des-Moments.md
pandoc metadataWeeklyPDFs.yaml --from markdown --resource-path="./src" --template lernOS -V lang=de-de %chapters% -o %filename%.pdf 

set filename="lernOS-Achtsamkeit42-Woche05"
set chapters=./src/3-05-Achtsam-Handeln.md
pandoc metadataWeeklyPDFs.yaml --from markdown --resource-path="./src" --template lernOS -V lang=de-de %chapters% -o %filename%.pdf 

set filename="lernOS-Achtsamkeit42-Woche06"
set chapters=./src/3-06-Checkup-Reflexion.md
pandoc metadataWeeklyPDFs.yaml --from markdown --resource-path="./src" --template lernOS -V lang=de-de %chapters% -o %filename%.pdf 

set filename="lernOS-Achtsamkeit42-Woche07"
set chapters=./src/3-07-Balance-Kommunikation.md
pandoc metadataWeeklyPDFs.yaml --from markdown --resource-path="./src" --template lernOS -V lang=de-de %chapters% -o %filename%.pdf 

set filename="lernOS-Achtsamkeit42-Woche08"
set chapters=./src/3-08-Schatten-Trigger.md
pandoc metadataWeeklyPDFs.yaml --from markdown --resource-path="./src" --template lernOS -V lang=de-de %chapters% -o %filename%.pdf 

set filename="lernOS-Achtsamkeit42-Woche09"
set chapters=./src/3-09-Schatten-SelbstWirksamkeit.md
pandoc metadataWeeklyPDFs.yaml --from markdown --resource-path="./src" --template lernOS -V lang=de-de %chapters% -o %filename%.pdf 

set filename="lernOS-Achtsamkeit42-Woche10"
set chapters=./src/3-10-Integration-Werte.md
pandoc metadataWeeklyPDFs.yaml --from markdown --resource-path="./src" --template lernOS -V lang=de-de %chapters% -o %filename%.pdf 

set filename="lernOS-Achtsamkeit42-Woche11"
set chapters=./src/3-11-Prioritaeten-Alltag.md
pandoc metadataWeeklyPDFs.yaml --from markdown --resource-path="./src" --template lernOS -V lang=de-de %chapters% -o %filename%.pdf 

set filename="lernOS-Achtsamkeit42-Woche12"
set chapters=./src/3-12-Ende-Anfang.md
pandoc metadataWeeklyPDFs.yaml --from markdown --resource-path="./src" --template lernOS -V lang=de-de %chapters% -o %filename%.pdf 

echo Done. Check for error messages or warnings above. 

pause
