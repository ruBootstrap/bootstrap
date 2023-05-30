---
layout: docs
title: Размеры
description: Легко создавайте элемент такой же ширины или высоты с помощью наших утилит для ширины и высоты.
group: utilities
toc: true
---

## По отношению к родителю

Утилиты ширины и высоты генерируются из служебного API в `_utilities.scss`. По умолчанию включает поддержку `25%`, `50%`, `75%`, `100%` и `auto`. Измените эти значения, если Вам нужно создать здесь разные утилиты.

{{< example class="bd-example-flex" >}}
<div class="w-25 p-3">Ширина 25%</div>
<div class="w-50 p-3">Ширина 50%</div>
<div class="w-75 p-3">Ширина 75%</div>
<div class="w-100 p-3">Ширина 100%</div>
<div class="w-auto p-3">Ширина auto</div>
{{< /example >}}

{{< example class="bd-example-flex" >}}
<div style="height: 100px;">
  <div class="h-25 d-inline-block" style="width: 120px;">Высота 25%</div>
  <div class="h-50 d-inline-block" style="width: 120px;">Высота 50%</div>
  <div class="h-75 d-inline-block" style="width: 120px;">Высота 75%</div>
  <div class="h-100 d-inline-block" style="width: 120px;">Высота 100%</div>
  <div class="h-auto d-inline-block" style="width: 120px;">Высота авто</div>
</div>
{{< /example >}}

Вы также можете использовать утилиты `max-width: 100%;` и `max-height: 100%;` при необходимости.

{{< example class="bd-example-flex" >}}
<div style="width: 50%; height: 100px;">
  <div class="mw-100" style="width: 200%;">Максимальная ширина 100%</div>
</div>
{{< /example >}}

{{< example class="bd-example-flex" >}}
<div style="height: 100px;">
  <div class="mh-100" style="width: 100px; height: 200px;">Максимальная высота 100%</div>
</div>
{{< /example >}}

## Относительно области просмотра

Вы также можете использовать утилиты для установки ширины и высоты относительно области просмотра.

```html
<div class="min-vw-100">Минимальная ширина 100vw</div>
<div class="min-vh-100">Минимальная высота 100vh</div>
<div class="vw-100">Ширина 100vw</div>
<div class="vh-100">Высота 100vh</div>
```

## CSS

### Sass API утилиты

Утилиты размера указаны в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать API утилит.]({{< docsref "/utilities/api#использование-api" >}})

{{< scss-docs name="utils-sizing" file="scss/_utilities.scss" >}}
