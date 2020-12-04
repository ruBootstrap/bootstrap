---
layout: docs
title: Отслеживание прокрутки
description: Автоматически обновляйте элементы навигации Bootstrap или группы списков в зависимости от положения прокрутки, чтобы указать, какая ссылка в данный момент активна в области просмотра.
group: components
toc: true
---

## Как это работает

У отслеживания прокрутки есть несколько требований для правильной работы:

- Он должен использоваться в Bootstrap [компонент навигации]({{< docsref "/components/navs-tabs" >}}) или [группа списка]({{< docsref "/components/list-group" >}}).
- Отслеживание прокрутки требует `position: relative;` на элементе, за которым Вы шпионите, обычно это `<body>`.
- Якоря (`<a>`) обязательны и должны указывать на элемент с этим `id`.

При успешной реализации Ваша группа навигации или списка будет обновляться соответствующим образом, перемещая класс `.active` от одного элемента к другому в зависимости от связанных с ними целей.

{{< callout >}}
### Прокручиваемые контейнеры и доступ с клавиатуры

Если вы создаете контейнер с возможностью прокрутки (кроме `<body>`), обязательно установите `height` и примените к нему `overflow-y: scroll;` наряду с `tabindex="0"` чтобы обеспечить доступ с клавиатуры.
{{< /callout >}}

## Пример на панели навигации

Прокрутите область под панелью навигации и посмотрите, как меняется активный класс. Выпадающие элементы также будут выделены.

<div class="bd-example">
  <nav id="navbar-example2" class="navbar navbar-light bg-light px-3">
    <a class="navbar-brand" href="#">Панель навигации</a>
    <ul class="nav nav-pills">
      <li class="nav-item">
        <a class="nav-link" href="#fat">@fat</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#mdo">@mdo</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Выпадающий список</a>
        <ul class="dropdown-menu">
          <li><a class="dropdown-item" href="#one">один</a></li>
          <li><a class="dropdown-item" href="#two">два</a></li>
          <li><hr class="dropdown-divider"></li>
          <li><a class="dropdown-item" href="#three">три</a></li>
        </ul>
      </li>
    </ul>
  </nav>
  <div data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-offset="0" class="scrollspy-example" tabindex="0">
    <h4 id="fat">@fat</h4>
    <p>Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney's photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven't heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel keffiyeh artisan ullamco consequat.</p>
    <h4 id="mdo">@mdo</h4>
    <p>Veniam marfa mustache skateboard, adipisicing fugiat velit pitchfork beard. Freegan beard aliqua cupidatat mcsweeney's vero. Cupidatat four loko nisi, ea helvetica nulla carles. Tattooed cosby sweater food truck, mcsweeney's quis non freegan vinyl. Lo-fi wes anderson +1 sartorial. Carles non aesthetic exercitation quis gentrify. Brooklyn adipisicing craft beer vice keytar deserunt.</p>
    <h4 id="one">один</h4>
    <p>Occaecat commodo aliqua delectus. Fap craft beer deserunt skateboard ea. Lomo bicycle rights adipisicing banh mi, velit ea sunt next level locavore single-origin coffee in magna veniam. High life id vinyl, echo park consequat quis aliquip banh mi pitchfork. Vero VHS est adipisicing. Consectetur nisi DIY minim messenger bag. Cred ex in, sustainable delectus consectetur fanny pack iphone.</p>
    <h4 id="two">два</h4>
    <p>In incididunt echo park, officia deserunt mcsweeney's proident master cleanse thundercats sapiente veniam. Excepteur VHS elit, proident shoreditch +1 biodiesel laborum craft beer. Single-origin coffee wayfarers irure four loko, cupidatat terry richardson master cleanse. Assumenda you probably haven't heard of them art party fanny pack, tattooed nulla cardigan tempor ad. Proident wolf nesciunt sartorial keffiyeh eu banh mi sustainable. Elit wolf voluptate, lo-fi ea portland before they sold out four loko. Locavore enim nostrud mlkshk brooklyn nesciunt.</p>
    <h4 id="three">три</h4>
    <p>Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney's photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven't heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel keffiyeh artisan ullamco consequat.</p>
    <p>Keytar twee blog, culpa messenger bag marfa whatever delectus food truck. Sapiente synth id assumenda. Locavore sed helvetica cliche irony, thundercats you probably haven't heard of them consequat hoodie gluten-free lo-fi fap aliquip. Labore elit placeat before they sold out, terry richardson proident brunch nesciunt quis cosby sweater pariatur keffiyeh ut helvetica artisan. Cardigan craft beer seitan readymade velit. VHS chambray laboris tempor veniam. Anim mollit minim commodo ullamco thundercats.
    </p>
  </div>
</div>

```html
<nav id="navbar-example2" class="navbar navbar-light bg-light px-3">
  <a class="navbar-brand" href="#">Панель навигации</a>
  <ul class="nav nav-pills">
    <li class="nav-item">
      <a class="nav-link" href="#fat">@fat</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#mdo">@mdo</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Выпадающий список</a>
      <ul class="dropdown-menu dropdown-menu-end">
        <li><a class="dropdown-item" href="#one">один</a></li>
        <li><a class="dropdown-item" href="#two">два</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="#three">три</a></li>
      </ul>
    </li>
  </ul>
</nav>
<div data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-offset="0" tabindex="0">
  <h4 id="fat">@fat</h4>
  <p>...</p>
  <h4 id="mdo">@mdo</h4>
  <p>...</p>
  <h4 id="one">один</h4>
  <p>...</p>
  <h4 id="two">два</h4>
  <p>...</p>
  <h4 id="three">три</h4>
  <p>...</p>
</div>
```

## Пример с вложенной навигацией

Отслеживание прокрутки также работает с вложенными `.nav`. Если вложенный `.nav` имеет значение `.active`, его родители также будут `.active`. Прокрутите область рядом с панелью навигации и посмотрите, как меняется активный класс.

<div class="bd-example">
  <div class="row">
    <div class="col-4">
      <nav id="navbar-example3" class="navbar navbar-light bg-light flex-column">
        <a class="navbar-brand" href="#">Панель навигации</a>
        <nav class="nav nav-pills flex-column">
          <a class="nav-link" href="#item-1">Элемент 1</a>
          <nav class="nav nav-pills flex-column">
            <a class="nav-link ms-3 my-1" href="#item-1-1">Элемент 1-1</a>
            <a class="nav-link ms-3 my-1" href="#item-1-2">Элемент 1-2</a>
          </nav>
          <a class="nav-link" href="#item-2">Элемент 2</a>
          <a class="nav-link" href="#item-3">Элемент 3</a>
          <nav class="nav nav-pills flex-column">
            <a class="nav-link ms-3 my-1" href="#item-3-1">Элемент 3-1</a>
            <a class="nav-link ms-3 my-1" href="#item-3-2">Элемент 3-2</a>
          </nav>
        </nav>
      </nav>
    </div>
    <div class="col-8">
      <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-offset="0" class="scrollspy-example-2" tabindex="0">
        <h4 id="item-1">Элемент 1</h4>
        <p>Ex consequat commodo adipisicing exercitation aute excepteur occaecat ullamco duis aliqua id magna ullamco eu. Do aute ipsum ipsum ullamco cillum consectetur ut et aute consectetur labore. Fugiat laborum incididunt tempor eu consequat enim dolore proident. Qui laborum do non excepteur nulla magna eiusmod consectetur in. Aliqua et aliqua officia quis et incididunt voluptate non anim reprehenderit adipisicing dolore ut consequat deserunt mollit dolore. Aliquip nulla enim veniam non fugiat id cupidatat nulla elit cupidatat commodo velit ut eiusmod cupidatat elit dolore.</p>
        <h5 id="item-1-1">Элемент 1-1</h5>
        <p>Amet tempor mollit aliquip pariatur excepteur commodo do ea cillum commodo Lorem et occaecat elit qui et. Aliquip labore ex ex esse voluptate occaecat Lorem ullamco deserunt. Aliqua cillum excepteur irure consequat id quis ea. Sit proident ullamco aute magna pariatur nostrud labore. Reprehenderit aliqua commodo eiusmod aliquip est do duis amet proident magna consectetur consequat eu commodo fugiat non quis. Enim aliquip exercitation ullamco adipisicing voluptate excepteur minim exercitation minim minim commodo adipisicing exercitation officia nisi adipisicing. Anim id duis qui consequat labore adipisicing sint dolor elit cillum anim et fugiat.</p>
        <h5 id="item-1-2">Элемент 1-2</h5>
        <p>Cillum nisi deserunt magna eiusmod qui eiusmod velit voluptate pariatur laborum sunt enim. Irure laboris mollit consequat incididunt sint et culpa culpa incididunt adipisicing magna magna occaecat. Nulla ipsum cillum eiusmod sint elit excepteur ea labore enim consectetur in labore anim. Proident ullamco ipsum esse elit ut Lorem eiusmod dolor et eiusmod. Anim occaecat nulla in non consequat eiusmod velit incididunt.</p>
        <h4 id="item-2">Элемент 2</h4>
        <p>Quis magna Lorem anim amet ipsum do mollit sit cillum voluptate ex nulla tempor. Laborum consequat non elit enim exercitation cillum aliqua consequat id aliqua. Esse ex consectetur mollit voluptate est in duis laboris ad sit ipsum anim Lorem. Incididunt veniam velit elit elit veniam Lorem aliqua quis ullamco deserunt sit enim elit aliqua esse irure. Laborum nisi sit est tempor laborum mollit labore officia laborum excepteur commodo non commodo dolor excepteur commodo. Ipsum fugiat ex est consectetur ipsum commodo tempor sunt in proident.</p>
        <h4 id="item-3">Элемент 3</h4>
        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
        <h5 id="item-3-1">Элемент 3-1</h5>
        <p>Deserunt quis elit Lorem eiusmod amet enim enim amet minim Lorem proident nostrud. Ea id dolore anim exercitation aute fugiat labore voluptate cillum do laboris labore. Ex velit exercitation nisi enim labore reprehenderit labore nostrud ut ut. Esse officia sunt duis aliquip ullamco tempor eiusmod deserunt irure nostrud irure. Ullamco proident veniam laboris ea consectetur magna sunt ex exercitation aliquip minim enim culpa occaecat exercitation. Est tempor excepteur aliquip laborum consequat do deserunt laborum esse eiusmod irure proident ipsum esse qui.</p>
        <h5 id="item-3-2">Элемент 3-2</h5>
        <p>Labore sit culpa commodo elit adipisicing sit aliquip elit proident voluptate minim mollit nostrud aute reprehenderit do. Mollit excepteur eu Lorem ipsum anim commodo sint labore Lorem in exercitation velit incididunt. Occaecat consectetur nisi in occaecat proident minim enim sunt reprehenderit exercitation cupidatat et do officia. Aliquip consequat ad labore labore mollit ut amet. Sit pariatur tempor proident in veniam culpa aliqua excepteur elit magna fugiat eiusmod amet officia.</p>
      </div>
    </div>
  </div>
</div>

```html
<nav id="navbar-example3" class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">Панель навигации</a>
  <nav class="nav nav-pills flex-column">
    <a class="nav-link" href="#item-1">Элемент 1</a>
    <nav class="nav nav-pills flex-column">
      <a class="nav-link ms-3 my-1" href="#item-1-1">Элемент 1-1</a>
      <a class="nav-link ms-3 my-1" href="#item-1-2">Элемент 1-2</a>
    </nav>
    <a class="nav-link" href="#item-2">Элемент 2</a>
    <a class="nav-link" href="#item-3">Элемент 3</a>
    <nav class="nav nav-pills flex-column">
      <a class="nav-link ms-3 my-1" href="#item-3-1">Элемент 3-1</a>
      <a class="nav-link ms-3 my-1" href="#item-3-2">Элемент 3-2</a>
    </nav>
  </nav>
</nav>

<div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-offset="0" tabindex="0">
  <h4 id="item-1">Элемент 1</h4>
  <p>...</p>
  <h5 id="item-1-1">Элемент 1-1</h5>
  <p>...</p>
  <h5 id="item-1-2">Элемент 1-2</h5>
  <p>...</p>
  <h4 id="item-2">Элемент 2</h4>
  <p>...</p>
  <h4 id="item-3">Элемент 3</h4>
  <p>...</p>
  <h5 id="item-3-1">Элемент 3-1</h5>
  <p>...</p>
  <h5 id="item-3-2">Элемент 3-2</h5>
  <p>...</p>
</div>
```

## Пример со списком-группой

Отслеживание прокрутки также работает с `.list-group`. Прокрутите область рядом с группой списка и посмотрите, как меняется активный класс.

<div class="bd-example">
  <div class="row">
    <div class="col-4">
      <div id="list-example" class="list-group">
        <a class="list-group-item list-group-item-action" href="#list-item-1">Элемент 1</a>
        <a class="list-group-item list-group-item-action" href="#list-item-2">Элемент 2</a>
        <a class="list-group-item list-group-item-action" href="#list-item-3">Элемент 3</a>
        <a class="list-group-item list-group-item-action" href="#list-item-4">Элемент 4</a>
      </div>
    </div>
    <div class="col-8">
      <div data-bs-spy="scroll" data-bs-target="#list-example" data-bs-offset="0" class="scrollspy-example" tabindex="0">
        <h4 id="list-item-1">Элемент 1</h4>
        <p>Ex consequat commodo adipisicing exercitation aute excepteur occaecat ullamco duis aliqua id magna ullamco eu. Do aute ipsum ipsum ullamco cillum consectetur ut et aute consectetur labore. Fugiat laborum incididunt tempor eu consequat enim dolore proident. Qui laborum do non excepteur nulla magna eiusmod consectetur in. Aliqua et aliqua officia quis et incididunt voluptate non anim reprehenderit adipisicing dolore ut consequat deserunt mollit dolore. Aliquip nulla enim veniam non fugiat id cupidatat nulla elit cupidatat commodo velit ut eiusmod cupidatat elit dolore.</p>
        <h4 id="list-item-2">Элемент 2</h4>
        <p>Quis magna Lorem anim amet ipsum do mollit sit cillum voluptate ex nulla tempor. Laborum consequat non elit enim exercitation cillum aliqua consequat id aliqua. Esse ex consectetur mollit voluptate est in duis laboris ad sit ipsum anim Lorem. Incididunt veniam velit elit elit veniam Lorem aliqua quis ullamco deserunt sit enim elit aliqua esse irure. Laborum nisi sit est tempor laborum mollit labore officia laborum excepteur commodo non commodo dolor excepteur commodo. Ipsum fugiat ex est consectetur ipsum commodo tempor sunt in proident.</p>
        <h4 id="list-item-3">Элемент 3</h4>
        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
        <h4 id="list-item-4">Элемент 4</h4>
        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
      </div>
    </div>
  </div>
</div>

```html
<div id="list-example" class="list-group">
  <a class="list-group-item list-group-item-action" href="#list-item-1">Элемент 1</a>
  <a class="list-group-item list-group-item-action" href="#list-item-2">Элемент 2</a>
  <a class="list-group-item list-group-item-action" href="#list-item-3">Элемент 3</a>
  <a class="list-group-item list-group-item-action" href="#list-item-4">Элемент 4</a>
</div>
<div data-bs-spy="scroll" data-bs-target="#list-example" data-bs-offset="0" class="scrollspy-example" tabindex="0">
  <h4 id="list-item-1">Элемент 1</h4>
  <p>...</p>
  <h4 id="list-item-2">Элемент 2</h4>
  <p>...</p>
  <h4 id="list-item-3">Элемент 3</h4>
  <p>...</p>
  <h4 id="list-item-4">Элемент 4</h4>
  <p>...</p>
</div>
```


## Использование

### Через атрибуты данных

Чтобы легко добавить поведение прокрутки к Вашей навигации на верхней панели, добавьте `data-bs-spy="scroll"` к элементу, за которым Вы хотите следить (чаще всего это `<body>`). Затем добавьте атрибут `data-bs-target` с идентификатором или классом родительского элемента любого компонента Bootstrap `.nav`.

```css
body {
  position: relative;
}
```

```html
<body data-bs-spy="scroll" data-bs-target="#navbar-example">
  ...
  <div id="navbar-example">
    <ul class="nav nav-tabs" role="tablist">
      ...
    </ul>
  </div>
  ...
</body>
```

### Через JavaScript

После добавления `position: relative;` в Ваш CSS вызовите scrollspy через JavaScript:

```js
var scrollSpy = new bootstrap.ScrollSpy(document.body, {
  target: '#navbar-example'
})
```

{{< callout danger >}}
#### Требуются разрешаемые цели Идентификатора

Ссылки навигационной панели должны иметь разрешаемые идентификаторы. Например, `<a href="#home">home</a>` должен соответствовать чему-то в DOM, например, `<div id="home"></div>`.
{{< /callout >}}

{{< callout info >}}
#### Невидимые целевые элементы игнорируются

Целевые элементы, которые не видны, будут игнорироваться, а соответствующие им элементы навигации никогда не будут выделены.
{{< /callout >}}

### Методы

#### refresh

При использовании отслеживания прокрутки в сочетании с добавлением или удалением элементов из DOM Вам необходимо вызвать метод обновления следующим образом:

```js
var dataSpyList = [].slice.call(document.querySelectorAll('[data-bs-spy="scroll"]'))
dataSpyList.forEach(function (dataSpyEl) {
  bootstrap.ScrollSpy.getInstance(dataSpyEl)
    .refresh()
})
```

#### dispose

Уничтожает отслеживание прокрутки элемента. (Удаляет сохраненные данные в элементе DOM)

#### getInstance

*Статический* метод, позволяющий получить экземпляр отслеживание прокрутки, связанный с элементом DOM.

```js
var scrollSpyContentEl = document.getElementById('content')
var scrollSpy = bootstrap.ScrollSpy.getInstance(scrollSpyContentEl) // Returns a Bootstrap scrollspy instance
```

### Параметры

Параметры могут передаваться через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-bs-`, как в `data-bs-offset=""`.

<table class="table">
  <thead>
    <tr>
      <th style="width: 100px;">Наименование</th>
      <th style="width: 100px;">Тип</th>
      <th style="width: 50px;">По умочланию</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>offset</code></td>
      <td>number</td>
      <td><code>10</code></td>
      <td>Пиксели для смещения сверху при вычислении положения прокрутки.</td>
    </tr>
    <tr>
      <td><code>method</code></td>
      <td>string</td>
      <td><code>auto</code></td>
      <td>Находит, в каком разделе находится отслеживаемый элемент. <code>auto</code> выберет лучший метод для получения координат прокрутки. <code>offset</code> будет использовать <a href="https://developer.mozilla.org/en-US/docs/Web/API/Element/getBoundingClientRect"><code>Element.getBoundingClientRect()</code></a> для получения координат прокрутки. <code>position</code> будет использовать <a href="https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/offsetTop"><code>HTMLElement.offsetTop</code></a> and <a href="https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/offsetLeft"><code>HTMLElement.offsetLeft</code></a> свойства для получения координат прокрутки.</td>
    </tr>
    <tr>
      <td><code>target</code></td>
      <td>string | jQuery object | DOM element</td>
      <td></td>
      <td>Определяет элемент для применения подключаемого модуля Отслеживания прокрутки.</td>
    </tr>
  </tbody>
</table>

### События

<table class="table">
  <thead>
    <tr>
      <th style="width: 150px;">Тип события</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>activate.bs.scrollspy</code></td>
      <td>Это событие запускается в элементе прокрутки всякий раз, когда новый элемент активируется отслеживанием прокрутки.</td>
    </tr>
  </tbody>
</table>

```js
var firstScrollSpyEl = document.querySelector('[data-bs-spy="scroll"]')
firstScrollSpyEl.addEventListener('activate.bs.scrollspy', function () {
  // сделайте что-нибудь...
})
```
