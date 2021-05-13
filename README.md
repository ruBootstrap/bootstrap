<p align="center">
  <a href="https://getbootstrap.su/">
    <img src="https://getbootstrap.su/docs/5.0/assets/brand/bootstrap-logo-shadow.png" alt="Bootstrap logo" width="200" height="165">
  </a>
</p>

<h3 align="center">Bootstrap</h3>

<p align="center">
  Элегантная, интуитивно понятная и мощная интерфейсная среда для более быстрой и простой веб-разработки.
  <br>
  <a href="https://getbootstrap.su/docs/5.0/"><strong>[RU] Обзор документации Bootstrap »</strong></a> | <a href="https://getbootstrap.com/docs/5.0/"><strong>[EN] Explore Bootstrap docs »</strong></a>
  <br>
  <br>
  <a href="https://github.com/twbs/bootstrap/issues/new?template=bug_report.md">Report bug</a>
  ·
  <a href="https://github.com/twbs/bootstrap/issues/new?template=feature_request.md">Request feature</a>
  ·
  <a href="https://themes.getbootstrap.com/">Themes</a>
  ·
  <a href="https://blog.getbootstrap.com/">Blog</a>
</p>


## Bootstrap 5

Наша ветка по умолчанию предназначена для разработки нашего предстоящего выпуска Bootstrap 5. Направляйтесь к [`v4-dev` branch](https://github.com/twbs/bootstrap/tree/v4-dev) чтобы просмотреть readme, документацию и исходный код для Bootstrap 4.


## Оглавление

- [Быстрый старт](#быстрый-старт)
- [Статус](#статус)
- [Что включено](#что-включено)
- [Ошибки и запросы улучшений](#ошибки-и-запросы-улучшений)
- [Документация](#документация)
- [Содействие](#содействие)
- [Сообщество](#сообщество)
- [Управление версиями](#управление-версиями)
- [Создатели](#создатели)
- [Благодарности](#благодарности)
- [Авторское право и лицензия](#авторское-право-и-лицензия)


## Быстрый старт

Доступно несколько вариантов быстрого запуска:

- [Скачать последнюю версию](https://github.com/twbs/bootstrap/archive/v5.0.1.zip)
- Клонировать репозиторий: `git clone https://github.com/twbs/bootstrap.git`
- Установить с помощью [npm](https://www.npmjs.com/): `npm install bootstrap@next`
- Установить с помощью [yarn](https://yarnpkg.com/): `yarn add bootstrap@next`
- Установить с помощью [Composer](https://getcomposer.org/): `composer require twbs/bootstrap:5.0.1`
- Установить с помощью [NuGet](https://www.nuget.org/): CSS: `Install-Package bootstrap` Sass: `Install-Package bootstrap.sass`

Прочтите [Начальную страницу](https://getbootstrap.su/docs/5.0/getting-started/introduction/) для получения информации о содержимом фреймворка, шаблонах, примерах и многом другом.


## Статус

[![Slack](https://bootstrap-slack.herokuapp.com/badge.svg)](https://bootstrap-slack.herokuapp.com/)
[![Build Status](https://img.shields.io/github/workflow/status/twbs/bootstrap/JS%20Tests/main?label=JS%20Tests&logo=github)](https://github.com/twbs/bootstrap/actions?query=workflow%3AJS+Tests+branch%3Amain)
[![npm version](https://img.shields.io/npm/v/bootstrap)](https://www.npmjs.com/package/bootstrap)
[![Gem version](https://img.shields.io/gem/v/bootstrap)](https://rubygems.org/gems/bootstrap)
[![Meteor Atmosphere](https://img.shields.io/badge/meteor-twbs%3Abootstrap-blue)](https://atmospherejs.com/twbs/bootstrap)
[![Packagist Prerelease](https://img.shields.io/packagist/vpre/twbs/bootstrap)](https://packagist.org/packages/twbs/bootstrap)
[![NuGet](https://img.shields.io/nuget/vpre/bootstrap)](https://www.nuget.org/packages/bootstrap/absoluteLatest)
[![peerDependencies Status](https://img.shields.io/david/peer/twbs/bootstrap)](https://david-dm.org/twbs/bootstrap?type=peer)
[![devDependency Status](https://img.shields.io/david/dev/twbs/bootstrap)](https://david-dm.org/twbs/bootstrap?type=dev)
[![Coverage Status](https://img.shields.io/coveralls/github/twbs/bootstrap/main)](https://coveralls.io/github/twbs/bootstrap?branch=main)
[![CSS gzip size](https://img.badgesize.io/twbs/bootstrap/main/dist/css/bootstrap.min.css?compression=gzip&label=CSS%20gzip%20size)](https://github.com/twbs/bootstrap/blob/main/dist/css/bootstrap.min.css)
[![CSS Brotli size](https://img.badgesize.io/twbs/bootstrap/main/dist/css/bootstrap.min.css?compression=brotli&label=CSS%20Brotli%20size)](https://github.com/twbs/bootstrap/blob/main/dist/css/bootstrap.min.css)
[![JS gzip size](https://img.badgesize.io/twbs/bootstrap/main/dist/js/bootstrap.min.js?compression=gzip&label=JS%20gzip%20size)](https://github.com/twbs/bootstrap/blob/main/dist/js/bootstrap.min.js)
[![JS Brotli size](https://img.badgesize.io/twbs/bootstrap/main/dist/js/bootstrap.min.js?compression=brotli&label=JS%20Brotli%20size)](https://github.com/twbs/bootstrap/blob/main/dist/js/bootstrap.min.js)
[![BrowserStack Status](https://www.browserstack.com/automate/badge.svg?badge_key=SkxZcStBeExEdVJqQ2hWYnlWckpkNmNEY213SFp6WHFETWk2bGFuY3pCbz0tLXhqbHJsVlZhQnRBdEpod3NLSDMzaHc9PQ==--3d0b75245708616eb93113221beece33e680b229)](https://www.browserstack.com/automate/public-build/SkxZcStBeExEdVJqQ2hWYnlWckpkNmNEY213SFp6WHFETWk2bGFuY3pCbz0tLXhqbHJsVlZhQnRBdEpod3NLSDMzaHc9PQ==--3d0b75245708616eb93113221beece33e680b229)
[![Backers on Open Collective](https://img.shields.io/opencollective/backers/bootstrap)](#backers)
[![Sponsors on Open Collective](https://img.shields.io/opencollective/sponsors/bootstrap)](#sponsors)


## Что включено

В загрузке Вы найдете следующие каталоги и файлы, которые логически группируют общие ресурсы и предоставляют как скомпилированные, так и минифицированные варианты. Вы увидите что-то вроде этого:

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

Предоставляем скомпилированные CSS и JS (`bootstrap.*`), а также скомпилированные и минимизированные CSS и JS (`bootstrap.min.*`). [source maps](https://developers.google.com/web/tools/chrome-devtools/javascript/source-maps) (`bootstrap.*.map`) доступны для использования с инструментами разработчика некоторых браузеров. Объединенные файлы JS (`bootstrap.bundle.js` и минифицированные `bootstrap.bundle.min.js`) включают [Popper](https://popper.js.org/).


## Ошибки и запросы улучшений

Есть ошибка или запрос функции? Пожалуйста, сначала прочтите [issue guidelines](https://github.com/twbs/bootstrap/blob/main/.github/CONTRIBUTING.md#using-the-issue-tracker) и поищите существующие и закрытые проблемы. Если Ваша проблема еще не решена или идея не создана, [пожалуйста, откройте новый выпуск](https://github.com/twbs/bootstrap/issues/new).


## Документация

Документация Bootstrap, включенная в этот репозиторий в корневом каталоге, создана с помощью [Hugo](https://gohugo.ru/) и размещена на страницах GitHub по адресу <https://getbootstrap.su/>. Документацию также можно запускать локально.

Поиск по документации поддерживается [Algolia's DocSearch](https://community.algolia.com/docsearch/). Работаете над поиском? Обязательно установите `debug: true` в файле `site/assets/js/search.js`.

### Запуск документации локально

1. Выполните `npm install` для установки зависимостей Node.js, включая Hugo (конструктор сайтов).
2. Выполните `npm run test` (или конкретный сценарий npm) для восстановления распределенных файлов CSS и JavaScript, а также ресурсов нашей документации.
3. Из корневой директории `/bootstrap`, выполните в командной строке `npm run docs-serve`.
4. Откройте `http://localhost:9001/` в вашем браузере, и вуаля.

Узнайте больше об использовании Hugo, прочитав его [документацию](https://gohugo.io/documentation/).

### Документация к предыдущим выпускам

Вы можете найти все наши предыдущие выпуски документы на  <https://getbootstrap.su/docs/versions/>.

[Предыдущие релизы](https://github.com/twbs/bootstrap/releases) и их документация также доступны для скачивания.


## Содействие

Прочтите наши [правила участия](https://github.com/twbs/bootstrap/blob/main/.github/CONTRIBUTING.md). Включены инструкции по открытию вопросов, стандарты кодирования и примечания по развитию.

Более того, если Ваш pull request содержит исправления или функции JavaScript, Вы должны включить [соответствующие модульные тесты](https://github.com/twbs/bootstrap/tree/main/js/tests). Весь HTML и CSS должны соответствовать [Руководству по коду](https://github.com/mdo/code-guide), которое поддерживает [Mark Otto](https://github.com/mdo).

Настройки редактора доступны в [конфигурации редактора](https://github.com/twbs/bootstrap/blob/main/.editorconfig) для удобного использования в обычных текстовых редакторах. Узнайте больше и загрузите плагины на <https://editorconfig.org/>.


## Сообщество

Получайте новости о разработке Bootstrap и общайтесь с разработчиками проекта и членами сообщества.

- Следите за [@getbootstrap в Twitter](https://twitter.com/getbootstrap).
- Читайте и подписывайтесь на [Официальный блог Bootstrap](https://blog.getbootstrap.com/).
- Присоединиться к [официальной комнате Slack](https://bootstrap-slack.herokuapp.com/).
- Общайтесь с другими Bootstrappers в IRC. На сервере `irc.freenode.net`, в канале `##bootstrap`.
- Справку по реализации можно найти на сайте Stack Overflow (с тегом [`bootstrap-5`](https://stackoverflow.com/questions/tagged/bootstrap-5)).
- Разработчикам следует использовать ключевое слово `bootstrap` в пакетах, которые изменяют или расширяют функциональность Bootstrap при распространении через [npm](https://www.npmjs.com/browse/keyword/bootstrap) или аналогичные механизмы доставки для максимальной узнаваемости.


## Управление версиями

Для прозрачности нашего цикла выпуска и для обеспечения обратной совместимости Bootstrap поддерживается в соответствии с [руководство по Семантическому Управлению версиями](https://semver.org/). Иногда мы ошибаемся, но всегда придерживаемся этих правил.

См. [Раздел Releases нашего проекта GitHub](https://github.com/twbs/bootstrap/releases) для просмотра журналов изменений для каждой версии выпуска Bootstrap. Сообщения с анонсами релизов на [официальном блоге Bootstrap](https://blog.getbootstrap.com/) содержат сводку наиболее значимых изменений, внесенных в каждый выпуск.


## Создатели

**Mark Otto**

- <https://twitter.com/mdo>
- <https://github.com/mdo>

**Jacob Thornton**

- <https://twitter.com/fat>
- <https://github.com/fat>


## Благодарности

<a href="https://www.browserstack.com/">
  <img src="https://live.browserstack.com/images/opensource/browserstack-logo.svg" alt="BrowserStack Logo" width="192" height="42">
</a>

Спасибо [BrowserStack](https://www.browserstack.com/) за предоставление инфраструктуры, которая позволяет нам тестировать в реальных браузерах!


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


## Сторонники

Спасибо всем нашим сторонникам! 🙏 [[Become a backer](https://opencollective.com/bootstrap#backer)]

[![Backers](https://opencollective.com/bootstrap/backers.svg?width=890)](https://opencollective.com/bootstrap#backers)


## Авторское право и лицензия

Авторские права на код и документацию 2011–2021 гг. принадлежат [авторам Bootstrap](https://github.com/twbs/bootstrap/graphs/contributors) и [Twitter, Inc.](https://twitter.com) выпущенные под [Лицензией MIT](https://github.com/twbs/bootstrap/blob/main/LICENSE). Документация выпущена по лицензии [Creative Commons](https://creativecommons.org/licenses/by/3.0/).
