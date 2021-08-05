---
layout: docs
title: Сворачиваемое содержимое
description: Переключайте видимость контента в Вашем проекте с помощью нескольких классов и наших плагинов JavaScript.
group: components
toc: true
---

## Как это устроено

Плагин JavaScript сворачивания используется для отображения и скрытия содержимого. Кнопки или якоря используются как триггеры, которые сопоставляются с определенными элементами, которые Вы переключаете. Сворачивание элемента приведет к анимации `height` от текущего значения до `0`. Учитывая, как CSS обрабатывает анимацию, Вы не можете использовать `padding` для элемента `.collapse`. Вместо этого используйте класс как независимый элемент оболочки.

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

## Пример

Нажмите кнопки ниже, чтобы показать или скрыть другой элемент с помощью изменений класса:

- `.collapse` скрывает содержимое
- `.collapsing` применяется во время переходов
- `.collapse.show` показывает содержимое

Как правило, мы рекомендуем использовать кнопку с атрибутом `data-bs-target`. Хотя это не рекомендуется с семантической точки зрения, Вы также можете использовать ссылку с атрибутом `href` (и `role="button"`). В обоих случаях требуется `data-bs-toggle="collapse"`.

{{< example >}}
<p>
  <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Ссылка с href
  </a>
  <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    Кнопка с data-target
  </button>
</p>
<div class="collapse" id="collapseExample">
  <div class="card card-body">
    Некоторый заполнитель для компонента сворачивания. Эта панель по умолчанию скрыта, но открывается, когда пользователь активирует соответствующий триггер.
  </div>
</div>
{{< /example >}}

## По горизонтали

Плагин коллапса также поддерживает горизонтальное сворачивание. Добавьте класс модификатора `.collapse-horizontal` для перехода ширины `width` вместо высоты `height` и установите ширину `width` непосредственно для дочернего элемента. Не стесняйтесь писать свой собственный Sass, использовать встроенные стили или использовать наши [утилиты ширины]({{< docsref "/utilities/sizing" >}}).

{{< callout info >}}
Обратите внимание, что хотя в приведенном ниже примере для избежания чрезмерного перерисовки в наших документах установлено значение `min-height`, это явно не требуется. **Требуется только ширина `width` дочернего элемента.**
{{< /callout >}}

{{< example >}}
<p>
  <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
    Переключить ширину сворачиваемого
  </button>
</p>
<div style="min-height: 120px;">
  <div class="collapse collapse-horizontal" id="collapseWidthExample">
    <div class="card card-body" style="width: 300px;">
      Это некий заполнитель для горизонтального сворачивания. По умолчанию он скрыт и отображается при срабатывании.
    </div>
  </div>
</div>
{{< /example >}}

## Несколько целей

`<button>` или `<a>` могут отображать и скрывать несколько элементов, ссылаясь на них с помощью селектора в его атрибуте `href` или `data-bs-target`.
Несколько `<button>` или `<a>` могут отображать и скрывать элемент, если каждый из них ссылается на свой атрибут `href` или `data-bs-target`

{{< example >}}
<p>
  <a class="btn btn-primary" data-bs-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Переключить первый элемент</a>
  <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Переключить второй элемент</button>
  <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target=".multi-collapse" aria-expanded="false" aria-controls="multiCollapseExample1 multiCollapseExample2">Переключить оба элемента</button>
</p>
<div class="row">
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample1">
      <div class="card card-body">
        Некоторый заполнитель для первого компонента сворачивания в этом примере множественного сворачивания. Эта панель по умолчанию скрыта, но открывается, когда пользователь активирует соответствующий триггер.
      </div>
    </div>
  </div>
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample2">
      <div class="card card-body">
        Некоторое содержимое заполнителя для второго компонента сворачивания в этом примере множественного сворачивания. Эта панель по умолчанию скрыта, но открывается, когда пользователь активирует соответствующий триггер.
      </div>
    </div>
  </div>
</div>
{{< /example >}}

## Доступность

Не забудьте добавить к элементу управления `aria-expanded`. Этот атрибут явно передает текущее состояние сворачиваемого элемента, привязанного к элементу управления, для программ чтения с экрана и аналогичных вспомогательных технологий. Если складной элемент закрыт по умолчанию, атрибут элемента управления должен иметь значение `aria-expanded="false"`. Если Вы установили открываемый складной элемент по умолчанию с помощью класса `show`, вместо этого установите `aria-expanded="true"` для элемента управления. Плагин автоматически переключит этот атрибут в элементе управления в зависимости от того, был ли открыт или закрыт складной элемент (через JavaScript или потому, что пользователь активировал другой элемент управления, также связанный с тем же складным элементом). Если элемент HTML элемента управления не является кнопкой (например, `<a>` или `<div>`), атрибут `role="button"` должен быть добавлен к элементу.

Если Ваш элемент управления нацелен на один сворачиваемый элемент - т.е. атрибут `data-bs-target` указывает на селектор `id` Вы должны добавить атрибут `aria-controls` к элементу управления, содержащий `id` элемента управления. разборный элемент. Современные средства чтения с экрана и аналогичные вспомогательные технологии используют этот атрибут, чтобы предоставить пользователям дополнительные ярлыки для перехода непосредственно к самому сворачиваемому элементу.

Обратите внимание, что текущая реализация Bootstrap не охватывает различные *необязательные* взаимодействия с клавиатурой, описанные в [аккордеонном шаблоне WAI-ARIA Authoring Practices 1.1](https://www.w3.org/TR/wai-aria-practices-1.1/#accordion) - Вам нужно будет включить их самостоятельно в собственный JavaScript.

## Sass

### Переменные

{{< scss-docs name="collapse-transition" file="scss/_variables.scss" >}}

### Классы

Классы перехода сворачивания можно найти в `scss/_transitions.scss`, поскольку они используются в нескольких компонентах (сворачивание и аккордеон).

{{< scss-docs name="collapse-classes" file="scss/_transitions.scss" >}}

## Использование

Плагин collapse использует несколько классов для работы:

- `.collapse` скрывает содержимое
- `.collapse.show` показывает содержимое
- `.collapsing` добавляется, когда переход начинается, и удаляется, когда он заканчивается

Эти классы можно найти в `_transitions.scss`.

### Через атрибуты данных

Просто добавьте к элементу `data-bs-toggle="collapse"` и `data-bs-target`, чтобы автоматически назначить управление одним или несколькими сворачиваемыми элементами. Атрибут `data-bs-target` принимает CSS-селектор, к которому применяется коллапс. Не забудьте добавить к складному элементу класс `collapse`. Если Вы хотите, чтобы он был открыт по умолчанию, добавьте дополнительный класс `show`.

Чтобы добавить управление группами в виде гармошки в сворачиваемую область, добавьте атрибут данных `data-bs-parent="#selector"`. Обратитесь к [странице аккордеона]({{< docsref "/components/accordion" >}}) для получения дополнительной информации.

### Через JavaScript

Включить вручную с помощью:

```js
var collapseElementList = [].slice.call(document.querySelectorAll('.collapse'))
var collapseList = collapseElementList.map(function (collapseEl) {
  return new bootstrap.Collapse(collapseEl)
})
```

### Параметры

Параметры можно передавать через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-bs-`, как в `data-bs-parent=""`.

<table class="table">
  <thead>
    <tr>
      <th style="width: 100px;">Наименование</th>
      <th style="width: 50px;">Тип</th>
      <th style="width: 50px;">По умолчанию</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>parent</code></td>
      <td>selector | jQuery object | DOM element </td>
      <td><code>false</code></td>
      <td>Если указан родительский элемент, все складные элементы в указанном родительском элементе будут закрыты при отображении этого складного элемента. (аналогично традиционному поведению аккордеона - это зависит от класса <code>card</code>). Атрибут должен быть установлен в целевой складной области.</td>
    </tr>
    <tr>
      <td><code>toggle</code></td>
      <td>boolean</td>
      <td><code>true</code></td>
      <td>Переключает сворачиваемый элемент при вызове</td>
    </tr>
  </tbody>
</table>

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

Активирует Ваш контент как складной элемент. Принимает необязательные параметры `object`.

Вы можете создать экземпляр сворачивания с помощью конструктора, например:

```js
var myCollapse = document.getElementById('myCollapse')
var bsCollapse = new bootstrap.Collapse(myCollapse, {
  toggle: false
})
```

<table class="table">
  <thead>
    <tr>
      <th>Метод</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>toggle</code></td>
      <td>Переключает складной элемент на показанный или скрытый. <strong>Возврат к вызывающей стороне до того, как сворачиваемый элемент будет фактически показан или скрыт</strong> (то есть событие происходит до <code>shown.bs.collapse</code> или <code>hidden.bs.collapse</code>).</td>
    </tr>
    <tr>
      <td><code>show</code></td>
      <td>Показывает разборный элемент. <strong>Возврат к вызывающей стороне до фактического отображения сворачиваемого элемента</strong> (например, до возникновения события <code>shown.bs.collapse</code>).</td>
    </tr>
    <tr>
      <td><code>hide</code></td>
      <td>Скрывает разборный элемент. <strong>Возврат к вызывающей стороне до фактического скрытия сворачиваемого элемента</strong> (например, до возникновения события <code>hidden.bs.collapse</code>).</td>
    </tr>
    <tr>
      <td><code>dispose</code></td>
      <td>Уничтожает сворачиваемый элемент. (Удаляет сохраненные данные в элементе DOM)</td>
    </tr>
    <tr>
      <td>
        <code>getInstance</code>
      </td>
      <td>
        Статический метод, который позволяет вам получить экземпляр коллапса, связанный с элементом DOM, вы можете использовать его следующим образом: <code>bootstrap.Collapse.getInstance(element)</code>
      </td>
    </tr>
    <tr>
      <td>
        <code>getOrCreateInstance</code>
      </td>
      <td>
        Статический метод, который возвращает экземпляр коллапса, связанный с элементом DOM, или создает новый, если он не был инициализирован.
         Вы можете использовать это так: <code>bootstrap.Collapse.getOrCreateInstance(element)</code>
      </td>
    </tr>
  </tbody>
</table>

### События

Класс коллапса Bootstrap предоставляет несколько событий для подключения к функциональности коллапса.

<table class="table">
  <thead>
    <tr>
      <th style="width: 150px;">Тип События</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>show.bs.collapse</code></td>
      <td>Это событие запускается немедленно при вызове метода экземпляра <code>show</code>..</td>
    </tr>
    <tr>
      <td><code>shown.bs.collapse</code></td>
      <td>Это событие запускается, когда элемент сворачивания становится видимым для пользователя (будет ожидать завершения переходов CSS).</td>
    </tr>
    <tr>
      <td><code>hide.bs.collapse</code></td>
      <td>Это событие запускается сразу после вызова метода <code>hide</code>.</td>
    </tr>
    <tr>
      <td><code>hidden.bs.collapse</code></td>
      <td>Это событие запускается, когда элемент свертывания был скрыт от пользователя (будет ждать завершения переходов CSS).</td>
    </tr>
  </tbody>
</table>

```js
var myCollapsible = document.getElementById('myCollapsible')
myCollapsible.addEventListener('hidden.bs.collapse', function () {
  // сделайте что-нибудь...
})
```
