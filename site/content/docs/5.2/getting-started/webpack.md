---
layout: docs
title: "Bootstrap и Webpack"
description: Официальное руководство по включению и объединению CSS и JavaScript Bootstrap в ваш проект с помощью Webpack.
group: getting-started
toc: true
thumbnail: guides/bootstrap-webpack@2x.png
---

<img class="mb-4 img-fluid rounded-3" srcset="/docs/{{< param docs_version >}}/assets/img/guides/bootstrap-webpack.png, /docs/{{< param docs_version >}}/assets/img/guides/bootstrap-webpack@2x.png 2x" src="/docs/{{< param docs_version >}}/assets/img/guides/bootstrap-webpack.png" width="2000" height="1000" alt="">

{{< callout >}}
**Хотите перейти к концу?** Загрузите исходный код и рабочую демонстрацию для этого руководства из [репозитория twbs/examples](https://github.com/twbs/examples/tree/main/webpack). Вы также можете [открыть пример в StackBlitz](https://stackblitz.com/github/twbs/examples/tree/main/webpack?file=index.html) для редактирования в реальном времени.
{{< /callout >}}

## Установка

Мы создаем проект Webpack с Bootstrap с нуля, поэтому есть некоторые предварительные условия и предварительные шаги, прежде чем мы действительно сможем начать. Это руководство требует, чтобы у вас был установлен Node.js и вы немного знакомы с терминалом.

1. **Создайте папку проекта и установите npm.** Мы создадим папку `my-project` и инициализируем npm с аргументом `-y`, чтобы он не задавал нам все интерактивные вопросы.

   ```sh
   mkdir my-project && cd my-project
   npm init -y
   ```

2. **Установите Webpack.** Затем нам нужно установить наши зависимости для разработки Webpack: `webpack` для ядра Webpack, `webpack-cli`, чтобы мы могли запускать команды Webpack из терминала, и `webpack-dev-server`, чтобы мы могли запускать локальный сервер разработки. . Мы используем `--save-dev`, чтобы указать, что эти зависимости предназначены только для использования в разработке, а не для производства.

   ```sh
   npm i --save-dev webpack webpack-cli webpack-dev-server
   ```

3. **Установите Bootstrap.** Теперь мы можем установить Bootstrap. Мы также установим Popper, так как наши раскрывающиеся списки, всплывающие окна и всплывающие подсказки зависят от его позиционирования. Если вы не планируете использовать эти компоненты, вы можете опустить здесь Popper.

   ```sh
   npm i --save bootstrap @popperjs/core
   ```

4. **Установите дополнительные зависимости.** В дополнение к Webpack и Bootstrap нам нужно еще несколько зависимостей, чтобы правильно импортировать и связывать CSS и JS Bootstrap с Webpack. К ним относятся Sass, некоторые загрузчики и Autoprefixer.

   ```sh
   npm i --save-dev autoprefixer css-loader postcss-loader sass sass-loader style-loader
   ```

Теперь, когда у нас установлены все необходимые зависимости, мы можем приступить к созданию файлов проекта и импорту Bootstrap.

## Структура проекта

Мы уже создали папку `my-project` и инициализировали npm. Теперь мы также создадим наши папки `src` и `dist`, чтобы завершить структуру проекта. Запустите следующее из `my-project` или вручную создайте структуру папок и файлов, показанную ниже.

```sh
mkdir {dist,src,src/js,src/scss}
touch dist/index.html src/js/main.js src/scss/styles.scss webpack.config.js
```

Когда вы закончите, ваш полный проект должен выглядеть так:

```text
my-project/
├── dist/
│   └── index.html
├── src/
│   ├── js/
│   │   └── main.js
│   └── scss/
│       └── styles.scss
├── package-lock.json
├── package.json
└── webpack.config.js
```

На данный момент все в порядке, но Webpack не будет работать, потому что мы еще не заполнили наш `webpack.config.js`.

## Кофигурация Webpack

С установленными зависимостями и готовой папкой проекта для начала написания кода мы теперь можем настроить Webpack и запустить наш проект локально.

1. **Откройте `webpack.config.js` в вашем редакторе.** Поскольку он пуст, нам нужно добавить в него шаблонную конфигурацию, чтобы мы могли запустить наш сервер. Эта часть конфигурации сообщает Webpack, что нужно искать JavaScript нашего проекта, куда выводить скомпилированный код (`dist`) и как должен вести себя сервер разработки (извлечение из папки `dist` с горячей перезагрузкой).

   ```js
   const path = require('path')

   module.exports = {
     entry: './src/js/main.js',
     output: {
       filename: 'main.js',
       path: path.resolve(__dirname, 'dist')
     },
     devServer: {
       static: path.resolve(__dirname, 'dist'),
       port: 8080,
       hot: true
     }
   }
   ```

2. **Далее мы заполняем наш `dist/index.html`.** Это HTML-страница, которую Webpack загрузит в браузер, чтобы использовать связанные CSS и JS, которые мы добавим к ней на последующих этапах. Прежде чем мы сможем это сделать, мы должны дать ему что-то для рендеринга и включить `output` JS из предыдущего шага.

   ```html
   <!doctype html>
   <html lang="en">
     <head>
       <meta charset="utf-8">
       <meta name="viewport" content="width=device-width, initial-scale=1">
       <title>Bootstrap w/ Webpack</title>
     </head>
     <body>
       <div class="container py-4 px-3 mx-auto">
         <h1>Hello, Bootstrap and Webpack!</h1>
         <button class="btn btn-primary">Primary button</button>
       </div>
       <script src="./main.js"></script>
     </body>
   </html>
   ```

   Мы добавили сюда немного стилей Bootstrap с помощью `div class="container"` и `<button>`, чтобы мы видели, когда CSS Bootstrap загружается Webpack.

3. **Теперь нам нужен скрипт npm для запуска Webpack.** Откройте `package.json` и добавьте сценарий `start`, показанный ниже (у вас уже должен быть тестовый сценарий). Мы будем использовать этот скрипт для запуска нашего локального сервера разработки Webpack.

   ```json
   {
     // ...
     "scripts": {
       "start": "webpack serve --mode development",
       "test": "echo \"Error: no test specified\" && exit 1"
     },
     // ...
   }
   ```

4. **И, наконец, мы можем запустить Webpack.** Из папки `my-project` в вашем терминале запустите только что добавленный скрипт npm:

   ```sh
   npm start
   ```

   <img class="img-fluid" src="/docs/{{< param docs_version >}}/assets/img/guides/webpack-dev-server.png" alt="Webpack dev server running">

В следующем и последнем разделе этого руководства мы настроим загрузчики Webpack и импортируем весь CSS и JavaScript Bootstrap.

## Импорт Bootstrap

Для импорта Bootstrap в Webpack требуются загрузчики, которые мы установили в первом разделе. Мы установили их с помощью npm, но теперь необходимо настроить Webpack для их использования.

1. **Настройте загрузчики в `webpack.config.js`.** Ваш файл конфигурации готов и должен соответствовать приведенному ниже фрагменту. Единственная новая часть здесь — раздел `module`.

   ```js
   const path = require('path')

   module.exports = {
     entry: './src/js/main.js',
     output: {
       filename: 'main.js',
       path: path.resolve(__dirname, 'dist')
     },
     devServer: {
       static: path.resolve(__dirname, 'dist'),
       port: 8080,
       hot: true
     },
     module: {
       rules: [
         {
           test: /\.(scss)$/,
           use: [
             {
               loader: 'style-loader'
             },
             {
               loader: 'css-loader'
             },
             {
               loader: 'postcss-loader',
               options: {
                 postcssOptions: {
                   plugins: () => [
                     require('autoprefixer')
                   ]
                 }
               }
             },
             {
               loader: 'sass-loader'
             }
           ]
         }
       ]
     }
   }
   ```

   Вот краткий обзор того, зачем нам нужны все эти загрузчики. `style-loader` вставляет CSS в элемент `<style>` в `<head>` HTML-страницы, `css-loader` помогает использовать `@import` и `url()`, `postcss-loader` требуется для Autoprefixer, а `sass-loader` позволяет нам использовать Sass.

2. **Теперь давайте импортируем Bootstrap CSS.** Добавьте следующее в `src/scss/styles.scss`, чтобы импортировать весь исходный код Bootstrap Sass.

   ```scss
   // Import all of Bootstrap's CSS
   @import "~bootstrap/scss/bootstrap";
   ```

   *Вы также можете импортировать наши таблицы стилей по отдельности, если хотите. [Прочитайте нашу документацию по импорту Sass]({{< docsref "/customize/sass#importing" >}}) для подробностей.*

3. **Далее мы загружаем CSS и импортируем JavaScript из Bootstrap.** Добавьте следующее в `src/js/main.js`, чтобы загрузить CSS и импортировать все JS из Bootstrap. Поппер будет автоматически импортирован через Bootstrap.

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
   import Alert from 'bootstrap/js/dist/alert'

   // или укажите, какие плагины вам нужны:
   import { Tooltip, Toast, Popover } from 'bootstrap'
   ```

   *[Прочитайте нашу документацию по JavaScript]({{< docsref "/getting-started/javascript/" >}}) для получения дополнительной информации о том, как использовать плагины Bootstrap.*

4. **И готово! 🎉** С полностью загруженным исходным кодом Bootstrap Sass и JS ваш локальный сервер разработки теперь должен выглядеть так.

   <img class="img-fluid" src="/docs/{{< param docs_version >}}/assets/img/guides/webpack-dev-server-bootstrap.png" alt="Webpack dev server running with Bootstrap">

   Теперь вы можете начать добавлять любые компоненты Bootstrap, которые хотите использовать. Обязательно [ознакомьтесь с полным примером проекта Webpack](https://github.com/twbs/examples/tree/main/webpack), чтобы узнать, как включить дополнительный пользовательский Sass и оптимизировать сборку, импортируя только части CSS Bootstrap. и JS, которые вам нужны.

## Production optimizations

Depending on your setup, you may want to implement some additional security and speed optimizations useful for running the project in production. Note that these optimizations are not applied on [the Webpack example project](https://github.com/twbs/examples/tree/main/webpack) and are up to you to implement.

### Extracting CSS

The `style-loader` we configured above conveniently emits CSS into the bundle so that manually loading a CSS file in `dist/index.html` isn't necessary. This approach may not work with a strict Content Security Policy, however, and it may become a bottleneck in your application due to the large bundle size.

To separate the CSS so that we can load it directly from `dist/index.html`, use the `mini-css-extract-loader` Webpack plugin.

First, install the plugin:

```sh
npm install --save-dev mini-css-extract-plugin
```

Then instantiate and use the plugin in the Webpack configuration:

```diff
--- a/webpack/webpack.config.js
+++ b/webpack/webpack.config.js
@@ -1,8 +1,10 @@
+const miniCssExtractPlugin = require('mini-css-extract-plugin')
 const path = require('path')
 
 module.exports = {
   mode: 'development',
   entry: './src/js/main.js',
+  plugins: [new miniCssExtractPlugin()],
   output: {
     filename: "main.js",
     path: path.resolve(__dirname, "dist"),
@@ -18,8 +20,8 @@ module.exports = {
         test: /\.(scss)$/,
         use: [
           {
-            // Adds CSS to the DOM by injecting a `<style>` tag
-            loader: 'style-loader'
+            // Extracts CSS for each JS file that includes CSS
+            loader: miniCssExtractPlugin.loader
           },
           {
```

After running `npm run build` again, there will be a new file `dist/main.css`, which will contain all of the CSS imported by `src/js/main.js`. If you view `dist/index.html` in your browser now, the style will be missing, as it is now in `dist/main.css`. You can include the generated CSS in `dist/index.html` like this:

```diff
--- a/webpack/dist/index.html
+++ b/webpack/dist/index.html
@@ -3,6 +3,7 @@
   <head>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
+    <link rel="stylesheet" href="./main.css">
     <title>Bootstrap w/ Webpack</title>
   </head>
   <body>
```

### Extracting SVG files

Bootstrap's CSS includes multiple references to SVG files via inline `data:` URIs. If you define a Content Security Policy for your project that blocks `data:` URIs for images, then these SVG files will not load. You can get around this problem by extracting the inline SVG files using Webpack's asset modules feature.

Configure Webpack to extract inline SVG files like this:

```diff
--- a/webpack/webpack.config.js
+++ b/webpack/webpack.config.js
@@ -16,6 +16,14 @@ module.exports = {
   },
   module: {
     rules: [
+      {
+        mimetype: 'image/svg+xml',
+        scheme: 'data',
+        type: 'asset/resource',
+        generator: {
+          filename: 'icons/[hash].svg'
+        }
+      },
       {
         test: /\.(scss)$/,
         use: [
```

After running `npm run build` again, you'll find the SVG files extracted into `dist/icons` and properly referenced from CSS.

{{< markdown >}}
{{< partial "guide-footer.md" >}}
{{< /markdown >}}
