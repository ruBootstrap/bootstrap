---
layout: docs
title: Сворачиваемое содержимое
description: Переключайте видимость контента в Вашем проекте с помощью нескольких классов и наших плагинов JavaScript.
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

- `.collapse` скрывает содержимое
- `.collapsing` применяется во время переходов
- `.collapse.show` показывает содержимое

Вы можете использовать ссылку с атрибутом `href` или кнопку с атрибутом `data-target`. В обоих случаях требуется `data-toggle="collapse"`.

{{< example >}}
<p>
  <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Ссылка с href
  </a>
  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    Кнопка с data-target
  </button>
</p>
<div class="collapse" id="collapseExample">
  <div class="card card-body">
    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
  </div>
</div>
{{< /example >}}

## Множество целей

`<button>` или `<a>` могут отображать и скрывать несколько элементов, ссылаясь на них с помощью селектора в его атрибуте `href` или `data-target`.
Несколько `<button>` или `<a>` могут отображать и скрывать элемент, если каждый из них ссылается на свой атрибут `href` или `data-target`

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
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
      </div>
    </div>
  </div>
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample2">
      <div class="card card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
      </div>
    </div>
  </div>
</div>
{{< /example >}}

## Пример аккордеона

Используя компонент [карточки]({{< docsref "/components/card" >}}) Вы можете расширить стандартное поведение сворачивания для создания аккордеона. Чтобы правильно добиться стиля аккордеона, обязательно используйте `.accordion` в качестве оболочки.

{{< example >}}
<div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header p-0" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-light btn-block text-left p-3 rounded-0" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Сворачиваемый элемент группы #1
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header p-0" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-light btn-block text-left collapsed p-3 rounded-0" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Сворачиваемый элемент группы #2
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header p-0" id="headingThree">
      <h2 class="mb-0">
        <button class="btn btn-light btn-block text-left collapsed p-3 rounded-0" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Сворачиваемый элемент группы #3
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
</div>
{{< /example >}}

## Доступность

Не забудьте добавить к элементу управления `aria-expanded`. Этот атрибут явно передает текущее состояние сворачиваемого элемента, привязанного к элементу управления, для программ чтения с экрана и аналогичных вспомогательных технологий. Если складной элемент закрыт по умолчанию, атрибут элемента управления должен иметь значение `aria-expanded="false"`. Если Вы установили открываемый складной элемент по умолчанию с помощью класса `show`, вместо этого установите `aria-expanded="true"` для элемента управления. Плагин автоматически переключит этот атрибут в элементе управления в зависимости от того, был ли открыт или закрыт складной элемент (через JavaScript или потому, что пользователь активировал другой элемент управления, также связанный с тем же складным элементом). Если элемент HTML элемента управления не является кнопкой (например, `<a>` или `<div>`), атрибут `role="button"` должен быть добавлен к элементу.

Если Ваш элемент управления нацелен на один сворачиваемый элемент - т.е. атрибут `data-target` указывает на селектор `id` Вы должны добавить атрибут `aria-controls` к элементу управления, содержащий `id` элемента управления. разборный элемент. Современные средства чтения с экрана и аналогичные вспомогательные технологии используют этот атрибут, чтобы предоставить пользователям дополнительные ярлыки для перехода непосредственно к самому сворачиваемому элементу.

Обратите внимание, что текущая реализация Bootstrap не охватывает различные *необязательные* взаимодействия с клавиатурой, описанные в [аккордеонном шаблоне WAI-ARIA Authoring Practices 1.1](https://www.w3.org/TR/wai-aria-practices-1.1/#accordion) - Вам нужно будет включить их самостоятельно в собственный JavaScript.

## Использование

Плагин collapse использует несколько классов для работы:

- `.collapse` скрывает содержимое
- `.collapse.show` показывает содержимое
- `.collapsing` добавляется, когда переход начинается, и удаляется, когда он заканчивается

Эти классы можно найти в `_transitions.scss`.

### Через атрибуты данных

Просто добавьте к элементу `data-toggle="collapse"` и `data-target`, чтобы автоматически назначить управление одним или несколькими сворачиваемыми элементами. Атрибут `data-target` принимает CSS-селектор, к которому применяется коллапс. Не забудьте добавить к складному элементу класс `collapse`. Если Вы хотите, чтобы он был открыт по умолчанию, добавьте дополнительный класс `show`.

Чтобы добавить управление группами в виде аккордеона в сворачиваемую область, добавьте атрибут данных `data-parent="#selector"`. Обратитесь к демонстрации, чтобы увидеть это в действии.

### Через JavaScript

Включить вручную с помощью:

{{< highlight js >}}
var collapseElementList = [].slice.call(document.querySelectorAll('.collapse'))
var collapseList = collapseElementList.map(function (collapseEl) {
  return new bootstrap.Collapse(collapseEl)
})
{{< /highlight >}}

### Параметры

Параметры можно передавать через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-`, как в `data-parent=""`.

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

{{< highlight js >}}
var myCollapse = document.getElementById('myCollapse')
var bsCollapse = new bootstrap.Collapse(myCollapse, {
  toggle: false
})
{{< /highlight >}}

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
      <td>Уничтожает сворачиваемый элемент.</td>
    </tr>
    <tr>
      <td><code>getInstance</code></td>
      <td>Статический метод, позволяющий получить экземпляр коллапса, связанный с элементом DOM..</td>
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

{{< highlight js >}}
var myCollapsible = document.getElementById('myCollapsible')
myCollapsible.addEventListener('hidden.bs.collapse', function () {
  // сделайте что-нибудь...
})
{{< /highlight >}}
