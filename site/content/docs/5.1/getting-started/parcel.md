---
layout: docs
title: Parcel
description: Узнайте, как включить Bootstrap в свой проект с помощью Parcel.
group: getting-started
toc: true
---

## Установка Parcel

Установка [Parcel Bundler](https://en.parceljs.org/getting_started.html).

## Установка Bootstrap

[Установка bootstrap]({{< docsref "/getting-started/download#npm" >}}) как модуль Node.js с использованием npm.

Bootstrap зависит от [Popper](https://popper.js.org/), который указан в свойстве `peerDependencies`. Это означает, что вам нужно обязательно добавить их обоих в свой `package.json`, используя `npm install @popperjs/core`.

Когда все будет завершено, Ваш проект будет иметь такую структуру:

```text
project-name/
├── build/
├── node_modules/
│   └── bootstrap/
│   └── popper.js/
├── scss/
│   └── custom.scss
├── src/
│   └── index.html
│   └── index.js
└── package.json
```

## Импорт JavaScript

Импортируйте [Bootstrap's JavaScript]({{< docsref "/getting-started/javascript" >}}) в точку входа Вашего приложения (обычно `src/index.js`). Вы можете импортировать все наши плагины в одном файле или по отдельности, если Вам требуется только часть из них.

```js
// Импортировать все плагины
import * as bootstrap from 'bootstrap';

// Или импортируйте только необходимые плагины
import { Tooltip as Tooltip, Toast as Toast, Popover as Popover } from 'bootstrap';

// Или импортируйте только один
import Alert as Alert from '../node_modules/bootstrap/js/dist/alert';
```

## Импорт CSS

Чтобы использовать весь потенциал Bootstrap и настроить его в соответствии с вашими потребностями, используйте исходные файлы как часть процесса сборки вашего проекта.

Создайте свой собственный `scss/custom.scss` для [импорта файлов Bootstrap Sass]({{< docsref "/customize/sass#importing" >}}), а затем переопределите [встроенные пользовательские переменные]({{< docsref "/customize/sass#variable-defaults" >}}).

## Создать приложение

Включите `src/index.js` перед закрывающим тегом `</body>`.

```html
<!doctype html>
<html lang="ru">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
    <script src="./index.js"></script>
  </body>
</html>
```

### Редактирование `package.json`

Добавьте сценарии `dev` и `build` в Ваш файл `package.json`.

```json
"scripts": {
  "dev": "parcel ./src/index.html",
  "prebuild": "npx rimraf build",
  "build": "parcel build --public-url ./ ./src/index.html --experimental-scope-hoisting --out-dir build"
}
```

### Запустить сценарий разработчика (dev)

Ваше приложение будет доступно по адресу `http://127.0.0.1:1234`.

```sh
npm run dev
```

### Сборка файлов приложения

Собранные файлы находятся в папке `build/`.

```sh
npm run build
```
