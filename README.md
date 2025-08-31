<p align="center">
  <a href="https://getbootstrap.com/">
    <img src="https://getbootstrap.com/docs/5.3/assets/brand/bootstrap-logo-shadow.png" alt="Bootstrap logo" width="200" height="165">
  </a>
</p>

<h3 align="center">Bootstrap</h3>

<p align="center">
  Элегантная, интуитивно понятная и мощная интерфейсная среда для более быстрой и простой веб-разработки.
  <br>
  <a href="https://getbootstrap.su/docs/5.3/"><strong>[RU] Обзор документации Bootstrap »</strong></a> | <a href="https://getbootstrap.com/docs/5.3/"><strong>[EN] Explore Bootstrap docs »</strong></a>
  <br>
  <br>
  <a href="https://github.com/twbs/bootstrap/issues/new?assignees=-&labels=bug&template=bug_report.yml">Сообщить об ошибке</a>
  ·
  <a href="https://github.com/twbs/bootstrap/issues/new?assignees=&labels=feature&template=feature_request.yml">Запрос функционала</a>
  ·
  <a href="https://themes.getbootstrap.com/">Темы</a>
  ·
  <a href="https://blog.getbootstrap.su/">Блог</a>
</p>

## Bootstrap 5

Наша ветка по умолчанию предназначена для разработки нашего предстоящего выпуска Bootstrap 5. Направляйтесь к [ветке `v4-dev`](https://github.com/twbs/bootstrap/tree/v4-dev) чтобы просмотреть readme, документацию и исходный код для Bootstrap 4.

## Оглавление

- [Быстрый старт](#quick-start)
- [Статус](#status)
- [Что входит в комплект](#whats-included)
- [Ошибки и запросы на новые функции](#bugs-and-feature-requests)
- [Документация](#documentation)
- [Вклад](#contributing)
- [Сообщество](#community)
- [Версионирование](#versioning)
- [Создатели](#creators)
- [Благодарности](#thanks)
- [Авторские права и лицензия](#copyright-and-license)

## Быстрый старт

Доступно несколько вариантов быстрого запуска:

- [Скачать последний релиз](https://github.com/twbs/bootstrap/archive/v5.3.7.zip)
- Клонировать репозиторий: `git clone https://github.com/twbs/bootstrap.git`
- Установить через [npm](https://www.npmjs.com/): `npm install bootstrap@v5.3.7`
- Установить через [yarn](https://yarnpkg.com/): `yarn add bootstrap@v5.3.7`
- Установить через [Bun](https://bun.sh/): `bun add bootstrap@v5.3.7`
- Установить через [Composer](https://getcomposer.org/): `composer require twbs/bootstrap:5.3.7`
- Установить через [NuGet](https://www.nuget.org/): CSS: `Install-Package bootstrap` Sass: `Install-Package bootstrap.sass`

Прочитайте [Страницу начала работы](https://getbootstrap.su/docs/5.2/getting-started/introduction/) для получения информации о содержании фреймворка, шаблонах, примерах и многом другом.

## Статус

[![Build Status](https://img.shields.io/github/actions/workflow/status/twbs/bootstrap/js.yml?branch=main&label=JS%20Tests&logo=github)](https://github.com/twbs/bootstrap/actions/workflows/js.yml?query=workflow%3AJS+branch%3Amain)
[![npm version](https://img.shields.io/npm/v/bootstrap?logo=npm&logoColor=fff)](https://www.npmjs.com/package/bootstrap)
[![Gem version](https://img.shields.io/gem/v/bootstrap?logo=rubygems&logoColor=fff)](https://rubygems.org/gems/bootstrap)
[![Meteor Atmosphere](https://img.shields.io/badge/meteor-twbs%3Abootstrap-blue?logo=meteor&logoColor=fff)](https://atmospherejs.com/twbs/bootstrap)
[![Packagist Prerelease](https://img.shields.io/packagist/vpre/twbs/bootstrap?logo=packagist&logoColor=fff)](https://packagist.org/packages/twbs/bootstrap)
[![NuGet](https://img.shields.io/nuget/vpre/bootstrap?logo=nuget&logoColor=fff)](https://www.nuget.org/packages/bootstrap/absoluteLatest)
[![Coverage Status](https://img.shields.io/coveralls/github/twbs/bootstrap/main?logo=coveralls&logoColor=fff)](https://coveralls.io/github/twbs/bootstrap?branch=main)
[![CSS gzip size](https://img.badgesize.io/twbs/bootstrap/main/dist/css/bootstrap.min.css?compression=gzip&label=CSS%20gzip%20size)](https://github.com/twbs/bootstrap/blob/main/dist/css/bootstrap.min.css)
[![CSS Brotli size](https://img.badgesize.io/twbs/bootstrap/main/dist/css/bootstrap.min.css?compression=brotli&label=CSS%20Brotli%20size)](https://github.com/twbs/bootstrap/blob/main/dist/css/bootstrap.min.css)
[![JS gzip size](https://img.badgesize.io/twbs/bootstrap/main/dist/js/bootstrap.min.js?compression=gzip&label=JS%20gzip%20size)](https://github.com/twbs/bootstrap/blob/main/dist/js/bootstrap.min.js)
[![JS Brotli size](https://img.badgesize.io/twbs/bootstrap/main/dist/js/bootstrap.min.js?compression=brotli&label=JS%20Brotli%20size)](https://github.com/twbs/bootstrap/blob/main/dist/js/bootstrap.min.js)
[![Backers on Open Collective](https://img.shields.io/opencollective/backers/bootstrap?logo=opencollective&logoColor=fff)](#backers)
[![Sponsors on Open Collective](https://img.shields.io/opencollective/sponsors/bootstrap?logo=opencollective&logoColor=fff)](#sponsors)

## Что входит в комплект

В скачанном архиве вы найдёте следующие директории и файлы, которые логически группируют общие ресурсы и предоставляют как скомпилированные, так и минифицированные варианты.

<details>
  <summary>Скачать содержимое</summary>

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

</details>

Мы предоставляем скомпилированные CSS и JS (`bootstrap.*`), а также минифицированные версии (`bootstrap.min.*`). [Source maps](https://web.dev/articles/source-maps) (`bootstrap.*.map`) доступны для использования с инструментами разработчика некоторых браузеров. JS-файлы с пометкой bundle (`bootstrap.bundle.js` и минифицированный `bootstrap.bundle.min.js`) включают [Popper](https://popper.js.org/docs/v2/).

## Ошибки и запросы улучшений

Есть ошибка или запрос функции? Пожалуйста, сначала прочтите [issue guidelines](https://github.com/twbs/bootstrap/blob/main/.github/CONTRIBUTING.md#using-the-issue-tracker) и поищите существующие и закрытые проблемы. Если Ваша проблема еще не решена или идея не создана, [пожалуйста, откройте новый выпуск](https://github.com/twbs/bootstrap/issues/new/choose).

## Документация

Bootstrap’s documentation, included in this repo in the root directory, is built with [Astro](https://astro.build/) and publicly hosted on GitHub Pages at <https://getbootstrap.com/>. The docs may also be run locally.

Поиск документации осуществляется с помощью [Algolia's DocSearch](https://docsearch.algolia.com/).

### Запуск документации локально

1. Выполните команду `npm install`, чтобы установить зависимости Node.js, включая Astro (сборщик сайта).
2. Выполните `npm run test` (или другой нужный npm-скрипт), чтобы пересобрать скомпилированные CSS и JavaScript файлы, а также ресурсы документации.
3. Из корневой директории `/bootstrap` выполните в командной строке `npm run docs-serve`.
4. Откройте <http://localhost:9001> в браузере — и вуаля!

Learn more about using Astro by reading its [documentation](https://docs.astro.build/en/getting-started/).

### Документация к предыдущим выпускам

Вы можете найти все наши предыдущие выпуски документы на  <https://getbootstrap.su/docs/versions/>.

[Предыдущие релизы](https://github.com/twbs/bootstrap/releases) и их документация также доступны для скачивания.

## Содействие

Прочтите наши [правила участия](https://github.com/twbs/bootstrap/blob/main/.github/CONTRIBUTING.md). Включены инструкции по открытию вопросов, стандарты кодирования и примечания по развитию.

Более того, если Ваш pull request содержит исправления или функции JavaScript, Вы должны включить [соответствующие модульные тесты](https://github.com/twbs/bootstrap/tree/main/js/tests). Весь HTML и CSS должны соответствовать [Руководству по коду](https://github.com/mdo/code-guide), которое поддерживает [Mark Otto](https://github.com/mdo).

Настройки редактора доступны в [конфигурации редактора](https://github.com/twbs/bootstrap/blob/main/.editorconfig) для удобного использования в обычных текстовых редакторах. Узнайте больше и загрузите плагины на <https://editorconfig.org/>.

## Сообщество

Get updates on Bootstrap’s development and chat with the project maintainers and community members.

- Присоединиться к чату [@getbootstrap_ru в Телеграм](https://t.me/getbootstrap_ru).
- Следите за [@getbootstrap в Twitter](https://x.com/getbootstrap).
- Читайте и подписывайтесь на [Официальный блог Bootstrap](https://blog.getbootstrap.com/) и [Не официальный блог Bootstrap](https://blog.getbootstrap.su/).
- Обсуждайте, задавайте вопросы и многое другое в [сообществе Discord](https://discord.gg/bZUvakRU3M) или [Bootstrap subreddit](https://reddit.com/r/bootstrap).
- Спрашивайте и изучайте [наши обсуждения на GitHub](https://github.com/twbs/bootstrap/discussions).
- Общайтесь с другими Bootstrappers в IRC. На сервере `irc.libera.chat`, в канале `#bootstrap`.
- Справку по реализации можно найти на сайте Stack Overflow (с тегом [`bootstrap-5`](https://stackoverflow.com/questions/tagged/bootstrap-5)).
- Разработчикам следует использовать ключевое слово `bootstrap` в пакетах, которые изменяют или расширяют функциональность Bootstrap при распространении через [npm](https://www.npmjs.com/browse/keyword/bootstrap) или аналогичные механизмы доставки для максимальной узнаваемости.

## Управление версиями

Для прозрачности нашего цикла выпуска и для обеспечения обратной совместимости Bootstrap поддерживается в соответствии с [руководство по Семантическому Управлению версиями](https://semver.org/). Иногда мы ошибаемся, но всегда придерживаемся этих правил.

Смотрите [Раздел Релизы нашего проекта GitHub](https://github.com/twbs/bootstrap/releases) для просмотра журналов изменений для каждой версии выпуска Bootstrap. Сообщения с анонсами релизов на [официальном блоге Bootstrap](https://blog.getbootstrap.com/) содержат сводку наиболее значимых изменений, внесенных в каждый выпуск.

## Создатели

**Mark Otto**

- <https://x.com/mdo>
- <https://github.com/mdo>

**Jacob Thornton**

- <https://x.com/fat>
- <https://github.com/fat>

## Благодарности

<a href="https://www.browserstack.com/">
  <img src="https://live.browserstack.com/images/opensource/browserstack-logo.svg" alt="BrowserStack" width="192" height="42">
</a>

Спасибо [BrowserStack](https://www.browserstack.com/) за предоставление инфраструктуры, которая позволяет нам тестировать в реальных браузерах!

<a href="https://www.netlify.com/">
  <img src="https://www.netlify.com/v3/img/components/full-logo-light.svg" alt="Netlify" width="147" height="40">
</a>

Спасибо [Netlify](https://www.netlify.com/) за предоставленные нам версии превью деплоя!

## Спонсоры

Поддержите этот проект, став спонсором. Здесь будет отображаться Ваш логотип со ссылкой на Ваш сайт. [[Стать спонсором](https://opencollective.com/bootstrap#sponsor)]

[![OC sponsor 0](https://opencollective.com/bootstrap/sponsor/0/avatar.svg)](https://opencollective.com/bootstrap/sponsor/0/website)
[![OC sponsor 1](https://opencollective.com/bootstrap/sponsor/1/avatar.svg)](https://opencollective.com/bootstrap/sponsor/1/website)
[![OC sponsor 2](https://opencollective.com/bootstrap/sponsor/2/avatar.svg)](https://opencollective.com/bootstrap/sponsor/2/website)
[![OC sponsor 3](https://opencollective.com/bootstrap/sponsor/3/avatar.svg)](https://opencollective.com/bootstrap/sponsor/3/website)
[![OC sponsor 4](https://opencollective.com/bootstrap/sponsor/4/avatar.svg)](https://opencollective.com/bootstrap/sponsor/4/website)
[![OC sponsor 5](https://opencollective.com/bootstrap/sponsor/5/avatar.svg)](https://opencollective.com/bootstrap/sponsor/5/website)
[![OC sponsor 6](https://opencollective.com/bootstrap/sponsor/6/avatar.svg)](https://opencollective.com/bootstrap/sponsor/6/website)
[![OC sponsor 7](https://opencollective.com/bootstrap/sponsor/7/avatar.svg)](https://opencollective.com/bootstrap/sponsor/7/website)
[![OC sponsor 8](https://opencollective.com/bootstrap/sponsor/8/avatar.svg)](https://opencollective.com/bootstrap/sponsor/8/website)
[![OC sponsor 9](https://opencollective.com/bootstrap/sponsor/9/avatar.svg)](https://opencollective.com/bootstrap/sponsor/9/website)

## Контрибьюторы

Спасибо всем нашим сторонникам! 🙏 [[Become a backer](https://opencollective.com/bootstrap#backer)]

[![Backers](https://opencollective.com/bootstrap/backers.svg?width=890)](https://opencollective.com/bootstrap#backers)

## Авторское право и лицензия

Авторские права на код и документацию 2011-2025 принадлежат [Авторам Bootstrap](https://github.com/twbs/bootstrap/graphs/contributors). Код выпущен под [Лицензией MIT](https://github.com/twbs/bootstrap/blob/main/LICENSE). Документация выпущена под [Creative Commons](https://creativecommons.org/licenses/by/3.0/).
