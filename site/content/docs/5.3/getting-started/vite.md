---
layout: docs
title: Bootstrap и Vite
description: Официальное руководство о том, как включить CSS и JavaScript Bootstrap в свой проект с помощью Vite.
group: getting-started
toc: true
thumbnail: guides/bootstrap-vite@2x.png
---

<img class="mb-4 img-fluid rounded-3" srcset="/docs/{{< param docs_version >}}/assets/img/guides/bootstrap-vite.png, /docs/{{< param docs_version >}}/assets/img/guides/bootstrap-vite@2x.png 2x" src="/docs/{{< param docs_version >}}/assets/img/guides/bootstrap-vite.png" width="2000" height="1000" alt="">

{{< callout >}}
**Хотите перейти к концу?** Загрузите исходный код и рабочую демонстрацию для этого руководства из [репозитория twbs/examples](https://github.com/twbs/examples/tree/main/vite). Вы также можете [открыть пример в StackBlitz](https://stackblitz.com/github/twbs/examples/tree/main/vite?file=index.html) для редактирования в реальном времени.
{{< /callout >}}

## Установка

Мы создаем проект Vite с Bootstrap с нуля, поэтому есть некоторые предварительные условия и предварительные шаги, прежде чем мы действительно сможем начать. Это руководство требует, чтобы у вас был установлен Node.js и вы немного знакомы с терминалом.

1. **Создайте папку проекта и установите npm.** Мы создадим папку `my-project` и инициализируем npm с аргументом `-y`, чтобы он не задавал нам все интерактивные вопросы.

   ```sh
   mkdir my-project && cd my-project
   npm init -y
   ```

2. **Установите Vite.** В отличие от нашего руководства по Webpack, здесь есть только одна зависимость от инструмента сборки. Мы используем `--save-dev`, чтобы указать, что эта зависимость предназначена только для разработки, а не для продакшена.

   ```sh
   npm i --save-dev vite
   ```

3. **Установите Bootstrap.** Теперь мы можем установить Bootstrap. Мы также установим Popper, так как наши раскрывающиеся списки, всплывающие окна и всплывающие подсказки зависят от его позиционирования. Если вы не планируете использовать эти компоненты, вы можете опустить здесь Popper.

   ```sh
   npm i --save bootstrap @popperjs/core
   ```

4. **Установите дополнительные зависимости.** В дополнение к Vite и Bootstrap нам нужна еще одна зависимость (Sass), чтобы правильно импортировать и связывать CSS Bootstrap.

   ```sh
   npm i --save-dev sass
   ```

Теперь, когда у нас установлены и настроены все необходимые зависимости, мы можем приступить к созданию файлов проекта и импорту Bootstrap.

## Структура проекта

Мы уже создали папку `my-project` и инициализировали npm. Теперь мы также создадим нашу папку `src`, таблицу стилей и файл JavaScript, чтобы завершить структуру проекта. Запустите следующее из `my-project` или вручную создайте структуру папок и файлов, показанную ниже.

```sh
mkdir {src,src/js,src/scss}
touch src/index.html src/js/main.js src/scss/styles.scss vite.config.js
```

Когда вы закончите, ваш полный проект должен выглядеть так:

```text
my-project/
├── src/
│   ├── js/
│   │   └── main.js
│   └── scss/
│   |   └── styles.scss
|   └── index.html
├── package-lock.json
├── package.json
└── vite.config.js
```

На данный момент все в порядке, но Vite не будет работать, потому что мы еще не заполнили наш `vite.config.js`.

## Конфигурация Vite

С установленными зависимостями и готовой папкой проекта для начала написания кода мы теперь можем настроить Vite и запустить наш проект локально.

1. **Откройте `vite.config.js` в вашем редакторе.** Поскольку он пуст, нам нужно добавить в него шаблонную конфигурацию, чтобы мы могли запустить наш сервер. Эта часть конфигурации сообщает Vite, где искать JavaScript нашего проекта и как должен вести себя сервер разработки (извлечение из папки `src` с горячей перезагрузкой).

   <!-- eslint-skip -->
   ```js
   const path = require('path')

   export default {
     root: path.resolve(__dirname, 'src'),
     build: {
       outDir: '../dist'
     },
     server: {
       port: 8080,
       hot: true
     }
   }
   ```

2. **Далее мы заполняем `src/index.html`.** Это HTML-страница, которую Vite загрузит в браузер, чтобы использовать связанные CSS и JS, которые мы добавим к ней на последующих этапах.

   ```html
   <!doctype html>
   <html lang="en">
     <head>
       <meta charset="utf-8">
       <meta name="viewport" content="width=device-width, initial-scale=1">
       <title>Bootstrap w/ Vite</title>
       <script type="module" src="./js/main.js"></script>
     </head>
     <body>
       <div class="container py-4 px-3 mx-auto">
         <h1>Hello, Bootstrap and Vite!</h1>
         <button class="btn btn-primary">Primary button</button>
       </div>
     </body>
   </html>
   ```

   Мы добавили сюда немного стилей Bootstrap с помощью `div class="container"` и `<button>`, чтобы видеть, когда CSS Bootstrap загружается Vite.

3. **Теперь нам нужен скрипт npm для запуска Vite.** Откройте `package.json` и добавьте сценарий `start`, показанный ниже (у вас уже должен быть тестовый сценарий). Мы будем использовать этот скрипт для запуска нашего локального сервера разработки Vite.

   ```json
   {
     // ...
     "scripts": {
       "start": "vite",
       "test": "echo \"Error: no test specified\" && exit 1"
     },
     // ...
   }
   ```

4. **И, наконец, мы можем запустить Vite.** Из папки `my-project` в вашем терминале запустите только что добавленный скрипт npm:

   ```sh
   npm start
   ```

   <img class="img-fluid" src="/docs/{{< param docs_version >}}/assets/img/guides/vite-dev-server.png" alt="Vite dev server running">

В следующем и последнем разделе этого руководства мы импортируем весь CSS и JavaScript Bootstrap.

## Импорт Bootstrap

1. **Импортируйте CSS Bootstrap.** Добавьте следующее в `src/scss/styles.scss`, чтобы импортировать весь исходный код Bootstrap Sass.

   ```scss
   // Import all of Bootstrap's CSS
   @import "bootstrap/scss/bootstrap";
   ```

   *Вы также можете импортировать наши таблицы стилей по отдельности, если хотите. [Прочитайте нашу документацию по импорту Sass]({{< docsref "/customize/sass#importing" >}}) для подробностей.*

2. **Далее мы загружаем CSS и импортируем JavaScript из Bootstrap.** Добавьте следующее в `src/js/main.js`, чтобы загрузить CSS и импортировать все JS из Bootstrap. Popper будет автоматически импортирован через Bootstrap.

   <!-- eslint-skip -->
   ```js
   // Импортируйте наш пользовательский CSS
   import '../scss/styles.scss'

   // Импортируйте весь JS Bootstrap
   import * as bootstrap from 'bootstrap'
   ```

   Вы также можете импортировать плагины JavaScript по отдельности, если это необходимо, чтобы уменьшить размеры пакетов:

   <!-- eslint-skip -->
   ```js
   import Alert from 'bootstrap/js/dist/alert';

   // или укажите, какие плагины вам нужны:
   import { Tooltip, Toast, Popover } from 'bootstrap';
   ```

   *[Прочитайте нашу документацию по JavaScript]({{< docsref "/getting-started/javascript/" >}}) для получения дополнительной информации о том, как использовать плагины Bootstrap.*

3. **И готово! 🎉** С полностью загруженным исходным кодом Bootstrap Sass и JS ваш локальный сервер разработки теперь должен выглядеть так.

   <img class="img-fluid" src="/docs/{{< param docs_version >}}/assets/img/guides/vite-dev-server-bootstrap.png" alt="Vite dev server running with Bootstrap">

   Теперь вы можете начать добавлять любые компоненты Bootstrap, которые хотите использовать. Обязательно [ознакомьтесь с полным примером проекта Vite](https://github.com/twbs/examples/tree/main/vite), чтобы узнать, как включить дополнительный пользовательский Sass и оптимизировать свою сборку, импортируя только части CSS и JS Bootstrap, которые вам нужны.

{{< markdown >}}
{{< partial "guide-footer.md" >}}
{{< /markdown >}}
