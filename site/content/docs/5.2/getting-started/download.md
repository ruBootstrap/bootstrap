---
layout: docs
title: Скачать
description: Скачайте Bootstrap, чтобы получить скомпилированные CSS и JavaScript, исходный код или включить его в свои любимые менеджеры пакетов, такие как npm, RubyGems и другие.
group: getting-started
toc: true
---

## Скомпилированный CSS и JS

Загрузите готовый к использованию скомпилированный код для **Bootstrap v{{< param current_version >}}**, чтобы легко вставить его в свой проект, который включает:

- Скомпилированные и минимизированные пакеты CSS (см. [Сравнение файлов CSS]({{< docsref "/getting-started/contents#файлы-css" >}}))
- Скомпилированные и минимизированные плагины JavaScript (См. [сравнение JS-файлов]({{< docsref "/getting-started/contents#файлы-js" >}}))

Сюда не входят документация, исходные файлы или любые дополнительные зависимости JavaScript, такие как Popper.

<a href="{{< param "download.dist" >}}" class="btn btn-bd-primary" onclick="ga('send', 'event', 'Getting started', 'Download', 'Download Bootstrap');">Скачать</a>

## Исходные файлы

Скомпилируйте Bootstrap с Вашим собственным конвейером ресурсов, загрузив наши исходные файлы Sass, JavaScript и документации. Этот вариант требует дополнительных инструментов:

- [Компилятор Sass]({{< docsref "/getting-started/contribute#sass" >}}) для компиляции исходных файлов Sass в файлы CSS
- [Аутопрефиксер](https://github.com/postcss/autoprefixer) для префикса поставщика CSS

Если вам потребуется наш полный набор [инструментов сборки]({{< docsref "/getting-started/contribute#tooling-setup" >}}), они включены для разработки Bootstrap и его документации, но, скорее всего, они не подходят для ваши собственные цели.

<a href="{{< param "download.source" >}}" class="btn btn-bd-primary" onclick="ga('send', 'event', 'Начало работы', 'Скачать', 'Скачать исходники');">Скачать исходный код</a>

## Примеры

Если Вы хотите скачать и изучить наши [примеры]({{< docsref "/examples" >}}), Вы можете скачать уже созданные примеры:

<a href="{{< param "download.dist_examples" >}}" class="btn btn-bd-primary" onclick="ga('send', 'event', 'Начало работы', 'Скачать', 'Скачать примеры');">Скачать Примеры</a>

## CDN через jsDelivr

Пропустите загрузку с помощью [jsDelivr](https://www.jsdelivr.com/), чтобы доставить кэшированную версию скомпилированных CSS и JS Bootstrap в свой проект.

```html
<link href="{{< param "cdn.css" >}}" rel="stylesheet" integrity="{{< param "cdn.css_hash" >}}" crossorigin="anonymous">
<script src="{{< param "cdn.js_bundle" >}}" integrity="{{< param "cdn.js_bundle_hash" >}}" crossorigin="anonymous"></script>
```

Если Вы используете наш скомпилированный JavaScript и предпочитаете включать Popper.js отдельно, добавьте Popper.js перед нашим JS, желательно через CDN.

```html
<script src="{{< param "cdn.popper" >}}" integrity="{{< param "cdn.popper_hash" >}}" crossorigin="anonymous"></script>
<script src="{{< param "cdn.js" >}}" integrity="{{< param "cdn.js_hash" >}}" crossorigin="anonymous"></script>
```

## Менеджеры пакетов

Загрузите **исходные файлы** Bootstrap практически в любой проект с помощью некоторых из самых популярных менеджеров пакетов. Независимо от диспетчера пакетов, для Bootstrap **потребуется [компилятор Sass]({{< docsref "/getting-started/contribute#sass" >}}) и [Аутопрефиксер](https://github.com/postcss/autoprefixer)** для настройки, соответствующей нашим официальным скомпилированным версиям.

### npm

Установите Bootstrap в приложения, работающие на Node.js, с помощью [пакета npm](https://www.npmjs.com/package/bootstrap):

```sh
npm install bootstrap@{{< param "current_version" >}}
```

`const bootstrap = require('bootstrap')` или `import bootstrap from 'bootstrap'` загрузит все плагины Bootstrap в объект `bootstrap`.
Сам модуль `bootstrap` экспортирует все наши плагины. Вы можете вручную загрузить плагины Bootstrap по отдельности, загрузив файлы `/js/dist/*.js` в каталог верхнего уровня пакета.

Bootstrap's `package.json` содержит некоторые дополнительные метаданные под следующими ключами:

- `sass` - путь к основному исходному файлу [Sass](https://sass-lang.com/) Bootstrap
- `style` - путь к неминифицированному CSS Bootstrap, который был скомпилирован с использованием настроек по умолчанию (без настройки)

{{< callout info >}}
{{< partial "callouts/info-npm-starter.md" >}}
{{< /callout >}}

### yarn

Установите Bootstrap в свои приложения, работающие на Node.js, с помощью [пакета yarn](https://yarnpkg.com/en/package/bootstrap):

```sh
yarn add bootstrap@{{< param "current_version" >}}
```

### RubyGems

Установите Bootstrap в свои приложения Ruby, используя [Bundler](https://bundler.io/) (**рекомендуется**) и [RubyGems](https://rubygems.org/), добавив следующую строку в свой [`Gemfile`](https://bundler.io/gemfile.html):

```ruby
gem 'bootstrap', '~> {{< param current_ruby_version >}}'
```

В качестве альтернативы, если Вы не используете `Bundler`, Вы можете установить `gem`, выполнив эту команду:

```sh
gem install bootstrap -v {{< param current_ruby_version >}}
```

[Смотрите gem's README](https://github.com/twbs/bootstrap-rubygem/blob/master/README.md) для получения дополнительной информации.

### Composer

Вы также можете установить и управлять Sass и JavaScript для Bootstrap, используя [Composer](https://getcomposer.org/):

```sh
composer require twbs/bootstrap:{{< param current_version >}}
```

### NuGet

Если вы разрабатываете в .NET Framework, вы также можете установить и управлять Bootstrap [CSS](https://www.nuget.org/packages/bootstrap/) или [Sass](https://www.nuget.org/packages/bootstrap.sass/) и JavaScript с помощью [NuGet](https://www.nuget.org/). В более новых проектах следует использовать [libman](https://docs.microsoft.com/en-us/aspnet/core/client-side/libman/) или другой метод, поскольку NuGet предназначен для скомпилированного кода, а не для внешних ресурсов.

```powershell
Install-Package bootstrap
```

```powershell
Install-Package bootstrap.sass
```
