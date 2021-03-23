---
layout: docs
title: Видимость
description: Управляйте видимостью элементов, не изменяя их отображение, с помощью утилит видимости.
group: utilities
---

Установите `visibility` элементов с помощью наших утилит видимости. Эти служебные классы вообще не изменяют значение `display` и не влияют на макет – `.invisible` элементы по-прежнему занимают место на странице.

{{< callout warning >}}
Элементы с классом `.invisible` будут скрыты *как* визуально, так и для пользователей вспомогательных технологий/программ чтения с экрана.
{{< /callout >}}

При необходимости используйте `.visible` или `.invisible`.

```html
<div class="visible">...</div>
<div class="invisible">...</div>
```

```scss
// Класс
.visible {
  visibility: visible !important;
}
.invisible {
  visibility: hidden !important;
}
```

## Sass

### Utilities API

Visibility utilities are declared in our utilities API in `scss/_utilities.scss`. [Learn how to use the utilities API.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-visibility" file="scss/_utilities.scss" >}}
