---
layout: docs
title: Отслеживание прокрутки
description: Автоматически обновляйте элементы навигации Bootstrap или группы списков в зависимости от положения прокрутки, чтобы указать, какая ссылка в данный момент активна в области просмотра.
group: components
toc: true
---

## Как это устроено

Scrollspy переключает класс `.active` для элементов привязки (`<a>`), когда элемент с `id`, на который ссылается `href` прокручивается в поле зрения. Scrollspy лучше всего использовать вместе с Bootstrap [компонент навигации]({{< docsref "/components/navs-tabs" >}}) или [группа списка]({{< docsref "/components/list-group" >}}), но он также будет работать с любыми якорными элементами на текущей странице. Вот как это работает.

- Для запуска scrollspy требуется две вещи: навигация, группа списков или простой набор ссылок, а также прокручиваемый контейнер. Прокручиваемый контейнер может быть `<body>` или пользовательским элементом с установленными `height` и `overflow-y: scroll`.

- В прокручиваемом контейнере добавьте `data-bs-spy="scroll"` и `data-bs-target="#navId"`, где `navId` — это уникальный `id` соответствующей навигации. Если внутри элемента нет фокусируемого элемента, не забудьте также включить `tabindex="0"`, чтобы обеспечить доступ с клавиатуры.

- Когда вы прокручиваете «шпионский» контейнер, класс `.active` добавляется и удаляется из якорных ссылок в соответствующей навигации. Ссылки должны иметь разрешимые цели `id`, в противном случае они игнорируются. Например, `<a href="#home">Главная</a>` должна соответствовать чему-то в DOM, например, `<div id="home"></div>`

- Целевые элементы, которые не видны, будут игнорироваться. Смотрите раздел [Невидимые элементы](#non-visible-elements) ниже.

## Примеры

### Панель навигации

Прокрутите область под панелью навигации и посмотрите, как меняется активный класс. Откройте раскрывающееся меню и посмотрите, как будут выделены элементы раскрывающегося списка.

<div class="bd-example">
  <nav id="navbar-example2" class="navbar bg-body-tertiary px-3 mb-3 rounded-2">
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
  <div class="scrollspy-example bg-body-tertiary p-3 rounded-2" data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-root-margin="0px 0px -40%" data-bs-smooth-scroll="true" tabindex="0">
    <h4 id="scrollspyHeading1">Первый заголовок</h4>
    <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
    <h4 id="scrollspyHeading2">Второй заголовок</h4>
    <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
    <h4 id="scrollspyHeading3">Третий заголовок</h4>
    <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
    <h4 id="scrollspyHeading4">Четвертый заголовок</h4>
    <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
    <h4 id="scrollspyHeading5">Пятый заголовок</h4>
    <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
  </div>
</div>

```html
<nav id="navbar-example2" class="navbar bg-body-tertiary px-3 mb-3">
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
<div data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-root-margin="0px 0px -40%" data-bs-smooth-scroll="true" class="scrollspy-example bg-body-tertiary p-3 rounded-2" tabindex="0">
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

### Вложенная навигация

Отслеживание прокрутки также работает с вложенными `.nav`. Если вложенный `.nav` имеет значение `.active`, его родители также будут `.active`. Прокрутите область рядом с панелью навигации и посмотрите, как меняется активный класс.

<div class="bd-example">
  <div class="row">
    <div class="col-4">
      <nav id="navbar-example3" class="h-100 flex-column align-items-stretch pe-4 border-end">
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
      <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true" class="scrollspy-example-2" tabindex="0">
        <div id="item-1">
          <h4>Элемент 1</h4>
          <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
          <p>Имейте в виду, что плагин JavaScript пытается выбрать правильный элемент среди всех видимых. Несколько видимых целей scrollspy одновременно могут вызвать некоторые проблемы.</p>
        </div>
        <div id="item-1-1">
          <h5>Элемент 1-1</h5>
          <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
          <p>Имейте в виду, что плагин JavaScript пытается выбрать правильный элемент среди всех видимых. Несколько видимых целей scrollspy одновременно могут вызвать некоторые проблемы.</p>
        </div>
        <div id="item-1-2">
          <h5>Элемент 1-2</h5>
          <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
          <p>Имейте в виду, что плагин JavaScript пытается выбрать правильный элемент среди всех видимых. Несколько видимых целей scrollspy одновременно могут вызвать некоторые проблемы.</p>
        </div>
        <div id="item-2">
          <h4>Элемент 2</h4>
          <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
          <p>Имейте в виду, что плагин JavaScript пытается выбрать правильный элемент среди всех видимых. Несколько видимых целей scrollspy одновременно могут вызвать некоторые проблемы.</p>
        </div>
        <div id="item-3">
          <h4>Элемент 3</h4>
          <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
          <p>Имейте в виду, что плагин JavaScript пытается выбрать правильный элемент среди всех видимых. Несколько видимых целей scrollspy одновременно могут вызвать некоторые проблемы.</p>
        </div>
        <div id="item-3-1">
          <h5>Элемент 3-1</h5>
          <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
          <p>Имейте в виду, что плагин JavaScript пытается выбрать правильный элемент среди всех видимых. Несколько видимых целей scrollspy одновременно могут вызвать некоторые проблемы.</p>
        </div>
        <div id="item-3-2">
          <h5>Элемент 3-2</h5>
          <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
          <p>Имейте в виду, что плагин JavaScript пытается выбрать правильный элемент среди всех видимых. Несколько видимых целей scrollspy одновременно могут вызвать некоторые проблемы.</p>
        </div>
      </div>
    </div>
  </div>
</div>

```html
<div class="row">
  <div class="col-4">
    <nav id="navbar-example3" class="h-100 flex-column align-items-stretch pe-4 border-end">
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
    <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true" class="scrollspy-example-2" tabindex="0">
      <div id="item-1">
        <h4>Элемент 1</h4>
        <p>...</p>
      </div>
      <div id="item-1-1">
        <h5>Элемент 1-1</h5>
        <p>...</p>
      </div>
      <div id="item-1-2">
        <h5>Элемент 1-2</h5>
        <p>...</p>
      </div>
      <div id="item-2">
        <h4>Элемент 2</h4>
        <p>...</p>
      </div>
      <div id="item-3">
        <h4>Элемент 3</h4>
        <p>...</p>
      </div>
      <div id="item-3-1">
        <h5>Элемент 3-1</h5>
        <p>...</p>
      </div>
      <div id="item-3-2">
        <h5>Элемент 3-2</h5>
        <p>...</p>
      </div>
    </div>
  </div>
</div>
```

### Группа списка

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
      <div data-bs-spy="scroll" data-bs-target="#list-example" data-bs-smooth-scroll="true" class="scrollspy-example" tabindex="0">
        <h4 id="list-item-1">Элемент 1</h4>
        <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h4 id="list-item-2">Элемент 2</h4>
        <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h4 id="list-item-3">Элемент 3</h4>
        <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h4 id="list-item-4">Элемент 4</h4>
        <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
      </div>
    </div>
  </div>
</div>

```html
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
    <div data-bs-spy="scroll" data-bs-target="#list-example" data-bs-smooth-scroll="true" class="scrollspy-example" tabindex="0">
      <h4 id="list-item-1">Элемент 1</h4>
      <p>...</p>
      <h4 id="list-item-2">Элемент 2</h4>
      <p>...</p>
      <h4 id="list-item-3">Элемент 3</h4>
      <p>...</p>
      <h4 id="list-item-4">Элемент 4</h4>
      <p>...</p>
    </div>
  </div>
</div>
```

### Простые якоря

Scrollspy не ограничивается компонентами навигации и группами списков, поэтому он будет работать с любыми якорными элементами `<a>` в текущем документе. Прокрутите область и посмотрите, как изменится класс `.active`.

<div class="bd-example">
  <div class="row">
    <div class="col-4">
      <div id="simple-list-example" class="d-flex flex-column gap-2 simple-list-example-scrollspy text-center">
        <a class="p-1 rounded" href="#simple-list-item-1">Элемент 1</a>
        <a class="p-1 rounded" href="#simple-list-item-2">Элемент 2</a>
        <a class="p-1 rounded" href="#simple-list-item-3">Элемент 3</a>
        <a class="p-1 rounded" href="#simple-list-item-4">Элемент 4</a>
        <a class="p-1 rounded" href="#simple-list-item-5">Элемент 5</a>
      </div>
    </div>
    <div class="col-8">
      <div data-bs-spy="scroll" data-bs-target="#simple-list-example" data-bs-offset="0" data-bs-smooth-scroll="true" class="scrollspy-example" tabindex="0">
        <h4 id="simple-list-item-1">Элемент 1</h4>
        <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h4 id="simple-list-item-2">Элемент 2</h4>
        <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h4 id="simple-list-item-3">Элемент 3</h4>
        <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h4 id="simple-list-item-4">Элемент 4</h4>
        <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
        <h4 id="simple-list-item-5">Элемент 5</h4>
        <p>Это некоторый заполнитель для страницы scrollspy. Обратите внимание, что при прокрутке страницы соответствующая навигационная ссылка выделяется. Это повторяется во всем примере компонента. Мы продолжаем добавлять сюда еще несколько примеров, чтобы подчеркнуть прокрутку и выделение.</p>
      </div>
    </div>
  </div>
</div>

```html
<div class="row">
  <div class="col-4">
    <div id="simple-list-example" class="d-flex flex-column gap-2 simple-list-example-scrollspy text-center">
      <a class="p-1 rounded" href="#simple-list-item-1">Элемент 1</a>
      <a class="p-1 rounded" href="#simple-list-item-2">Элемент 2</a>
      <a class="p-1 rounded" href="#simple-list-item-3">Элемент 3</a>
      <a class="p-1 rounded" href="#simple-list-item-4">Элемент 4</a>
      <a class="p-1 rounded" href="#simple-list-item-5">Элемент 5</a>
    </div>
  </div>
  <div class="col-8">
    <div data-bs-spy="scroll" data-bs-target="#simple-list-example" data-bs-offset="0" data-bs-smooth-scroll="true" class="scrollspy-example" tabindex="0">
      <h4 id="simple-list-item-1">Элемент 1</h4>
      <p>...</p>
      <h4 id="simple-list-item-2">Элемент 2</h4>
      <p>...</p>
      <h4 id="simple-list-item-3">Элемент 3</h4>
      <p>...</p>
      <h4 id="simple-list-item-4">Элемент 4</h4>
      <p>...</p>
      <h4 id="simple-list-item-5">Элемент 5</h4>
      <p>...</p>
    </div>
  </div>
</div>
```

## Невидимые элементы

Невидимые целевые элементы будут игнорироваться, а соответствующие им элементы навигации не получат класс `.active`. Экземпляры Scrollspy, инициализированные в невидимой оболочке, будут игнорировать все целевые элементы. Используйте метод `refresh` для проверки наблюдаемых элементов, как только оболочка станет видимой.

```js
document.querySelectorAll('#nav-tab>[data-bs-toggle="tab"]').forEach(el => {
  el.addEventListener('shown.bs.tab', () => {
    const target = el.getAttribute('data-bs-target')
    const scrollElem = document.querySelector(`${target} [data-bs-spy="scroll"]`)
    bootstrap.ScrollSpy.getOrCreateInstance(scrollElem).refresh()
  })
})
```

## Использование

### Через атрибуты данных

Чтобы легко добавить поведение прокрутки в навигацию верхней панели, добавьте `data-bs-spy="scroll"` к элементу, за которым вы хотите следить (чаще всего это будет `<body>`). Затем добавьте атрибут `data-bs-target` с `id` или именем класса родительского элемента любого компонента Bootstrap `.nav`.

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

```js
const scrollSpy = new bootstrap.ScrollSpy(document.body, {
  target: '#navbar-example'
})
```

### Опции

{{< markdown >}}
{{< partial "js-data-attributes.md" >}}
{{< /markdown >}}

{{< bs-table "table" >}}
| Название | Тип | По умолчанию | Описание |
| --- | --- | --- | --- |
| `rootMargin` | string | `0px 0px -25%` | Intersection Observer [rootMargin](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver/rootMargin) допустимые единицы измерения при расчете положения прокрутки. |
| `smoothScroll` | boolean | `false` | Включает плавную прокрутку, когда пользователь нажимает на ссылку, которая ссылается на наблюдаемые объекты ScrollSpy. |
| `target` | string \| jQuery object \| DOM элемент |  | Указывает элемент для применения плагина Scrollspy. |
| `threshold` | array | `[0.1, 0.5, 1]` | `IntersectionObserver` [threshold](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver/IntersectionObserver#threshold) допустимый ввод при вычислении положения прокрутки. |
{{< /bs-table >}}

{{< callout warning >}}
**Устаревшие опции**

Вплоть до версии 5.1.3 мы использовали параметры `offset` и `method`, которые теперь устарели и заменены на `rootMargin`.
Чтобы сохранить обратную совместимость, мы продолжим синтаксический анализ заданного `offset` до `rootMargin`, но эта функция будет удалена в **v6**.
{{< /callout >}}

### Методы

{{< bs-table "table" >}}
| Метод | Описание |
| --- | --- |
| `dispose` | Уничтожает scrollspy элемента. (Удаляет сохраненные данные в элементе DOM). |
| `getInstance` | *Статический* метод для получения экземпляра scrollspy, связанного с элементом DOM. |
| `getOrCreateInstance` | *Статический* метод для получения экземпляра scrollspy, связанного с элементом DOM, или для создания нового экземпляра, если он не был инициализирован. |
| `refresh` | При добавлении или удалении элементов в DOM вам необходимо вызвать метод обновления. |
{{< /bs-table >}}

Вот пример использования метода обновления:

```js
const dataSpyList = document.querySelectorAll('[data-bs-spy="scroll"]')
dataSpyList.forEach(dataSpyEl => {
  bootstrap.ScrollSpy.getInstance(dataSpyEl).refresh()
})
```

### События

{{< bs-table "table" >}}
| Событие | Описание |
| --- | --- |
| `activate.bs.scrollspy` | Это событие срабатывает на элементе прокрутки всякий раз, когда якорь активируется scrollspy. |
{{< /bs-table >}}

```js
const firstScrollSpyEl = document.querySelector('[data-bs-spy="scroll"]')
firstScrollSpyEl.addEventListener('activate.bs.scrollspy', () => {
  // сделайте что-нибудь...
})
```
