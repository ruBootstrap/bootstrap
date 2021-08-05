---
layout: docs
title: Стеки
description: Сокращенные помощники, которые строятся на основе наших утилит flexbox, чтобы сделать компоновку компонентов быстрее и проще, чем когда-либо.
group: helpers
toc: true
---

Стеки предлагают ярлык для применения ряда свойств flexbox для быстрого и легкого создания макетов в Bootstrap. Вся заслуга в концепции и реализации принадлежит [проекту Pylon](https://almonk.github.io/pylon/).

## Вертикальный

Используйте `.vstack` для создания вертикальных макетов. По умолчанию сложенные элементы имеют полную ширину. Используйте утилиты `.gap-*` для добавления пробелов между элементами.

{{< example >}}
<div class="vstack gap-3">
  <div class="bg-light border">Первый элемент</div>
  <div class="bg-light border">Второй элемент</div>
  <div class="bg-light border">Третий элемент</div>
</div>
{{< /example >}}

## Горизонтальный

Используйте `.hstack` для горизонтальных макетов. Сложенные элементы по умолчанию центрируются по вертикали и занимают только необходимую ширину. Используйте утилиты `.gap-*` для добавления пробелов между элементами.

{{< example >}}
<div class="hstack gap-3">
  <div class="bg-light border">Первый элемент</div>
  <div class="bg-light border">Второй элемент</div>
  <div class="bg-light border">Третий элемент</div>
</div>
{{< /example >}}

Использование утилит с горизонтальным полем, таких как `.ms-auto` в качестве разделителей:

{{< example >}}
<div class="hstack gap-3">
  <div class="bg-light border">Первый элемент</div>
  <div class="bg-light border ms-auto">Второй элемент</div>
  <div class="bg-light border">Третий элемент</div>
</div>
{{< /example >}}

И с [вертикальными правилами]({{< docsref "/helpers/vertical-rule" >}}):

{{< example >}}
<div class="hstack gap-3">
  <div class="bg-light border">Первый элемент</div>
  <div class="bg-light border ms-auto">Второй элемент</div>
  <div class="vr"></div>
  <div class="bg-light border">Третий элемент</div>
</div>
{{< /example >}}

## Примеры

Используйте `.vstack`, чтобы складывать кнопки и другие элементы:

{{< example >}}
<div class="vstack gap-2 col-md-5 mx-auto">
  <button type="button" class="btn btn-secondary">Сохранить изменения</button>
  <button type="button" class="btn btn-outline-secondary">Отменить</button>
</div>
{{< /example >}}

Создайте встроенную форму с помощью `.hstack`:

{{< example >}}
<div class="hstack gap-3">
  <input class="form-control me-auto" type="text" placeholder="Добавьте сюда свой товар...">
  <button type="button" class="btn btn-secondary">Отправить</button>
  <div class="vr"></div>
  <button type="button" class="btn btn-outline-danger">Сбросить</button>
</div>
{{< /example >}}

## Sass

{{< scss-docs name="stacks" file="scss/helpers/_stacks.scss" >}}
