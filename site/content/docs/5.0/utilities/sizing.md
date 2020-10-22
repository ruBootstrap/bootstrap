---
layout: docs
title: Размеры
description: Легко создавайте элемент такой же ширины или высоты с помощью наших утилит для ширины и высоты.
group: utilities
toc: true
---

## По отношению к родителю

Утилиты ширины и высоты генерируются из служебного API в `_utilities.scss`. По умолчанию включает поддержку `25%`, `50%`, `75%`, `100%` и `auto`. Измените эти значения, если Вам нужно создать здесь разные утилиты.

{{< example >}}
<div class="w-25 p-3" style="background-color: #eee;">Ширина 25%</div>
<div class="w-50 p-3" style="background-color: #eee;">Ширина 50%</div>
<div class="w-75 p-3" style="background-color: #eee;">Ширина 75%</div>
<div class="w-100 p-3" style="background-color: #eee;">Ширина 100%</div>
<div class="w-auto p-3" style="background-color: #eee;">Ширина авто</div>
{{< /example >}}

{{< example >}}
<div style="height: 100px; background-color: rgba(255,0,0,0.1);">
  <div class="h-25 d-inline-block" style="width: 120px; background-color: rgba(0,0,255,.1)">Высота 25%</div>
  <div class="h-50 d-inline-block" style="width: 120px; background-color: rgba(0,0,255,.1)">Высота 50%</div>
  <div class="h-75 d-inline-block" style="width: 120px; background-color: rgba(0,0,255,.1)">Высота 75%</div>
  <div class="h-100 d-inline-block" style="width: 120px; background-color: rgba(0,0,255,.1)">Высота 100%</div>
  <div class="h-auto d-inline-block" style="width: 120px; background-color: rgba(0,0,255,.1)">Высота авто</div>
</div>
{{< /example >}}

Вы также можете использовать утилиты `max-width: 100%;` и `max-height: 100%;` при необходимости.

{{< example >}}
{{< placeholder width="100%" height="100" class="mw-100" text="Максимальная ширина 100%" >}}
{{< /example >}}

{{< example >}}
<div style="height: 100px; background-color: rgba(255,0,0,.1);">
  <div class="mh-100" style="width: 100px; height: 200px; background-color: rgba(0,0,255,.1);">Максимальная высота 100%</div>
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
