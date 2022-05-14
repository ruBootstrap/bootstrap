---
layout: docs
title: Вертикальный разделитель
description: Используйте вспомогательную функцию настраиваемых вертикальных правил для создания вертикальных разделителей, таких как элемент `<hr>`.
group: helpers
toc: true
added: "5.1"
---

## Как это устроено

Вертикальные правила основаны на элементе `<hr>`, позволяющем создавать вертикальные разделители в общих макетах. Они стилизованы так же, как элементы `<hr>`:

- Они имеют ширину `1px`
- У них `min-height` равняется `1em`
- Их цвет устанавливается через `currentColor` и `opacity`

При необходимости настройте их дополнительными стилями.

## Пример

{{< example >}}
<div class="vr"></div>
{{< /example >}}

Вертикальные правила масштабируют свою высоту в гибких макетах:

{{< example >}}
<div class="d-flex" style="height: 200px;">
  <div class="vr"></div>
</div>
{{< /example >}}

## Со стеками

Их также можно использовать в [стеках]({{< docsref "/helpers/stacks" >}}):

{{< example >}}
<div class="hstack gap-3">
  <div class="bg-light border">Первый элемент</div>
  <div class="bg-light border ms-auto">Второй элемент</div>
  <div class="vr"></div>
  <div class="bg-light border">Третий элемент</div>
</div>
{{< /example >}}
