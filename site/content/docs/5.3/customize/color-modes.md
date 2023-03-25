---
layout: docs
title: Цветовые режимы
description: Bootstrap теперь поддерживает цветовые режимы или темы, начиная с версии 5.3.0. Изучите наш светлый цветовой режим по умолчанию и новый темный режим или создайте свой собственный, используя наши стили в качестве шаблона.
group: customize
toc: true
added: "5.3"
---

## Темный режим

**Bootstrap теперь поддерживает цветовые режимы, начиная с темного режима!** В версии 5.3.0 вы можете реализовать собственный переключатель цветового режима (см. ниже пример из документации Bootstrap) и применять различные цветовые режимы по своему усмотрению. Мы поддерживаем светлый режим (по умолчанию), а теперь и темный режим. Цветовые режимы можно переключать глобально для элемента `<html>` или для определенных компонентов и элементов благодаря атрибуту `data-bs-theme`.

Кроме того, вы также можете переключиться на реализацию медиа-запроса благодаря нашему миксину цветового режима — смотрите [подробности в разделе об использовании](#building-with-sass). Однако обратите внимание — это лишает вас возможности изменять темы для каждого компонента, как показано ниже.

## Пример

Например, чтобы изменить цветовой режим выпадающего меню, добавьте `data-bs-theme="light"` или `data-bs-theme="dark"` к родительскому `.dropdown`. Теперь, независимо от глобального цветового режима, эти выпадающие списки будут отображаться с указанным значением темы.

{{< example class="d-flex justify-content-between" >}}
<div class="dropdown" data-bs-theme="light">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonLight" data-bs-toggle="dropdown" aria-expanded="false">
    Раскрывающийся список по умолчанию
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButtonLight">
    <li><a class="dropdown-item active" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
  </ul>
</div>

<div class="dropdown" data-bs-theme="dark">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonDark" data-bs-toggle="dropdown" aria-expanded="false">
    Темный раскрывающийся список
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButtonDark">
    <li><a class="dropdown-item active" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
  </ul>
</div>
{{< /example >}}

## Как это работает

- Как показано выше, стили цветового режима управляются атрибутом `data-bs-theme`. Этот атрибут можно применить к элементу `<html>` или к любому другому элементу или компоненту Bootstrap. Если применить к элементу `<html>`, он будет применяться ко всему. Если оно применяется к компоненту или элементу, оно будет ограничено этим конкретным компонентом или элементом.

- Для каждого цветового режима, который вы хотите поддерживать, вам нужно будет добавить новые переопределения для общих глобальных переменных CSS. Мы делаем это уже в нашей таблице стилей `_root.scss` для темного режима, при этом светлый режим является значением по умолчанию. При написании стилей, специфичных для цветового режима, используйте миксин:

  ```scss
  // Color mode variables in _root.scss
  @include color-mode(dark) {
    // CSS variable overrides here...
  }
  ```

- Мы используем пользовательский `_variables-dark.scss`, чтобы включить эти общие глобальные переопределения переменных CSS для темного режима. Этот файл не требуется для ваших собственных пользовательских цветовых режимов, но он необходим для нашего темного режима по двум причинам. Во-первых, лучше иметь одно место для сброса глобальных цветов. Во-вторых, некоторые переменные Sass пришлось переопределить для фоновых изображений, встроенных в наш CSS для аккордеонов, компонентов форм и многого другого.

## Применение

### Включить темный режим

Включите встроенный режим темного цвета во всем проекте, добавив атрибут `data-bs-theme="dark"` к элементу `<html>`. Это применит режим темного цвета ко всем компонентам и элементам, кроме тех, для которых применен определенный атрибут `data-bs-theme`. На основе [шаблона быстрого старта]({{< docsref "/getting-started/introduction#quick-start" >}}):

```html
<!doctype html>
<html lang="en" data-bs-theme="dark">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="{{< param "cdn.css" >}}" rel="stylesheet" integrity="{{< param "cdn.css_hash" >}}" crossorigin="anonymous">
  </head>
  <body>
    <h1>Hello, world!</h1>
    <script src="{{< param "cdn.js_bundle" >}}" integrity="{{< param "cdn.js_bundle_hash" >}}" crossorigin="anonymous"></script>
  </body>
</html>
```

Bootstrap еще не поставляется со встроенным средством выбора цветового режима, но вы можете использовать его из нашей собственной документации, если хотите. [Подробнее в разделе JavaScript.](#javascript)

### Создание с помощью Sass

Наша новая опция темного режима доступна для всех пользователей Bootstrap, но она управляется с помощью атрибутов данных, а не медиа-запросов, и не переключает автоматически цветовой режим вашего проекта. Вы можете полностью отключить наш темный режим через Sass, изменив `$enable-dark-mode` на `false`.

Мы используем собственный миксин Sass, `color-mode()`, чтобы помочь вам управлять тем, _как_ применяются цветовые режимы. По умолчанию мы используем атрибут `data`, что позволяет вам создавать более удобный интерфейс, где ваши посетители могут выбрать автоматический темный режим или управлять своими предпочтениями (как в наших собственных документах здесь). Это также простой и масштабируемый способ добавления различных тем и дополнительных пользовательских цветовых режимов помимо светлого и темного.

Если вы хотите использовать медиа-запросы и сделать автоматическими только цветовые режимы, вы можете изменить тип миксина по умолчанию с помощью переменной Sass. Рассмотрим следующий фрагмент и его скомпилированный вывод CSS.

```scss
$color-mode-type: data;

@include color-mode(dark) {
  .element {
    color: var(--bs-primary-text-emphasis);
    background-color: var(--bs-primary-bg-subtle);
  }
}
```

Outputs to:

```css
[data-bs-theme=dark] .element {
  color: var(--bs-primary-text-emphasis);
  background-color: var(--bs-primary-bg-subtle);
}
```

And when setting to `media-query`:

```scss
$color-mode-type: media-query;

@include color-mode(dark) {
  .element {
    color: var(--bs-primary-text-emphasis);
    background-color: var(--bs-primary-bg-subtle);
  }
}
```

Outputs to:

```css
@media (prefers-color-scheme: dark) {
  .element {
    color: var(--bs-primary-text-emphasis);
    background-color: var(--bs-primary-bg-subtle);
  }
}
```

## Пользовательские цветовые режимы

Хотя основной вариант использования цветовых режимов — это светлый и темный режимы, также возможны пользовательские цветовые режимы. Создайте свой собственный селектор `data-bs-theme` с пользовательским значением в качестве имени вашего цветового режима, а затем при необходимости измените наши переменные Sass и CSS. Мы решили создать отдельную таблицу стилей `_variables-dark.scss` для размещения переменных Sass, специфичных для темного режима Bootstrap, но это не обязательно для вас.

Например, вы можете создать «синюю тему» с помощью селектора `data-bs-theme="blue"`. В свой пользовательский файл Sass или CSS добавьте новый селектор и при необходимости переопределите любые глобальные или компонентные переменные CSS. Если вы используете Sass, вы также можете использовать функции Sass в своих переопределениях переменных CSS.

{{< scss-docs name="custom-color-mode" file="site/assets/scss/_content.scss" >}}

<div class="bd-example text-body bg-body" data-bs-theme="blue">
  <div class="h4">Пример синей темы</div>
  <p>Некоторый текст абзаца, чтобы показать, как синяя тема может выглядеть с письменной копией.</p>

  <hr class="my-4">

  <div class="dropdown">
    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonCustom" data-bs-toggle="dropdown" aria-expanded="false">
      Кнопка раскрывающегося списка
    </button>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButtonCustom">
      <li><a class="dropdown-item active" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div>
</div>

```html
<div data-bs-theme="blue">
  ...
</div>
```

## JavaScript

Чтобы разрешить посетителям или пользователям переключать цветовые режимы, вам необходимо создать элемент переключения для управления атрибутом `data-bs-theme` в корневом элементе `<html>`. В нашей документации мы создали переключатель, который изначально зависит от текущего системного цветового режима пользователя, но предоставляет возможность переопределить его и выбрать определенный цветовой режим.

Вот посмотрите на JavaScript, на котором он работает. Не стесняйтесь проверять нашу собственную панель навигации документации, чтобы увидеть, как она реализована с использованием HTML и CSS из наших собственных компонентов. Обратите внимание: если вы решите использовать медиа-запросы для своих цветовых режимов, возможно, потребуется изменить или удалить ваш JavaScript, если вы предпочитаете неявный контроль.

{{< example lang="js" show_preview="false" >}}
{{< js.inline >}}
{{- readFile (path.Join "site/static/docs" .Site.Params.docs_version "assets/js/color-modes.js") -}}
{{< /js.inline >}}
{{< /example >}}

## CSS

### Переменные

Десятки переменных CSS корневого уровня повторяются как переопределения для темного режима. Они привязаны к селектору цветового режима, который по умолчанию имеет значение `data-bs-theme`, но [можно настроить](#building-with-sass) для использования медиа-запроса `prefers-color-scheme`. Используйте эти переменные в качестве ориентира для создания собственных новых цветовых режимов.

{{< scss-docs name="root-dark-mode-vars" file="scss/_root.scss" >}}

### Sass переменные

Переменные CSS для нашего темного цветового режима частично генерируются из переменных Sass, специфичных для темного режима, в `_variables-dark.scss`. Это также включает в себя некоторые пользовательские переопределения для изменения цветов встроенных SVG, используемых во всех наших компонентах.

{{< scss-docs name="sass-dark-mode-vars" file="scss/_variables-dark.scss" >}}

### Sass миксины

Стили для темного режима и любые пользовательские цветовые режимы, которые вы создаете, могут быть соответствующим образом привязаны к селектору атрибута `data-bs-theme` или медиа-запросу с помощью настраиваемого миксина `color-mode()`. Подробнее смотрите в разделе [Использование Sass](#building-with-sass).

{{< scss-docs name="color-mode-mixin" file="scss/mixins/_color-mode.scss" >}}
