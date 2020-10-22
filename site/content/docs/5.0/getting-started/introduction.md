---
layout: docs
title: Вступление
description: Начните работу с Bootstrap, самой популярной в мире платформой для создания адаптивных, ориентированных на мобильные устройства сайтов, с jsDelivr и начальной страницей шаблона.
group: getting-started
aliases:
  - "/docs/5.0/getting-started/"
  - "/docs/getting-started/"
  - "/getting-started/"
toc: true
---

## Быстрый старт

Хотите быстро добавить Bootstrap в свой проект? Используйте jsDelivr, бесплатный CDN с открытым исходным кодом. Используете менеджер пакетов или вам нужно скачать исходные файлы? [Перейдите на страницу загрузок]({{< docsref "/getting-started/download" >}}).

### Стили

Скопируйте и вставьте таблицу стилей `<link>` в Ваш `<head>` перед всеми остальными таблицами стилей, чтобы загрузить наш CSS.

```html
<link rel="stylesheet" href="{{< param "cdn.css" >}}" integrity="{{< param "cdn.css_hash" >}}" crossorigin="anonymous">
```

### Скрипты

Многие из наших компонентов требуют использования JavaScript для работы. В частности, для них требуются наши собственные плагины JavaScript и [Popper.js](https://popper.js.org/). Поместите **один из следующих скриптов `<script>`** в конце ваших страниц, прямо перед закрывающим тегом `</body>`, чтобы включить их.

#### Связка

Включите все необходимое в одном скрипте с нашим пакетом. Наши `bootstrap.bundle.js` и `bootstrap.bundle.min.js` включают [Popper](https://popper.js.org/). Для получения дополнительной информации о том, что входит в Bootstrap, см. наш раздел [содержимое]({{< docsref "/getting-started/contents#precompiled-bootstrap" >}}).

```html
<script src="{{< param "cdn.js_bundle" >}}" integrity="{{< param "cdn.js_bundle_hash" >}}" crossorigin="anonymous"></script>
```

#### Раздельно

Если Вы решите использовать отдельное решение для сценариев, сначала должен быть Popper.js, а затем наши плагины JavaScript.

```html
<script src="{{< param "cdn.popper" >}}" integrity="{{< param "cdn.popper_hash" >}}" crossorigin="anonymous"></script>
<script src="{{< param "cdn.js" >}}" integrity="{{< param "cdn.js_hash" >}}" crossorigin="anonymous"></script>
```

#### Модули

Если Вы используете `<script type="module">`, пожалуйста, обратитесь к нашему разделу [использование Bootstrap в качестве модуля]({{< docsref "/getting-started/javascript#using-bootstrap-as-a-module" >}}).

#### Компоненты

Интересно, какие компоненты явно требуют нашего JavaScript и Popper.js? Кликните на ссылку "Показать компоненты" ниже. Если Вы совсем не уверены в общей структуре страницы, продолжайте читать, чтобы найти образец шаблона страницы.

{{< partial "getting-started/components-requiring-javascript" >}}

## Стартовый шаблон

Убедитесь, что Ваши страницы настроены в соответствии с последними стандартами дизайна и разработки. Это означает использование документа HTML5 и включение метатега области просмотра для правильного реагирования. Сложите все вместе, и Ваши страницы должны выглядеть так:

```html
<!doctype html>
<html lang="ru">
  <head>
    <!-- Обязательные метатеги -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{< param "cdn.css" >}}" integrity="{{< param "cdn.css_hash" >}}" crossorigin="anonymous">

    <title>Привет мир!</title>
  </head>
  <body>
    <h1>Привет мир!</h1>

    <!-- Дополнительный JavaScript; выберите один из двух! -->

    <!-- Вариант 1: Bootstrap в связке с Popper.js -->
    <script src="{{< param "cdn.js_bundle" >}}" integrity="{{< param "cdn.js_bundle_hash" >}}" crossorigin="anonymous"></script>

    <!-- Вариант 2: Bootstrap JS отдельно от Popper.js
    <script src="{{< param "cdn.popper" >}}" integrity="{{< param "cdn.popper_hash" >}}" crossorigin="anonymous"></script>
    <script src="{{< param "cdn.js" >}}" integrity="{{< param "cdn.js_hash" >}}" crossorigin="anonymous"></script>
    -->
  </body>
</html>
```

Это все, что Вам нужно для выполнения общих требований к странице. Посетите [Документацию по макету]({{< docsref "/layout/grid" >}}) или [наши официальные примеры]({{< docsref "/examples" >}}), чтобы начать размещение содержания и компонентов Вашего сайта.

## Глобально важно

Bootstrap использует несколько важных глобальных стилей и настроек, о которых Вам нужно знать при его использовании. Все они почти исключительно направлены на *нормализацию* кроссбраузерных стилей. Давайте погрузимся.

### Тип текущего документа

Bootstrap требует использования doctype HTML5. Без него Вы увидите несколько забавных неполных стилей, но его включение не должно вызывать каких-либо серьезных сбоев.

```html
<!doctype html>
<html lang="ru">
  ...
</html>
```

### Адаптивный метатег

Bootstrap разработан *mobile first (сначала мобильный)*,  стратегия, в которой мы сначала оптимизируем код для мобильных устройств, а затем масштабируем компоненты по мере необходимости с помощью медиа-запросов CSS. Чтобы обеспечить правильный рендеринг и сенсорное масштабирование для всех устройств, **добавьте метатег адаптивного окна просмотра (viewport)** к Вашему `<head>`.

```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```

Вы можете увидеть пример этого в действии в [стартовом шаблоне](#starter-template).

### Свойство Box-sizing

Для более простого изменения размеров в CSS мы переключаем глобальное значение `box-sizing` с `content-box` на `border-box`. Это гарантирует, что `padding` не влияет на окончательную вычисленную ширину элемента, но может вызвать проблемы с некоторым сторонним программным обеспечением, таким как Google Maps и Google Custom Search Engine.

В редких случаях Вам нужно переопределить его, используйте что-то вроде следующего:

```css
.selector-for-some-widget {
  box-sizing: content-box;
}
```

В приведенном выше фрагменте все вложенные элементы, включая сгенерированный контент с помощью `::before` и `::after` будут наследовать указанный `box-sizing` для этого `.selector-for-some-widget`.

Узнайте больше о [коробочной модели и размерах на сайте CSS Tricks](https://css-tricks.com/box-sizing/).

### Перезагрузка

Для улучшения кроссбраузерности рендеринга мы используем [Reboot]({{< docsref "/content/reboot" >}}), чтобы исправить несоответствия между браузерами и устройствами, обеспечивая при этом несколько более самоуверенный сброс общих элементов HTML.

## Сообщество

Будьте в курсе развития Bootstrap и обращайтесь к сообществу с помощью этих полезных ресурсов.

- Обсуждайте в чате Telegram [@getbootstrap_ru](https://t.me/getbootstrap_ru).
- Следите за [@getbootstrap в Twitter](https://twitter.com/getbootstrap).
- Читайте и подписывайтесь на [Официальный блог Bootstrap](https://blog.getbootstrap.com/).
- Присоединиться к [официальной комнате Slack](https://bootstrap-slack.herokuapp.com/).
- Общайтесь с другими Bootstrappers в IRC. На сервере `irc.freenode.net`, в канале `##bootstrap`.
- Справку по реализации можно найти на сайте Stack Overflow (с тегом [`bootstrap-5`](https://stackoverflow.com/questions/tagged/bootstrap-5)).
- Разработчикам следует использовать ключевое слово `bootstrap` в пакетах, которые изменяют или расширяют функциональность Bootstrap при распространении через [npm](https://www.npmjs.com/browse/keyword/bootstrap) или аналогичные механизмы доставки для максимальной узнаваемости.

Вы также можете следить за [@getbootstrap в Твиттере](https://twitter.com/{{< param twitter >}}), чтобы следить за последними слухами и потрясающими музыкальными клипами.
