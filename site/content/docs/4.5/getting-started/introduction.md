---
layout: docs
title: Вступление
description: Начните работу с Bootstrap, самой популярной в мире платформой для создания адаптивных сайтов, ориентированных на мобильные устройства, с jsDelivr и начальной страницей шаблона.
group: getting-started
aliases:
  - "/docs/4.5/getting-started/"
  - "/docs/getting-started/"
  - "/getting-started/"
toc: true
---

## Быстрый старт

Хотите быстро добавить Bootstrap в свой проект? Используйте jsDelivr, бесплатный CDN с открытым исходным кодом. Используете менеджер пакетов или Вам нужно скачать исходные файлы? [Перейдите на страницу загрузок]({{< docsref "/getting-started/download" >}}).

### CSS

Скопируйте и вставьте таблицу стилей `<link>` в Ваш `<head>` перед всеми остальными таблицами стилей, чтобы загрузить наш CSS.

```html
<link rel="stylesheet" href="{{< param "cdn.css" >}}" integrity="{{< param "cdn.css_hash" >}}" crossorigin="anonymous">
```

### JS

Многие из наших компонентов требуют использования JavaScript для работы. В частности, для них требуются [jQuery](https://jquery.com/), [Popper](https://popper.js.org/) и наши собственные плагины JavaScript. Мы используем [тонкую сборку jQuery](https://blog.jquery.com/2016/06/09/jquery-3-0-final-released/), но также поддерживается полная версия.

Поместите **один из следующих `<script>`** в конце Ваших страниц, прямо перед закрывающим тегом `</body>`, чтобы включить их. Сначала должен быть jQuery, затем Popper, а затем наши плагины JavaScript.

#### Связка

Включите каждый плагин Bootstrap JavaScript в один из двух наших пакетов. И `bootstrap.bundle.js` и `bootstrap.bundle.min.js` включают [Popper](https://popper.js.org/) для наших всплывающих подсказок и всплывающих окон, но не [jQuery](https://jquery.com/). Сначала включите jQuery, а затем пакет Bootstrap JavaScript. Дополнительную информацию о том, что включено в Bootstrap, можно найти в разделе [содержимое]({{< docsref "/getting-started/contents#предварительно-скомпилированный-бутстрап" >}}).

```html
<script src="{{< param "cdn.jquery" >}}" integrity="{{< param "cdn.jquery_hash" >}}" crossorigin="anonymous"></script>
<script src="{{< param "cdn.js_bundle" >}}" integrity="{{< param "cdn.js_bundle_hash" >}}" crossorigin="anonymous"></script>
```

#### Раздельно

Если Вы решите использовать отдельные скрипты, сначала должен быть Popper (если Вы используете всплывающие подсказки или всплывающие окна), а затем наши плагины JavaScript.

```html
<script src="{{< param "cdn.jquery" >}}" integrity="{{< param "cdn.jquery_hash" >}}" crossorigin="anonymous"></script>
<script src="{{< param "cdn.popper" >}}" integrity="{{< param "cdn.popper_hash" >}}" crossorigin="anonymous"></script>
<script src="{{< param "cdn.js" >}}" integrity="{{< param "cdn.js_hash" >}}" crossorigin="anonymous"></script>
```

#### Компоненты

Интересно, какие компоненты явно требуют jQuery, нашего JavaScript и Popper? Щелкните ссылку "Показать компоненты" ниже. Если Вы не уверены в структуре страницы, продолжайте читать, чтобы увидеть пример шаблона страницы.

<details>
<summary class="text-primary mb-3">Показать компоненты, требующие JavaScript</summary>
{{< markdown >}}
- Alerts: Уведомления с отклонениями
- Buttons: Кнопки для переключения состояний и функции флажка/радио
- Carousel: Карусель для любого поведения слайдов, элементов управления и индикаторов
- Collapse: Сворачиваемый контент для переключения видимости контента
- Dropdowns: Выпадающие списки для отображения и позиционирования (также требуется [Popper.js](https://popper.js.org/))
- Modals: Модальные окна для отображения, позиционирования и прокрутки
- Navbar: Панель навигации для расширения нашего плагина Сворачивания контента для реализации адаптивного поведения
- Tooltips и popovers: Всплывающие подсказки и Всплывающие окна для отображения и позиционирования (также требуется [Popper.js](https://popper.js.org/))
- Scrollspy: Слежение прокрутки для поведения прокрутки и обновлений навигации
{{< /markdown >}}
</details>

## Стартовый шаблон

Убедитесь, что Ваши страницы настроены в соответствии с последними стандартами дизайна и разработки. Это означает использование документа HTML5 и включение метатега области просмотра для правильного реагирования. Соберите все это вместе, и Ваши страницы должны выглядеть так:

```html
<!doctype html>
<html lang="ru">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{< param "cdn.css" >}}" integrity="{{< param "cdn.css_hash" >}}" crossorigin="anonymous">

    <title>Привет, мир!</title>
  </head>
  <body>
    <h1>Привет, мир!</h1>

    <!-- Дополнительный JavaScript; выберите один из двух! -->

    <!-- Вариант 1: пакет jQuery и Bootstrap (включает Popper) -->
    <script src="{{< param "cdn.jquery" >}}" integrity="{{< param "cdn.jquery_hash" >}}" crossorigin="anonymous"></script>
    <script src="{{< param "cdn.js_bundle" >}}" integrity="{{< param "cdn.js_bundle_hash" >}}" crossorigin="anonymous"></script>

    <!-- Вариант 2: Отдельные JS для Popper и Bootstrap -->
    <!--
    <script src="{{< param "cdn.jquery" >}}" integrity="{{< param "cdn.jquery_hash" >}}" crossorigin="anonymous"></script>
    <script src="{{< param "cdn.popper" >}}" integrity="{{< param "cdn.popper_hash" >}}" crossorigin="anonymous"></script>
    <script src="{{< param "cdn.js" >}}" integrity="{{< param "cdn.js_hash" >}}" crossorigin="anonymous"></script>
    -->
  </body>
</html>
```

Это все, что Вам нужно для выполнения общих требований к странице. Посетите [Документацию по макету]({{< docsref "/layout/overview" >}}) или [наши официальные примеры]({{< docsref "/examples" >}}), чтобы начать размещение содержимого и компонентов Вашего сайта.

## Глобально важно

Bootstrap использует несколько важных глобальных стилей и настроек, о которых Вам необходимо знать при его использовании, и все они почти исключительно нацелены на *нормализацию* кроссбраузерных стилей. Давайте погрузимся.

### HTML5 doctype

Bootstrap требует использования документа типа HTML5. Без него Вы увидите несколько забавных неполных стилей, но его включение не должно вызывать каких-либо серьезных сбоев.

```html
<!doctype html>
<html lang="ru">
  ...
</html>
```

### Адаптивный метатег

Bootstrap разработан как *сначала мобильный*, стратегия, в которой мы сначала оптимизируем код для мобильных устройств, а затем масштабируем компоненты по мере необходимости с помощью медиа-запросов CSS. Чтобы обеспечить правильный рендеринг и сенсорное масштабирование для всех устройств, **добавьте метатег адаптивного окна просмотра** к Вашему `<head>`.

```html
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
```

Вы можете увидеть пример этого в действии в [стартовом шаблоне](#стартовый-шаблон).

### Box-sizing

Для более простого изменения размера в CSS мы переключаем глобальное значение `box-sizing` с `content-box` на `border-box`. Это гарантирует, что `padding` не влияет на окончательную вычисленную ширину элемента, но может вызвать проблемы с некоторым сторонним программным обеспечением, таким как Google Maps или Google Custom Search Engine.

В редких случаях Вам нужно отменить его, используйте что-то вроде следующего:

```css
.selector-for-some-widget {
  box-sizing: content-box;
}
```

WiВ приведенном выше фрагменте все вложенные элементы, включая сгенерированный контент с помощью `::before` и `::after`, будут наследовать указанный `box-sizing` для этого `.selector-for-some-widget`.

Узнайте больше о [блочной модели и размерах на сайте CSS Tricks](https://css-tricks.com/box-sizing/).

### Reboot

Для улучшения кроссбраузерности рендеринга мы используем [Перезагрузку]({{< docsref "/content/reboot" >}}), чтобы исправить несоответствия между браузерами и устройствами, обеспечивая при этом несколько более самоуверенный сброс общих элементов HTML.

## Сообщество

Будьте в курсе развития Bootstrap и обращайтесь к сообществу с помощью этих полезных ресурсов.

- Вступите в группу [@getbootstrap_ru в Телеграм](https://t.me/getbootstrap_ru).
- Подпишитесь на [@getbootstrap в Twitter](https://twitter.com/getbootstrap).
- Прочтите и подпишитесь на [официальный блог Bootstrap](https://blog.getbootstrap.com/).
- Присоединяйтесь к [официальной Slack-комнате](https://bootstrap-slack.herokuapp.com/).
- Общайтесь с другими Бутстрапперами в IRC. На сервере `irc.freenode.net`, в канале `##bootstrap`.
- Справку по реализации можно найти на сайте Stack Overflow (с тегом [`bootstrap-4`](https://stackoverflow.com/questions/tagged/bootstrap-4)).
- Разработчикам следует использовать ключевое слово `bootstrap` в пакетах, которые изменяют или расширяют функциональность Bootstrap при распространении через [npm](https://www.npmjs.com/browse/keyword/bootstrap) или аналогичные механизмы доставки для максимальной доступности.

Вы также можете подписаться на [@getbootstrap в Твиттере](https://twitter.com/{{< param twitter >}}), чтобы следить за последними сплетнями и потрясающими музыкальными клипами.
