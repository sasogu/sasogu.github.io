---
layout: post
title: "Connexió amb GitHub"
date:   2017-05-01 07:15:26
description:
permalink: /:year/:month/:day/:title.html
category: apunts
tags: [git, github]
---

# 01 Generar claus SSH #

Comprova si tens alguna *clau SSH** generada:

```
ls -l ~/.ssh
```

Les claus SSH es guarden en parells (una clau privada i una pública). Les dues han de tenir el mateix nom, solament que la pública ha d'acabar en `.pub`.

Si en executar el comando anterior comproves que ja tens una clau creada, pots saltar-te el que queda d'aquesta secció i passar a afegir aquesta clau al teu compte de Github.

Si no tens alguna clau creada pots crear una executant aquest comando:

```
ssh-keygen
```

En aquest moment et demanarà una sèrie de dades, que pots ometre perquè prenga uns valors per defecte si prems `enter` en cada pregunta.

Per a comprovar que les claus s'han generat correctament pots executar:

```
ls -l ~/.ssh
```

o si has guardat les claus en un altre directori:

```
ls -l /path/directori/claus
```

i podràs veure els dos fitxers de les claus.


# 02 Assignar les claus SSH al teu compte de Github #

Accedeix al teu compte de Github i entra en la configuracción (settings)

En el menú de l'esquerra, entra en `SSH and GPG keys`

Ara prem sobre `New SSH key`

En el formulari que se t'ha obert, escriu un títol per a la clau, i en l'apartat `key` has de pegar el contingut del fitxer `.pub` que vas generar en l'apartat anterior. Per a açò pots obrir el fitxer amb qualsevol editor de text i copiar el contingut.

Prem sobre `Add SSH key` i ja està tot fet.


# 03 Comprovar que l'operació s'ha realitzat bé #

Executa el següent comando des de la terminal

```
ssh -T git@github.com
```

# 04 Configurar nom i correu

```
$ git config --global user.name "John Doe"

$ git config --global user.email johndoe@example.com
```

# 05 Guardar contrasenya en local

Perquè no ens demane contrasenya cada vegada que enviem canvis a GitHub:

```
$ git config --global credential.helper store
```

La contrasenya del repositori remot queda emmagatzemada en el fitxer `.git-credentials`

Si no volem que quede guardada:

```
$ git config --global credential.helper 'cache --timeout=3600'
```
Quan transcórrega una hora ens tornarà a demanar la contrasenya.
