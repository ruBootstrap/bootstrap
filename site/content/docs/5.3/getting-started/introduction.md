---
layout: docs
title: Начать работу с Bootstrap
description: Bootstrap — это мощный, многофункциональный интерфейсный инструментарий. Создавайте что угодно — от прототипа до продакшена — за считанные минуты.
group: getting-started
aliases:
  - "/docs/5.3/getting-started/"
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

2. **Включите CSS и JS Bootstrap.** Поместите тег `<link>` в `<head>` для нашего CSS и тег `<script>` для нашего пакета JavaScript (включая Popper для позиционирования раскрывающихся списков, поповеров и подсказок) перед закрывающим `</body>`. Узнайте больше о наших [ссылках CDN](#cdn-links).

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

   Вы также можете включить [Popper](https://popper.js.org/docs/v2/) и наш JS по отдельности. Если вы не планируете использовать раскрывающиеся списки, всплывающие окна или подсказки, сэкономьте несколько килобайт, не включая Popper.

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
- Прочтите о том, что включено в Bootstrap, в нашем [разделе содержания]({{< docsref "/getting-started/contents/" >}}) и списке [компонентов, требующих JavaScript](#js-components) ниже.
- Нужно немного больше энергии? Рассмотрите возможность сборки с помощью Bootstrap, [включив исходные файлы через менеджер пакетов]({{< docsref "/getting-started/download#package-managers" >}}).
- Хотите использовать Bootstrap в качестве модуля с `<script type="module">`? Пожалуйста, обратитесь к нашему разделу [использование Bootstrap как модуля]({{< docsref "/getting-started/javascript#using-bootstrap-as-a-module" >}}).

## JS компоненты

Любопытно, какие компоненты явно требуют нашего JavaScript и Popper? Если вы совсем не уверены в общей структуре страницы, продолжайте читать пример шаблона страницы.

- Аккордеоны для расширения нашего плагина Collapse
- Оповещения для закрытия
- Кнопки для переключения состояний и функциональности флажков/радио
- Карусель для всех поведений слайдов, элементов управления и индикаторов
- Сворачивание для переключения видимости контента
- Раскрывающиеся списки для отображения и позиционирования (также требуется [Popper](https://popper.js.org/docs/v2/))
- Модальные окна для отображения, позиционирования и поведения прокрутки
- Панель навигации для расширения наших плагинов Collapse и Offcanvas для реализации адаптивного поведения
- Навигация с плагином Tab для переключения панелей контента
- Offcanvases для отображения, позиционирования и поведения прокрутки
- Scrollspy для поведения прокрутки и обновлений навигации
- Тосты для отображения и закрытия
- Подсказки и всплывающие окна для отображения и позиционирования (также требуется [Popper](https://popper.js.org/docs/v2/))

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

### Мета-тег viewport

Bootstrap разработан *сначала для мобильных устройств*, стратегия, в которой мы сначала оптимизируем код для мобильных устройств, а затем масштабируем компоненты по мере необходимости, используя медиа-запросы CSS. Чтобы обеспечить правильный рендеринг и сенсорное масштабирование для всех устройств, добавьте метатег адаптивного окна просмотра в свой `<head>`.

```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```

Вы можете увидеть пример этого в действии в [быстром старте](#быстрый-старт).

### Box-sizing (Размер блока)

Для более простого определения размера в CSS мы переключаем глобальное значение `box-sizing` с `content-box` на `border-box`. Это гарантирует, что `padding` не повлияет на окончательную вычисленную ширину элемента, но может вызвать проблемы с некоторыми сторонними программами, такими как Google Maps и Google Custom Search Engine.

В редких случаях вам нужно переопределить его, используйте что-то вроде следующего:

```css
.selector-for-some-widget {
  box-sizing: content-box;
}
```

В приведенном выше фрагменте вложенные элементы, включая сгенерированный контент с помощью `::before` и `::after`, будут наследовать указанный `box-sizing` для этого `.selector-for-some-widget`.

Узнайте больше о [блочной модели и размерах в CSS Tricks](https://css-tricks.com/box-sizing/).

### Перезагрузка (Reboot)

Для улучшения кросс-браузерного рендеринга мы используем [Reboot]({{< docsref "/content/reboot" >}}) для исправления несоответствий между браузерами и устройствами, обеспечивая при этом несколько более самостоятельный сброс общих элементов HTML.

## Сообщество

Будьте в курсе развития Bootstrap и обращайтесь к сообществу с помощью этих полезных ресурсов.

- Читайте и подписывайтесь на [Официальный блог Bootstrap]({{< param blog >}}).
- Задавайте вопросы и изучайте [наши обсуждения GitHub](https://github.com/twbs/bootstrap/discussions).
- Обсуждайте, задавайте вопросы и многое другое в [сообществе Discord](https://discord.gg/bZUvakRU3M) или [подреддите Bootstrap](https://www.reddit.com/r/bootstrap/).
- Общайтесь с другими Bootstrappers в IRC. На сервере `irc.libera.chat`, в канале `#bootstrap`.
- Помощь по внедрению можно найти на Stack Overflow (с тегом [`bootstrap-5`](https://stackoverflow.com/questions/tagged/bootstrap-5)).
- Разработчикам следует использовать ключевое слово `bootstrap` в пакетах, которые изменяют или добавляют функциональность Bootstrap при распространении через [npm](https://www.npmjs.com/search?q=keywords:bootstrap) или аналогичные механизмы доставки для максимальной обнаруживаемости.

Вы также можете подписаться на [@getbootstrap на X](<https://x.com/{{>< param x >}}) для получения последних сплетен и потрясающих музыкальных клипов.
