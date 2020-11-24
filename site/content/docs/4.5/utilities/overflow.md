---
layout: docs
title: Переполнение
description: Используйте эти сокращенные утилиты для быстрой настройки того, как контент переполняет элемент.
group: utilities
---

Функция переполнения `overflow` Barebones по умолчанию предоставляется для двух значений, и они не реагируют.

<div class="bd-example d-md-flex">
  <div class="overflow-auto p-3 mb-3 mb-md-0 mr-md-3 bg-light" style="max-width: 260px; max-height: 100px;">
    Это пример использования <code>.overflow-auto</code> для элемента с заданными размерами ширины и высоты. По задумке, это содержимое будет прокручиваться вертикально.
  </div>
  <div class="overflow-hidden p-3 bg-light" style="max-width: 260px; max-height: 100px;">
    Это пример использования <code>.overflow-hidden</code> для элемента с заданными размерами ширины и высоты.
  </div>
</div>

```html
<div class="overflow-auto">...</div>
<div class="overflow-hidden">...</div>
```

Используя переменные Sass, вы можете настроить утилиты переполнения, изменив переменную `$overflows` в `_variables.scss`.
