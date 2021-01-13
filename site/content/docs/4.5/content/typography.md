---
layout: docs
title: Типография
description: Документация и примеры типографики Bootstrap, включая глобальные настройки, заголовки, основной текст, списки и многое другое.
group: content
toc: true
---

## Глобальные настройки

Bootstrap устанавливает основные глобальные стили отображения, типографики и ссылок. Когда требуется больше контроля, посмотрите [текстовые служебные классы]({{< docsref "/utilities/text" >}}).

- Используйте [собственный стек шрифтов]({{< docsref "/content/reboot#собственный-стек-шрифтов" >}}), который выбирает лучшее `font-family` для каждой ОС и устройства.
- Для более инклюзивной и доступной шкалы шрифтов мы используем корневой размер шрифта `font-size` браузера по умолчанию (обычно 16 пикселей), чтобы посетители могли настроить свои настройки браузера по умолчанию по мере необходимости.
- Используйте атрибуты `$font-family-base`, `$font-size-base` и `$line-height-base` в качестве нашей типографской основы, применяемой к `<body>`.
- Установите глобальный цвет ссылки через `$link-color` и примените подчеркивание ссылки только к `:hover`.
- Используйте `$body-bg`, чтобы установить `background-color` для `<body>` (по умолчанию `#fff`).

Эти стили можно найти в `_reboot.scss`, а глобальные переменные определены в `_variables.scss`. Не забудьте установить `$font-size-base` в `rem`.

## Заголовки

Доступны все заголовки HTML, от `<h1>` до `<h6>`.

<table>
  <thead>
    <tr>
      <th>Заголовок</th>
      <th>Пример</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
        {{< markdown >}}`<h1></h1>`{{< /markdown >}}
      </td>
      <td><span class="h1">h1. Заголовок Bootstrap</span></td>
    </tr>
    <tr>
      <td>
        {{< markdown >}}`<h2></h2>`{{< /markdown >}}
      </td>
      <td><span class="h2">h2. Заголовок Bootstrap</span></td>
    </tr>
    <tr>
      <td>
        {{< markdown >}}`<h3></h3>`{{< /markdown >}}
      </td>
      <td><span class="h3">h3. Заголовок Bootstrap</span></td>
    </tr>
    <tr>
      <td>
        {{< markdown >}}`<h4></h4>`{{< /markdown >}}
      </td>
      <td><span class="h4">h4. Заголовок Bootstrap</span></td>
    </tr>
    <tr>
      <td>
        {{< markdown >}}`<h5></h5>`{{< /markdown >}}
      </td>
      <td><span class="h5">h5. Заголовок Bootstrap</span></td>
    </tr>
    <tr>
      <td>
        {{< markdown >}}`<h6></h6>`{{< /markdown >}}
      </td>
      <td><span class="h6">h6. Заголовок Bootstrap</span></td>
    </tr>
  </tbody>
</table>

```html
<h1>h1. Заголовок Bootstrap</h1>
<h2>h2. Заголовок Bootstrap</h2>
<h3>h3. Заголовок Bootstrap</h3>
<h4>h4. Заголовок Bootstrap</h4>
<h5>h5. Заголовок Bootstrap</h5>
<h6>h6. Заголовок Bootstrap</h6>
```

Также доступны классы с `.h1` по `.h6`, когда Вы хотите соответствовать стилю шрифта заголовка, но не можете использовать связанный элемент HTML.

{{< example >}}
<p class="h1">h1. Заголовок Bootstrap</p>
<p class="h2">h2. Заголовок Bootstrap</p>
<p class="h3">h3. Заголовок Bootstrap</p>
<p class="h4">h4. Заголовок Bootstrap</p>
<p class="h5">h5. Заголовок Bootstrap</p>
<p class="h6">h6. Заголовок Bootstrap</p>
{{< /example >}}

### Настройка заголовков

Используйте включенные служебные классы, чтобы воссоздать небольшой текст вторичного заголовка из Bootstrap 3.

{{< example >}}
<h3>
  Необычный заголовок дисплея
  <small class="text-muted">С выцветшим второстепенным текстом</small>
</h3>
{{< /example >}}

## Отображение заголовков

Традиционные элементы заголовка лучше всего подходят для содержания Вашей страницы. Если Вам нужен заголовок, чтобы выделиться, подумайте об использовании **отображаемого заголовка** - более крупного, немного более самоуверенного стиля заголовка. Имейте в виду, что эти заголовки не являются адаптивными по умолчанию, но можно включить [размеры адаптивного шрифта](#адаптивные-размеры-шрифтов).

<div class="bd-example bd-example-type">
  <table class="table">
    <tbody>
      <tr>
        <td><span class="display-1">Отображение 1</span></td>
      </tr>
      <tr>
      <td><span class="display-2">Отображение 2</span></td>
      </tr>
      <tr>
      <td><span class="display-3">Отображение 3</span></td>
      </tr>
      <tr>
      <td><span class="display-4">Отображение 4</span></td>
      </tr>
    </tbody>
  </table>
</div>

```html
<h1 class="display-1">Отображение 1</h1>
<h1 class="display-2">Отображение 2</h1>
<h1 class="display-3">Отображение 3</h1>
<h1 class="display-4">Отображение 4</h1>
```

## Выделение

Выделите абзац, добавив `.lead`.

{{< example >}}
<p class="lead">
  This is a lead paragraph. It stands out from regular paragraphs.
</p>
{{< /example >}}

## Встроенные текстовые элементы

Стили для общих встроенных элементов HTML5.

{{< example >}}
<p>Вы можете использовать тег mark для <mark>выделения</mark> текста.</p>
<p><del>Эта строка текста должна рассматриваться как удаленный текст.</del></p>
<p><s>Эта строка текста больше не соответствует действительности.</s></p>
<p><ins>Эта строка текста должна рассматриваться как дополнение к документу.</ins></p>
<p><u>Эта строка текста будет подчеркнута</u></p>
<p><small>Эту строку текста следует рассматривать как мелкий шрифт.</small></p>
<p><strong>Эта строка выделена жирным шрифтом.</strong></p>
<p><em>Эта строка выделена курсивом.</em></p>
{{< /example >}}

Доступны классы `.mark` и `.small` для применения тех же стилей, что и `<mark>` и `<small>`, при этом избегая любых нежелательных семантических последствий, которые могут быть вызваны тегами.

Хотя это не показано выше, Вы можете свободно использовать `<b>` и `<i>` в HTML5. `<b>` предназначен для выделения слов или фраз без придания дополнительной важности, в то время как `<i>` в основном используется для озвучивания, технических терминов и т.д.

## Текстовые утилиты

Измените выравнивание, преобразование, стиль, толщину и цвет текста с помощью наших [текстовых утилит]({{< docsref "/utilities/text" >}}) и [утилит цвета]({{< docsref "/utilities/colors" >}}).

## Аббревиатура

Стилизованная реализация HTML-элемента `<abbr>` для сокращений и акронимов для отображения расширенной версии при наведении курсора. Аббревиатуры имеют подчеркивание по умолчанию и получают курсор справки, чтобы предоставить дополнительный контекст при наведении курсора и пользователям вспомогательных технологий.

Добавьте к аббревиатуре `.initialism`, чтобы уменьшить размер шрифта.

{{< example >}}
<p><abbr title="attribute">attr</abbr></p>
<p><abbr title="HyperText Markup Language" class="initialism">HTML</abbr></p>
{{< /example >}}

## Цитаты

Для цитирования блоков контента из другого источника в вашем документе. Оберните `<blockquote class="blockquote">` вокруг любого <abbr title="HyperText Markup Language">HTML</abbr> в качестве цитаты.

{{< example >}}
<blockquote class="blockquote">
  <p class="mb-0">Известная цитата, содержащаяся в элементе цитаты.</p>
</blockquote>
{{< /example >}}

### Название источника

Добавьте `<footer class="blockquote-footer">` для идентификации источника. Оберните название исходной работы в `<cite>`.

{{< example >}}
<blockquote class="blockquote">
  <p class="mb-0">Известная цитата, содержащаяся в элементе цитаты.</p>
  <footer class="blockquote-footer">Кто-то известный в <cite title="Название источника">названии источника</cite></footer>
</blockquote>
{{< /example >}}

### Выравнивание

При необходимости используйте текстовые утилиты, чтобы изменить выравнивание цитаты.

{{< example >}}
<blockquote class="blockquote text-center">
  <p class="mb-0">>Известная цитата, содержащаяся в элементе цитаты.</p>
  <footer class="blockquote-footer">Кто-то известный в <cite title="Название источника">названии источника</cite></footer>
</blockquote>
{{< /example >}}

{{< example >}}
<blockquote class="blockquote text-right">
  <p class="mb-0">Известная цитата, содержащаяся в элементе цитаты.</p>
  <footer class="blockquote-footer">Кто-то известный в <cite title="Название источника">названии источника</cite></footer>
</blockquote>
{{< /example >}}

## Списки

### Без стиля

Удалите стиль списка `list-style` по умолчанию и левое поле для элементов списка (только непосредственные дочерние элементы). **Это применимо только к непосредственным дочерним элементам списка**, то есть Вам нужно будет добавить класс также для любых вложенных списков.

{{< example >}}
<ul class="list-unstyled">
  <li>This is a list.</li>
  <li>It appears completely unstyled.</li>
  <li>Structurally, it's still a list.</li>
  <li>However, this style only applies to immediate child elements.</li>
  <li>Nested lists:
    <ul>
      <li>are unaffected by this style</li>
      <li>will still show a bullet</li>
      <li>and have appropriate left margin</li>
    </ul>
  </li>
  <li>This may still come in handy in some situations.</li>
</ul>
{{< /example >}}

### Строковый

Удалите маркеры списка и примените небольшое поле `margin` с комбинацией двух классов `.list-inline` и `.list-inline-item`.

{{< example >}}
<ul class="list-inline">
  <li class="list-inline-item">This is a list item.</li>
  <li class="list-inline-item">And another one.</li>
  <li class="list-inline-item">But they're displayed inline.</li>
</ul>
{{< /example >}}

### Выравнивание списка описаний

Выровняйте термины и описания по горизонтали с помощью предопределенных классов нашей сеточной системы (или семантических миксинов). Для более длительных сроков Вы можете по желанию добавить класс `.text-truncate`, чтобы обрезать текст многоточием.

{{< example >}}
<dl class="row">
  <dt class="col-sm-3">Описание списка</dt>
  <dd class="col-sm-9">Список описаний идеально подходит для определения терминов.</dd>

  <dt class="col-sm-3">Term</dt>
  <dd class="col-sm-9">
    <p>Definition for the term.</p>
    <p>And some more placeholder definition text.</p>
  </dd>

  <dt class="col-sm-3">Another term</dt>
  <dd class="col-sm-9">This definition is short, so no extra paragraphs or anything.</dd>

  <dt class="col-sm-3 text-truncate">Truncated term is truncated</dt>
  <dd class="col-sm-9">This can be useful when space is tight. Adds an ellipsis at the end.</dd>

  <dt class="col-sm-3">Nesting</dt>
  <dd class="col-sm-9">
    <dl class="row">
      <dt class="col-sm-4">Nested definition list</dt>
      <dd class="col-sm-8">I heard you like definition lists. Let me put a definition list inside your definition list.</dd>
    </dl>
  </dd>
</dl>
{{< /example >}}

## Размеры адаптивного шрифта

Начиная с версии 4.3.0, Bootstrap поставляется с возможностью включения гибких размеров шрифта, что позволяет тексту более естественно масштабироваться в зависимости от устройства и размеров области просмотра. <abbr title="Размеры адаптивного шрифта">RFS</abbr> можно включить, изменив переменную Sass `$enable-responsive-font-sizes` на `true` и перекомпилировав Bootstrap.

Для поддержки <abbr title="Размеры адаптивного шрифта">RFS</abbr>, мы используем миксин Sass для замены наших обычных свойств `font-size`. Размеры адаптивного шрифта будут скомпилированы в функции `calc()` с сочетанием `rem` и единиц просмотра, чтобы обеспечить адаптивное масштабирование. Подробнее о <abbr title="Responsive font sizes">RFS</abbr> и его конфигурации можно найти в его [репозитории GitHub](https://github.com/twbs/rfs/tree/v8.0.4).
