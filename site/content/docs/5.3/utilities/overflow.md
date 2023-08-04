---
layout: docs
title: Переполнение
description: Используйте эти сокращенные утилиты для быстрой настройки того, как контент выходит за пределы элемента.
group: utilities
toc: true
---

## Переполнение

Настройте свойство `overflow` на лету с четырьмя значениями и классами по умолчанию. Эти классы по умолчанию не реагируют.

<div class="bd-example d-md-flex">
  <div class="overflow-auto p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary" style="max-width: 260px; max-height: 100px;">
    Это пример использования <code>.overflow-auto</code> для элемента с заданными размерами ширины и высоты. По дизайну этот контент будет прокручиваться вертикально.
  </div>
  <div class="overflow-hidden p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary" style="max-width: 260px; max-height: 100px;">
    Это пример использования <code>.overflow-hidden</code> для элемента с заданными размерами ширины и высоты.
  </div>
  <div class="overflow-visible p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary" style="max-width: 260px; max-height: 100px;">
    Это пример использования <code>.overflow-visible</code> для элемента с заданными размерами ширины и высоты.
  </div>
  <div class="overflow-scroll p-3 bg-body-tertiary" style="max-width: 260px; max-height: 100px;">
    Это пример использования <code>.overflow-scroll</code> для элемента с заданными размерами ширины и высоты.
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
    <div>Пример <code>.overflow-x-auto</code> для элемента</div>
    <div> с заданными размерами ширины и высоты.</div>
  </div>
  <div class="overflow-x-hidden p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;white-space: nowrap;">
    <div>Пример <code>.overflow-x-hidden</code> example</div>
    <div>для элемента с заданными размерами ширины и высоты.</div>
  </div>
  <div class="overflow-x-visible p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;white-space: nowrap;">
    <div>Пример <code>.overflow-x-visible</code> example </div>
    <div>для элемента с заданными размерами ширины и высоты.</div>
  </div>
  <div class="overflow-x-scroll p-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;white-space: nowrap;">
    <div>Пример <code>.overflow-x-scroll</code> для элемента</div>
    <div> с заданными размерами ширины и высоты.</div>
  </div>
</div>

```html
<div class="overflow-x-auto">...</div>
<div class="overflow-x-hidden">...</div>
<div class="overflow-x-visible">...</div>
<div class="overflow-x-scroll">...</div>
```

### `overflow-y`

Настройте свойство `overflow-y`, чтобы повлиять на переполнение содержимого по вертикали.

<div class="bd-example d-md-flex">
  <div class="overflow-y-auto p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;">
    Пример <code>.overflow-y-auto</code> для элемента с заданными размерами ширины и высоты.
  </div>
  <div class="overflow-y-hidden p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;">
    Пример <code>.overflow-y-hidden</code> для элемента с заданными размерами ширины и высоты.
  </div>
  <div class="overflow-y-visible p-3 mb-3 mb-md-0 me-md-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;">
    Пример <code>.overflow-y-visible</code> для элемента с заданными размерами ширины и высоты.
  </div>
  <div class="overflow-y-scroll p-3 bg-body-tertiary w-100" style="max-width: 200px; max-height: 100px;">
    Пример <code>.overflow-y-scroll</code> для элемента с заданными размерами ширины и высоты.
  </div>
</div>

```html
<div class="overflow-y-auto">...</div>
<div class="overflow-y-hidden">...</div>
<div class="overflow-y-visible">...</div>
<div class="overflow-y-scroll">...</div>
```

Используя переменные Sass, Вы можете настроить утилиты переполнения, изменив переменную `$overflows` в `_variables.scss`.

## CSS

### Sass API утилиты

Утилиты переполнения объявлены в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать API утилит.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-overflow" file="scss/_utilities.scss" >}}
