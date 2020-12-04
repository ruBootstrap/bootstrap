---
layout: docs
title: Инструменты сборки
description: Узнайте, как использовать включенные в Bootstrap сценарии npm для создания нашей документации, компиляции исходного кода, запуска тестов и многого другого.
group: getting-started
toc: true
---

## Настройка инструмента

Bootstrap использует [сценарии npm](https://docs.npmjs.com/misc/scripts/) для своей системы сборки. Наш [package.json]({{< param repo >}}/blob/v{{< param current_version >}}/package.json) включает удобные методы для работы с фреймворком, включая компиляцию кода, запуск тестов и другое.

Чтобы использовать нашу систему сборки и запускать нашу документацию локально, Вам понадобится копия исходных файлов Bootstrap и Node. Выполните следующие шаги, и Вы должны быть готовы к игре:

1. [Загрузите и установите Node.js](https://nodejs.org/en/download/), который мы используем для управления нашими зависимостями.
2. Либо [загрузите исходные коды Bootstrap]({{< param "download.source" >}}), либо сделайте "форк" [репозитория Bootstrap]({{< param repo >}}).
3. Перейдите в корневой каталог `/bootstrap` и запустите `npm install`, чтобы установить наши локальные зависимости, перечисленные в [package.json]({{< param repo >}}/blob/v{{< param current_version >}}/package.json).

По завершении Вы сможете запускать различные команды из командной строки.

## Использование скриптов npm

Наш [package.json]({{< param repo >}}/blob/v{{< param current_version >}}/package.json) включает множество задач для разработки проекта. Запустите `npm run`, чтобы увидеть все сценарии npm в Вашем терминале. **Основные задачи включают:**

<table class="table">
  <thead>
    <tr>
      <th>Задача</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
        <code>npm start</code>
      </td>
      <td>
        Компилирует CSS и JavaScript, создает документацию и запускает локальный сервер.
      </td>
    </tr>
    <tr>
      <td>
        <code>npm run dist</code>
      </td>
      <td>
       Создает каталог <code>dist/</code> с скомпилированными файлами. Требуется <a href="https://sass-lang.com/">Sass</a>, <a href="https://github.com/postcss/autoprefixer">Autoprefixer</a>, и <a href="https://github.com/terser/terser">terser</a>.
      </td>
    </tr>
    <tr>
      <td>
        <code>npm test</code>
      </td>
      <td>
        Выполняет тесты локально после запуска <code>npm run dist</code>
      </td>
    </tr>
    <tr>
      <td>
        <code>npm run docs-serve</code>
      </td>
      <td>
        Создает и запускает документацию локально.
      </td>
    </tr>
  </tbody>
</table>

## Автопрефикс

Bootstrap использует [Autoprefixer][autoprefixer] (включенный в наш процесс сборки) для автоматического добавления префиксов поставщиков к некоторым свойствам CSS во время сборки. Это экономит время и код, позволяя писать ключевые части нашего CSS за один раз, устраняя при этом необходимость в миксинах от поставщиков, подобных тем, что есть в v3.

Мы храним список браузеров, поддерживаемых с помощью Autoprefixer, в отдельном файле в нашем репозитории GitHub. См. [.browserslistrc]({{< param repo >}}/blob/v{{< param current_version >}}/.browserslistrc) для получения дополнительной информации.

## RTLCSS

Bootstrap использует [RTLCSS](https://rtlcss.com/) для обработки скомпилированного CSS и преобразования их в RTL - в основном заменяя свойства, учитывающие горизонтальное направление (например, `padding-left`), их противоположностью. Это позволяет нам писать наш CSS только один раз и вносить незначительные изменения с помощью RTLCSS директив [control](https://rtlcss.com/learn/usage-guide/control-directives/) и [value](https://rtlcss.com/learn/usage-guide/value-directives/).

## Локальная документация

Для локального запуска нашей документации требуется использование Hugo, который устанавливается через пакет npm [hugo-bin](https://www.npmjs.com/package/hugo-bin). Hugo - это невероятно быстрый и достаточно расширяемый генератор статических сайтов, который предоставляет нам: базовые включения, файлы на основе Markdown, шаблоны и многое другое. Вот как это начать:

1. Выполните [настройку инструментов](#tooling-setup) выше, чтобы установить все зависимости.
2. Из корневого каталога `/bootstrap`, запустите `npm run docs-serve` в командной строке.
3. Откройте `http://localhost:9001/` в вашем браузере и вуаля.

Узнайте больше об использовании Hugo, прочитав его [документацию](https://gohugo.io/documentation/).

## Исправление проблем

Если у Вас возникнут проблемы с установкой зависимостей, удалите все предыдущие версии зависимостей (глобальные и локальные). Затем перезапустите `npm install`.

[autoprefixer]: https://github.com/postcss/autoprefixer
