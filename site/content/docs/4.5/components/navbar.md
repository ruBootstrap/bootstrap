---
layout: docs
title: Панель навигации
description: Документация и примеры для мощного, отзывчивого навигационного верхнего колонтитула Bootstrap, панели навигации. Включает поддержку брендинга, навигации и т.д., включая поддержку нашего плагина сворачивания.
group: components
toc: true
---

## Как это работает

Вот что Вам нужно знать перед тем, как начать работу с навигационной панелью:

- Панели навигации требуют обертки `.navbar` с `.navbar-expand{-sm|-md|-lg|-xl}` для гибкого сворачивания и классов [цветовой схемы](#цветовые-схемы).
- Панели навигации и их содержимое по умолчанию плавно. Используйте [необязательные контейнеры](#контейнеры), чтобы ограничить их горизонтальную ширину.
- Используйте наши служебные классы [интервалов]({{< docsref "/utilities/spacing" >}}) и [flex]({{< docsref "/utilities/flex" >}}) для управления интервалом и выравниванием внутри навигационных панелей.
- Панели навигации по умолчанию адаптивны, но Вы можете легко изменить их, чтобы это изменить. Адаптивное поведение зависит от нашего Collapse-плагина JavaScript.
- Навигационные панели по умолчанию скрыты при печати. Заставьте их печатать, добавив `.d-print` к `.navbar`. См. класс утилиты [отображения]({{< docsref "/utilities/display" >}}).
- Обеспечьте доступность с помощью элемента `<nav>` или, если используется более общий элемент, такой как `<div>`, добавьте `role="navigation"` к каждой панели навигации, чтобы явно идентифицировать ее как ориентир для пользователи вспомогательных технологий.

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

## Поддерживаемый контент

Навигационные панели имеют встроенную поддержку нескольких подкомпонентов. При необходимости выберите из следующего:

- `.navbar-brand` для названия Вашей компании, продукта или проекта.
- `.navbar-nav` для полноразмерной и облегченной навигации (включая поддержку раскрывающихся списков).
- `.navbar-toggler` для использования с нашим плагином сворачивания и другими поведениями [переключение навигации](#отзывчивое-поведение).
- `.form-inline` для любых элементов управления и действий формы.
- `.navbar-text` для добавления вертикально центрированных строк текста.
- `.collapse.navbar-collapse` для группировки и скрытия содержимого навигационной панели по родительской контрольной точке.

Вот пример всех подкомпонентов, включенных в адаптивную световую навигационную панель, которая автоматически сворачивается в контрольной точке `lg` (большая).

{{< example >}}
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Панель навигации</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Переключатель навигации">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Главная <span class="sr-only">(текущая)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Ссылка</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Выпадающий список
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Действие</a>
          <a class="dropdown-item" href="#">Другое действие</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Что-то еще здесь</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенный</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Поиск" aria-label="Поиск">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Поиск</button>
    </form>
  </div>
</nav>
{{< /example >}}

В этом примере используются классы утилит [цвет]({{< docsref "/utilities/colors" >}}) (`bg-light`) и [интервал]({{< docsref "/utilities/spacing" >}}) (`my-2`, `my-lg-0`, `mr-sm-0`, `my-sm-0`).

### Бренд

`.navbar-brand` может применяться к большинству элементов, но якорь работает лучше всего, поскольку для некоторых элементов могут потребоваться служебные классы или пользовательские стили.

{{< example >}}
<!-- As a link -->
<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">Панель навигации</a>
</nav>

<!-- As a heading -->
<nav class="navbar navbar-light bg-light">
  <span class="navbar-brand mb-0 h1">Панель навигации</span>
</nav>
{{< /example >}}

Добавление изображений в `.navbar-brand`, скорее всего, всегда потребует настраиваемых стилей или утилит для правильного размера. Вот несколько примеров для демонстрации.

{{< example >}}
<!-- Просто изображение -->
<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">
    <img src="/docs/{{< param docs_version >}}/assets/brand/bootstrap-solid.svg" width="30" height="30" alt="">
  </a>
</nav>
{{< /example >}}

{{< example >}}
<!-- Изображение и текст -->
<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">
    <img src="/docs/{{< param docs_version >}}/assets/brand/bootstrap-solid.svg" width="30" height="30" class="d-inline-block align-top" alt="">
    Bootstrap
  </a>
</nav>
{{< /example >}}

### Навигация

Навигационные ссылки на панели навигации основаны на наших параметрах `.nav` с их собственным классом-модификатором и требуют использования [классов переключателя](#переключатель) для правильного адаптивного стиля. **Навигация в навигационных панелях также будет увеличиваться, чтобы занимать как можно больше горизонтального пространства**, чтобы содержимое Вашей навигационной панели было надежно выровнено.

Активные состояния - с `.active` - для обозначения, что текущая страница может быть применена непосредственно к `.nav-link` или их непосредственному родительскому `.nav-item`.

{{< example >}}
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Панель навигации</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Переключатель навигации">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Главная <span class="sr-only">(текущая)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Функции</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Цены</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенный</a>
      </li>
    </ul>
  </div>
</nav>
{{< /example >}}

А поскольку мы используем классы для нашей навигации, Вы можете полностью отказаться от подхода на основе списков, если хотите.

{{< example >}}
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Панель навигации</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Переключатель навигации">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-link active" href="#">Главная <span class="sr-only">(текущая)</span></a>
      <a class="nav-link" href="#">Функции</a>
      <a class="nav-link" href="#">Цены</a>
      <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенный</a>
    </div>
  </div>
</nav>
{{< /example >}}

Вы также можете использовать раскрывающиеся списки на панели навигации. Для размещения раскрывающихся меню требуется элемент оболочки, поэтому обязательно используйте отдельные и вложенные элементы для `.nav-item` и `.nav-link`, как показано ниже.

{{< example >}}
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Панель навигации</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Переключатель навигации">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Главная <span class="sr-only">(текущая)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Функции</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Цены</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Ссылка выпадающий список
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Действие</a>
          <a class="dropdown-item" href="#">Другое действие</a>
          <a class="dropdown-item" href="#">Что-то еще здесь</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
{{< /example >}}

### Формы

Размещайте различные элементы управления и компоненты форм на панели навигации с помощью `.form-inline`.

{{< example >}}
<nav class="navbar navbar-light bg-light">
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Поиск" aria-label="Поиск">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Поиск</button>
  </form>
</nav>
{{< /example >}}

Непосредственные дочерние элементы `.navbar` используют гибкий макет и по умолчанию будут `justify-content: space-between`. При необходимости используйте дополнительные [флекс утилиты]({{< docsref "/utilities/flex" >}}) для настройки этого поведения.

{{< example >}}
<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand">Панель навигации</a>
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Поиск" aria-label="Поиск">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Поиск</button>
  </form>
</nav>
{{< /example >}}

Группы ввода тоже работают:

{{< example >}}
<nav class="navbar navbar-light bg-light">
  <form class="form-inline">
    <div class="input-group">
      <div class="input-group-prepend">
        <span class="input-group-text" id="basic-addon1">@</span>
      </div>
      <input type="text" class="form-control" placeholder="Имя пользователя" aria-label="Имя пользователя" aria-describedby="basic-addon1">
    </div>
  </form>
</nav>
{{< /example >}}

В составе этих форм навигационной панели также поддерживаются различные кнопки. Это также отличное напоминание о том, что утилиты вертикального выравнивания можно использовать для выравнивания элементов разного размера.

{{< example >}}
<nav class="navbar navbar-light bg-light">
  <form class="form-inline">
    <button class="btn btn-outline-success" type="button">Главная кнопка</button>
    <button class="btn btn-sm btn-outline-secondary" type="button">Маленькая кнопка</button>
  </form>
</nav>
{{< /example >}}

### Текст

Панели навигации могут содержать фрагменты текста с помощью `.navbar-text`. Этот класс регулирует вертикальное выравнивание и горизонтальный интервал для строк текста.

{{< example >}}
<nav class="navbar navbar-light bg-light">
  <span class="navbar-text">
    Текст на панели навигации со встроенным элементом
  </span>
</nav>
{{< /example >}}

При необходимости смешивайте и сочетайте с другими компонентами и утилитами.

{{< example >}}
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Панель навигации с текстом</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Переключатель навигации">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Главная <span class="sr-only">(текущая)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Функции</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Цены</a>
      </li>
    </ul>
    <span class="navbar-text">
      Текст на панели навигации со встроенным элементом
    </span>
  </div>
</nav>
{{< /example >}}

## Цветовые схемы

Создание тем для панели навигации никогда не было таким простым благодаря комбинации классов тем и утилит `background-color`. Выберите `.navbar-light` для использования со светлыми цветами фона или `.navbar-dark` для темных цветов фона. Затем выполните настройку с помощью утилит `.bg-*`.

<div class="bd-example">
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Панель навигации</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Главная <span class="sr-only">(текущая)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Функции</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Цены</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Информация</a>
        </li>
      </ul>
      <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Поиск" aria-label="Поиск">
        <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Поиск</button>
      </form>
    </div>
  </nav>

  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="#">Панель навигации</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor02">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Главная <span class="sr-only">(текущая)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Функции</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Цены</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Информация</a>
        </li>
      </ul>
      <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Поиск" aria-label="Поиск">
        <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Поиск</button>
      </form>
    </div>
  </nav>

  <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
    <a class="navbar-brand" href="#">Панель навигации</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor03">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Главная <span class="sr-only">(текущая)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Функции</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Цены</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Информация</a>
        </li>
      </ul>
      <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Поиск" aria-label="Поиск">
        <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Поиск</button>
      </form>
    </div>
  </nav>
</div>

```html
<nav class="navbar navbar-dark bg-dark">
  <!-- Контент навигационной панели -->
</nav>

<nav class="navbar navbar-dark bg-primary">
  <!-- Контент навигационной панели -->
</nav>

<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  <!-- Контент навигационной панели -->
</nav>
```

## Контейнеры

Хотя это и не обязательно, Вы можете обернуть панель навигации в `.container`, чтобы центрировать ее на странице. Или Вы можете добавить контейнер внутри `.navbar`, чтобы центрировать только содержимое [фиксированной или статической верхней панели навигации](#размещение).

{{< example >}}
<div class="container">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Панель навигации</a>
  </nav>
</div>
{{< /example >}}

When the container is within your navbar, its horizontal padding is removed at breakpoints lower than your specified `.navbar-expand{-sm|-md|-lg|-xl}` class. This ensures we're not doubling up on padding unnecessarily on lower viewports when your navbar is collapsed.

{{< example >}}
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
    <a class="navbar-brand" href="#">Панель навигации</a>
  </div>
</nav>
{{< /example >}}

## Размещение

Используйте наши [утилиты позиционирования]({{< docsref "/utilities/position" >}}) для размещения панелей навигации в нестатических положениях. Выберите фиксированный вверху, закрепленный внизу или прикрепленный к вершине (прокручивается вместе со страницей, пока не достигнет вершины, а затем остается там). Фиксированные панели навигации используют `position: fixed`, что означает, что они извлекаются из обычного потока DOM и могут потребовать настраиваемого CSS (например, `padding-top` на `<body>`) для предотвращения перекрытия с другими элементами.

Также обратите внимание, что **`.sticky-top` использует `position: sticky`, который [полностью поддерживается не всеми браузерами](https://caniuse.com/css-sticky)**.

{{< example >}}
<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">По умолчанию</a>
</nav>
{{< /example >}}

{{< example >}}
<nav class="navbar fixed-top navbar-light bg-light">
  <a class="navbar-brand" href="#">Зафиксирован вверху</a>
</nav>
{{< /example >}}

{{< example >}}
<nav class="navbar fixed-bottom navbar-light bg-light">
  <a class="navbar-brand" href="#">Зафиксирован внизу</a>
</nav>
{{< /example >}}

{{< example >}}
<nav class="navbar sticky-top navbar-light bg-light">
  <a class="navbar-brand" href="#">Приклеен вверху</a>
</nav>
{{< /example >}}

## Отзывчивое поведение

Панели навигации могут использовать классы `.navbar-toggler`, `.navbar-collapse` и `.navbar-expand{-sm|-md|-lg|-xl}`, чтобы определять, когда их содержимое сворачивается за кнопкой. В сочетании с другими утилитами Вы можете легко выбрать, когда показывать или скрывать определенные элементы.

Для панелей навигации, которые никогда не сворачиваются, добавьте на панель навигации класс `.navbar-expand`. Для панелей навигации, которые всегда сворачиваются, не добавляйте класс `.navbar-expand`.

### Переключатель

Переключатели навигационной панели по умолчанию выровнены по левому краю, но если они следуют за дочерним элементом, таким как `.navbar-brand`, они будут автоматически выровнены по крайнему правому краю. Изменение разметки на противоположное приведет к изменению положения переключателя. Ниже приведены примеры различных стилей переключения.

Если в наименьшей контрольной точке не отображается `.navbar-brand`:

{{< example >}}
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Переключатель навигации">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="#">Скрытый бренд</a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="#">Главная <span class="sr-only">(текущая)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Ссылка</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенный</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Поиск" aria-label="Поиск">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Поиск</button>
    </form>
  </div>
</nav>
{{< /example >}}

С названием бренда слева и переключателем справа:

{{< example >}}
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Панель навигации</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Переключатель навигации">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="#">Главная <span class="sr-only">(текущая)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Ссылка</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенный</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Поиск">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Поиск</button>
    </form>
  </div>
</nav>
{{< /example >}}

С переключателем слева и названием бренда справа:

{{< example >}}
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Переключатель навигации">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">Панель навигации</a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="#">Главная <span class="sr-only">(текущая)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Ссылка</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенный</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Поиск" aria-label="Поиск">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Поиск</button>
    </form>
  </div>
</nav>
{{< /example >}}

### Внешний контент

Иногда Вы хотите использовать плагин свертывания для запуска элемента контейнера для содержимого, структурно расположенного за пределами `.navbar`. Поскольку наш плагин работает с сопоставлением `id` и `data-target`, это легко сделать!

{{< example >}}
<div class="fixed-top">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark p-4">
      <h5 class="text-white h4">Свернутый контент</h5>
      <span class="text-muted">Переключаемый через бренд навигационной панели.</span>
    </div>
  </div>
  <nav class="navbar navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
</div>
{{< /example >}}

При этом мы рекомендуем включить дополнительный JavaScript для программного перемещения фокуса на контейнер при его открытии. В противном случае пользователям клавиатуры и пользователям вспомогательных технологий, вероятно, будет сложно найти вновь обнаруженный контент, особенно если контейнер, который был открыт, находится *перед* переключателем в структуре документа. Мы также рекомендуем убедиться, что у переключателя есть атрибут `aria-controls`, указывающий на `id` контейнера содержимого. Теоретически это позволяет пользователям вспомогательных технологий напрямую переходить от переключателя к контейнеру, который он контролирует, но в настоящее время эта поддержка весьма неоднородна.
