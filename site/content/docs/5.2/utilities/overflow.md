---
layout: docs
title: Переполнение
description: Используйте эти сокращенные утилиты для быстрой настройки того, как контент выходит за пределы элемента.
group: utilities
toc: true
---

## Overflow

Настройте свойство `overflow` на лету с четырьмя значениями и классами по умолчанию. Эти классы по умолчанию не реагируют.

<div class="bd-example d-md-flex">
  <div class="overflow-auto p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary" style="max-width: 260px; max-height: 100px;">
    This is an example of using <code>.overflow-auto</code> on an element with set width and height dimensions. By design, this content will vertically scroll.
  </div>
  <div class="overflow-hidden p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary" style="max-width: 260px; max-height: 100px;">
    This is an example of using <code>.overflow-hidden</code> on an element with set width and height dimensions.
  </div>
  <div class="overflow-visible p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary" style="max-width: 260px; max-height: 100px;">
    This is an example of using <code>.overflow-visible</code> on an element with set width and height dimensions.
  </div>
  <div class="overflow-scroll p-3 bg-body-tertiary" style="max-width: 260px; max-height: 100px;">
    This is an example of using <code>.overflow-scroll</code> on an element with set width and height dimensions.
  </div>
</div>

```html
<div class="overflow-auto">...</div>
<div class="overflow-hidden">...</div>
<div class="overflow-visible">...</div>
<div class="overflow-scroll">...</div>
```

### `overflow-x`

Настройте свойство `overflow-x`, чтобы повлиять на переполнение содержимого по горизонтали.

<div class="bd-example d-md-flex">
  <div class="overflow-x-auto p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px; white-space: nowrap;">
    <div><code>.overflow-x-auto</code> example on an element</div>
    <div> with set width and height dimensions.</div>
  </div>
  <div class="overflow-x-hidden p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;white-space: nowrap;">
    <div><code>.overflow-x-hidden</code> example</div>
    <div>on an element with set width and height dimensions.</div>
  </div>
  <div class="overflow-x-visible p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;white-space: nowrap;">
    <div><code>.overflow-x-visible</code> example </div>
    <div>on an element with set width and height dimensions.</div>
  </div>
  <div class="overflow-x-scroll p-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;white-space: nowrap;">
    <div><code>.overflow-x-scroll</code> example on an element</div>
    <div> with set width and height dimensions.</div>
  </div>
</div>

```html
<div class="overflow-x-auto">...</div>
<div class="overflow-x-hidden">...</div>
<div class="overflow-x-visible">...</div>
<div class="overflow-x-scroll">...</div>
```

### `overflow-y`

Adjust the `overflow-y` property to affect the overflow of content vertically.

<div class="bd-example d-md-flex">
  <div class="overflow-y-auto p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;">
    <code>.overflow-y-auto</code> example on an element with set width and height dimensions.
  </div>
  <div class="overflow-y-hidden p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;">
    <code>.overflow-y-hidden</code> example on an element with set width and height dimensions.
  </div>
  <div class="overflow-y-visible p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;">
    <code>.overflow-y-visible</code> example on an element with set width and height dimensions.
  </div>
  <div class="overflow-y-scroll p-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;">
    <code>.overflow-y-scroll</code> example on an element with set width and height dimensions.
  </div>
</div>

```html
<div class="overflow-y-auto">...</div>
<div class="overflow-y-hidden">...</div>
<div class="overflow-y-visible">...</div>
<div class="overflow-y-scroll">...</div>
```

Используя переменные Sass, Вы можете настроить утилиты переполнения, изменив переменную `$overflows` в `_variables.scss`.

## Sass

### Утилиты API

Утилиты переполнения объявлены в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать API утилит.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-overflow" file="scss/_utilities.scss" >}}
