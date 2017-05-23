---
layout: post
title: "Reduir pes d'un pdf"
date:   2017-05-21 15:15:26
description:
permalink: /:year/:month/:day/:title.html
category: tips
tags: [terminal, pdf]
---


    sudo apt-get install ghostscript

Per a realitzar la conversió-optimització necessitem que l'arxiu que volem optimitzar tinga de nom original.pdf (es pot canviar però també necessites canviar-ho en el comando següent), fiquem la següent linea en la nostra terminal de comandos:

    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=optimizado.pdf original.pdf

Una vegada acabat el procés es genera un arxiu anomenat optimitzat.pdf que tindrà un pes inferior a l'original

Però i si encara segueix sent molt gran? tenim un altre comando que encara ho redueix més:

    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=optimizado.pdf original.pdf

font: http://www.mancera.org/2014/02/02/reducir-peso-de-un-archivo-pdf-en-linux/
