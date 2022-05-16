---
layout: docs
title: JavaScript
description: Оживите Bootstrap с помощью наших дополнительных плагинов JavaScript. Узнайте о каждом плагине, наших данных и параметрах программного API и многом другом.
group: getting-started
toc: true
---

## Индивидуальный или скомпилированный

Плагины могут быть включены индивидуально (с использованием отдельного файла `js/dist/*.js` в Bootstrap), или все сразу с помощью `bootstrap.js` или минифицированного `bootstrap.min.js` (не включайте оба).

Если Вы используете bundler (Webpack, Rollup...), Вы можете использовать файлы `/js/dist/*.js` готовые для UMD.

## Использование с фреймворками JavaScript

Хотя Bootstrap CSS можно использовать с любым фреймворком, **Bootstrap JavaScript не полностью совместим с такими фреймворками JavaScript, как React, Vue и Angular**, которые предполагают полное знание DOM. И Bootstrap, и фреймворк могут попытаться видоизменить один и тот же элемент DOM, что приведет к таким ошибкам, как раскрывающиеся списки, которые застревают в открытом положении.

Лучшей альтернативой для тех, кто использует этот тип фреймворков, является использование специфичного для фреймворка пакета **вместо** Bootstrap JavaScript. Вот некоторые из самых популярных вариантов:

- React: [React Bootstrap](https://react-bootstrap.github.io/)
- Vue: [BootstrapVue](https://bootstrap-vue.org/) | [RU BootstrapVue](https://bootstrap-vue.ru/)
- Angular: [ng-bootstrap](https://ng-bootstrap.github.io/)

## Использование Bootstrap как модуля

Мы предоставляем версию Bootstrap, построенную как `ESM` (`bootstrap.esm.js` и `bootstrap.esm.min.js`), которая позволяет Вам использовать Bootstrap в качестве модуля в Вашем браузере, если Ваши [целевые браузеры поддерживают его](https://caniuse.com/es6-module).

```html
<script type="module">
  import { Toast } from 'bootstrap.esm.min.js'

  Array.from(document.querySelectorAll('.toast'))
    .forEach(toastNode => new Toast(toastNode))
</script>
```

{{< callout warning >}}
## Несовместимые плагины

Из-за ограничений браузера некоторые из наших плагинов, а именно плагины Dropdown, Tooltip и Popover, нельзя использовать в теге `<script>` с типом `module`, потому что они зависят от Popper. Для получения дополнительной информации об этой проблеме см [здесь](https://v8.dev/features/modules#specifiers).
{{< /callout >}}

## Зависимости

Некоторые плагины и компоненты CSS зависят от других плагинов. Если Вы включаете плагины по отдельности, обязательно проверьте наличие этих зависимостей в документации.

Наши раскрывающиеся списки, всплывающие окна и всплывающие подсказки также зависят от [Popper](https://popper.js.org/).

## Все еще хотите использовать jQuery? Это возможно!

Bootstrap 5 разработан для использования без jQuery, но все же можно использовать наши компоненты с jQuery. **Если Bootstrap обнаружит `jQuery` в объекте `window`**, он добавит все наши компоненты в систему плагинов jQuery; это означает, что вы сможете использовать `$('[data-bs-toggle="tooltip"]').tooltip()` для включения всплывающих подсказок. То же самое и с другими нашими компонентами.

## Атрибуты данных

Почти все плагины Bootstrap можно включить и настроить только с помощью HTML с атрибутами данных (наш предпочтительный способ использования функциональности JavaScript). Обязательно **используйте только один набор атрибутов данных для одного элемента** (например, Вы не можете запускать всплывающую подсказку и модальное окно с помощью одной кнопки.)

{{< callout warning >}}
## Селекторы

В настоящее время для запросов к элементам DOM мы используем собственные методы `querySelector` и `querySelectorAll` из соображений производительности, поэтому Вы должны использовать [допустимые селекторы](https://www.w3.org/TR/CSS21/syndata.html#value-def-identifier).
Если Вы используете специальные селекторы, например: `collapse:Example`, не забудьте их экранировать.
{{< /callout >}}

## События

Bootstrap предоставляет настраиваемые события для уникальных действий большинства плагинов. Как правило, они бывают в форме причастия прошедшего времени и инфинитива, где инфинитив (например, `show`) запускается в начале события, а его форма причастия прошедшего времени (например, `shown`) запускается после завершения действия.

Все инфинитивные события обеспечивают функциональность [`preventDefault()`](https://developer.mozilla.org/en-US/docs/Web/API/Event/preventDefault). Это дает возможность остановить выполнение действия до его запуска. Возврат false от обработчика событий также автоматически вызывает `preventDefault()`.

```js
const myModal = document.getElementById('myModal')

myModal.addEventListener('show.bs.modal', event => {
  if (!data) {
    return event.preventDefault() // останавливает отображение модального окна
  }
})
```

{{< callout warning >}}
## События jQuery

Bootstrap обнаружит jQuery, если `jQuery` присутствует в объекте `window`, а атрибут `data-bs-no-jquery` не установлен в `<body>`. Если jQuery найден, Bootstrap будет генерировать события благодаря системе событий jQuery. Поэтому, если Вы хотите прослушивать события Bootstrap, вам придется использовать методы jQuery (`.on`, `.one`) вместо `addEventListener`.

```js
$('#myTab a').on('shown.bs.tab', () => {
  // сделайте что-нибудь...
})
```
{{< /callout >}}

## Программный API

Все конструкторы принимают необязательный объект параметров или ничего (который запускает плагин с его поведением по умолчанию):

```js
const myModalEl = document.getElementById('myModal')

const modal = new bootstrap.Modal(myModalEl) // инициализирован по умолчанию
const modal1 = new bootstrap.Modal(myModalEl, { keyboard: false }) // инициализирован без клавиатуры
```

Если Вы хотите получить конкретный экземпляр плагина, каждый плагин предоставляет метод `getInstance`. Чтобы получить его непосредственно из элемента, сделайте следующее: `bootstrap.Popover.getInstance(myPopoverEl)`.

### Селекторы CSS в конструкторах

Вы также можете использовать селектор CSS в качестве первого аргумента вместо элемента DOM для инициализации плагина. В настоящее время элемент для плагина находится с помощью метода `querySelector`, поскольку наши плагины поддерживают только один элемент.

```js
const modal = new bootstrap.Modal('#myModal')
const dropdown = new bootstrap.Dropdown('[data-bs-toggle="dropdown"]')
```

### Асинхронные функции и переходы

Все программные методы API **асинхронны**и возвращаются вызывающей стороне после начала перехода, но **до его завершения**.

Чтобы выполнить действие после завершения перехода, Вы можете прослушать соответствующее событие.

```js
const myCollapseEl = document.getElementById('myCollapse')

myCollapseEl.addEventListener('shown.bs.collapse', event => {
  // Действие, выполняемое после раскрытия сворачиваемой области
})
```

Кроме того, вызов метода **переходного компонента будет проигнорирован**.

```js
const myCarouselEl = document.getElementById('myCarousel')
const carousel = bootstrap.Carousel.getInstance(myCarouselEl) // Получить экземпляр карусели

myCarouselEl.addEventListener('slid.bs.carousel', event => {
  carousel.to('2') // Перейдет к слайду 2, как только переход к слайду 1 завершится
})

carousel.to('1') // Начнется переход к слайду 1 и вернется к вызывающему
carousel.to('2') // !! Будет проигнорировано, так как переход к слайду 1 не завершен !!
```

### Настройки по умолчанию

Вы можете изменить настройки плагина по умолчанию, изменив его объект `Constructor.Default`:

```js
// изменяет значение по умолчанию для опции `keyboard` модального плагина на false
bootstrap.Modal.Default.keyboard = false
```

## Нет конфликта (только если Вы используете jQuery)

Иногда необходимо использовать плагины Bootstrap с другими фреймворками пользовательского интерфейса. В этих обстоятельствах иногда могут возникать конфликты пространств имен. Если это произойдет, Вы можете вызвать `.noConflict` в плагине, значение которого Вы хотите вернуть.

```js
const bootstrapButton = $.fn.button.noConflict() // return $.fn.button к ранее присвоенному значению
$.fn.bootstrapBtn = bootstrapButton // give $().bootstrapBtn функциональность Bootstrap
```

## Номера версий

Доступ к версии каждого из плагинов Bootstrap можно получить через свойство `VERSION` конструктора плагина. Например, для плагина всплывающей подсказки:

```js
bootstrap.Tooltip.VERSION // => "{{< param current_version >}}"
```

## Никаких специальных резервных вариантов при отключенном JavaScript

Плагины Bootstrap не особо изящен при отключенном JavaScript. Если в этом случае Вам важен опыт пользователя, используйте [`<noscript>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/noscript), чтобы объяснить ситуацию (и как повторно включить JavaScript) для Ваших пользователей и/или добавить свои собственные резервные варианты.

{{< callout warning >}}
##### Сторонние библиотеки

**Bootstrap официально не поддерживает сторонние библиотеки JavaScript** , такие как Prototype или jQuery UI. Несмотря на `.noConflict` и события в пространстве имен, могут возникнуть проблемы совместимости, которые Вам нужно исправить самостоятельно.
{{< /callout >}}

## Чистильщик

Всплывающие подсказки и всплывающие окна используют наше встроенное средство очистки для очистки параметров, принимающих HTML.

Значение `allowList` по умолчанию следующее:

```js
const ARIA_ATTRIBUTE_PATTERN = /^aria-[\w-]*$/i
const DefaultAllowlist = {
  // Глобальные атрибуты разрешены для любого указанного ниже элемента.
  '*': ['class', 'dir', 'id', 'lang', 'role', ARIA_ATTRIBUTE_PATTERN],
  a: ['target', 'href', 'title', 'rel'],
  area: [],
  b: [],
  br: [],
  col: [],
  code: [],
  div: [],
  em: [],
  hr: [],
  h1: [],
  h2: [],
  h3: [],
  h4: [],
  h5: [],
  h6: [],
  i: [],
  img: ['src', 'srcset', 'alt', 'title', 'width', 'height'],
  li: [],
  ol: [],
  p: [],
  pre: [],
  s: [],
  small: [],
  span: [],
  sub: [],
  sup: [],
  strong: [],
  u: [],
  ul: []
}
```

Если вы хотите добавить новые значения в этот список разрешений по умолчанию `allowList`, вы можете сделать следующее:

```js
const myDefaultAllowList = bootstrap.Tooltip.Default.allowList

// Чтобы разрешить элементы таблицы
myDefaultAllowList.table = []

// Чтобы разрешить элементы td и атрибуты параметров данных в элементах td
myDefaultAllowList.td = ['data-bs-option']

// Вы можете отправить собственное регулярное выражение для проверки своих атрибутов.
// Будьте осторожны, чтобы Ваши регулярные выражения были слишком слабыми
const myCustomRegex = /^data-my-app-[\w-]+/
myDefaultAllowList['*'].push(myCustomRegex)
```

Если Вы хотите обойти нашу очистку, потому что предпочитаете использовать специальную библиотеку, например [DOMPurify](https://www.npmjs.com/package/dompurify), Вам следует сделать следующее:

```js
const yourTooltipEl = document.getElementById('yourTooltip')
const tooltip = new bootstrap.Tooltip(yourTooltipEl, {
  sanitizeFn(content) {
    return DOMPurify.sanitize(content)
  }
})
```
