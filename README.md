# mdtopdf

Converting markdown to pdf via pandoc. 

Based on the official pandoc/latex Dockerfile, extended with the following typefaces:
- IBM Plex 

## How to use

1. Add the following lines to the beginning of your md file (modify as you will): 
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

2. Create `script.sh` with the following content (adapt to match your desired input md and output pdf files).    
   ```bash
   #!/bin/sh
   pandoc --pdf-engine=xelatex --toc --number-sections -V geometry:margin=1in -o file.pdf file.md
   ```
   
3. Make it executable, and add it to the directory where the md file resides.

4. Run: 
   ```bash 
   docker run --volume "`pwd`:/data" --entrypoint "/data/script.sh" anastop/mdtopdf 
   ```
   and file.pdf will be generated. 
