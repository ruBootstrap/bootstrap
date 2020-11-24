---
layout: docs
title: Clearfix
description: Быстро и легко очистите плавающий контент в контейнере, добавив утилиту clearfix.
group: utilities
---

Легко очистить `float`, добавив `.clearfix` **к родительскому элементу**. Также может использоваться как миксин.

```html
<div class="clearfix">...</div>
```

```scss
// Сам миксин
@mixin clearfix() {
  &::after {
    display: block;
    content: "";
    clear: both;
  }
}

// Использование в качестве миксина
.element {
  @include clearfix;
}
```

В следующем примере показано, как можно использовать clearfix. Без `clearfix` обертывающий `div` не будет охватывать кнопки, что приведет к нарушению макета.

{{< example >}}
<div class="bg-info clearfix">
  <button type="button" class="btn btn-secondary float-left">Кнопка примера перемещена влево</button>
  <button type="button" class="btn btn-secondary float-right">Кнопка примера перемещена вправо</button>
</div>
{{< /example >}}
