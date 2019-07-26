# mdtopdf

Converting markdown to pdf via pandoc. 

Based on the official pandoc/latex Dockerfile, extended with the following typefaces:
- IBM Plex 

## How to build 

```
docker build -t mdtopdf . 
```

## How to use

Add the following lines to the beginning of your md file (modify as you will): 
```
---
title: Some Title
fontfamilyoptions: sfdefault
mainfont: IBM Plex Sans
monofont: IBM Plex Mono
monofontoptions: Colour=0070c0
toccolor: Emerald
urlcolor: DarkOrchid
linkcolor: DarkOrchid
---
```

Add the following bash script to the directory where the md file resides: 
```bash
#!/bin/sh
pandoc --pdf-engine=xelatex --toc --number-sections -V geometry:margin=1in -o file.pdf file.md
```

Run: 
```bash 
docker run --volume "`pwd`:/data" --entrypoint "/data/script.sh" mdtopdf 
```

and file.pdf will be generated. 
