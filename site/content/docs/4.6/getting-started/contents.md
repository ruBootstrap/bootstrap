---
layout: docs
title: Содержание
description: Узнайте, что входит в Bootstrap, включая наши варианты предварительно скомпилированного и исходного кода. Помните, плагины Bootstrap для JavaScript требуют jQuery.
group: getting-started
toc: true
---

## Предварительно скомпилированный Bootstrap

После загрузки распакуйте сжатую папку, и Вы увидите что-то вроде этого:

<!-- ПРИМЕЧАНИЕ. Эта информация намеренно дублируется в README. Скопируйте любые сделанные здесь изменения и в README, но не забудьте добавить папку `dist`. -->

```text
bootstrap/
├── css/
│   ├── bootstrap-grid.css
│   ├── bootstrap-grid.css.map
│   ├── bootstrap-grid.min.css
│   ├── bootstrap-grid.min.css.map
│   ├── bootstrap-reboot.css
│   ├── bootstrap-reboot.css.map
│   ├── bootstrap-reboot.min.css
│   ├── bootstrap-reboot.min.css.map
│   ├── bootstrap.css
│   ├── bootstrap.css.map
│   ├── bootstrap.min.css
│   └── bootstrap.min.css.map
└── js/
    ├── bootstrap.bundle.js
    ├── bootstrap.bundle.js.map
    ├── bootstrap.bundle.min.js
    ├── bootstrap.bundle.min.js.map
    ├── bootstrap.js
    ├── bootstrap.js.map
    ├── bootstrap.min.js
    └── bootstrap.min.js.map
```

Это самая простая форма Bootstrap: предварительно скомпилированные файлы для быстрого использования практически в любом веб-проекте. Мы предоставляем скомпилированные CSS и JS (`bootstrap.*`), а также скомпилированные и минимизированные CSS и JS (`bootstrap.min.*`). [source maps](https://developers.google.com/web/tools/chrome-devtools/javascript/source-maps) (`bootstrap.*.map`) доступны для использования с инструментами разработчика некоторых браузеров. Связанные файлы JS (`bootstrap.bundle.js` и минифицированные `bootstrap.bundle.min.js`) включают [Popper](https://popper.js.org/), но не [jQuery](https://jquery.com/).

## CSS файлы

Bootstrap включает несколько вариантов для включения некоторых или всего нашего скомпилированного CSS.

<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">CSS файлы</th>
      <th scope="col">Макет</th>
      <th scope="col">Содержимое</th>
      <th scope="col">Компоненты</th>
      <th scope="col">Утилиты</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">
        <div><code class="font-weight-normal text-nowrap">bootstrap.css</code></div>
        <div><code class="font-weight-normal text-nowrap">bootstrap.min.css</code></div>
      </th>
      <td class="text-success">Включено</td>
      <td class="text-success">Включено</td>
      <td class="text-success">Включено</td>
      <td class="text-success">Включено</td>
    </tr>
    <tr>
      <th scope="row">
        <div><code class="font-weight-normal text-nowrap">bootstrap-grid.css</code></div>
        <div><code class="font-weight-normal text-nowrap">bootstrap-grid.min.css</code></div>
      </th>
      <td><a class="text-warning" href="{{< docsref "/layout/grid" >}}">Только сеточная система</a></td>
      <td class="bg-light text-muted">Не включено</td>
      <td class="bg-light text-muted">Не включено</td>
      <td><a class="text-warning" href="{{< docsref "/utilities/flex" >}}">Только флекс утилиты</a></td>
    </tr>
    <tr>
      <th scope="row">
        <div><code class="font-weight-normal text-nowrap">bootstrap-reboot.css</code></div>
        <div><code class="font-weight-normal text-nowrap">bootstrap-reboot.min.css</code></div>
      </th>
      <td class="bg-light text-muted">Не включено</td>
      <td><a class="text-warning" href="{{< docsref "/content/reboot" >}}">Только Перезагрузка</a></td>
      <td class="bg-light text-muted">Не включено</td>
      <td class="bg-light text-muted">Не включено</td>
    </tr>
  </tbody>
</table>

## JS файлы

Точно так же у нас есть варианты для включения части или всего нашего скомпилированного JavaScript.

<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">JS файлы</th>
      <th scope="col">Popper</th>
      <th scope="col">jQuery</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">
        <div><code class="font-weight-normal text-nowrap">bootstrap.bundle.js</code></div>
        <div><code class="font-weight-normal text-nowrap">bootstrap.bundle.min.js</code></div>
      </th>
      <td class="text-success">Включено</td>
      <td class="bg-light text-muted">Не включено</td>
    </tr>
    <tr>
      <th scope="row">
        <div><code class="font-weight-normal text-nowrap">bootstrap.js</code></div>
        <div><code class="font-weight-normal text-nowrap">bootstrap.min.js</code></div>
      </th>
      <td class="bg-light text-muted">Не включено</td>
      <td class="bg-light text-muted">Не включено</td>
    </tr>
  </tbody>
</table>

## Исходный код Bootstrap

Загрузка исходного кода Bootstrap включает предварительно скомпилированные ресурсы CSS и JavaScript, а также исходный код Sass, JavaScript и документацию. В частности, он включает в себя следующее и многое другое:

```text
bootstrap/
├── dist/
│   ├── css/
│   └── js/
├── site/
│   └── content/
|       └── docs/
|           └── {{< param docs_version >}}/
|               └── examples/
├── js/
└── scss/
```

`scss/` и `js/` являются исходным кодом для наших CSS и JavaScript. Папка `dist/` включает все, что указано в предварительно скомпилированном разделе загрузки выше. В папке `site/docs/` находится исходный код нашей документации, а также `examples/` примеры использования Bootstrap. Кроме того, любой другой включенный файл обеспечивает поддержку пакетов, информацию о лицензии и разработку.
