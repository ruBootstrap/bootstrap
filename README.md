# [Bootstrap](https://getbootstrap.com/docs/3.4/) | [Перевод документации Bootstrap](https://getbootstrap.su/docs/3.4/)

[![Slack](https://bootstrap-slack.herokuapp.com/badge.svg)](https://bootstrap-slack.herokuapp.com/)
![Версия Bower](https://img.shields.io/bower/v/bootstrap.svg)
[![Версия npm](https://img.shields.io/npm/v/bootstrap.svg)](https://www.npmjs.com/package/bootstrap)
[![Статус сборки](https://img.shields.io/travis/twbs/bootstrap/v3-dev.svg)](https://travis-ci.org/twbs/bootstrap)
[![Статус devDependency](https://img.shields.io/david/dev/twbs/bootstrap.svg)](https://david-dm.org/twbs/bootstrap#info=devDependencies)
[![NuGet](https://img.shields.io/nuget/v/bootstrap.svg)](https://www.nuget.org/packages/Bootstrap)

Bootstrap - это элегантная, интуитивно понятная и мощная интерфейсная среда для более быстрой и простой веб-разработки, созданная [Марком Отто](https://twitter.com/mdo) и [Джейкобом Торнтоном](https://twitter.com/fat) и поддерживается [основной командой](https://github.com/orgs/twbs/people) при широкой поддержке и участии сообщества.

Для начала ознакомьтесь с <https://getbootstrap.su/docs/3.4/>!


## Оглавление

* [Быстрый старт](#быстрый-старт)
* [Ошибки и запросы функций](#ошибки-и-запросы-функций)
* [Документация](#документация)
* [Содействие](#содействие)
* [Сообщество](#сообщество)
* [Управление версиями](#управление-версиями)
* [Создатели](#создатели)
* [Благодарности](#благодарности)
* [Copyright and license](#авторское-право-и-лицензия)


## Быстрый старт

Доступно несколько вариантов быстрого запуска:

* [Загрузите последний выпуск](https://github.com/twbs/bootstrap/archive/v3.4.1.zip).
* Клонируйте репозиторий: `git clone https://github.com/twbs/bootstrap.git`.
* Установить с помощью [Bower](https://bower.io/): `bower install bootstrap`.
* Установить с помощью [npm](https://www.npmjs.com/): `npm install bootstrap@3`.
* Установить с помощью [Meteor](https://www.meteor.com/): `meteor add twbs:bootstrap`.
* Установить с помощью [Composer](https://getcomposer.org/): `composer require twbs/bootstrap`.

Прочтите [Начальную страницу](https://getbootstrap.com/docs/3.4/getting-started/) для получения информации о содержимом фреймворка, шаблонах, примерах и многом другом.

### Что включено

В загрузке вы найдете следующие каталоги и файлы, которые логически группируют общие ресурсы и предоставляют как скомпилированные, так и минифицированные варианты. Вы увидите что-то вроде этого:

```
bootstrap/
├── css/
│   ├── bootstrap.css
│   ├── bootstrap.css.map
│   ├── bootstrap.min.css
│   ├── bootstrap.min.css.map
│   ├── bootstrap-theme.css
│   ├── bootstrap-theme.css.map
│   ├── bootstrap-theme.min.css
│   └── bootstrap-theme.min.css.map
├── js/
│   ├── bootstrap.js
│   └── bootstrap.min.js
└── fonts/
    ├── glyphicons-halflings-regular.eot
    ├── glyphicons-halflings-regular.svg
    ├── glyphicons-halflings-regular.ttf
    ├── glyphicons-halflings-regular.woff
    └── glyphicons-halflings-regular.woff2
```

Мы предоставляем скомпилированные CSS и JS (`bootstrap.*`), а также скомпилированные и минимизированные CSS и JS (`bootstrap.min.*`). CSS [исходные карты](https://developers.google.com/web/tools/chrome-devtools/javascript/source-maps) (`bootstrap.*.map`) доступны для использования с инструментами разработчика некоторых браузеров. Шрифты из Glyphicons включены, как и дополнительная тема Bootstrap.


## Ошибки и запросы функций

У вас есть ошибка или запрос функции? Сначала прочтите [руководство по проблеме](https://github.com/twbs/bootstrap/blob/v3-dev/CONTRIBUTING.md#using-the-issue-tracker) и выполните поиск существующих и закрытых проблем. Если ваша проблема или идея еще не решена, [пожалуйста, откройте новый выпуск](https://github.com/twbs/bootstrap/issues/new).

Обратите внимание, что **запросы функций должны быть нацелены на [Bootstrap v4](https://github.com/twbs/bootstrap/tree/v4-dev),** потому что Bootstrap v3 сейчас находится в режиме обслуживания и закрыт для новых функций. Это сделано для того, чтобы мы могли сосредоточить наши усилия на Bootstrap v4.


## Документация

Документация Bootstrap, включенная в этот репо в корневом каталоге, создана с помощью [Jekyll](https://jekyllrb.com/) и размещена на страницах GitHub по адресу <https://getbootstrap.com/docs/3.4/>. Документы также можно запускать локально.

### Запуск документации локально

1. При необходимости [установите Jekyll](https://jekyllrb.com/docs/installation/) и другие зависимости Ruby с помощью `bundle install`.
   **Примечание для пользователей Windows:** Прочтите [это руководство](https://jekyllrb.com/docs/installation/windows/), чтобы без проблем запустить Jekyll.
2. Из корневого каталога `/bootstrap` запустите `bundle exec jekyll serve` в командной строке.
4. Откройте в браузере `http://localhost:9001` и готово.

Узнайте больше об использовании Jekyll, прочитав его [документацию](https://jekyllrb.com/docs/).

### Документация к предыдущим выпускам

Документация для v2.3.2 пока доступна по адресу <https://getbootstrap.com/2.3.2/>, пока люди переходят на Bootstrap 3.

[Предыдущие выпуски](https://github.com/twbs/bootstrap/releases) и их документация также доступны для загрузки.


## Содействие

Прочтите наши [правила участия](https://github.com/twbs/bootstrap/blob/v3-dev/CONTRIBUTING.md). Включены инструкции по открытию вопросов, стандарты кодирования и примечания по развитию.

Более того, если ваш запрос на вытягивание содержит исправления или функции JavaScript, вы должны включить [соответствующие модульные тесты](https://github.com/twbs/bootstrap/tree/v3-dev/js/tests). Весь HTML и CSS должны соответствовать [Руководству по коду](https://github.com/mdo/code-guide), которое поддерживает [Марк Отто](https://github.com/mdo).

**Bootstrap v3 теперь закрыт для новых функций.** Он перешел в режим обслуживания, чтобы мы могли сосредоточить наши усилия на [Bootstrap v4](https://github.com/twbs/bootstrap/tree/v4-dev), будущее фреймворка. Запросы на извлечение, которые добавляют новые функции (а не исправляют ошибки), должны быть нацелены на [Bootstrap v4 (ветка git `v4-dev`)](https://github.com/twbs/bootstrap/tree/v4-dev).

Настройки редактора доступны в [editor config](https://github.com/twbs/bootstrap/blob/v3-dev/.editorconfig) для удобного использования в обычных текстовых редакторах. Узнайте больше и загрузите плагины на <https://editorconfig.org/>.


## Сообщество

Получайте новости о разработке Bootstrap и общайтесь с разработчиками проекта и членами сообщества.

* Чат [@getbootstrap_ru в Телеграм](https://t.me/getbootstrap_ru).
* Следите за [@getbootstrap в Твиттере](https://twitter.com/getbootstrap).
* Прочтите и подпишитесь на [Официальный блог Bootstrap](https://blog.getbootstrap.com/).
* Присоединяйтесь к [официальной комнате Slack](https://bootstrap-slack.herokuapp.com/).
* Общайтесь с другими Bootstrappers в IRC. На сервере `irc.freenode.net`, в канале `##bootstrap`.
* Справку по реализации можно найти на сайте Stack Overflow (с тегом [`twitter-bootstrap-3`](https://stackoverflow.com/questions/tagged/twitter-bootstrap-3)).
* Разработчикам следует использовать ключевое слово `bootstrap` в пакетах, которые изменяют или добавляют функциональность Bootstrap при распространении через [npm](https://www.npmjs.com/search?q=keywords:bootstrap) или аналогичные механизмы доставки для максимальная.


## Управление версиями

Для прозрачности нашего цикла выпуска и для обеспечения обратной совместимости Bootstrap поддерживается в соответствии с [руководящими принципами семантического управления версиями](https://semver.org/). Иногда мы ошибаемся, но всегда будем придерживаться этих правил.

Смотрите [Раздел Releases нашего проекта GitHub](https://github.com/twbs/bootstrap/releases) для просмотра журналов изменений для каждой версии выпуска Bootstrap. Сообщения с объявлениями о выпуске в [официальном блоге Bootstrap](https://blog.getbootstrap.com/) содержат сводку наиболее значимых изменений, внесенных в каждый выпуск.


## Благодарности

<img src="https://live.browserstack.com/images/opensource/browserstack-logo.svg" alt="BrowserStack Logo" width="490" height="106">

Спасибо [BrowserStack](https://www.browserstack.com/) за предоставление инфраструктуры, которая позволяет нам тестировать в реальных браузерах!


## Создатели

**Марк Отто**

* <https://twitter.com/mdo>
* <https://github.com/mdo>

**Джейкоб Торнтон**

* <https://twitter.com/fat>
* <https://github.com/fat>


## Авторское право и лицензия

Авторские права на код и документацию 2011-2019 Twitter, Inc. Код выпущен под [лицензией MIT](https://github.com/twbs/bootstrap/blob/v3-dev/LICENSE). Документация выпущена по лицензии [Creative Commons](https://github.com/twbs/bootstrap/blob/v3-dev/docs/LICENSE).
