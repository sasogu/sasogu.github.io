---
layout: post
title: "Markdown"
date:   2017-05-01 07:15:26
description:
permalink: /:year/:month/:day/:title.html
category: tips
tags: [apunts]
---

# 01 Generar claves SSH #

Comprueba si tienes alguna **clave SSH** generada:

```
ls -l ~/.ssh
```

Las claves SSH se guardan en pares (una clave privada y una pública). Las dos deben tener el mismo nombre, solo que la pública debe acabar en `.pub`.

Si al ejecutar el comando anterior compruebas que ya tienes una clave creada, puedes saltarte lo que queda de esta sección y pasar a añadir dicha clave a tu cuenta de Github.

Si no tienes alguna clave creada puedes crear una ejecutando este comando:

```
ssh-keygen
```

En este momento te pedirá una serie de datos, que puedes omitir para que tome unos valores por defecto si pulsas `enter` en cada pregunta.

Para comprobar que las claves se han generado correctamente vuele a ejecutar:

```
ls -l ~/.ssh
```

o si has guardado las claves en otro directorio:

```
ls -l /path/directorio/claves
```

y podrás ver los dos ficheros de las claves.


# 02 Asignar las claves SSH a tu cuenta de Github #

Accede a tu cuenta de Github y entra en la configuracción (settings)

En el menú de la izquierda, entra en `SSH and GPG keys`

Ahora pulsa sobre `New SSH key`

En el formulario que se te ha abierto, escribe un título para la clave, y en el apartado `key` tienes que pegar el contenido del fichero `.pub` que generaste en el apartado anterior. Para ello puedes abrir el fichero con cualquier editor de texto y copiar el contenido.

Pulsa sobre `Add SSH key` y ya está todo hecho.


# 03 Comprobar que la operación se ha realizado bien #

Ejecuta el siguiente comando desde la terminal

```
ssh -T git@github.com
```

# 04 Configurar nombre y correo

```
$ git config --global user.name "John Doe"

$ git config --global user.email johndoe@example.com
```

# 05 Guardar contraseña en local

Para que no nos pida contraseña cada vez que enviamos cambios a GitHub:

```
$ git config --global credential.helper store
```

La contraseña del repositorio remoto queda almacenada en el fichero `.git-credentials`

Si no queremos que quede guardada:

```
$ git config --global credential.helper 'cache --timeout=3600'
```
Cuando transcurra una hora nos volverá a pedir la contraseña.
