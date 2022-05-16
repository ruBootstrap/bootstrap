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
│   ├── bootstrap-grid.rtl.css
│   ├── bootstrap-grid.rtl.css.map
│   ├── bootstrap-grid.rtl.min.css
│   ├── bootstrap-grid.rtl.min.css.map
│   ├── bootstrap-reboot.css
│   ├── bootstrap-reboot.css.map
│   ├── bootstrap-reboot.min.css
│   ├── bootstrap-reboot.min.css.map
│   ├── bootstrap-reboot.rtl.css
│   ├── bootstrap-reboot.rtl.css.map
│   ├── bootstrap-reboot.rtl.min.css
│   ├── bootstrap-reboot.rtl.min.css.map
│   ├── bootstrap-utilities.css
│   ├── bootstrap-utilities.css.map
│   ├── bootstrap-utilities.min.css
│   ├── bootstrap-utilities.min.css.map
│   ├── bootstrap-utilities.rtl.css
│   ├── bootstrap-utilities.rtl.css.map
│   ├── bootstrap-utilities.rtl.min.css
│   ├── bootstrap-utilities.rtl.min.css.map
│   ├── bootstrap.css
│   ├── bootstrap.css.map
│   ├── bootstrap.min.css
│   ├── bootstrap.min.css.map
│   ├── bootstrap.rtl.css
│   ├── bootstrap.rtl.css.map
│   ├── bootstrap.rtl.min.css
│   └── bootstrap.rtl.min.css.map
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

{{< bs-table "table" >}}
| CSS файлы | Макет | Контент | Компоненты | Утилиты |
| --- | --- | --- | --- | --- |
| `bootstrap.css`<br> `bootstrap.min.css`<br> `bootstrap.rtl.css`<br> `bootstrap.rtl.min.css` | Included | Included | Included | Included |
| `bootstrap-grid.css`<br> `bootstrap-grid.rtl.css`<br> `bootstrap-grid.min.css`<br> `bootstrap-grid.rtl.min.css` | [Only grid system]({{< docsref "/layout/grid" >}}) | — | — | [Only flex utilities]({{< docsref "/utilities/flex" >}}) |
| `bootstrap-utilities.css`<br> `bootstrap-utilities.rtl.css`<br> `bootstrap-utilities.min.css`<br> `bootstrap-utilities.rtl.min.css` | — | — | — | Included |
| `bootstrap-reboot.css`<br> `bootstrap-reboot.rtl.css`<br> `bootstrap-reboot.min.css`<br> `bootstrap-reboot.rtl.min.css` | — | [Only Reboot]({{< docsref "/content/reboot" >}}) | — | — |
{{< /bs-table >}}

## Файлы JS

Точно так же у нас есть варианты для включения части или всего нашего скомпилированного JavaScript.

{{< bs-table "table" >}}
| JS файлы | Popper |
| --- | --- |
| `bootstrap.bundle.js`<br> `bootstrap.bundle.min.js`<br> | Included |
| `bootstrap.js`<br> `bootstrap.min.js`<br> | – |
{{< /bs-table >}}

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
│          └── {{< param docs_version >}}/
│              └── examples/
├── js/
└── scss/
```

`scss/` и `js/` являются исходным кодом для наших CSS и JavaScript. Папка `dist/` включает все, что указано в предварительно скомпилированном разделе загрузки выше. В папке `site/docs/` находится исходный код нашей документации и использование Bootstrap в папке `examples/`. Кроме того, любой другой включенный файл обеспечивает поддержку пакетов, информацию о лицензии и разработку.
