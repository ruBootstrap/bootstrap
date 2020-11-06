---
layout: docs
title: Содержимое
description: Узнайте, что включено в Bootstrap, в том числе наши варианты предварительно скомпилированного и исходного кода.
group: getting-started
toc: true
---

## Предварительно скомпилированный Bootstrap

После загрузки распакуйте сжатую папку, и Вы увидите что-то вроде этого:

<!-- ПРИМЕЧАНИЕ. Эта информация намеренно дублируется в README. Скопируйте все сделанные здесь изменения и в README, но не забудьте добавить папку `dist`. -->

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
│   ├── bootstrap-utilities.css
│   ├── bootstrap-utilities.css.map
│   ├── bootstrap-utilities.min.css
│   ├── bootstrap-utilities.min.css.map
│   ├── bootstrap.css
│   ├── bootstrap.css.map
│   ├── bootstrap.min.css
│   └── bootstrap.min.css.map
└── js/
    ├── bootstrap.bundle.js
    ├── bootstrap.bundle.js.map
    ├── bootstrap.bundle.min.js
    ├── bootstrap.bundle.min.js.map
    ├── bootstrap.esm.js
    ├── bootstrap.esm.js.map
    ├── bootstrap.esm.min.js
    ├── bootstrap.esm.min.js.map
    ├── bootstrap.js
    ├── bootstrap.js.map
    ├── bootstrap.min.js
    └── bootstrap.min.js.map
```

Это самая простая форма Bootstrap: предварительно скомпилированные файлы для быстрого использования практически в любом веб-проекте. Мы предоставляем скомпилированные CSS и JS (`bootstrap.*`), а также скомпилированные и минифицированные CSS и JS (`bootstrap.min.*`). [source maps](https://developers.google.com/web/tools/chrome-devtools/javascript/source-maps) (`bootstrap.*.map`) доступны для использования с инструментами разработчика некоторых браузеров. Связанные файлы JS (`bootstrap.bundle.js`) и минифицированные `bootstrap.bundle.min.js`) включают [Popper](https://popper.js.org/).

## Файлы CSS

Bootstrap включает несколько вариантов для включения некоторых или всего нашего скомпилированного CSS.

<table class="table">
  <thead>
    <tr>
      <th scope="col">CSS файлы</th>
      <th scope="col">Макет</th>
      <th scope="col">Контент</th>
      <th scope="col">Компоненты</th>
      <th scope="col">Утилиты</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">
        <div><code class="fw-normal text-nowrap">bootstrap.css</code></div>
        <div><code class="fw-normal text-nowrap">bootstrap.min.css</code></div>
      </th>
      <td><span class="badge bg-success">Включено</span></td>
      <td><span class="badge bg-success">Включено</span></td>
      <td><span class="badge bg-success">Включено</span></td>
      <td><span class="badge bg-success">Включено</span></td>
    </tr>
    <tr>
      <th scope="row">
        <div><code class="fw-normal text-nowrap">bootstrap-grid.css</code></div>
        <div><code class="fw-normal text-nowrap">bootstrap-grid.min.css</code></div>
      </th>
      <td><a class="link-secondary" href="{{< docsref "/layout/grid" >}}">Только сеточная система</a></td>
      <td class="text-muted">&mdash;</td>
      <td class="text-muted">&mdash;</td>
      <td><a class="link-secondary" href="{{< docsref "/utilities/flex" >}}">Только флекс утилиты</a></td>
    </tr>
    <tr>
      <th scope="row">
        <div><code class="fw-normal text-nowrap">bootstrap-utilities.css</code></div>
        <div><code class="fw-normal text-nowrap">bootstrap-utilities.min.css</code></div>
      </th>
      <td class="text-muted">&mdash;</td>
      <td class="text-muted">&mdash;</td>
      <td class="text-muted">&mdash;</td>
      <td><span class="badge bg-success">Включено</span></td>
    </tr>
    <tr>
      <th scope="row">
        <div><code class="fw-normal text-nowrap">bootstrap-reboot.css</code></div>
        <div><code class="fw-normal text-nowrap">bootstrap-reboot.min.css</code></div>
      </th>
      <td class="text-muted">&mdash;</td>
      <td><a class="link-secondary" href="{{< docsref "/content/reboot" >}}">Только Перезагрузка</a></td>
      <td class="text-muted">&mdash;</td>
      <td class="text-muted">&mdash;</td>
    </tr>
  </tbody>
</table>

## Файлы JS

Точно так же у нас есть варианты для включения части или всего нашего скомпилированного JavaScript.

<table class="table">
  <thead>
    <tr>
      <th scope="col">JS файлы</th>
      <th scope="col">Popper</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">
        <div><code class="fw-normal text-nowrap">bootstrap.bundle.js</code></div>
        <div><code class="fw-normal text-nowrap">bootstrap.bundle.min.js</code></div>
      </th>
      <td><span class="badge bg-success">Включено</span></td>
    </tr>
    <tr>
      <th scope="row">
        <div><code class="fw-normal text-nowrap">bootstrap.js</code></div>
        <div><code class="fw-normal text-nowrap">bootstrap.min.js</code></div>
      </th>
      <td class="text-muted">&mdash;</td>
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
│   └──content/
│      └── docs/
│          └── 5.0/
│              └── examples/
├── js/
└── scss/
```

`scss/` и `js/` являются исходным кодом для наших CSS и JavaScript. Папка `dist/` включает все, что указано в предварительно скомпилированном разделе загрузки выше. В папке `site/docs/` находится исходный код нашей документации и использование Bootstrap в папке `examples/`. Кроме того, любой другой включенный файл обеспечивает поддержку пакетов, информацию о лицензии и разработку.
