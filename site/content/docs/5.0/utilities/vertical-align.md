---
layout: docs
title: Вертикальное выравнивание
description: Легко изменяйте вертикальное выравнивание элементов inline, inline-block, inline-table и table cell.
group: utilities
---

Измените выравнивание элементов с помощью утилит [`vertical-alignment`](https://developer.mozilla.org/en-US/docs/Web/CSS/vertical-align). Обратите внимание, что vertical-align влияет только на элементы inline, inline-block, inline-table и table cell elements.

При необходимости выберите `.align-baseline`, `.align-top`, `.align-middle`, `.align-bottom`, `.align-text-bottom` и `.align-text-top`.

Чтобы вертикально центрировать невстроенный контент (например `<div>` и другие), используйте наши [утилиты flexbox]({{< docsref "/utilities/flex#align-items" >}}).

Со строчными элементами:

{{< example >}}
<span class="align-baseline">baseline</span>
<span class="align-top">top</span>
<span class="align-middle">middle</span>
<span class="align-bottom">bottom</span>
<span class="align-text-top">text-top</span>
<span class="align-text-bottom">text-bottom</span>
{{< /example >}}

С ячейками таблицы:

{{< example >}}
<table style="height: 100px;">
  <tbody>
    <tr>
      <td class="align-baseline">baseline</td>
      <td class="align-top">top</td>
      <td class="align-middle">middle</td>
      <td class="align-bottom">bottom</td>
      <td class="align-text-top">text-top</td>
      <td class="align-text-bottom">text-bottom</td>
    </tr>
  </tbody>
</table>
{{< /example >}}
