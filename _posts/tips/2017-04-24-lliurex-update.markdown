---
layout: post
title: "Eliminar filtre de Lliurex"
date:   2017-04-24 07:15:26
description:
permalink: /:year/:month/:day/:title.html
category: tips
tags: [lliurex, lliurex 16]
---

Si necessites instal·lar un programa i Lliurex no et deixa executa:

    sudo rm /etc/apt/preferences.d/lliurex-pinning

Açò esborrarà el filtre que impedeix que coses alienes a LliureX desbaraten el sistema.

Després `sudo apt-get update`
