---
layout: docs
title: Непрозрачность
description: Управляйте непрозрачностью элементов.
group: utilities
added: "5.1"
---

Свойство `opacity` устанавливает уровень непрозрачности элемента. Уровень непрозрачности описывает уровень прозрачности, где `1` вообще не прозрачен, `.5` - видимый на 50%, а `0` - полностью прозрачный.

Установите непрозрачность `opacity` элемента с помощью утилит `.opacity-{value}`.

<div class="bd-example d-sm-flex">
  <div class="opacity-100 p-3 m-2 bg-primary text-light fw-bold rounded">100%</div>
  <div class="opacity-75 p-3 m-2 bg-primary text-light fw-bold rounded">75%</div>
  <div class="opacity-50 p-3 m-2 bg-primary text-light fw-bold rounded">50%</div>
  <div class="opacity-25 p-3 m-2 bg-primary text-light fw-bold rounded">25%</div>
  <div class="opacity-0 p-3 m-2 bg-primary text-light fw-bold rounded">0%</div>
</div>

```html
<div class="opacity-100">...</div>
<div class="opacity-75">...</div>
<div class="opacity-50">...</div>
<div class="opacity-25">...</div>
<div class="opacity-0">...</div>
```

## CSS

### Sass API утилиты

Утилиты непрозрачности объявлены в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать API утилит]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-opacity" file="scss/_utilities.scss" >}}
