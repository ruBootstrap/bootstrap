---
layout: docs
title: Видимость
description: Управляйте видимостью без изменения отображения элементов с помощью утилит видимости.
group: utilities
---

Установите `visibility` элементов с помощью наших утилит видимости. Эти служебные классы вообще не изменяют значение `display` и не влияют на макет - элементы `.invisible` по-прежнему занимают место на странице. Контент будет скрыт как визуально, так и для пользователей вспомогательных технологий / программ чтения с экрана.

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

// Использование в качестве миксина
// Предупреждение: Миксин `invisible()` устарел с версии 4.3.0. Он будет полностью удален в v5.
.element {
  @include invisible(visible);
}
.element {
  @include invisible(hidden);
}
```
