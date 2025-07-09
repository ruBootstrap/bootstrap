---
layout: docs
title: Цветовые режимы
description: В Bootstrap с версии 5.3.0 появились цветовые режимы (темы). Ознакомьтесь с нашим стандартным светлым режимом и новым темным режимом или создайте свой собственный, используя наши стили как шаблон.
group: customize
toc: true
added: "5.3"
---

## Темный режим

**В Bootstrap теперь поддерживаются цветовые режимы, начиная с темного режима!** С версии 5.3.0 вы можете реализовать собственный переключатель цветового режима (см. пример ниже из документации Bootstrap) и применять различные цветовые режимы по своему усмотрению. Мы поддерживаем светлый режим (по умолчанию) и теперь темный режим. Цветовые режимы можно переключать глобально на элементе `<html>`, либо на отдельных компонентах и элементах с помощью атрибута `data-bs-theme`.

В качестве альтернативы вы также можете использовать реализацию на основе медиазапросов благодаря нашему миксину color mode — см. [раздел использования](#sass-usage) для подробностей. Обратите внимание: это убирает возможность менять темы для отдельных компонентов, как показано ниже.

## Пример

Например, чтобы изменить цветовой режим выпадающего меню, добавьте `data-bs-theme="light"` или `data-bs-theme="dark"` к родительскому элементу `.dropdown`. Теперь, независимо от глобального цветового режима, эти выпадающие списки будут отображаться с указанным значением темы.

{{< example class="d-flex justify-content-between" >}}
<div class="dropdown" data-bs-theme="light">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonLight" data-bs-toggle="dropdown" aria-expanded="false">
    Обычное выпадающее меню
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButtonLight">
    <li><a class="dropdown-item active" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Отдельная ссылка</a></li>
  </ul>
</div>

<div class="dropdown" data-bs-theme="dark">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonDark" data-bs-toggle="dropdown" aria-expanded="false">
    Темное выпадающее меню
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButtonDark">
    <li><a class="dropdown-item active" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Отдельная ссылка</a></li>
  </ul>
</div>
{{< /example >}}

## Как это работает

- Как показано выше, стили цветового режима управляются атрибутом `data-bs-theme`. Этот атрибут можно применить к элементу `<html>` или к любому другому элементу или компоненту Bootstrap. Если применить к `<html>`, он будет действовать на всё. Если применить к компоненту или элементу — только к нему.

- Для каждого цветового режима, который вы хотите поддерживать, нужно добавить новые переопределения для общих глобальных CSS-переменных. Мы уже делаем это в нашем файле `_root.scss` для темного режима, где светлый режим — это значения по умолчанию. Для написания стилей, специфичных для цветового режима, используйте миксин:

  ```scss
  // Переменные цветового режима в _root.scss
  @include color-mode(dark) {
    // Переопределения CSS-переменных здесь...
  }
  ```

- Мы используем отдельный файл `_variables-dark.scss` для этих глобальных переопределений CSS-переменных для темного режима. Этот файл не обязателен для ваших собственных цветовых режимов, но он необходим для нашего темного режима по двум причинам. Во-первых, лучше иметь одно место для сброса глобальных цветов. Во-вторых, некоторые переменные Sass пришлось переопределить для фоновых изображений, встроенных в CSS для аккордеонов, форм и других компонентов.

## Вложенные цветовые режимы

Используйте `data-bs-theme` на вложенном элементе, чтобы изменить цветовой режим для группы элементов или компонентов. В примере ниже у нас внешний темный режим с вложенным светлым. Вы заметите, что компоненты автоматически адаптируют свой внешний вид, но иногда потребуется добавить утилиты, чтобы использовать стили, специфичные для каждого режима.

Например, несмотря на использование `data-bs-theme="dark"` на случайном `<div>`, у `<div>` нет `background-color`, так как он задан на `<body>`. Поэтому, если вы хотите, чтобы `color` и `background-color` адаптировались, добавьте классы `.text-body` и `.bg-body`.

{{< example class="p-0" >}}
<div data-bs-theme="dark" class="p-3 text-body bg-body">
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="#">Цветовые режимы</a></li>
      <li class="breadcrumb-item active" aria-current="page">Темный</li>
    </ol>
  </nav>

  <p>Этот блок всегда должен отображаться в <strong>темной</strong> теме.</p>

  <div class="progress mb-4">
    <div class="progress-bar" role="progressbar" aria-label="Пример" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
  </div>

  <div class="dropdown mb-4">
    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonDark2" data-bs-toggle="dropdown" aria-expanded="false">
      Темное выпадающее меню
    </button>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButtonDark2">
      <li><a class="dropdown-item active" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отдельная ссылка</a></li>
    </ul>
  </div>

  <div data-bs-theme="light" class="p-3 text-body bg-body rounded">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#">Цветовые режимы</a></li>
        <li class="breadcrumb-item"><a href="#">Темный</a></li>
        <li class="breadcrumb-item active" aria-current="page">Светлый</li>
      </ol>
    </nav>

    <p>Этот блок всегда должен отображаться в <strong>светлой</strong> теме.</p>

    <div class="progress mb-4">
      <div class="progress-bar" role="progressbar" aria-label="Пример" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
    </div>

    <div class="dropdown">
      <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonLight2" data-bs-toggle="dropdown" aria-expanded="false">
        Светлое выпадающее меню
      </button>
      <ul class="dropdown-menu" aria-labelledby="dropdownMenuButtonLight2">
        <li><a class="dropdown-item active" href="#">Действие</a></li>
        <li><a class="dropdown-item" href="#">Действие</a></li>
        <li><a class="dropdown-item" href="#">Другое действие</a></li>
        <li><a class="dropdown-item" href="#">Что-то еще</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="#">Отдельная ссылка</a></li>
      </ul>
    </div>
  </div>
</div>
{{< /example >}}

## Использование

### Включение темного режима

Включите встроенный темный цветовой режим для всего проекта, добавив атрибут `data-bs-theme="dark"` к элементу `<html>`. Это применит темный режим ко всем компонентам и элементам, кроме тех, где явно указан другой `data-bs-theme`. На основе [шаблона быстрого старта]({{< docsref "/getting-started/introduction#quick-start" >}}):

```html
<!doctype html>
<html lang="ru" data-bs-theme="dark">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Демо Bootstrap</title>
    <link href="{{< param "cdn.css" >}}" rel="stylesheet" integrity="{{< param "cdn.css_hash" >}}" crossorigin="anonymous">
  </head>
  <body>
    <h1>Привет, мир!</h1>
    <script src="{{< param "cdn.js_bundle" >}}" integrity="{{< param "cdn.js_bundle_hash" >}}" crossorigin="anonymous"></script>
  </body>
</html>
```

В Bootstrap пока нет встроенного переключателя цветового режима, но вы можете использовать тот, что есть в нашей документации. [Подробнее в разделе JavaScript.](#javascript)

### Использование с Sass

Новая опция темного режима доступна всем пользователям Bootstrap, но она управляется через data-атрибуты, а не медиазапросы, и не переключает цветовой режим вашего проекта автоматически. Вы можете полностью отключить темный режим через Sass, изменив `$enable-dark-mode` на `false`.

Мы используем новый миксин Sass, `color-mode()`, чтобы управлять тем, _как_ применяются цветовые режимы. По умолчанию используется подход с data-атрибутом, что позволяет создавать более удобные для пользователя интерфейсы, где посетители могут выбирать автоматический темный режим или управлять предпочтением (как в нашей документации). Это также простой и масштабируемый способ добавить разные темы и собственные цветовые режимы помимо светлого и темного.

Если вы хотите использовать медиазапросы и сделать цветовые режимы только автоматическими, вы можете изменить тип миксина через переменную Sass. Пример и результат компиляции:

```scss
$color-mode-type: data;

@include color-mode(dark) {
  .element {
    color: var(--bs-primary-text);
    background-color: var(--bs-primary-bg-subtle);
  }
}
```

Результат:

```css
[data-bs-theme=dark] .element {
  color: var(--bs-primary-text);
  background-color: var(--bs-primary-bg-subtle);
}
```

А при установке `media-query`:

```scss
$color-mode-type: media-query;

@include color-mode(dark) {
  .element {
    color: var(--bs-primary-text);
    background-color: var(--bs-primary-bg-subtle);
  }
}
```

Результат:

```css
@media (prefers-color-scheme: dark) {
  .element {
    color: var(--bs-primary-text);
    background-color: var(--bs-primary-bg-subtle);
  }
}
```

## Пользовательские цветовые режимы

Хотя основной сценарий использования цветовых режимов — это светлый и темный режимы, вы также можете создавать собственные цветовые режимы. Создайте свой селектор `data-bs-theme` с пользовательским значением в качестве имени цветового режима, затем измените наши переменные Sass и CSS по необходимости. Мы решили создать отдельный файл `_variables-dark.scss` для хранения специфичных для темного режима переменных Sass, но для вас это не обязательно.

Например, вы можете создать «синюю тему» с селектором `data-bs-theme="blue"`. В своем пользовательском Sass или CSS-файле добавьте новый селектор и переопределите любые глобальные или компонентные CSS-переменные по необходимости. Если вы используете Sass, вы также можете использовать функции Sass внутри переопределений CSS-переменных.

{{< scss-docs name="custom-color-mode" file="site/assets/scss/_content.scss" >}}

<div class="bd-example text-body bg-body" data-bs-theme="blue">
  <div class="h4">Пример синей темы</div>
  <p>Некоторый текст, чтобы показать, как синяя тема может выглядеть с обычным содержимым.</p>

  <hr class="my-4">

  <div class="dropdown">
    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonCustom" data-bs-toggle="dropdown" aria-expanded="false">
      Кнопка выпадающего списка
    </button>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButtonCustom">
      <li><a class="dropdown-item active" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отдельная ссылка</a></li>
    </ul>
  </div>
</div>

```html
<div data-bs-theme="blue">
  ...
</div>
```

## JavaScript

Чтобы дать посетителям или пользователям возможность переключать цветовые режимы, вам нужно создать элемент-переключатель для управления атрибутом `data-bs-theme` на корневом элементе `<html>`. В нашей документации реализован такой переключатель, который изначально ориентируется на текущий цветовой режим системы пользователя, но позволяет переопределить его и выбрать конкретный режим.

Вот пример JavaScript, который это реализует. Вы можете изучить нашу навигационную панель документации, чтобы увидеть, как это реализовано с помощью HTML и CSS из наших компонентов. Обратите внимание, что если вы решите использовать медиазапросы для цветовых режимов, ваш JavaScript может потребовать изменений или быть удалён, если вы предпочитаете неявное управление.

{{< example lang="js" show_preview="false" >}}
{{< js.inline >}}
{{- readFile (path.Join "site/static/docs" .Site.Params.docs_version "assets/js/color-modes.js") -}}
{{< /js.inline >}}
{{< /example >}}

## CSS

### Переменные

Десятки CSS-переменных на уровне корня повторяются как переопределения для темного режима. Они ограничены селектором цветового режима, который по умолчанию — `data-bs-theme`, но [может быть настроен](#sass-usage) для использования медиазапроса `prefers-color-scheme`. Используйте эти переменные как ориентир для создания собственных цветовых режимов.

{{< scss-docs name="root-dark-mode-vars" file="scss/_root.scss" >}}

### Переменные Sass

CSS-переменные для нашего темного режима частично генерируются из специфичных для темного режима переменных Sass в `_variables-dark.scss`. Это также включает некоторые пользовательские переопределения для изменения цветов встроенных SVG, используемых в компонентах.

{{< scss-docs name="sass-dark-mode-vars" file="scss/_variables-dark.scss" >}}

### Миксин Sass

Стили для темного режима и любых пользовательских цветовых режимов, которые вы создаете, могут быть ограничены селектором атрибута `data-bs-theme` или медиазапросом с помощью настраиваемого миксина `color-mode()`. Подробнее см. в [разделе использования Sass](#sass-usage).

{{< scss-docs name="color-mode-mixin" file="scss/mixins/_color-mode.scss" >}}
