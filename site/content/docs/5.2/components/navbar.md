---
layout: docs
title: Панель навигации
description: Документация и примеры для мощного, отзывчивого навигационного заголовка Bootstrap - навигационной панели. Включает поддержку брендинга, навигации и т.д., Включая поддержку нашего плагина свертывания.
group: components
toc: true
---

## Как это устроено

Вот что вам нужно знать, прежде чем начать работу с навигационной панелью:

- Навигационные панели требуют обертки `.navbar` с `.navbar-expand{-sm|-md|-lg|-xl|-xxl}` для адаптивного свертывания и классов [цветовой схемы](#color-schemes).
- Панели навигации и их содержимое по умолчанию изменчивы. Измените [контейнер](#containers), чтобы по-разному ограничить их ширину по горизонтали.
- Используйте наши классы утилит [spacing]({{< docsref "/utilities/spacing" >}}) и [flex]({{< docsref "/utilities/flex" >}}) для управления интервалами и выравниванием в панелях навигации.
- Панели навигации по умолчанию реагируют, но вы можете легко изменить их, чтобы изменить это. Отзывчивое поведение зависит от нашего подключаемого модуля Collapse JavaScript.
- Обеспечьте доступность с помощью элемента `<nav>` или, при использовании более общего элемента, такого как `<div>`, добавьте `role="navigation"` на каждую панель навигации, чтобы явно идентифицировать ее как область-ориентир для пользователей вспомогательных технологий.
- Укажите текущий элемент, используя `aria-current="page"` для текущей страницы или `aria-current="true"` для текущего элемента в наборе.
- **Новое в версии 5.2.0:** Навигационные панели могут быть оформлены с помощью переменных CSS, которые привязаны к базовому классу `.navbar`. `.navbar-light` устарел, а `.navbar-dark` был переписан для переопределения переменных CSS вместо добавления дополнительных стилей.

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

## Поддерживаемый контент

- `.navbar-brand` для Вашей компании, продукта или названия проекта.
- `.navbar-nav` для полноразмерной и облегченной навигации (включая поддержку раскрывающихся списков).
- `.navbar-toggler` для использования с нашим плагином сворачивания и другими поведениями [переключение навигации](#отзывчивое-поведение).
- Утилиты Flex и Spacing для любых элементов управления и действий формы.
- `.navbar-text` для добавления вертикально центрированных строк текста.
- `.collapse.navbar-collapse` для группировки и скрытия содержимого навигационной панели по родительской контрольной точке.
- Добавьте необязательный `.navbar-scroll`, чтобы установить `max-height` и [прокручивать расширенное содержимое панели навигации](#прокрутка).

Вот пример всех подкомпонентов, включенных в адаптивную светлую навигационную панель, которая автоматически сворачивается в контрольной точке `lg` (большая).

{{< example >}}
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Навбар</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Главная</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Ссылка</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Выпадающий список
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Действие</a></li>
            <li><a class="dropdown-item" href="#">Другое действие</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Отключенная</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Поиск" aria-label="Поиск">
        <button class="btn btn-outline-success" type="submit">Поиск</button>
      </form>
    </div>
  </div>
</nav>
{{< /example >}}

В этом примере используются клссы утилит [фона]({{< docsref "/utilities/background" >}}) (`bg-light`) и [интервала]({{< docsref "/utilities/spacing" >}}) (`me-auto`, `mb-2`, `mb-lg-0`, `me-2`).

### Бренд

`.navbar-brand` может применяться к большинству элементов, но якорь работает лучше всего, поскольку для некоторых элементов могут потребоваться служебные классы или пользовательские стили.

#### Текст

Добавьте свой текст в элемент с помощью класса `.navbar-brand`.

{{< example >}}
<!-- As a link -->
<nav class="navbar bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Панель навигации</a>
  </div>
</nav>

<!-- As a heading -->
<nav class="navbar bg-light">
  <div class="container-fluid">
    <span class="navbar-brand mb-0 h1">Панель навигации</span>
  </div>
</nav>
{{< /example >}}

#### Изображение

Вы можете заменить текст внутри `.navbar-brand` на `<img>`.

{{< example >}}
<nav class="navbar bg-light">
  <div class="container">
    <a class="navbar-brand" href="#">
      <img src="/docs/{{< param docs_version >}}/assets/brand/bootstrap-logo.svg" alt="Bootstrap" width="30" height="24">
    </a>
  </div>
</nav>
{{< /example >}}

#### Изображение и текст

Вы также можете использовать некоторые дополнительные утилиты для одновременного добавления изображения и текста. Обратите внимание на добавление `.d-inline-block` и `.align-text-top` в `<img>`.

{{< example >}}
<nav class="navbar bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="/docs/{{< param docs_version >}}/assets/brand/bootstrap-logo.svg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
      Bootstrap
    </a>
  </div>
</nav>
{{< /example >}}

### Навигация

Навигационные ссылки на панели навигации основаны на наших параметрах `.nav` с их собственным классом-модификатором и требуют использования [класс переключатель](#переключатель) для правильного адаптивного стиля. **Навигация в навигационных панелях также будет увеличиваться, чтобы занимать как можно больше горизонтального пространства**, чтобы содержимое Вашей навигационной панели было надежно выровнено.

Добавьте класс `.active` в `.nav-link`, чтобы указать текущую страницу.

Обратите внимание, что Вам также следует добавить атрибут `aria-current` в активный `.nav-link`.

{{< example >}}
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Панель навигации</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Главная</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Рекомендуемые</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Цена</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Отключенная</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
{{< /example >}}

А поскольку мы используем классы для нашей навигации, Вы можете полностью отказаться от подхода на основе списков, если хотите.

{{< example >}}
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Панель навигации</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="#">Главная</a>
        <a class="nav-link" href="#">Рекомендуемые</a>
        <a class="nav-link" href="#">Цена</a>
        <a class="nav-link disabled">Отключенная</a>
      </div>
    </div>
  </div>
</nav>
{{< /example >}}

Вы также можете использовать раскрывающиеся списки на панели навигации. Для размещения раскрывающихся меню требуется элемент оболочки, поэтому обязательно используйте отдельные и вложенные элементы для `.nav-item` и `.nav-link`, как показано ниже.

{{< example >}}
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Панель навигации</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Главная</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Рекомендуемые</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Цена</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Выпадающий список ссылкой
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Действие</a></li>
            <li><a class="dropdown-item" href="#">Другое действие</a></li>
            <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
{{< /example >}}

### Формы

Разместите различные элементы управления и компоненты формы на панели навигации:

{{< example >}}
<nav class="navbar bg-light">
  <div class="container-fluid">
    <form class="d-flex" role="search">
      <input class="form-control me-2" type="search" placeholder="Поиск" aria-label="Поиск">
      <button class="btn btn-outline-success" type="submit">Поиск</button>
    </form>
  </div>
</nav>
{{< /example >}}

Непосредственные дочерние элементы в `.navbar` используют гибкий макет и по умолчанию будут использовать `justify-content: space-between`. При необходимости используйте дополнительные [флекс утилиты]({{< docsref "/utilities/flex" >}}) для настройки этого поведения.

{{< example >}}
<nav class="navbar bg-light">
  <div class="container-fluid">
    <a class="navbar-brand">Панель навигации</a>
    <form class="d-flex" role="search">
      <input class="form-control me-2" type="search" placeholder="Поиск" aria-label="Поиск">
      <button class="btn btn-outline-success" type="submit">Поиск</button>
    </form>
  </div>
</nav>
{{< /example >}}

Группы ввода тоже работают. Если Ваша панель навигации представляет собой всю форму или в основном форму, Вы можете использовать элемент `<form>` в качестве контейнера и сохранить некоторый HTML.

{{< example >}}
<nav class="navbar bg-light">
  <form class="container-fluid">
    <div class="input-group">
      <span class="input-group-text" id="basic-addon1">@</span>
      <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
    </div>
  </form>
</nav>
{{< /example >}}

В составе этих форм навигационной панели также поддерживаются различные кнопки. Это также отличное напоминание о том, что утилиты вертикального выравнивания можно использовать для выравнивания элементов разного размера.

{{< example >}}
<nav class="navbar bg-light">
  <form class="container-fluid justify-content-start">
    <button class="btn btn-outline-success me-2" type="button">Главная кнопка</button>
    <button class="btn btn-sm btn-outline-secondary" type="button">Меньшая кнопка</button>
  </form>
</nav>
{{< /example >}}

### Текст

Панели навигации могут содержать фрагменты текста с помощью `.navbar-text`. Этот класс регулирует вертикальное выравнивание и горизонтальный интервал для строк текста.

{{< example >}}
<nav class="navbar bg-light">
  <div class="container-fluid">
    <span class="navbar-text">
      Текст на панели навигации со встроенным элементом
    </span>
  </div>
</nav>
{{< /example >}}

При необходимости смешивайте и сочетайте с другими компонентами и утилитами.

{{< example >}}
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Навбар с текстом</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Главная</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Рекомендуемые</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Цена</a>
        </li>
      </ul>
      <span class="navbar-text">
        Навбар текст с инлайновым элементом
      </span>
    </div>
  </div>
</nav>
{{< /example >}}

## Цветовые схемы

{{< callout warning >}}
**Новое в версии 5.2.0:** Темы панели навигации теперь основаны на переменных CSS, а `.navbar-light` устарел. Переменные CSS применяются к `.navbar`, по умолчанию это "светлый" внешний вид, и их можно переопределить с помощью `.navbar-dark`.
{{< /callout >}}

Темы панели навигации стали проще, чем когда-либо, благодаря сочетанию переменных Sass и CSS в Bootstrap. По умолчанию используется наша «светлая панель навигации» для использования со светлыми цветами фона, но вы также можете применить `.navbar-dark` для темных цветов фона. Затем настройте с помощью утилит `.bg-*`.

<div class="bd-example">
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Навбар</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Переключатель навигации">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarColor01">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Главная</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Рекомендуемые</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Цена</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">О нас</a>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Поиск" aria-label="Поиск">
          <button class="btn btn-outline-light" type="submit">Поиск</button>
        </form>
      </div>
    </div>
  </nav>

  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Навбар</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Переключатель навигации">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarColor02">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Главная</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Рекомендуемые</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Цена</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">О нас</a>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Поиск" aria-label="Поиск">
          <button class="btn btn-outline-light" type="submit">Поиск</button>
        </form>
      </div>
    </div>
  </nav>

  <nav class="navbar navbar-expand-lg" style="background-color: #e3f2fd;">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Навбар</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Переключатель навигации">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarColor03">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Главная</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Рекомендуемые</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Цена</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">О нас</a>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Поиск" aria-label="Поиск">
          <button class="btn btn-outline-primary" type="submit">Поиск</button>
        </form>
      </div>
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

<nav class="navbar" style="background-color: #e3f2fd;">
  <!-- Navbar content -->
</nav>
```

## Контейнеры

Хотя это не обязательно, Вы можете обернуть панель навигации в `.container`, чтобы центрировать ее на странице, хотя обратите внимание, что внутренний контейнер все еще требуется. Или Вы можете добавить контейнер внутри `.navbar`, чтобы центрировать только содержимое [фиксированной или статической верхней панели навигации](#размещение).

{{< example >}}
<div class="container">
  <nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Панель навигации</a>
    </div>
  </nav>
</div>
{{< /example >}}

Используйте любой из адаптивных контейнеров, чтобы изменить ширину представления содержимого на панели навигации.

{{< example >}}
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-md">
    <a class="navbar-brand" href="#">Панель навигации</a>
  </div>
</nav>
{{< /example >}}

## Размещение

Используйте наши [утилиты положения]({{< docsref "/utilities/position" >}}) для размещения панелей навигации в нестатических позициях. Выберите фиксированный вверху, фиксированный внизу, прикрепленный кверху (прокручивается вместе со страницей, пока не достигнет верха, а затем остается там) или прикрепленный к низу (прокручивается вместе со страницей, пока не достигнет низа, а затем остается там).

Фиксированные панели навигации используют `position: fixed`, что означает, что они взяты из обычного потока DOM и могут потребовать специального CSS (например, `padding-top` на `<body>`), чтобы предотвратить перекрытие с другими элементами.

{{< example >}}
<nav class="navbar bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">По умолчанию</a>
  </div>
</nav>
{{< /example >}}

{{< example >}}
<nav class="navbar fixed-top bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Фиксированный вверху</a>
  </div>
</nav>
{{< /example >}}

{{< example >}}
<nav class="navbar fixed-bottom bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Фиксированный внизу</a>
  </div>
</nav>
{{< /example >}}

{{< example >}}
<nav class="navbar sticky-top bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Приклеен к верху</a>
  </div>
</nav>
{{< /example >}}

{{< example >}}
<nav class="navbar sticky-bottom bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Приклеен к низу</a>
  </div>
</nav>
{{< /example >}}

## Прокрутка

Добавьте `.navbar-nav-scroll` в `.navbar-nav` (или другой субкомпонент навигационной панели), чтобы включить вертикальную прокрутку внутри переключаемого содержимого свернутой навигационной панели. По умолчанию прокрутка начинается с `75vh` (или 75% высоты области просмотра), но Вы можете переопределить это с помощью локального настраиваемого свойства CSS `--bs-navbar-height` или настраиваемых стилей. В больших окнах просмотра, когда панель навигации развернута, содержимое будет отображаться так же, как и на панели навигации по умолчанию.

Обратите внимание, что такое поведение имеет потенциальный недостаток `overflow`—при установке `overflow-y: auto` (требуется для прокрутки содержимого здесь), `overflow-x` является эквивалентом `auto`, который обрезает некоторые горизонтальное содержание.

Вот пример навигационной панели, использующей `.navbar-nav-scroll` с `style="--bs-scroll-height: 100px;"`, с некоторыми дополнительными утилитами полей для оптимального интервала.

{{< example >}}
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Прокрутка навбара</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Главная</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Ссылка</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Ссылка
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Действие</a></li>
            <li><a class="dropdown-item" href="#">Другое действие</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Ссылка</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Поиск" aria-label="Поиск">
        <button class="btn btn-outline-success" type="submit">Поиск</button>
      </form>
    </div>
  </div>
</nav>
{{< /example >}}

## Отзывчивое поведение

Навигационные панели могут использовать классы `.navbar-toggler`, `.navbar-collapse` и `.navbar-expand{-sm|-md|-lg|-xl|-xxl}`, чтобы определить, когда их содержимое сворачивается за кнопкой. В сочетании с другими утилитами Вы можете легко выбрать, когда показывать или скрывать определенные элементы.

Для панелей навигации, которые никогда не сворачиваются, добавьте на панель навигации класс `.navbar-expand`. Для панелей навигации, которые всегда сворачиваются, не добавляйте класс `.navbar-expand`.

### Переключатель

По умолчанию переключатели навигационной панели выровнены по левому краю, но если они следуют за родственным элементом, таким как `.navbar-brand`, они будут автоматически выровнены по крайнему правому краю. Изменение разметки на противоположное приведет к изменению положения переключателя. Ниже приведены примеры различных стилей переключения.

Без `.navbar-brand` в самой низкой контрольной точке:

{{< example >}}
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <a class="navbar-brand" href="#">Скрытый бренд</a>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Главная</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Ссылка</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Отключенная</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Поиск" aria-label="Поиск">
        <button class="btn btn-outline-success" type="submit">Поиск</button>
      </form>
    </div>
  </div>
</nav>
{{< /example >}}

С названием бренда слева и переключателем справа:

{{< example >}}
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Панель навигации</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Главная</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Ссылка</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Отключенная</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Поиск" aria-label="Поиск">
        <button class="btn btn-outline-success" type="submit">Поиск</button>
      </form>
    </div>
  </div>
</nav>
{{< /example >}}

С переключателем слева и названием бренда справа:

{{< example >}}
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">Панель навигации</a>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Главная</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Ссылка</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Отключенная</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Поиск" aria-label="Поиск">
        <button class="btn btn-outline-success" type="submit">Поиск</button>
      </form>
    </div>
  </div>
</nav>
{{< /example >}}

### Внешний контент

Иногда Вы хотите использовать плагин свертывания для запуска элемента контейнера для содержимого, структурно расположенного за пределами `.navbar`. Поскольку наш плагин работает с сопоставлением `id` и `data-bs-target`, это легко сделать!

{{< example >}}
<div class="collapse" id="navbarToggleExternalContent">
  <div class="bg-dark p-4">
    <h5 class="text-white h4">Свернутый контент</h5>
    <span class="text-muted">Переключаемый через бренд навигационной панели.</span>
  </div>
</div>
<nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Переключатель навигации">
      <span class="navbar-toggler-icon"></span>
    </button>
  </div>
</nav>
{{< /example >}}

При этом мы рекомендуем включить дополнительный JavaScript для программного перемещения фокуса на контейнер при его открытии. В противном случае пользователям клавиатуры и вспомогательным технологиям, скорее всего, будет сложно найти вновь обнаруженный контент, особенно если контейнер, который был открыт, находится *перед* переключателем в структуре документа. Мы также рекомендуем убедиться, что у переключателя есть атрибут `aria-controls`, указывающий на `id` контейнера содержимого. Теоретически это позволяет пользователям вспомогательных технологий напрямую переходить от переключателя к контейнеру, который он контролирует, но в настоящее время эта поддержка весьма неоднородна.

### Offcanvas

Превратите свою расширяющуюся и сворачивающуюся панель навигации в ящик вне холста с помощью [компонента вне холста]({{< docsref "/components/offcanvas" >}}). Мы расширяем стили offcanvas по умолчанию и используем наши классы `.navbar-expand-*` для создания динамической и гибкой боковой панели навигации.

В приведенном ниже примере, чтобы создать панель навигации вне холста, которая всегда сворачивается во всех контрольных точках, полностью опустите класс `.navbar-expand-*`.

{{< example >}}
<nav class="navbar bg-light fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Навигационная панель Offcanvas</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Offcanvas</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Главная</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Ссылка</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Выпадающий список
            </a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Действие</a></li>
              <li><a class="dropdown-item" href="#">Другое действие</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
            </ul>
          </li>
        </ul>
        <form class="d-flex mt-3" role="search">
          <input class="form-control me-2" type="search" placeholder="Поиск" aria-label="Поиск">
          <button class="btn btn-outline-success" type="submit">Поиск</button>
        </form>
      </div>
    </div>
  </div>
</nav>
{{< /example >}}

Чтобы создать панель навигации вне холста, которая расширяется в обычную панель навигации в определенной контрольной точке, такой как `lg`, используйте `.navbar-expand-lg`.

```html
<nav class="navbar navbar-expand-lg bg-light fixed-top">
  <a class="navbar-brand" href="#">Offcanvas navbar</a>
  <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#navbarOffcanvasLg" aria-controls="navbarOffcanvasLg">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="offcanvas offcanvas-end" tabindex="-1" id="navbarOffcanvasLg" aria-labelledby="navbarOffcanvasLgLabel">
    ...
  </div>
</nav>
```

При использовании offcanvas на темной панели навигации имейте в виду, что вам может потребоваться темный фон для содержимого offcanvas, чтобы текст не становился неразборчивым. В приведенном ниже примере мы добавляем `.navbar-dark` и `.bg-dark` к `.navbar`, `.text-bg-dark` к `.offcanvas`, `.dropdown-menu-dark` в `.dropdown-menu`, а `.btn-close-white` в `.btn-close` для правильной стилизации с темным фоном.

{{< example >}}
<nav class="navbar navbar-dark bg-dark fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Offcanvas темная навигационная панель</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Темный offcanvas</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Главная</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Ссылка</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Выпадающий список
            </a>
            <ul class="dropdown-menu dropdown-menu-dark">
              <li><a class="dropdown-item" href="#">Действие</a></li>
              <li><a class="dropdown-item" href="#">Другое действие</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
            </ul>
          </li>
        </ul>
        <form class="d-flex mt-3" role="search">
          <input class="form-control me-2" type="search" placeholder="Поиск" aria-label="Поиск">
          <button class="btn btn-success" type="submit">Поиск</button>
        </form>
      </div>
    </div>
  </div>
</nav>
{{< /example >}}

## CSS

### Переменные

{{< added-in "5.2.0" >}}

В рамках развивающегося подхода Bootstrap к переменным CSS панели навигации теперь используют локальные переменные CSS в `.navbar` для расширенной настройки в реальном времени. Значения переменных CSS задаются через Sass, поэтому настройка Sass по-прежнему поддерживается.

{{< scss-docs name="navbar-css-vars" file="scss/_navbar.scss" >}}

Некоторые дополнительные переменные CSS также присутствуют в `.navbar-nav`:

{{< scss-docs name="navbar-nav-css-vars" file="scss/_navbar.scss" >}}

Настройку с помощью переменных CSS можно увидеть в классе `.navbar-dark`, где мы переопределяем определенные значения, не добавляя дубликаты селекторов CSS.

{{< scss-docs name="navbar-dark-css-vars" file="scss/_navbar.scss" >}}

### Переменные Sass

Переменные для всех навигационных панелей:

{{< scss-docs name="navbar-variables" file="scss/_variables.scss" >}}

Переменные для [темной панели навигации](#color-schemes):

{{< scss-docs name="navbar-dark-variables" file="scss/_variables.scss" >}}

### Цикл Sass

[Классы адаптивного навбара развертывания/свертывания](#responsive-behaviors) (например, `.navbar-expand-lg`) объединяются с картой `$breakpoints` и генерируются с помощью цикла в `scss/_navbar.scss`.

{{< scss-docs name="navbar-expand-loop" file="scss/_navbar.scss" >}}
