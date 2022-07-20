---
layout: docs
title: Начать работу с Bootstrap
description: Bootstrap — это мощный, многофункциональный интерфейсный инструментарий. Создавайте что угодно — от прототипа до продакшена — за считанные минуты.
group: getting-started
aliases:
  - "/docs/5.2/getting-started/"
  - "/docs/getting-started/"
  - "/getting-started/"
toc: true
---

## Быстрый старт

Начните с включения готовых CSS и JavaScript Bootstrap через CDN без каких-либо шагов по сборке. Посмотрите это на практике с помощью этой [демонстрации Bootstrap CodePen](https://codepen.io/team/bootstrap/pen/qBamdLj).

<br>

1. **Создайте новый файл `index.html` в корне вашего проекта.** Включите также тег `<meta name="viewport">` для [правильного отзывчивого поведения](https://developer.mozilla.org/en-US/docs/Web/HTML/Viewport_meta_tag) на мобильных устройствах.

   ```html
   <!doctype html>
   <html lang="ru">
     <head>
       <meta charset="utf-8">
       <meta name="viewport" content="width=device-width, initial-scale=1">
       <title>Демо Bootstrap</title>
     </head>
     <body>
       <h1>Привет мир!</h1>
     </body>
   </html>
   ```

2. **Включите CSS и JS Bootstrap.** Поместите тег `<link>` в `<head>` для нашего CSS и тег `<script>` для нашего пакета JavaScript (включая Popper для позиционирования раскрывающихся списков, всплывающие сообщения и всплывающие подсказки) перед закрывающим `</body>`. Узнайте больше о наших [ссылках CDN](#cdn-links).

   ```html
   <!doctype html>
   <html lang="ru">
     <head>
       <meta charset="utf-8">
       <meta name="viewport" content="width=device-width, initial-scale=1">
       <title>Демо Bootstrap</title>
       <link href="{{< param "cdn.css" >}}" rel="stylesheet" integrity="{{< param "cdn.css_hash" >}}" crossorigin="anonymous">
     </head>
     <body>
       <h1>Привет мир!</h1>
       <script src="{{< param "cdn.js_bundle" >}}" integrity="{{< param "cdn.js_bundle_hash" >}}" crossorigin="anonymous"></script>
     </body>
   </html>
   ```

   Вы также можете включить [Popper](https://popper.js.org/) и наш JS отдельно. Если вы не планируете использовать раскрывающиеся списки, всплывающие окна или всплывающие подсказки, сэкономьте несколько килобайт, не включая Popper.

   ```html
   <script src="{{< param "cdn.popper" >}}" integrity="{{< param "cdn.popper_hash" >}}" crossorigin="anonymous"></script>
   <script src="{{< param "cdn.js" >}}" integrity="{{< param "cdn.js_hash" >}}" crossorigin="anonymous"></script>
   ```

3. **Привет мир!** Откройте страницу в выбранном вами браузере, чтобы увидеть страницу с начальной загрузкой. Теперь вы можете начать сборку с помощью Bootstrap, создав свой собственный [макет]({{< docsref "/layout/grid" >}}), добавив десятки [компонентов]({{< docsref "/components/buttons" >}}) и используя [наши официальные примеры]({{< docsref "/examples" >}}).

## CDN ссылки

В качестве справки, вот наши основные ссылки CDN.

{{< bs-table >}}
| Описание | URL-адрес |
| --- | --- |
| CSS | `{{< param "cdn.css" >}}` |
| JS | `{{< param "cdn.js_bundle" >}}` |
{{< /bs-table >}}

Вы также можете использовать CDN для получения любой из наших [дополнительных сборок, перечисленных на странице Содержание]({{< docsref "/getting-started/contents" >}}).

## Следующие шаги

- Узнайте больше о некоторых [важных глобальных настройках среды](#important-globals), которые использует Bootstrap.

- Прочитайте о том, что включено в Bootstrap, в нашем [разделе содержания]({{< docsref "/getting-started/contents#precompiled-bootstrap" >}}) и списке [компонентов, для которых требуется JavaScript](#js-components) ниже.

- Нужно немного больше энергии? Рассмотрите возможность сборки с помощью Bootstrap, [включив исходные файлы с помощью диспетчера пакетов]({{< docsref "/getting-started/download#package-managers" >}}).

- Хотите использовать Bootstrap в качестве модуля с `<script type="module">`? Пожалуйста, обратитесь к нашему разделу [использование Bootstrap как модуля]({{< docsref "/getting-started/javascript#using-bootstrap-as-a-module" >}}).

## JS компоненты

Любопытно, какие компоненты явно требуют нашего JavaScript и Popper? Щелкните ссылку «Показать компоненты» ниже. Если вы совсем не уверены в общей структуре страницы, продолжайте читать пример шаблона страницы.

<details>
<summary class="text-primary mb-3">Показать компоненты, требующие JavaScript</summary>
{{< markdown >}}
- Уведомления (Alerts) для отклонений
- Кнопки (Buttons) для переключения состояний и функциональности флажка/радио
- Карусель (Carousel) для всех режимов слайдов, элементов управления и индикаторов
- Коллапс (Collapse) для переключения видимости содержимого
- Выпадающие списки (Dropdowns) для отображения и позиционирования (также требуется [Popper](https://popper.js.org/))
- Модальные окна (Modals) для отображения, позиционирования и поведения прокрутки
- Панель навигации (Navbar) для расширения наших плагинов Collapse и Offcanvas для реализации адаптивного поведения
- Навигация (Navs) с плагином Tab для переключения панелей содержимого
- Offcanvases для отображения, позиционирования и поведения прокрутки
- Отслеживание прокрутки (Scrollspy) для поведения прокрутки и обновлений навигации
- Тосты (Toasts) для отображения и отклонения
- Всплывающие подсказки (Tooltips) и Всплывающие окна (Popovers) для отображения и позиционирования (также требуется [Popper](https://popper.js.org/))
{{< /markdown >}}
</details>

## Важные глобальные переменные

Bootstrap использует несколько важных глобальных стилей и настроек, почти исключительно направленных на *нормализацию* кросс-браузерных стилей. Давайте погрузимся.

### HTML5 doctype

Bootstrap требует использования типа документа HTML5. Без него вы увидите причудливый и незавершенный стиль.

```html
<!doctype html>
<html lang="ru">
  ...
</html>
```

### Responsive meta tag

Bootstrap разработан *сначала для мобильных устройств*, стратегия, в которой мы сначала оптимизируем код для мобильных устройств, а затем масштабируем компоненты по мере необходимости, используя медиа-запросы CSS. Чтобы обеспечить правильный рендеринг и сенсорное масштабирование для всех устройств, добавьте метатег адаптивного окна просмотра в свой `<head>`.

```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```

Вы можете увидеть пример этого в действии в [быстром старте](#быстрый-старт).

### Box-sizing

Для более простого определения размера в CSS мы переключаем глобальное значение `box-sizing` с `content-box` на `border-box`. Это гарантирует, что `padding` не повлияет на окончательную вычисленную ширину элемента, но может вызвать проблемы с некоторыми сторонними программами, такими как Google Maps и Google Custom Search Engine.

В редких случаях вам нужно переопределить его, используйте что-то вроде следующего:

```css
.selector-for-some-widget {
  box-sizing: content-box;
}
```

В приведенном выше фрагменте вложенные элементы, включая сгенерированный контент с помощью `::before` и `::after`, будут наследовать указанный `box-sizing` для этого `.selector-for-some-widget`.

Узнайте больше о [блочной модели и размерах в CSS Tricks](https://css-tricks.com/box-sizing/).

### Reboot

Для улучшения кросс-браузерного рендеринга мы используем [Reboot]({{< docsref "/content/reboot" >}}) для исправления несоответствий между браузерами и устройствами, обеспечивая при этом несколько более самостоятельный сброс общих элементов HTML.

## Сообщество

Будьте в курсе развития Bootstrap и обращайтесь к сообществу с помощью этих полезных ресурсов.

- Добавляйтесь к [Русскоязычному чату в телеграм]({{< param telegram >}}).
- Прочтите и подпишитесь на [Официальный блог Bootstrap]({{< param blog >}}) или [Русскоязычный блог Bootstrap]({{< param blog_ru >}}).
- Присоединяйтесь к [официальной комнате Slack]({{< param slack >}}).
- Общайтесь с другими загрузчиками в IRC. На сервере `irc.libera.chat`, в канале `#bootstrap`.
- Справку по реализации можно найти в Stack Overflow (с тегом [`bootstrap-5`](https://stackoverflow.com/questions/tagged/bootstrap-5)).
- Разработчики должны использовать ключевое слово `bootstrap` в пакетах, которые изменяют или добавляют функциональность Bootstrap при распространении через [npm](https://www.npmjs.com/search?q=keywords:bootstrap) или аналогичные механизмы доставки для максимальная обнаруживаемости.

Вы также можете подписаться на [@getbootstrap в Twitter](<https://twitter.com/>{{< param twitter >}}), чтобы быть в курсе последних сплетен и потрясающих музыкальных клипов.
