<p align="center">
  <a href="https://getbootstrap.com/">
    <img src="https://getbootstrap.com/docs/4.6/assets/brand/bootstrap-solid.svg" alt="Bootstrap logo" width="72" height="72">
  </a>
</p>

<h3 align="center">Bootstrap</h3>

<p align="center">
  Элегантная, интуитивно понятная и мощная интерфейсная среда для более быстрой и простой веб-разработки.
  <br>
  <a href="https://getbootstrap.com/docs/4.6/"><strong>Изучите документацию Bootstrap »</strong></a> | <a href="https://v4.getbootstrap.su/docs/4.6/"><strong>Изучите перевод документации Bootstrap »</strong></a>
  <br>
  <br>
  <a href="https://github.com/twbs/bootstrap/issues/new?template=bug_report.md">Сообщить об ошибке</a>
  ·
  <a href="https://github.com/twbs/bootstrap/issues/new?template=feature_request.md">Запросу функции</a>
  ·
  <a href="https://themes.getbootstrap.com/">Темы</a>
  ·
  <a href="https://blog.getbootstrap.com/">Блог</a>
</p>

## Содержание

- [Быстрый старт](#быстрый-старт)
- [Статус](#статус)
- [Что включено](#что-включено)
- [Ошибки и запросы функций](#ошибки-и-запросы-функций)
- [Документация](#документация)
- [Участие](#участие)
- [Сообщество](#сообщество)
- [Управление версиями](#управление-версиями)
- [Создатели](#создатели)
- [Благодарности](#благодарности)
- [Авторское право и лицензия](#авторское-право-и-лицензия)

## Быстрый старт

Доступно несколько вариантов быстрого запуска:

- [Скачать последнюю версию.](https://github.com/twbs/bootstrap/archive/v4.6.0.zip)
- Клонировать репозиторий: `git clone https://github.com/twbs/bootstrap.git`
- Установить с помощью [npm](https://www.npmjs.com/): `npm install bootstrap`
- Установить с помощью [yarn](https://yarnpkg.com/): `yarn add bootstrap@4.6.0`
- Установить с помощью [Composer](https://getcomposer.org/): `composer require twbs/bootstrap:4.6.0`
- Установить с помощью [NuGet](https://www.nuget.org/): CSS: `Install-Package bootstrap` Sass: `Install-Package bootstrap.sass`

Прочтите [Начальную страницу](https://v4.getbootstrap.su/docs/4.6/getting-started/introduction/) для получения информации о содержании фреймворка, шаблонах, примерах и многом другом.

## Статус

[![Slack](https://bootstrap-slack.herokuapp.com/badge.svg)](https://bootstrap-slack.herokuapp.com/)
[![Build Status](https://github.com/twbs/bootstrap/workflows/JS%20Tests/badge.svg?branch=v4-dev)](https://github.com/twbs/bootstrap/actions?query=workflow%3AJS+Tests+branch%3Av4-dev)
[![npm version](https://img.shields.io/npm/v/bootstrap)](https://www.npmjs.com/package/bootstrap)
[![Gem version](https://img.shields.io/gem/v/bootstrap)](https://rubygems.org/gems/bootstrap)
[![Meteor Atmosphere](https://img.shields.io/badge/meteor-twbs%3Abootstrap-blue)](https://atmospherejs.com/twbs/bootstrap)
[![Packagist Prerelease](https://img.shields.io/packagist/vpre/twbs/bootstrap)](https://packagist.org/packages/twbs/bootstrap)
[![NuGet](https://img.shields.io/nuget/vpre/bootstrap)](https://www.nuget.org/packages/bootstrap/absoluteLatest)
[![peerDependencies Status](https://img.shields.io/david/peer/twbs/bootstrap)](https://david-dm.org/twbs/bootstrap?type=peer)
[![devDependency Status](https://img.shields.io/david/dev/twbs/bootstrap)](https://david-dm.org/twbs/bootstrap?type=dev)
[![Coverage Status](https://img.shields.io/coveralls/github/twbs/bootstrap/v4-dev)](https://coveralls.io/github/twbs/bootstrap?branch=v4-dev)
[![CSS gzip size](https://img.badgesize.io/twbs/bootstrap/v4-dev/dist/css/bootstrap.min.css?compression=gzip&label=CSS%20gzip%20size)](https://github.com/twbs/bootstrap/blob/v4-dev/dist/css/bootstrap.min.css)
[![JS gzip size](https://img.badgesize.io/twbs/bootstrap/v4-dev/dist/js/bootstrap.min.js?compression=gzip&label=JS%20gzip%20size)](https://github.com/twbs/bootstrap/blob/v4-dev/dist/js/bootstrap.min.js)
[![BrowserStack Status](https://www.browserstack.com/automate/badge.svg?badge_key=SkxZcStBeExEdVJqQ2hWYnlWckpkNmNEY213SFp6WHFETWk2bGFuY3pCbz0tLXhqbHJsVlZhQnRBdEpod3NLSDMzaHc9PQ==--3d0b75245708616eb93113221beece33e680b229)](https://www.browserstack.com/automate/public-build/SkxZcStBeExEdVJqQ2hWYnlWckpkNmNEY213SFp6WHFETWk2bGFuY3pCbz0tLXhqbHJsVlZhQnRBdEpod3NLSDMzaHc9PQ==--3d0b75245708616eb93113221beece33e680b229)
[![Backers on Open Collective](https://img.shields.io/opencollective/backers/bootstrap)](#backers)
[![Sponsors on Open Collective](https://img.shields.io/opencollective/sponsors/bootstrap)](#sponsors)

## Что включено

В загрузке Вы найдете следующие каталоги и файлы, которые логически группируют общие ресурсы и предоставляют как скомпилированные, так и минифицированные варианты. Вы увидите что-то вроде этого:

```text
bootstrap/
└── dist/
    ├── css/
    │   ├── bootstrap-grid.css
    │   ├── bootstrap-grid.css.map
    │   ├── bootstrap-grid.min.css
    │   ├── bootstrap-grid.min.css.map
    │   ├── bootstrap-reboot.css
    │   ├── bootstrap-reboot.css.map
    │   ├── bootstrap-reboot.min.css
    │   ├── bootstrap-reboot.min.css.map
    │   ├── bootstrap.css
    │   ├── bootstrap.css.map
    │   ├── bootstrap.min.css
    │   └── bootstrap.min.css.map
    └── js/
        ├── bootstrap.bundle.js
        ├── bootstrap.bundle.js.map
        ├── bootstrap.bundle.min.js
        ├── bootstrap.bundle.min.js.map
        ├── bootstrap.js
        ├── bootstrap.js.map
        ├── bootstrap.min.js
        └── bootstrap.min.js.map
```

Мы предоставляем скомпилированные CSS и JS (`bootstrap.*`), а также скомпилированные и минимизированные CSS и JS (`bootstrap.min.*`). [source maps](https://developers.google.com/web/tools/chrome-devtools/javascript/source-maps) (`bootstrap.*.map`) доступны для использования с инструментами разработчика некоторых браузеров. Связанные файлы JS (`bootstrap.bundle.js` и минифицированные `bootstrap.bundle.min.js`) включают [Popper](https://popper.js.org/), но не [jQuery](https://jquery.com/).

## Ошибки и запросы функций

Есть ошибка или запрос функции? Сначала прочтите [руководство по проблеме](https://github.com/twbs/bootstrap/blob/v4-dev/.github/CONTRIBUTING.md#using-the-issue-tracker) и выполните поиск существующих и закрытых проблем. Если Ваша проблема или идея еще не решена, [пожалуйста, откройте новый запрос](https://github.com/twbs/bootstrap/issues/new).

## Документация

Документация Bootstrap, включенная в этот репозиторий в корневом каталоге, создана с помощью [Hugo](https://gohugo.io/) и размещена на страницах GitHub по адресу <https://v4.getbootstrap.su/>. Документы также можно запускать локально.

Поиск по документации осуществляется с помощью [Algolia's DocSearch](https://community.algolia.com/docsearch/). Работаете над поиском? Обязательно установите `debug: true` в файле `site/assets/js/search.js`.

### Запуск документации локально

1. Запустите `npm install`, чтобы установить зависимости Node.js, включая Hugo (конструктор сайтов).
2. Запустите `npm run test` (или конкретный сценарий npm), чтобы перестроить распределенные файлы CSS и JavaScript, а также ресурсы нашей документации.
3. Запустите `npm start`, чтобы скомпилировать файлы CSS и JavaScript, сгенерировать наши документы и проследить за изменениями.
4. Откройте в браузере `http://localhost:9001/` и готово.

Узнайте больше об использовании Hugo, прочитав его [документацию](https://gohugo.io/documentation/).

### Документация к предыдущим выпускам

Вы можете найти все наши предыдущие выпуски документы на <https://v4.getbootstrap.su/docs/versions/>.

[Предыдущие выпуски](https://github.com/twbs/bootstrap/releases) и их документация также доступны для загрузки.

## Участие

Прочтите наши [правила участия](https://github.com/twbs/bootstrap/blob/v4-dev/.github/CONTRIBUTING.md). Включены инструкции по открытию вопросов, стандарты кодирования и примечания по развитию.

Более того, если Ваш запрос на включение содержит исправления или функции JavaScript, Вы должны включить [соответствующие модульные тесты](https://github.com/twbs/bootstrap/tree/v4-dev/js/tests). Весь HTML и CSS должны соответствовать [руководству по коду](https://github.com/mdo/code-guide), которое поддерживает [Mark Otto](https://github.com/mdo).

Настройки редактора доступны в [конфигурации редактора](https://github.com/twbs/bootstrap/blob/v4-dev/.editorconfig) для удобного использования в обычных текстовых редакторах. Узнайте больше и загрузите плагины на <https://editorconfig.org/>.

## Сообщество

Получайте новости о разработке Bootstrap и общайтесь с разработчиками проекта и членами сообщества.

- Вступите в группу [@getbootstrap_ru в Телеграм](https://t.me/getbootstrap_ru).
- Подпишитесь на [@getbootstrap on Twitter](https://twitter.com/getbootstrap).
- Прочтите и подпишитесь на [официальный блог Bootstrap](https://blog.getbootstrap.com/).
- Присоединяйтесь к [официальной Slack-комнате](https://bootstrap-slack.herokuapp.com/).
- Общайтесь с другими Бутстрапперами в IRC. На сервере `irc.freenode.net`, в канале `##bootstrap`.
- Справку по реализации можно найти на сайте Stack Overflow (с тегом [`bootstrap-4`](https://stackoverflow.com/questions/tagged/bootstrap-4)).
- Разработчикам следует использовать ключевое слово `bootstrap` в пакетах, которые изменяют или расширяют функциональность Bootstrap при распространении через [npm](https://www.npmjs.com/browse/keyword/bootstrap) или аналогичные механизмы доставки для максимальной доступности.

## Управление версиями

Для прозрачности нашего цикла выпуска и для обеспечения обратной совместимости Bootstrap поддерживается в соответствии с [руководящими принципами семантического управления версиями](https://semver.org/). Иногда мы ошибаемся, но по возможности придерживаемся этих правил.

См. [раздел релизов нашего проекта GitHub](https://github.com/twbs/bootstrap/releases) для просмотра журналов изменений для каждой версии выпуска Bootstrap. Сообщения с объявлениями о выпуске в [официальном блоге Bootstrap](https://blog.getbootstrap.com/) содержат сводку наиболее значимых изменений, внесенных в каждый выпуск.

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

[![](https://opencollective.com/bootstrap/sponsor/0/avatar.svg)](https://opencollective.com/bootstrap/sponsor/0/website)
[![](https://opencollective.com/bootstrap/sponsor/1/avatar.svg)](https://opencollective.com/bootstrap/sponsor/1/website)
[![](https://opencollective.com/bootstrap/sponsor/2/avatar.svg)](https://opencollective.com/bootstrap/sponsor/2/website)
[![](https://opencollective.com/bootstrap/sponsor/3/avatar.svg)](https://opencollective.com/bootstrap/sponsor/3/website)
[![](https://opencollective.com/bootstrap/sponsor/4/avatar.svg)](https://opencollective.com/bootstrap/sponsor/4/website)
[![](https://opencollective.com/bootstrap/sponsor/5/avatar.svg)](https://opencollective.com/bootstrap/sponsor/5/website)
[![](https://opencollective.com/bootstrap/sponsor/6/avatar.svg)](https://opencollective.com/bootstrap/sponsor/6/website)
[![](https://opencollective.com/bootstrap/sponsor/7/avatar.svg)](https://opencollective.com/bootstrap/sponsor/7/website)
[![](https://opencollective.com/bootstrap/sponsor/8/avatar.svg)](https://opencollective.com/bootstrap/sponsor/8/website)
[![](https://opencollective.com/bootstrap/sponsor/9/avatar.svg)](https://opencollective.com/bootstrap/sponsor/9/website)

## Сторонники

Спасибо всем нашим спонсорам! 🙏 [[Станьте спонсором](https://opencollective.com/bootstrap#backer)]

[![Backers](https://opencollective.com/bootstrap/backers.svg?width=890)](https://opencollective.com/bootstrap#backers)

## Авторское право и лицензия

Авторское право на код и документацию 2011–2021 гг. принадлежит [авторам Bootstrap](https://github.com/twbs/bootstrap/graphs/contributors) и [Twitter, Inc.](https://twitter.com) выпущенное под [Лицензия MIT](https://github.com/twbs/bootstrap/blob/main/LICENSE). Документация выпущена по лицензии [Creative Commons](https://creativecommons.org/licenses/by/3.0/).
