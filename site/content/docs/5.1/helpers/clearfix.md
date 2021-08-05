---
layout: docs
title: Clearfix
description: Быстрая и легкая очистка плавающего контента в контейнере, добавив утилиту clearfix.
group: helpers
aliases: "/docs/5.1/helpers/"
---

Легко очистить `float`, добавив `.clearfix` **к родительскому элементу**. Также может использоваться как миксин.

Использование в HTML:

```html
<div class="clearfix">...</div>
```

Исходный код миксина:

{{< scss-docs name="clearfix" file="scss/mixins/_clearfix.scss" >}}

Используйте миксин в SCSS:

```scss
.element {
  @include clearfix;
}
```

В следующем примере показано, как можно использовать clearfix. Без clearfix обертывающий div не будет охватывать кнопки, что приведет к нарушению макета.

{{< example >}}
<div class="bg-info clearfix">
  <button type="button" class="btn btn-secondary float-start">Кнопка примера перемещена влево</button>
  <button type="button" class="btn btn-secondary float-end">Кнопка примера перемещена вправо</button>
</div>
{{< /example >}}
