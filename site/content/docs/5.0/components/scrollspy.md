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
        <a class="nav-link" href="#scrollspyHeading1">Первый</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#scrollspyHeading2">Второй</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Выпадающий список</a>
        <ul class="dropdown-menu">
          <li><a class="dropdown-item" href="#scrollspyHeading3">Третий</a></li>
          <li><a class="dropdown-item" href="#scrollspyHeading4">Четвертый</a></li>
          <li><hr class="dropdown-divider"></li>
          <li><a class="dropdown-item" href="#scrollspyHeading5">Пятый</a></li>
        </ul>
      </li>
    </ul>
  </nav>
  <div data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-offset="0" class="scrollspy-example" tabindex="0">
    <h4 id="scrollspyHeading1">Первый заголовок</h4>
    <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
    <h4 id="scrollspyHeading2">Второй заголовок</h4>
    <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
    <h4 id="scrollspyHeading3">Третий заголовок</h4>
    <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
    <h4 id="scrollspyHeading4">Четвертый заголовок</h4>
    <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
    <h4 id="scrollspyHeading5">Пятый заголовок</h4>
    <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
  </div>
</div>

```html
<nav id="navbar-example2" class="navbar navbar-light bg-light px-3">
  <a class="navbar-brand" href="#">Панель навигации</a>
  <ul class="nav nav-pills">
    <li class="nav-item">
      <a class="nav-link" href="#scrollspyHeading1">Первый</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#scrollspyHeading2">Второй</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Выпадающий список</a>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#scrollspyHeading3">Третий</a></li>
        <li><a class="dropdown-item" href="#scrollspyHeading4">Четвертый</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="#scrollspyHeading5">Пятый</a></li>
      </ul>
    </li>
  </ul>
</nav>
<div data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-offset="0" class="scrollspy-example" tabindex="0">
  <h4 id="scrollspyHeading1">Первый заголовок</h4>
  <p>...</p>
  <h4 id="scrollspyHeading2">Второй заголовок</h4>
  <p>...</p>
  <h4 id="scrollspyHeading3">Третий заголовок</h4>
  <p>...</p>
  <h4 id="scrollspyHeading4">Четвертый заголовок</h4>
  <p>...</p>
  <h4 id="scrollspyHeading5">Пятый заголовок</h4>
  <p>...</p>
</div>
```

## Пример с вложенной навигацией

Отслеживание прокрутки также работает с вложенными `.nav`. Если вложенный `.nav` имеет значение `.active`, его родители также будут `.active`. Прокрутите область рядом с панелью навигации и посмотрите, как меняется активный класс.

<div class="bd-example">
  <div class="row">
    <div class="col-4">
      <nav id="navbar-example3" class="navbar navbar-light bg-light flex-column align-items-stretch p-3">
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
        <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h5 id="item-1-1">Элемент 1-1</h5>
        <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h5 id="item-1-2">Элемент 1-2</h5>
        <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h4 id="item-2">Элемент 2</h4>
        <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h4 id="item-3">Элемент 3</h4>
        <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h5 id="item-3-1">Элемент 3-1</h5>
        <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h5 id="item-3-2">Элемент 3-2</h5>
        <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
      </div>
    </div>
  </div>
</div>

```html
<nav id="navbar-example3" class="navbar navbar-light bg-light flex-column align-items-stretch p-3">
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
        <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h4 id="list-item-2">Элемент 2</h4>
        <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h4 id="list-item-3">Элемент 3</h4>
        <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h4 id="list-item-4">Элемент 4</h4>
        <p>Это некий заполнитель для страницы с прокруткой. Обратите внимание, что при прокрутке страницы вниз соответствующая ссылка навигации выделяется. Это повторяется на протяжении всего примера компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
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

Ссылки навигационной панели должны иметь разрешаемые идентификаторы. Например, `<a href="#home">Главная</a>` должен соответствовать чему-то в DOM, например, `<div id="home"></div>`.
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
