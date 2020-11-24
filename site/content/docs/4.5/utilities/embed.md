---
layout: docs
title: Встраивание
description: Создавайте адаптивные встраиваемые видео или слайд-шоу на основе ширины родительского элемента, создавая внутреннее соотношение, которое масштабируется на любом устройстве.
group: utilities
toc: true
---

## Обзор

Правила напрямую применяются к элементам `<iframe>`, `<embed>`, `<video>` и `<object>`; необязательно использовать явный класс-потомок `.embed-responsive-item`, если Вы хотите согласовать стиль для других атрибутов.

**Профессиональный совет!** Вам не нужно включать `frameborder="0"` в Ваши `<iframe>` поскольку мы переопределяем это для Вас.

## Пример

Оберните любое встраивание, например, `<iframe>`, в родительский элемент с помощью `.embed-responsive` и соотношения сторон. Использование `.embed-responsive-item` необязательно, но мы поощряем его.

{{< example >}}
<div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/zpOULjyy-n8?rel=0" allowfullscreen></iframe>
</div>
{{< /example >}}

## Соотношения сторон

Соотношения сторон можно настроить с помощью классов-модификаторов. По умолчанию предусмотрены следующие классы соотношений:

```html
<!-- Соотношение сторон 21:9 -->
<div class="embed-responsive embed-responsive-21by9">
  <iframe class="embed-responsive-item" src="..."></iframe>
</div>

<!-- Соотношение сторон 16:9 -->
<div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src="..."></iframe>
</div>

<!-- Соотношение сторон 4:3 -->
<div class="embed-responsive embed-responsive-4by3">
  <iframe class="embed-responsive-item" src="..."></iframe>
</div>

<!-- Соотношение сторон 1:1 -->
<div class="embed-responsive embed-responsive-1by1">
  <iframe class="embed-responsive-item" src="..."></iframe>
</div>
```

В `_variables.scss` Вы можете изменить соотношение сторон, которое Вы хотите использовать. Вот пример списка `$embed-responsive-aspect-ratios`:

```scss
$embed-responsive-aspect-ratios: (
  (21 9),
  (16 9),
  (4 3),
  (1 1)
) !default;
```
