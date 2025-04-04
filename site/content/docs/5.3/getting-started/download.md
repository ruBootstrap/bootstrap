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

<a href="{{< param "download.dist" >}}" class="btn btn-bd-primary">Скачать</a>

## Исходные файлы

Скомпилируйте Bootstrap с Вашим собственным конвейером ресурсов, загрузив наши исходные файлы Sass, JavaScript и документации. Этот вариант требует дополнительных инструментов:

- [Компилятор Sass]({{< docsref "/getting-started/contribute#sass" >}}) для компиляции исходных файлов Sass в файлы CSS
- [Аутопрефиксер](https://github.com/postcss/autoprefixer) для префикса поставщика CSS

Если вам потребуется наш полный набор [инструментов сборки]({{< docsref "/getting-started/contribute#tooling-setup" >}}), они включены для разработки Bootstrap и его документации, но, скорее всего, они не подходят для ваши собственные цели.

<a href="{{< param "download.source" >}}" class="btn btn-bd-primary">Скачать исходный код</a>

## Примеры

Если Вы хотите скачать и изучить наши [примеры]({{< docsref "/examples" >}}), Вы можете скачать уже созданные примеры:

<a href="{{< param "download.dist_examples" >}}" class="btn btn-bd-primary">Скачать Примеры</a>

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

### Альтернативные CDN

Мы рекомендуем [jsDelivr](https://www.jsdelivr.com/) и сами используем его в нашей документации. Однако в некоторых случаях — например, в некоторых конкретных странах или средах — вам может потребоваться использовать других поставщиков CDN, например [cdnjs](https://cdnjs.com/) или [unpkg](https://unpkg.com/).

У этих провайдеров CDN вы найдете одни и те же файлы, хотя и с разными URL-адресами. С помощью cdnjs вы можете [использовать эту прямую ссылку на пакет Bootstrap](https://cdnjs.com/libraries/bootstrap), чтобы скопировать и вставить готовые к использованию фрагменты HTML для каждого дистрибутивного файла из любой версии Bootstrap.

{{< callout warning>}}
**Если хэши SRI для данного файла различаются, не следует использовать файлы из этого CDN, поскольку это означает, что файл был изменен кем-то другим.**
{{< /callout >}}

Обратите внимание, что вам следует сравнивать хеши одинаковой длины, например, `sha384` с `sha384`, иначе ожидается, что они будут разными.
Таким образом, вы можете использовать онлайн-инструмент, например [SRI Hash Generator](https://www.srihash.org/), чтобы убедиться, что хэши одинаковы для данного файла.
В качестве альтернативы, если у вас установлен OpenSSL, вы можете добиться того же через CLI, например:

```sh
openssl dgst -sha384 -binary bootstrap.min.js | openssl base64 -A
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

{{< callout warning >}}
**Yarn 2+ (aka Yarn Berry) doesn't support the `node_modules` directory by default**: using our [Sass & JS example](https://github.com/twbs/examples/tree/main/sass-js) needs some adjustments:

```sh
yarn config set nodeLinker node-modules # Use the node_modules linker
touch yarn.lock # Create an empty yarn.lock file
yarn install # Install the dependencies
yarn start # Start the project
```
{{< /callout >}}

### RubyGems

Установите Bootstrap в свои приложения Ruby с помощью [Bundler](https://bundler.io/) (**рекомендуется**) и [RubyGems](https://rubygems.org/), добавив следующую строку в свой [`Gemfile`](https://bundler.io/guides/gemfile.html):

```ruby
gem 'bootstrap', '~> {{< param current_ruby_version >}}'
```

В качестве альтернативы, если Вы не используете `Bundler`, Вы можете установить `gem`, выполнив эту команду:

```sh
gem install bootstrap -v {{< param current_ruby_version >}}
```

[Смотрите gem's README](https://github.com/twbs/bootstrap-rubygem/blob/main/README.md) для получения дополнительной информации.

### Composer

Вы также можете установить и управлять Sass и JavaScript для Bootstrap, используя [Composer](https://getcomposer.org/):

```sh
composer require twbs/bootstrap:{{< param current_version >}}
```

### NuGet

Если вы разрабатываете в .NET Framework, вы также можете установить и управлять Bootstrap [CSS](https://www.nuget.org/packages/bootstrap/) или [Sass](https://www.nuget.org/packages/bootstrap.sass/) и JavaScript с помощью [NuGet](https://www.nuget.org/). Более новые проекты должны использовать [libman](https://learn.microsoft.com/en-us/aspnet/core/client-side/libman/) или другой метод, поскольку NuGet предназначен для скомпилированного кода, а не для frontend-активов.

```powershell
Install-Package bootstrap
```

```powershell
Install-Package bootstrap.sass
```
