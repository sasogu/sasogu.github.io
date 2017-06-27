---
layout: post
title: "WordPress"
date:   2017-06-27 15:15:26
description:
permalink: /:year/:month/:day/:title.html
category: tips
tags: [wordpress]
---

# Fer desapareixer la barra d'admin pels usuaris

Editar l'arxiu `funtions.php`

add_filter( 'show_admin_bar', '__return_false' );
