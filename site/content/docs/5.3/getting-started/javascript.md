---
layout: docs
title: JavaScript
description: Оживите Bootstrap с помощью наших дополнительных плагинов JavaScript. Узнайте о каждом плагине, наших данных и параметрах программного API и многом другом.
group: getting-started
toc: true
---

## Индивидуальный или скомпилированный

Плагины могут быть включены индивидуально (с использованием отдельного файла `js/dist/*.js` в Bootstrap), или все сразу с помощью `bootstrap.js` или минифицированного `bootstrap.min.js` (не включайте оба).

Если Вы используете bundler (Webpack, Parcel, Vite...), Вы можете использовать файлы `/js/dist/*.js` готовые для UMD.

## Использование с фреймворками JavaScript

Хотя Bootstrap CSS можно использовать с любым фреймворком, **Bootstrap JavaScript не полностью совместим с такими фреймворками JavaScript, как React, Vue и Angular**, которые предполагают полное знание DOM. И Bootstrap, и фреймворк могут попытаться видоизменить один и тот же элемент DOM, что приведет к таким ошибкам, как раскрывающиеся списки, которые застревают в открытом положении.

Лучшей альтернативой для тех, кто использует этот тип фреймворков, является использование специфичного для фреймворка пакета **вместо** Bootstrap JavaScript. Вот некоторые из самых популярных вариантов:

- React: [React Bootstrap](https://react-bootstrap.github.io/)
- Vue: [BootstrapVue](https://bootstrap-vue.org/) | [RU BootstrapVue](https://bootstrap-vue.ru/) (в настоящее время поддерживает только Vue 2 и Bootstrap 4)
- Angular: [ng-bootstrap](https://ng-bootstrap.github.io/)

## Использование Bootstrap как модуля

{{< callout >}}

**Попробуйте сами!** Загрузите исходный код и рабочую демонстрацию для использования Bootstrap в качестве модуля ES из [репозиторий twbs/examples](https://github.com/twbs/examples/tree/main/sass-js-esm). Вы также можете [открыть пример в StackBlitz](https://stackblitz.com/github/twbs/examples/tree/main/sass-js-esm?file=index.html).
{{< /callout >}}

Мы предоставляем версию Bootstrap, построенную как `ESM` (`bootstrap.esm.js` и `bootstrap.esm.min.js`), которая позволяет Вам использовать Bootstrap в качестве модуля в Вашем браузере, если Ваши [целевые браузеры поддерживают его](https://caniuse.com/es6-module).

```html
<script type="module">
  import { Toast } from 'bootstrap.esm.min.js'

  Array.from(document.querySelectorAll('.toast'))
    .forEach(toastNode => new Toast(toastNode))
</script>
```

По сравнению с сборщиками JS, использование ESM в браузере требует использования полного пути и имени файла вместо имени модуля. [Подробнее о модулях JS в браузере](https://v8.dev/features/modules#specifiers). Вот почему мы используем `'bootstrap.esm.min.js'` вместо `'bootstrap'` выше. Однако это еще больше усложняется нашей зависимостью Popper, которая импортирует Popper в наш JavaScript следующим образом:

<!-- eslint-skip -->
```js
import * as Popper from "@popperjs/core"
```

Если вы попробуете это как есть, вы увидите ошибку в консоли, подобную следующей:

```text
Uncaught TypeError: Failed to resolve module specifier "@popperjs/core". Relative references must start with either "/", "./", or "../".
```

Чтобы исправить это, вы можете использовать `importmap` для преобразования произвольных имен модулей в полные пути. Если ваши [целевые браузеры](https://caniuse.com/?search=importmap) не поддерживают `importmap`, вам нужно будет использовать проект [es-module-shims](https://github.com/guybedford/es-module-shims). Вот как это работает для Bootstrap и Popper:

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{< param "cdn.css" >}}" rel="stylesheet" integrity="{{< param "cdn.css_hash" >}}" crossorigin="anonymous">
    <title>Здравствуй, модульность!</title>
  </head>
  <body>
    <h1>Здравствуй, модульность!</h1>
    <button id="popoverButton" type="button" class="btn btn-primary btn-lg" data-bs-toggle="popover" title="ESM in Browser" data-bs-content="Bang!">Пользовательское всплывающее окно</button>

    <script async src="https://cdn.jsdelivr.net/npm/es-module-shims@1/dist/es-module-shims.min.js" crossorigin="anonymous"></script>
    <script type="importmap">
    {
      "imports": {
        "@popperjs/core": "{{< param "cdn.popper_esm" >}}",
        "bootstrap": "https://cdn.jsdelivr.net/npm/bootstrap@{{< param "current_version" >}}/dist/js/bootstrap.esm.min.js"
      }
    }
    </script>
    <script type="module">
      import * as bootstrap from 'bootstrap'

      new bootstrap.Popover(document.getElementById('popoverButton'))
    </script>
  </body>
</html>
```

## Зависимости

Некоторые плагины и компоненты CSS зависят от других плагинов. Если вы включаете плагины по отдельности, обязательно проверьте наличие этих зависимостей в документации.

Наши раскрывающиеся списки, всплывающие окна и всплывающие подсказки также зависят от [Popper](https://popper.js.org/).

## Атрибуты данных

Почти все плагины Bootstrap можно включать и настраивать только через HTML с атрибутами данных (наш предпочтительный способ использования функций JavaScript). Обязательно **используйте только один набор атрибутов данных для одного элемента** (например, вы не можете вызвать всплывающую подсказку и модальное окно с одной и той же кнопки).

{{< markdown >}}
{{< partial "js-data-attributes.md" >}}
{{< /markdown >}}

## Селекторы

Мы используем собственные методы `querySelector` и `querySelectorAll` для запроса элементов DOM из соображений производительности, поэтому вы должны использовать [допустимые селекторы](https://www.w3.org/TR/CSS21/syndata.html#value-def-identifier). Если вы используете специальные селекторы, такие как `collapse:Example`, обязательно избегайте их.

## События

Bootstrap предоставляет настраиваемые события для уникальных действий большинства плагинов. Как правило, они бывают в форме инфинитива и причастия прошедшего времени, где инфинитив (например, `show`) запускается в начале события, а его форма причастия прошедшего времени (например, `shown`) запускается после завершения события действия.

Все инфинитивные события обеспечивают функциональность [`preventDefault()`](https://developer.mozilla.org/en-US/docs/Web/API/Event/preventDefault). Это дает возможность остановить выполнение действия до его начала. Возврат false из обработчика событий также автоматически вызовет `preventDefault()`.

```js
const myModal = document.querySelector('#myModal')

myModal.addEventListener('show.bs.modal', event => {
  if (!data) {
    return event.preventDefault() // останавливает показ модального окна
  }
})
```

## Программный API

Все конструкторы принимают необязательный объект опций или ничего (что запускает плагин с его поведением по умолчанию):

```js
const myModalEl = document.querySelector('#myModal')
const modal = new bootstrap.Modal(myModalEl) // initialized with defaults

const configObject = { keyboard: false }
const modal1 = new bootstrap.Modal(myModalEl, configObject) // инициализируется без клавиатуры
```

Если вы хотите получить конкретный экземпляр плагина, каждый плагин предоставляет метод `getInstance`. Например, чтобы получить экземпляр непосредственно из элемента:

```js
bootstrap.Popover.getInstance(myPopoverEl)
```

Этот метод вернет `null`, если экземпляр не инициирован для запрошенного элемента.

В качестве альтернативы, `getOrCreateInstance` можно использовать для получения экземпляра, связанного с элементом DOM, или для создания нового экземпляра, если он не был инициализирован.

```js
bootstrap.Popover.getOrCreateInstance(myPopoverEl, configObject)
```

Если экземпляр не был инициализирован, он может принять и использовать необязательный объект конфигурации в качестве второго аргумента.

### Селекторы CSS в конструкторах

В дополнение к методам `getInstance` и `getOrCreateInstance`, все конструкторы плагинов могут принимать элемент DOM или допустимый [селектор CSS](#selectors) в качестве первого аргумента. Элементы плагина находятся с помощью метода `querySelector`, так как наши плагины поддерживают только один элемент.

```js
const modal = new bootstrap.Modal('#myModal')
const dropdown = new bootstrap.Dropdown('[data-bs-toggle="dropdown"]')
const offcanvas = bootstrap.Offcanvas.getInstance('#myOffcanvas')
const alert = bootstrap.Alert.getOrCreateInstance('#myAlert')
```

### Асинхронные функции и переходы

Все программные методы API являются **асинхронными** и возвращаются вызывающей стороне после начала перехода, но **до его завершения**. Чтобы выполнить действие после завершения перехода, вы можете прослушать соответствующее событие.

```js
const myCollapseEl = document.querySelector('#myCollapse')

myCollapseEl.addEventListener('shown.bs.collapse', event => {
  // Действие, выполняемое после разворачивания сворачиваемой области
})
```

Кроме того, вызов метода **переходного компонента будет игнорироваться**.

```js
const myCarouselEl = document.querySelector('#myCarousel')
const carousel = bootstrap.Carousel.getInstance(myCarouselEl) // Получить экземпляр карусели

myCarouselEl.addEventListener('slid.bs.carousel', event => {
  carousel.to('2') // Перейдет к слайду 2, как только завершится переход к слайду 1
})

carousel.to('1') // Начнет скользить к слайду 1 и вернется к вызывающему абоненту
carousel.to('2') // !! Будет проигнорирован, т.к. переход к слайду 1 не завершен !!
```

#### Метод `dispose`

Хотя может показаться правильным использовать метод `dispose` сразу после `hide()`, это приведет к неправильным результатам. Вот пример использования проблемы:

```js
const myModal = document.querySelector('#myModal')
myModal.hide() // это асинхронно

myModal.addEventListener('shown.bs.hidden', event => {
  myModal.dispose()
})
```

### Настройки по умолчанию

Вы можете изменить настройки плагина по умолчанию, изменив объект плагина `Constructor.Default`:

```js
// изменяет значение по умолчанию для параметра `keyboard` модального плагина на false
bootstrap.Modal.Default.keyboard = false
```

## Методы и свойства

Каждый плагин Bootstrap предоставляет следующие методы и статические свойства.

{{< bs-table "table" >}}
| Метод | Описание |
| --- | --- |
| `dispose` | Уничтожает модальное окно элемента. (Удаляет сохраненные данные в элементе DOM) |
| `getInstance` | *Статический* метод, позволяющий получить модальный экземпляр, связанный с элементом DOM. |
| `getOrCreateInstance` | *Статический* метод, который позволяет вам получить модальный экземпляр, связанный с элементом DOM, или создать новый, если он не был инициализирован. |
{{< /bs-table >}}

{{< bs-table "table" >}}
| Статическое свойство | Описание |
| --- | --- |
| `NAME` | Возвращает имя плагина. (Например: `bootstrap.Tooltip.NAME`) |
| `VERSION` | Доступ к версии каждого плагина Bootstrap можно получить через свойство `VERSION` конструктора плагина (Например: `bootstrap.Tooltip.VERSION`) |
{{< /bs-table >}}

## Санитайзер

Всплывающие подсказки и всплывающие окна используют наше встроенное средство очистки для очистки параметров, которые принимают HTML.

Значение по умолчанию для `allowList` следующее:

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

Если вы хотите добавить новые значения в этот `allowList` по умолчанию, вы можете сделать следующее:

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

Если вы хотите обойти наше дезинфицирующее средство, потому что предпочитаете использовать специальную библиотеку, например [DOMPurify](https://www.npmjs.com/package/dompurify), вам следует сделать следующее:

```js
const yourTooltipEl = document.querySelector('#yourTooltip')
const tooltip = new bootstrap.Tooltip(yourTooltipEl, {
  sanitizeFn(content) {
    return DOMPurify.sanitize(content)
  }
})
```

## Опциональное использование jQuery

**Вам не нужен jQuery в Bootstrap 5**, но все же можно использовать наши компоненты с jQuery. Если Bootstrap обнаружит `jQuery` в объекте `window`, он добавит все наши компоненты в систему плагинов jQuery. Это позволяет сделать следующее:

```js
// to enable tooltips with the default configuration
$('[data-bs-toggle="tooltip"]').tooltip()

// to initialize tooltips with given configuration
$('[data-bs-toggle="tooltip"]').tooltip({
  boundary: 'clippingParents',
  customClass: 'myClass'
})

// to trigger the `show` method
$('#myTooltip').tooltip('show')
```

То же самое касается и других наших компонентов.

### Отсутствие конфликта

Иногда необходимо использовать плагины Bootstrap с другими UI-фреймворками. В этих обстоятельствах иногда могут возникать конфликты пространств имен. Если это произойдет, вы можете вызвать `.noConflict` для плагина, для которого вы хотите восстановить значение.

```js
const bootstrapButton = $.fn.button.noConflict() // вернуть $.fn.button к ранее присвоенному значению
$.fn.bootstrapBtn = bootstrapButton // дать $().bootstrapBtn функциональность Bootstrap
```

Bootstrap официально не поддерживает сторонние библиотеки JavaScript, такие как Prototype или jQuery UI. Несмотря на `.noConflict` и пространства имен событий, могут быть проблемы совместимости, которые вам нужно исправить самостоятельно.

### События jQuery

Bootstrap обнаружит jQuery, если `jQuery` присутствует в объекте `window` и не установлен атрибут `data-bs-no-jquery` для `<body>`. Если jQuery найден, Bootstrap будет генерировать события благодаря системе событий jQuery. Поэтому, если вы хотите прослушивать события Bootstrap, вам придется использовать методы jQuery (`.on`, `.one`) вместо `addEventListener`.

```js
$('#myTab a').on('shown.bs.tab', () => {
  // do something...
})
```

## Отключенный JavaScript

Плагины Bootstrap не имеют специального запасного варианта, когда JavaScript отключен. Если вас волнует пользовательский опыт в этом случае, используйте [`<noscript>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/noscript), чтобы объяснить ситуацию (и как снова включить JavaScript) для ваших пользователей и/или добавить свои собственные запасные варианты.
