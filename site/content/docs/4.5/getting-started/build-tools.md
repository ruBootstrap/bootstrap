---
layout: docs
title: Инструменты сборки
description: Узнайте, как использовать встроенные скрипты npm в Bootstrap для создания нашей документации, компиляции исходного кода, запуска тестов и многого другого.
group: getting-started
toc: true
---

## Настройка инструментов

Bootstrap использует [сценарии npm](https://docs.npmjs.com/misc/scripts/) для своей системы сборки. Наш [package.json]({{< param repo >}}/blob/v{{< param current_version >}}/package.json) включает удобные методы для работы с фреймворком, включая компиляцию кода, запуск тестов и т.д.

Чтобы использовать нашу систему сборки и запускать нашу документацию локально, Вам понадобится копия исходных файлов Bootstrap и Node. Выполните следующие шаги, и Вы должны быть готовы к работе:

1. [Загрузите и установите Node.js](https://nodejs.org/en/download/), который мы используем для управления нашими зависимостями.
2. Либо [загрузите исходники Bootstrap]({{< param "download.source" >}}) либо форк [репозитория Bootstrap]({{< param repo >}}).
3. Перейдите в корневой каталог `/bootstrap` и запустите `npm install`, для установки наших локальных зависимостей, перечисленных в [package.json]({{< param repo >}}/blob/v{{< param current_version >}}/package.json).

По завершении Вы сможете запускать различные команды из командной строки.

## Использование скриптов npm

Наш [package.json]({{< param repo >}}/blob/v{{< param current_version >}}/package.json) включает следующие команды и задачи:

| Задача | Описание |
| ------ | -------- |
| `npm run dist` | `npm run dist` создает каталог `/dist/` со скомпилированными файлами. **Использует [Sass](https://sass-lang.com/), [Autoprefixer][autoprefixer] и [terser](https://github.com/terser/terser).** |
| `npm test` | Запускает тесты локально после запуска `npm run dist` |
| `npm run docs-serve` | Создает и запускает документацию локально. |

Запустите `npm run`, чтобы увидеть все сценарии npm.

{{< callout info >}}
{{< partial "callout-info-npm-starter.md" >}}
{{< /callout >}}

## Sass

Bootstrap v4 uses [Node Sass](https://github.com/sass/node-sass) for compiling our Sass source files into CSS files (included in our build process). In order to end up with the same generated CSS when compiling Sass using your own asset pipeline, you'll need to use a Sass compiler that supports at least the features that Node Sass does. This is important to note because as of October 26, 2020, LibSass and packages built on top of it—including Node Sass—are [deprecated](https://sass-lang.com/blog/libsass-is-deprecated).

If you require newer Sass features or compatibility with newer CSS standards, [Dart Sass](https://sass-lang.com/dart-sass) is now the primary implementation of Sass and supports a JavaScript API that's fully compatible with Node Sass (with a few exceptions listed on Dart Sass's [GitHub page](https://github.com/sass/dart-sass)).

We increase the Sass rounding precision to 6 (by default, it's 5 in Node Sass) to prevent issues with browser rounding. If you use Dart Sass this won't be something you need to adjust, as that compiler uses a rounding precision of 10 and for efficiency reasons does not allow it to be adjusted.

## Autoprefixer

Bootstrap использует [Autoprefixer][autoprefixer] (включенный в наш процесс сборки) для автоматического добавления префиксов поставщиков к некоторым свойствам CSS во время сборки. Это экономит время и код, позволяя нам писать ключевые части нашего CSS за один раз, устраняя при этом необходимость в миксинах поставщиков, подобных тем, которые есть в v3.

Мы храним список браузеров, поддерживаемых с помощью Autoprefixer, в отдельном файле в нашем репозитории GitHub. См. [.browserslistrc]({{< param repo >}}/blob/v{{< param current_version >}}/.browserslistrc) для получения дополнительной информации.

## Локальная документация

Для локального запуска нашей документации требуется использование Hugo, который устанавливается через пакет npm [hugo-bin](https://www.npmjs.com/package/hugo-bin). Hugo - это невероятно быстрый и достаточно расширяемый генератор статических сайтов, который предоставляет нам: базовые включения, файлы на основе Markdown, шаблоны и многое другое. Вот как это начать:

1. Выполните [настройку инструментов](#настройка-инструментов) выше, чтобы установить все зависимости.
2. Из корневого каталога `/bootstrap`, запустите `npm run docs-serve` в командной строке.
3. Откройте `http://localhost:9001/` в Вашем браузере и готово.

Узнайте больше об использовании Hugo, прочитав его [документацию]](https://gohugo.io/documentation/) или [перевод официальной документации]](https://gohugo.ru/documentation/).

## Исправление проблем

Если у Вас возникнут проблемы с установкой зависимостей, удалите все предыдущие версии зависимостей (глобальные и локальные). Затем повторно запустите `npm install`.

[autoprefixer]: https://github.com/postcss/autoprefixer
