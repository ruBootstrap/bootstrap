---
layout: docs
title: Замена изображения
description: Поменяйте местами текст на фоновые изображения с классом замены изображения.
group: utilities
---

{{< callout warning >}}
##### Предупреждение

Класс и миксин `text-hide()` устарели с версии 4.1. Он будет полностью удален в v5.
{{< /callout >}}

Используйте класс или миксин `.text-hide`, чтобы заменить текстовое содержимое элемента фоновым изображением.

```html
<h1 class="text-hide">Пользовательский заголовок</h1>
```

```scss
// Использование в качестве миксина
.heading {
  @include text-hide;
}
```

Используйте класс `.text-hide` для обеспечения доступности и SEO-преимуществ тегов заголовков, но Вы хотите использовать `background-image` вместо текста.

<div class="bd-example">
  <h1 class="text-hide" style="background-image: url('/docs/{{< param docs_version >}}/assets/brand/bootstrap-solid.svg'); width: 50px; height: 50px;">Bootstrap</h1>
</div>

```html
<h1 class="text-hide" style="background-image: url('...');">Bootstrap</h1>
```
