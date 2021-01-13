---
layout: docs
title: Скачать
description: Загрузите Bootstrap, чтобы получить скомпилированные CSS и JavaScript, исходный код или включить его в свои любимые менеджеры пакетов, такие как npm, RubyGems и другие.
group: getting-started
toc: true
---

## Скомпилированный CSS и JS

Загрузите готовый к использованию скомпилированный код для **Bootstrap v{{< param current_version >}}**, чтобы его можно было легко использовать в вашем проекте, который включает:

- Скомпилированные и минимизированные пакеты CSS (см. [сравнение файлов CSS]({{< docsref "/getting-started/contents#css-файлы" >}}))
- Скомпилированные и минимизированные плагины JavaScript (см. [сравнение JS файлов]({{< docsref "/getting-started/contents#js-файлы" >}}))

Это не включает документацию, исходные файлы или любые дополнительные зависимости JavaScript (jQuery и Popper).

<a href="{{< param "download.dist" >}}" class="btn btn-bd-primary" onclick="ga('send', 'event', 'Getting started', 'Download', 'Download Bootstrap');">Скачать</a>

## Исходные файлы

Скомпилируйте Bootstrap с Вашим собственным конвейером ресурсов, загрузив наши исходные файлы Sass, JavaScript и документации. Для этого варианта требуются дополнительные инструменты:

- Компилятор Sass (поддерживается Libsass или Ruby Sass) для компиляции Вашего CSS.
- [Autoprefixer](https://github.com/postcss/autoprefixer) для префикса поставщика CSS

Если Вам потребуются [инструменты сборки]({{< docsref "/getting-started/build-tools#настройка-инструментов" >}}), они включены для разработки Bootstrap и его документации, но они, вероятно, не подходят для Ваших собственных целей.

<a href="{{< param "download.source" >}}" class="btn btn-bd-primary" onclick="ga('send', 'event', 'Getting started', 'Download', 'Download source');">Скачать исходники</a>

## Примеры

Если Вы хотите загрузить и изучить наши [примеры]({{< docsref "/examples" >}}), Вы можете скачать уже созданные примеры:

<a href="{{< param "download.dist_examples" >}}" class="btn btn-bd-primary" onclick="ga('send', 'event', 'Getting started', 'Download', 'Download Examples');">Скачать Примеры</a>

## jsDelivr

Пропустите загрузку с помощью [jsDelivr](https://www.jsdelivr.com/), чтобы доставить кэшированную версию скомпилированных CSS и JS Bootstrap в свой проект.

```html
<link rel="stylesheet" href="{{< param "cdn.css" >}}" integrity="{{< param "cdn.css_hash" >}}" crossorigin="anonymous">
<script src="{{< param "cdn.js_bundle" >}}" integrity="{{< param "cdn.js_bundle_hash" >}}" crossorigin="anonymous"></script>
```

Если Вы используете наш скомпилированный JavaScript и предпочитаете включать Popper отдельно, добавьте Popper перед нашим JS, предпочтительно через CDN.

```html
<script src="{{< param "cdn.jquery" >}}" integrity="{{< param "cdn.jquery_hash" >}}" crossorigin="anonymous"></script>
<script src="{{< param "cdn.popper" >}}" integrity="{{< param "cdn.popper_hash" >}}" crossorigin="anonymous"></script>
<script src="{{< param "cdn.js" >}}" integrity="{{< param "cdn.js_hash" >}}" crossorigin="anonymous"></script>
```

## Менеджеры пакетов

Вставьте **исходные файлы** Bootstrap практически в любой проект с помощью некоторых из самых популярных менеджеров пакетов. Независимо от диспетчера пакетов, для Bootstrap **потребуется компилятор Sass и [Autoprefixer](https://github.com/postcss/autoprefixer)** для настройки, соответствующей нашим официальным скомпилированным версиям.

### npm

Установите Bootstrap в приложения, работающие на Node.js с [пакетом npm](https://www.npmjs.com/package/bootstrap):

```sh
npm install bootstrap
```

`require('bootstrap')` загрузит все плагины jQuery Bootstrap в объект jQuery. Сам модуль `bootstrap` ничего не экспортирует. Вы можете вручную загрузить плагины jQuery для Bootstrap по отдельности, загрузив файлы `/js/*.js` в каталог верхнего уровня пакета.

Bootstrap `package.json` содержит некоторые дополнительные метаданные под следующими ключами:

- `sass` - путь к основному исходному файлу Bootstrap [Sass](https://sass-lang.com/)
- `style` - путь к неминифицированному CSS Bootstrap, который был предварительно скомпилирован с использованием настроек по умолчанию (без настройки)

### yarn

Установите Bootstrap в приложения, работающие на Node.js с [пакетом yarn](https://yarnpkg.com/en/package/bootstrap):

```sh
yarn add bootstrap
```

### RubyGems

Установите Bootstrap в свои приложения Ruby, используя [Bundler](https://bundler.io/) (**рекомендуется**) и [RubyGems](https://rubygems.org/), добавив следующую строку в свой [`Gemfile`](https://bundler.io/gemfile.html):

```ruby
gem 'bootstrap', '~> {{< param current_ruby_version >}}'
```

В качестве альтернативы, если Вы не используете Bundler, Вы можете установить gem, выполнив эту команду:

```sh
gem install bootstrap -v {{< param current_ruby_version >}}
```

[Смотрите gem README](https://github.com/twbs/bootstrap-rubygem/blob/master/README.md) для получения дополнительной информации.

### Composer

Вы также можете установить и управлять Sass и JavaScript для Bootstrap, используя [Composer](https://getcomposer.org/):

```sh
composer require twbs/bootstrap:{{< param current_version >}}
```

### NuGet

Если Вы разрабатываете в .NET, Вы также можете установить и управлять Bootstrap [CSS](https://www.nuget.org/packages/bootstrap/) или [Sass](https://www.nuget.org/packages/bootstrap.sass/) и JavaScript используя [NuGet](https://www.nuget.org/):

```powershell
Install-Package bootstrap
```

```powershell
Install-Package bootstrap.sass
```
