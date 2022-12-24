---
layout: docs
title: Стеки
description: Сокращенные помощники, которые строятся на основе наших утилит flexbox, чтобы сделать компоновку компонентов быстрее и проще, чем когда-либо.
group: helpers
toc: true
added: "5.1"
---

Стеки предлагают ярлык для применения ряда свойств flexbox для быстрого и легкого создания макетов в Bootstrap. Вся заслуга в концепции и реализации принадлежит [проекту Pylon](https://almonk.github.io/pylon/).

{{< callout warning >}}
Берегись! Поддержка утилит пробелов с помощью flexbox была недавно добавлена в Safari, поэтому подумайте о том, чтобы проверить поддержку вашего предполагаемого браузера. С макетом сетки проблем быть не должно. [Подробнее](https://caniuse.com/flexbox-gap).
{{< /callout >}}

## Вертикальный

Используйте `.vstack` для создания вертикальных макетов. По умолчанию сложенные элементы имеют полную ширину. Используйте утилиты `.gap-*` для добавления пробелов между элементами.

{{< example >}}
<div class="vstack gap-3">
  <div class="bg-body-tertiary border">First item</div>
  <div class="bg-body-tertiary border">Second item</div>
  <div class="bg-body-tertiary border">Third item</div>
</div>
{{< /example >}}

## Горизонтальный

Используйте `.hstack` для горизонтальных макетов. Сложенные элементы по умолчанию центрируются по вертикали и занимают только необходимую ширину. Используйте утилиты `.gap-*` для добавления пробелов между элементами.

{{< example >}}
<div class="hstack gap-3">
  <div class="bg-body-tertiary border">First item</div>
  <div class="bg-body-tertiary border">Second item</div>
  <div class="bg-body-tertiary border">Third item</div>
</div>
{{< /example >}}

Использование утилит с горизонтальным полем, таких как `.ms-auto` в качестве разделителей:

{{< example >}}
<div class="hstack gap-3">
  <div class="bg-body-tertiary border">First item</div>
  <div class="bg-body-tertiary border ms-auto">Second item</div>
  <div class="bg-body-tertiary border">Third item</div>
</div>
{{< /example >}}

И с [вертикальными правилами]({{< docsref "/helpers/vertical-rule" >}}):

{{< example >}}
<div class="hstack gap-3">
  <div class="bg-body-tertiary border">First item</div>
  <div class="bg-body-tertiary border ms-auto">Second item</div>
  <div class="vr"></div>
  <div class="bg-body-tertiary border">Third item</div>
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
  <input class="form-control me-auto" type="text" placeholder="Добавьте свой элемент сюда..." aria-label="Добавьте свой элемент сюда...">
  <button type="button" class="btn btn-secondary">Отправить</button>
  <div class="vr"></div>
  <button type="button" class="btn btn-outline-danger">Сбросить</button>
</div>
{{< /example >}}

## Sass

{{< scss-docs name="stacks" file="scss/helpers/_stacks.scss" >}}
