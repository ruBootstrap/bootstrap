---
layout: docs
title: Типография
description: Документация и примеры типографики Bootstrap, включая глобальные настройки, заголовки, основной текст, списки и т.д.
group: content
toc: true
---

## Глобальные настройки

Bootstrap устанавливает основные глобальные стили отображения, типографики и ссылок. Когда требуется больше контроля, посмотрите [классы утилит текста]({{< docsref "/utilities/text" >}}).

- Используйте [собственный стек шрифтов]({{< docsref "/content/reboot#стек-собственных-шрифтов" >}}), который выбирает лучший `font-family` для каждой ОС и устройства.
- Для более инклюзивной и доступной шкалы шрифтов мы предполагаем, что в браузере используется корневой размер шрифта `font-size` по умолчанию (обычно 16 пикселей), чтобы посетители могли настроить свои настройки браузера по умолчанию по мере необходимости.
- Используйте атрибуты `$font-family-base`, `$font-size-base` и `$line-height-base` в качестве нашей типографской основы, применяемой к `<body>`.
- Установите глобальный цвет ссылки через `$link-color` и примените подчеркивание ссылки только к `:hover`.
- Используйте `$body-bg`, чтобы установить `background-color` для `<body>` (по умолчанию `#fff`).

Эти стили можно найти в `_reboot.scss`, а глобальные переменные определены в `_variables.scss`. Не забудьте установить `$font-size-base` в `rem`.

## Заголовки

Доступны все заголовки HTML, от `<h1>` до `<h6>`.

<table class="table">
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

Также доступны классы от `.h1` до `.h6`, когда Вы хотите соответствовать стилю шрифта заголовка, но не можете использовать связанный элемент HTML.

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
  <small class="text-muted">С блеклым второстепенным текстом</small>
</h3>
{{< /example >}}

## Display headings

Традиционные элементы заголовка лучше всего подходят для содержания Вашей страницы. Если Вам нужен заголовок, чтобы выделиться, подумайте об использовании **отображаемого заголовка** более крупного, немного более самоуверенного стиля заголовка.

<div class="bd-example">
  <div class="display-1 pb-3 mb-3 border-bottom">Отображение 1</div>
  <div class="display-2 pb-3 mb-3 border-bottom">Отображение 2</div>
  <div class="display-3 pb-3 mb-3 border-bottom">Отображение 3</div>
  <div class="display-4 pb-3 mb-3 border-bottom">Отображение 4</div>
  <div class="display-5 pb-3 mb-3 border-bottom">Отображение 5</div>
  <div class="display-6">Отображение 6</div>
</div>

```html
<h1 class="display-1">Отображение 1</h1>
<h1 class="display-2">Отображение 2</h1>
<h1 class="display-3">Отображение 3</h1>
<h1 class="display-4">Отображение 4</h1>
<h1 class="display-5">Отображение 5</h1>
<h1 class="display-6">Отображение 6</h1>
```

Отображаемые заголовки настраиваются с помощью карты Sass `$display-font-sizes` и двух переменных: `$display-font-weight` и `$display-line-height`.

{{< scss-docs name="display-headings" file="scss/_variables.scss" >}}

## Ведущий

Выделите абзац, добавив `.lead`.

{{< example >}}
<p class="lead">
  Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus.
</p>
{{< /example >}}

## Строчные текстовые элементы

Стили для общих строчных элементов HTML5.

{{< example >}}
<p>Вы можете использовать тег mark для <mark>выделения</mark> текста.</p>
<p><del>Эта строка текста должна рассматриваться как удаленный текст.</del></p>
<p><s>Эта строка текста считается неточной.</s></p>
<p><ins>Эта строка текста должна рассматриваться как дополнение к документу..</ins></p>
<p><u>Эта строка текста будет отображаться как подчеркнутая.</u></p>
<p><small>Эту строку текста следует рассматривать как мелкий шрифт.</small></p>
<p><strong>Эта строка выделена жирным шрифтом.</strong></p>
<p><em>Эта строка выделена курсивом.</em></p>
{{< /example >}}

Помните, что эти теги следует использовать в семантических целях:

- `<mark>` представляет текст, который отмечен или выделен для справки или обозначений.
- `<small>` представляет собой комментарии и мелкий шрифт, например текст об авторских правах и юридический текст.
- `<s>` представляет элемент, который больше не актуален или не точен.
- `<u>` представляет собой диапазон строчного текста, который должен отображаться таким образом, чтобы указывать на то, что он имеет нетекстовую аннотацию.

Если Вы хотите стилизовать свой текст, Вы должны вместо этого использовать следующие классы:

- `.mark` будут применять те же стили, что и `<mark>`.
- `.small` будут применять те же стили, что и `<small>`.
- `.text-decoration-underline` будут применять те же стили, что и `<u>`.
- `.text-decoration-line-through` будут применять те же стили, что и `<s>`.

Хотя это не показано выше, Вы можете свободно использовать `<b>` и `<i>` в HTML5. `<b>` предназначен для выделения слов или фраз без придания дополнительной важности, в то время как `<i>` в основном используется для озвучивания, технических терминов и т.д.

## Текстовые утилиты

Измените выравнивание, преобразование, стиль, толщину, высоту строки, оформление и цвет текста с помощью наших [текстовых утилит]({{< docsref "/utilities/text" >}}) и [цветовых утилит]({{< docsref "/utilities/colors" >}}).

## Аббревиатуры

Стилизованная реализация HTML-элемента `<abbr>` для сокращений и акронимов для отображения расширенной версии при наведении курсора. Аббревиатуры имеют подчеркивание по умолчанию и получают курсор справки, чтобы предоставить дополнительный контекст при наведении курсора и для пользователей вспомогательных технологий.

Добавьте к аббревиатуре `.initialism`, чтобы уменьшить размер шрифта.

{{< example >}}
<p><abbr title="attribute">attr</abbr></p>
<p><abbr title="HyperText Markup Language" class="initialism">HTML</abbr></p>
{{< /example >}}

## Цитаты

Для цитирования блоков контента из другого источника в Вашем документе. Оберните `<blockquote class="blockquote">` вокруг любого <abbr title="HyperText Markup Language">HTML</abbr> как цитату.

{{< example >}}
<blockquote class="blockquote">
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
</blockquote>
{{< /example >}}

### Naming a source

Спецификация HTML требует, чтобы атрибуция цитаты размещалась за пределами `<blockquote>`. При указании авторства оберните Ваш `<blockquote>` в `<figure>` и используйте `<figcaption>` или элемент уровня блока (например, `<p>`) с классом `.blockquote-footer`. Не забудьте также заключить название исходной работы в `<cite>`.

{{< example >}}
<figure>
  <blockquote class="blockquote">
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
  </blockquote>
  <figcaption class="blockquote-footer">
    Someone famous in <cite title="Source Title">Source Title</cite>
  </figcaption>
</figure>
{{< /example >}}

### Выравнивание

При необходимости используйте текстовые утилиты, чтобы изменить выравнивание цитаты.

{{< example >}}
<figure class="text-center">
  <blockquote class="blockquote">
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
  </blockquote>
  <figcaption class="blockquote-footer">
    Someone famous in <cite title="Source Title">Source Title</cite>
  </figcaption>
</figure>
{{< /example >}}

{{< example >}}
<figure class="text-end">
  <blockquote class="blockquote">
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
  </blockquote>
  <figcaption class="blockquote-footer">
    Someone famous in <cite title="Source Title">Source Title</cite>
  </figcaption>
</figure>
{{< /example >}}

## Списки

### Без стиля

Удалите по умолчанию `list-style` и левое поле для элементов списка (только непосредственные дочерние элементы). **Это применимо только к непосредственным дочерним элементам списка**, то есть Вам нужно будет добавить класс также для любых вложенных списков.

{{< example >}}
<ul class="list-unstyled">
  <li>Lorem ipsum dolor sit amet</li>
  <li>Consectetur adipiscing elit</li>
  <li>Integer molestie lorem at massa</li>
  <li>Facilisis in pretium nisl aliquet</li>
  <li>Nulla volutpat aliquam velit
    <ul>
      <li>Phasellus iaculis neque</li>
      <li>Purus sodales ultricies</li>
      <li>Vestibulum laoreet porttitor sem</li>
      <li>Ac tristique libero volutpat at</li>
    </ul>
  </li>
  <li>Faucibus porta lacus fringilla vel</li>
  <li>Aenean sit amet erat nunc</li>
  <li>Eget porttitor lorem</li>
</ul>
{{< /example >}}

### В линию

Удалите маркеры списка и примените небольшое поле `margin` с помощью комбинации двух классов: `.list-inline` и `.list-inline-item`.

{{< example >}}
<ul class="list-inline">
  <li class="list-inline-item">Lorem ipsum</li>
  <li class="list-inline-item">Phasellus iaculis</li>
  <li class="list-inline-item">Nulla volutpat</li>
</ul>
{{< /example >}}

### Выравнивание списка описаний

Выровняйте термины и описания по горизонтали с помощью предопределенных классов нашей сеточной системы (или семантических миксинов). Для более длительных сроков Вы можете по желанию добавить класс `.text-truncate`, чтобы обрезать текст многоточием.

{{< example >}}
<dl class="row">
  <dt class="col-sm-3">Списки описаний</dt>
  <dd class="col-sm-9">Список описаний идеально подходит для определения терминов.</dd>

  <dt class="col-sm-3">Euismod</dt>
  <dd class="col-sm-9">
    <p>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</p>
    <p>Donec id elit non mi porta gravida at eget metus.</p>
  </dd>

  <dt class="col-sm-3">Malesuada porta</dt>
  <dd class="col-sm-9">Etiam porta sem malesuada magna mollis euismod.</dd>

  <dt class="col-sm-3 text-truncate">Truncated term is truncated</dt>
  <dd class="col-sm-9">Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>

  <dt class="col-sm-3">Вложенность</dt>
  <dd class="col-sm-9">
    <dl class="row">
      <dt class="col-sm-4">Список вложенных определений</dt>
      <dd class="col-sm-8">Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc.</dd>
    </dl>
  </dd>
</dl>
{{< /example >}}

## Размеры адаптивного шрифта

В Bootstrap 5 мы включили адаптивные размеры шрифтов по умолчанию, что позволяет тексту более естественно масштабироваться в зависимости от устройства и размеров области просмотра. Взгляните на [страницу RFS]({{< docsref "/getting-started/rfs" >}}), чтобы узнать, как это работает.
