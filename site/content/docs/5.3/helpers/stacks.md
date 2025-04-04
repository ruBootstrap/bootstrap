---
layout: docs
title: Стеки
description: Сокращенные помощники, которые строятся на основе наших утилит flexbox, чтобы сделать компоновку компонентов быстрее и проще, чем когда-либо.
group: helpers
toc: true
added:
  version: "5.1"
---

Стеки предлагают ярлык для применения ряда свойств flexbox для быстрого и легкого создания макетов в Bootstrap. Вся заслуга в концепции и реализации принадлежит [проекту Pylon](https://almonk.github.io/pylon/).

{{< callout warning >}}
**Внимание!** Поддержка утилит gap с flexbox недоступна в Safari до версии 14.5, поэтому рассмотрите возможность проверки предполагаемой поддержки браузером. Сетка макета не должна иметь проблем. [Подробнее](https://caniuse.com/flexbox-gap).
{{< /callout >}}

## Вертикальный

Используйте `.vstack` для создания вертикальных макетов. По умолчанию сложенные элементы имеют полную ширину. Используйте утилиты `.gap-*` для добавления пробелов между элементами.

{{< example class="bd-example-flex" >}}
<div class="vstack gap-3">
  <div class="p-2">Первый элемент</div>
  <div class="p-2">Второй элемент</div>
  <div class="p-2">Третий элемент</div>
</div>
{{< /example >}}

## Горизонтальный

Используйте `.hstack` для горизонтальных макетов. Сложенные элементы по умолчанию центрируются по вертикали и занимают только необходимую ширину. Используйте утилиты `.gap-*` для добавления пробелов между элементами.

{{< example class="bd-example-flex" >}}
<div class="hstack gap-3">
  <div class="p-2">Первый элемент</div>
  <div class="p-2">Второй элемент</div>
  <div class="p-2">Третий элемент</div>
</div>
{{< /example >}}

Использование утилит с горизонтальным полем, таких как `.ms-auto` в качестве разделителей:

{{< example class="bd-example-flex" >}}
<div class="hstack gap-3">
  <div class="p-2">Первый элемент</div>
  <div class="p-2 ms-auto">Второй элемент</div>
  <div class="p-2">Третий элемент</div>
</div>
{{< /example >}}

И с [вертикальными правилами]({{< docsref "/helpers/vertical-rule" >}}):

{{< example class="bd-example-flex" >}}
<div class="hstack gap-3">
  <div class="p-2">Первый элемент</div>
  <div class="p-2 ms-auto">Второй элемент</div>
  <div class="vr"></div>
  <div class="p-2">Третий элемент</div>
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

## CSS

{{< scss-docs name="stacks" file="scss/helpers/_stacks.scss" >}}
