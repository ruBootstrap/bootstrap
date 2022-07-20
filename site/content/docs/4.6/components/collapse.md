---
layout: docs
title: Сворачиваемое
description: Переключайте видимость контента в вашем проекте с помощью нескольких классов и наших плагинов JavaScript.
group: components
toc: true
---

## Как это работает

Плагин JavaScript сворачивания используется для отображения и скрытия содержимого. Кнопки или якоря используются как триггеры, которые сопоставляются с определенными элементами, которые Вы переключаете. Сворачивание элемента приведет к анимации `height` от текущего значения до `0`. Учитывая, как CSS обрабатывает анимацию, Вы не можете использовать `padding` для элемента `.collapse`. Вместо этого используйте класс как независимый элемент оболочки.

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

## Пример

Нажмите кнопки ниже, чтобы показать или скрыть другой элемент с помощью изменений класса:

- `.collapse` скрывает контент
- `.collapsing` применяется во время переходов
- `.collapse.show` показывает контент

Как правило, мы рекомендуем использовать кнопку с атрибутом `data-target`. Хотя это не рекомендуется с семантической точки зрения, Вы также можете использовать ссылку с атрибутом `href` (и `role="button"`). В обоих случаях требуется `data-toggle="collapse"`.

{{< example >}}
<p>
  <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Ссылка с атрибутом href
  </a>
  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    Кнопка с атрибутом data-target
  </button>
</p>
<div class="collapse" id="collapseExample">
  <div class="card card-body">
    Некоторый заполнитель для компонента сворачивания. Эта панель по умолчанию скрыта, но открывается, когда пользователь активирует соответствующий триггер.
  </div>
</div>
{{< /example >}}

## Горизонтально

Плагин коллапса также поддерживает горизонтальное сворачивание. Добавьте класс модификатора `.width`, чтобы перейти к `width` вместо `height`, и установите `width` для непосредственного дочернего элемента. Вы можете написать свой собственный Sass, использовать встроенные стили или воспользоваться нашими [утилитами ширины]({{< docsref "/utilities/sizing" >}}).

{{< callout info >}}
Обратите внимание, что хотя в приведенном ниже примере задана минимальная высота `min-height`, чтобы избежать чрезмерных перерисовок в наших документах, это явно не требуется. **Требуется только ширина `width` дочернего элемента.**
{{< /callout >}}

{{< example >}}
<p>
  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
    Включить сворачивание ширины
  </button>
</p>
<div style="min-height: 120px;">
  <div class="collapse width" id="collapseWidthExample">
    <div class="card card-body" style="width: 320px;">
      Это некий заполнитель для горизонтального свертывания. По умолчанию он скрыт и отображается при срабатывании.
    </div>
  </div>
</div>
{{< /example >}}

## Несколько целей

`<button>` или `<a>` могут отображать и скрывать несколько элементов, ссылаясь на них с помощью селектора JQuery в его атрибуте `href` или `data-target`.
Несколько `<button>` или `<a>` могут отображать и скрывать элемент, если каждый из них ссылается на него со своим атрибутом `href` или `data-target`.

{{< example >}}
<p>
  <a class="btn btn-primary" data-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Переключить первый элемент</a>
  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Переключить второй элемент</button>
  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target=".multi-collapse" aria-expanded="false" aria-controls="multiCollapseExample1 multiCollapseExample2">Переключить оба элемента</button>
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

## Пример аккордеона

Используя компонент [карточки]({{< docsref "/components/card" >}}), Вы можете расширить стандартное поведение сворачивания для создания аккордеона. Чтобы правильно добиться стиля аккордеона, обязательно используйте `.accordion` в качестве оболочки.

{{< example >}}
<div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Сворачиваемый групповой элемент #1
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
        Некоторый заполнитель для первой панели аккордеона. Эта панель отображается по умолчанию благодаря классу <code>.show</code>.
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Сворачиваемый групповой элемент #2
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
        Некоторый заполнитель для второй панели аккордеона. По умолчанию эта панель скрыта.
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h2 class="mb-0">
        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Сворачиваемый групповой элемент #3
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
        И, наконец, заполнитель для третьей и последней панели аккордеона. По умолчанию эта панель скрыта.
      </div>
    </div>
  </div>
</div>
{{< /example >}}

## Доступность

Не забудьте добавить к элементу управления `aria-expanded`. Этот атрибут явно передает текущее состояние сворачиваемого элемента, привязанного к элементу управления, для программ чтения с экрана и аналогичных вспомогательных технологий. Если складной элемент закрыт по умолчанию, атрибут элемента управления должен иметь значение `aria-expanded="false"`. Если Вы установили открываемый складной элемент по умолчанию с помощью класса `show`, вместо этого установите для элемента управления `aria-expanded="true"`. Плагин автоматически переключает этот атрибут на элементе управления в зависимости от того, был ли открыт или закрыт складной элемент (через JavaScript или потому, что пользователь активировал другой элемент управления, также связанный с тем же складным элементом). Если элемент HTML элемента управления не является кнопкой (например `<a>` или `<div>`), атрибут `role="button"` должен быть добавлен к элементу.

Если Ваш элемент управления нацелен на один сворачиваемый элемент, то есть атрибут `data-target` указывает на селектор `id`, Вы должны добавить к элементу управления атрибут `aria-controls` содержащий идентификатор `id` объекта сворачиваемого элемента. Современные программы чтения с экрана и аналогичные вспомогательные технологии используют этот атрибут, чтобы предоставить пользователям дополнительные ярлыки для перехода непосредственно к самому сворачиваемому элементу.

Обратите внимание, что текущая реализация Bootstrap не распространяется на различные взаимодействия с клавиатурой, описанные в [аккордеонном шаблоне ARIA Authoring Practices Guide](https://www.w3.org/WAI/ARIA/apg/patterns/accordion/) — вам потребуется включите их самостоятельно с помощью пользовательского JavaScript.

## Применение

Плагин collapse использует несколько классов для работы с тяжелой работой:

- `.collapse` скрывает контент
- `.collapse.show` показывает контент
- `.collapsing` добавляется, когда переход начинается, и удаляется, когда он заканчивается

Эти классы можно найти в `_transitions.scss`.

### Через атрибуты данных

Просто добавьте к элементу `data-toggle="collapse"` и `data-target` , чтобы автоматически назначить управление одним или несколькими сворачиваемыми элементами. Атрибут `data-target` принимает CSS-селектор, к которому нужно применить сворачивание. Обязательно добавьте к сворачиваемому элементу класс `collapse`. Если Вы хотите, чтобы он был открыт по умолчанию, добавьте дополнительный класс `show`.

Чтобы добавить управление группами в виде аккордеона в сворачиваемую область, добавьте атрибут данных `data-parent="#selector"`. Обратитесь к демонстрации, чтобы увидеть это в действии.

### Через JavaScript

Включить вручную с помощью:

```js
$('.collapse').collapse()
```

### Параметры

Параметры могут передаваться через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-`, как в `data-parent=""`.

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="width: 100px;">Имя</th>
      <th style="width: 50px;">Тип</th>
      <th style="width: 50px;">По умолчанию</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>parent</td>
      <td>selector | jQuery object | DOM element </td>
      <td>false</td>
      <td>Если указан родительский элемент, все складные элементы в указанном родительском элементе будут закрыты при отображении этого сворачиваемого элемента. (аналогично традиционному поведению аккордеона - это зависит от класса <code>card</code>). Атрибут должен быть установлен в целевой сворачиваемой области.</td>
    </tr>
    <tr>
      <td>toggle</td>
      <td>boolean</td>
      <td>true</td>
      <td>Переключает сворачиваемый элемент при вызове</td>
    </tr>
  </tbody>
</table>

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

#### `.collapse(options)`

Активирует Ваш контент как складной элемент. Принимает необязательные параметры `object`.

```js
$('#myCollapsible').collapse({
  toggle: false
})
```

#### `.collapse('toggle')`

Переключает складной элемент на показанный или скрытый. **Возврат к вызывающей стороне до того, как сворачиваемый элемент был фактически показан или скрыт** (т.е. до того, как произойдет событие `shown.bs.collapse` или `hidden.bs.collapse`).

#### `.collapse('show')`

Показывает разборный элемент. **Возврат к вызывающей стороне до того, как сворачиваемый элемент был фактически показан** (то есть до того, как произойдет событие `shown.bs.collapse`).

#### `.collapse('hide')`

Скрывает разборный элемент. **Возврат к вызывающей стороне до того, как сворачиваемый элемент был фактически скрыт** (т.е. до того, как произойдет событие `hidden.bs.collapse`).

#### `.collapse('dispose')`

Уничтожает вышеуказанный сворачиваемый элемент.

### События

Класс сворачивания Bootstrap предоставляет несколько событий для подключения к функциональности сворачивания.

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="width: 150px;">Тип события</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>show.bs.collapse</td>
      <td>Это событие запускается немедленно при вызове метода экземпляра <code>show</code>.</td>
    </tr>
    <tr>
      <td>shown.bs.collapse</td>
      <td>Это событие запускается, когда элемент сворачивания стал видимым для пользователя (будет ожидать завершения переходов CSS).</td>
    </tr>
    <tr>
      <td>hide.bs.collapse</td>
      <td>Это событие запускается сразу после вызова метода <code>hide</code>.</td>
    </tr>
    <tr>
      <td>hidden.bs.collapse</td>
      <td>Это событие запускается, когда элемент свертывания был скрыт от пользователя (будет ждать завершения переходов CSS).</td>
    </tr>
  </tbody>
</table>

```js
$('#myCollapsible').on('hidden.bs.collapse', function () {
  // сделайте что-нибудь...
})
```
