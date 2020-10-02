---
layout: docs
title: Скачать
description: Скачайте Bootstrap, чтобы получить скомпилированные CSS и JavaScript, исходный код или включить его в свои любимые менеджеры пакетов, такие как npm, RubyGems и другие.
group: getting-started
toc: true
---

## Скомпилированный CSS и JS

Загрузите готовый к использованию скомпилированный код для **Bootstrap v{{< param current_version >}}**, чтобы легко вставить его в свой проект, который включает:

- Скомпилированные и минимизированные пакеты CSS (см. [Сравнение файлов CSS]({{< docsref "/getting-started/contents#css-files" >}}))
- Скомпилированные и минимизированные плагины JavaScript

Сюда не входят документация, исходные файлы или любые дополнительные зависимости JavaScript, такие как Popper.js.

<a href="{{< param "download.dist" >}}" class="btn btn-bd-primary" onclick="ga('send', 'event', 'Getting started', 'Download', 'Download Bootstrap');">Скачать</a>

## Исходные файлы

Скомпилируйте Bootstrap с Вашим собственным конвейером ресурсов, загрузив наши исходные файлы Sass, JavaScript и документации. Этот вариант требует дополнительных инструментов:

- Компилятор Sass (поддерживается Libsass или Ruby Sass) для компиляции Вашего CSS.
- [Autoprefixer](https://github.com/postcss/autoprefixer) для префикса поставщика CSS

Вам потребуются [инструменты сборки]({{< docsref "/getting-started/build-tools#tooling-setup" >}}), они включены для разработки Bootstrap и его документации, но они, вероятно, не подходят для Ваших собственных целей.

<a href="{{< param "download.source" >}}" class="btn btn-bd-primary" onclick="ga('send', 'event', 'Getting started', 'Download', 'Download source');">Скачать исходный код</a>

## Примеры

Если Вы хотите скачать и изучить наши [примеры]({{< docsref "/examples" >}}), Вы можете скачать уже созданные примеры:

<a href="{{< param "download.dist_examples" >}}" class="btn btn-bd-primary" onclick="ga('send', 'event', 'Getting started', 'Download', 'Download Examples');">Скачать Примеры</a>

## BootstrapCDN

Пропустите загрузку с помощью [BootstrapCDN](https://www.bootstrapcdn.com/), чтобы доставить кэшированную версию скомпилированных CSS и JS Bootstrap в свой проект.

{{< highlight html >}}
<link rel="stylesheet" href="{{< param "cdn.css" >}}" integrity="{{< param "cdn.css_hash" >}}" crossorigin="anonymous">
<script src="{{< param "cdn.js_bundle" >}}" integrity="{{< param "cdn.js_bundle_hash" >}}" crossorigin="anonymous"></script>
{{< /highlight >}}

Если Вы используете наш скомпилированный JavaScript и предпочитаете включать Popper.js отдельно, добавьте Popper.js перед нашим JS, желательно через CDN.

{{< highlight html >}}
<script src="{{< param "cdn.popper" >}}" integrity="{{< param "cdn.popper_hash" >}}" crossorigin="anonymous"></script>
<script src="{{< param "cdn.js" >}}" integrity="{{< param "cdn.js_hash" >}}" crossorigin="anonymous"></script>
{{< /highlight >}}

## Менеджеры пакетов

Добавьте **исходные файлы** Bootstrap практически в любой проект с помощью некоторых из самых популярных менеджеров пакетов. Независимо от менеджера пакетов, для Bootstrap **потребуется компилятор Sass и [Autoprefixer](https://github.com/postcss/autoprefixer)** для настройки, соответствующей нашим официальным скомпилированным версиям.

### npm

Установите Bootstrap в приложения, работающие на Node.js, с помощью [пакета npm](https://www.npmjs.com/package/bootstrap):

{{< highlight sh >}}
npm install bootstrap@next
{{< /highlight >}}

`const bootstrap = require('bootstrap')` или `import bootstrap from 'bootstrap'` загрузит все плагины Bootstrap в объект `bootstrap`.
Сам модуль `bootstrap` экспортирует все наши плагины. Вы можете вручную загрузить плагины Bootstrap по отдельности, загрузив файлы `/js/dist/*.js` в каталог верхнего уровня пакета.

Bootstrap's `package.json` содержит некоторые дополнительные метаданные под следующими ключами:

- `sass` - путь к основному исходному файлу [Sass](https://sass-lang.com/) Bootstrap
- `style` - путь к неминифицированному CSS Bootstrap, который был предварительно скомпилирован с использованием настроек по умолчанию (без настройки)

### yarn

Установите Bootstrap в свои приложения, работающие на Node.js, с помощью [пакета yarn](https://yarnpkg.com/en/package/bootstrap):

{{< highlight sh >}}
yarn add bootstrap@next
{{< /highlight >}}

### RubyGems

Установите Bootstrap в свои приложения Ruby, используя [Bundler](https://bundler.io/) (**рекомендуется**) и [RubyGems](https://rubygems.org/), добавив следующую строку в свой [`Gemfile`](https://bundler.io/gemfile.html):

{{< highlight ruby >}}
gem 'bootstrap', '~> {{< param current_ruby_version >}}'
{{< /highlight >}}

В качестве альтернативы, если Вы не используете `Bundler`, Вы можете установить `gem`, выполнив эту команду:

{{< highlight sh >}}
gem install bootstrap -v {{< param current_ruby_version >}}
{{< /highlight >}}

[Смотрите gem's README](https://github.com/twbs/bootstrap-rubygem/blob/master/README.md) для получения дополнительной информации.

### Composer

Вы также можете установить и управлять Sass и JavaScript для Bootstrap, используя [Composer](https://getcomposer.org/):

{{< highlight sh >}}
composer require twbs/bootstrap:{{< param current_version >}}
{{< /highlight >}}

### NuGet

Если Вы разрабатываете в `.NET`, Вы также можете установить и управлять Bootstrap [CSS](https://www.nuget.org/packages/bootstrap/) or [Sass](https://www.nuget.org/packages/bootstrap.sass/) и JavaScript, используя [NuGet](https://www.nuget.org/):

{{< highlight powershell >}}
Install-Package bootstrap
{{< /highlight >}}

{{< highlight powershell >}}
Install-Package bootstrap.sass
{{< /highlight >}}
