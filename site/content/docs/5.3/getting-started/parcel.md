---
layout: docs
title: Bootstrap и Parcel
description: Официальное руководство о том, как включить CSS и JavaScript Bootstrap в свой проект с помощью Parcel.
group: getting-started
toc: true
thumbnail: guides/bootstrap-parcel@2x.png
---

<img class="d-block mx-auto mb-4 img-fluid rounded-3" srcset="/docs/{{< param docs_version >}}/assets/img/guides/bootstrap-parcel.png, /docs/{{< param docs_version >}}/assets/img/guides/bootstrap-parcel@2x.png 2x" src="/docs/{{< param docs_version >}}/assets/img/guides/bootstrap-parcel.png" width="800" height="400" alt="">

{{< callout >}}
**Хотите перейти к концу?** Загрузите исходный код и рабочую демонстрацию для этого руководства из [репозитория twbs/examples](https://github.com/twbs/examples/tree/main/parcel). Вы также можете [открыть пример в StackBlitz](https://stackblitz.com/github/twbs/examples/tree/main/parcel?file=index.html), но не запускать его, потому что Parcel в настоящее время там не поддерживается.
{{< /callout >}}

## Что такое Parcel?

[Parcel](https://parceljs.org/) — это упаковщик веб-приложений, разработанный для упрощения процесса разработки с настройкой без настройки из коробки. Он предлагает функции, имеющиеся в более продвинутых упаковщиках, при этом фокусируясь на простоте использования, что делает его идеальным для разработчиков, ищущих быстрый старт.

## Установка

Мы создаем проект Parcel с Bootstrap с нуля, поэтому есть некоторые предварительные условия и предварительные шаги, прежде чем мы действительно сможем начать работу. Это руководство требует, чтобы у вас был установлен Node.js и вы были немного знакомы с терминалом.

1. **Создайте папку проекта и установите npm.** Мы создадим папку `my-project` и инициализируем npm с аргументом `-y`, чтобы он не задавал нам все интерактивные вопросы.

   ```sh
   mkdir my-project && cd my-project
   npm init -y
   ```

2. **Установите Parcel.** В отличие от нашего руководства по Webpack, здесь есть только одна зависимость от инструмента сборки. Parcel автоматически установит языковые преобразователи (например, Sass) по мере их обнаружения. Мы используем `--save-dev`, чтобы указать, что эта зависимость предназначена только для разработки, а не для производства.

   ```sh
   npm i --save-dev parcel
   ```

3. **Установите Bootstrap.** Теперь мы можем установить Bootstrap. Мы также установим Popper, так как наши раскрывающиеся списки, всплывающие окна и всплывающие подсказки зависят от его позиционирования. Если вы не планируете использовать эти компоненты, вы можете опустить здесь Popper.

   ```sh
   npm i --save bootstrap @popperjs/core
   ```

Теперь, когда у нас установлены все необходимые зависимости, мы можем приступить к созданию файлов проекта и импорту Bootstrap.

## Структура проекта

Мы уже создали папку `my-project` и инициализировали npm. Теперь мы также создадим нашу папку `src`, таблицу стилей и файл JavaScript, чтобы завершить структуру проекта. Запустите следующее из `my-project` или вручную создайте структуру папок и файлов, показанную ниже.

```sh
mkdir {src,src/js,src/scss}
touch src/index.html src/js/main.js src/scss/styles.scss
```

Когда вы закончите, ваш полный проект должен выглядеть так:

```text
my-project/
├── src/
│   ├── js/
│   │   └── main.js
│   ├── scss/
│   │   └── styles.scss
│   └── index.html
├── package-lock.json
└── package.json
```

На данный момент все в правильном месте, но Parcel нужна HTML-страница и скрипт npm для запуска нашего сервера.

## Конфигурация Parcel

С установленными зависимостями и готовой папкой нашего проекта для начала написания кода мы теперь можем настроить Parcel и запустить наш проект локально. Parcel сам по себе не требует файла конфигурации, но нам нужен скрипт npm и файл HTML для запуска нашего сервера.

1. **Заполните файл `src/index.html`.** Parcel нужна страница для рендеринга, поэтому мы используем нашу страницу `index.html` , чтобы настроить базовый HTML, включая наши файлы CSS и JavaScript.

   ```html
   <!doctype html>
   <html lang="en">
     <head>
       <meta charset="utf-8">
       <meta name="viewport" content="width=device-width, initial-scale=1">
       <title>Bootstrap w/ Parcel</title>
       <link rel="stylesheet" href="scss/styles.scss">
       <script type="module" src="js/main.js"></script>
     </head>
     <body>
       <div class="container py-4 px-3 mx-auto">
         <h1>Hello, Bootstrap and Parcel!</h1>
         <button class="btn btn-primary">Primary button</button>
       </div>
     </body>
   </html>
   ```

   Мы добавили сюда немного стилей Bootstrap с помощью `div class="container"` и `<button>`, чтобы мы видели, когда CSS Bootstrap загружается Parcel.

   Parcel автоматически обнаружит, что мы используем Sass, и установит [плагин Sass Parcel](https://parceljs.org/languages/sass/) для его поддержки. Однако, если хотите, вы также можете вручную запустить `npm i --save-dev @parcel/transformer-sass`.

2. **Добавьте npm-сценарии Parcel.** Откройте `package.json` и добавьте следующий сценарий `start` к объекту `scripts`. Мы будем использовать этот скрипт для запуска нашего сервера разработки Parcel и рендеринга HTML-файла, который мы создали после его компиляции в каталог `dist`.

   ```json
   {
      // ...
      "scripts": {
        "start": "parcel serve src/index.html --public-url / --dist-dir dist",
        "test": "echo \"Error: no test specified\" && exit 1"
      },
      // ...
   }
   ```

3. **И, наконец, мы можем запустить Parcel.** Из папки `my-project` в вашем терминале запустите только что добавленный скрипт npm:

   ```sh
   npm start
   ```

   ![Parcel dev server running](/assets/img/guides/parcel-dev-server.png)

В следующем и последнем разделе этого руководства мы импортируем весь CSS и JavaScript Bootstrap.

## Импорт Bootstrap

Для импорта Bootstrap в Parcel требуется два импорта: один в наш `styles.scss` и один в наш `main.js`.

1. **Импортируйте Bootstrap CSS.** Добавьте следующее в `src/scss/styles.scss`, чтобы импортировать весь исходный код Bootstrap Sass.

   ```scss
   // Импортировать весь Bootstrap CSS
   @import "bootstrap/scss/bootstrap";
   ```

   *Вы также можете импортировать наши таблицы стилей по отдельности, если хотите. [Прочитайте нашу документацию по импорту Sass]({{< docsref "/customize/sass#importing" >}}) для подробностей.*

2. **Импортируйте Bootstrap JS.** Добавьте следующее в `src/js/main.js`, чтобы импортировать все JS Bootstrap. Popper будет автоматически импортирован через Bootstrap.

   <!-- eslint-skip -->
   ```js
   // Импортировать весь Bootstrap JS
   import * as bootstrap from 'bootstrap'
   ```

   Вы также можете импортировать плагины JavaScript по отдельности, если это необходимо, чтобы уменьшить размеры пакетов:

   <!-- eslint-skip -->
   ```js
   import Alert from 'bootstrap/js/dist/alert'

   // или укажите, какие плагины вам нужны:
   import { Tooltip, Toast, Popover } from 'bootstrap'
   ```

   *[Прочитайте нашу документацию по JavaScript]({{< docsref "/getting-started/javascript/" >}}) для получения дополнительной информации о том, как использовать плагины Bootstrap.*

3. **И готово! 🎉** С полностью загруженным исходным кодом Bootstrap Sass и JS ваш локальный сервер разработки теперь должен выглядеть так:

   ![Parcel dev server running with Bootstrap](/assets/img/guides/parcel-dev-server-bootstrap.png)

   Теперь вы можете начать добавлять любые компоненты Bootstrap, которые хотите использовать. Обязательно [ознакомьтесь с полным примером проекта Parcel](https://github.com/twbs/examples/tree/main/parcel), чтобы узнать, как включить дополнительный пользовательский Sass и оптимизировать сборку, импортируя только части CSS и JS Bootstrap, которые вам нужны.

{{< markdown >}}
{{< partial "guide-footer.md" >}}
{{< /markdown >}}
