---
layout: docs
title: Вертикальное выравнивание
description: Легко изменяйте вертикальное выравнивание встроенных, встроенно-блочных, встроенно-табличных и ячеек таблицы элементов.
group: utilities
---

Измените выравнивание элементов с помощью утилит [`vertical-alignment`](https://developer.mozilla.org/en-US/docs/Web/CSS/vertical-align). Обратите внимание, что `vertical-align` влияет только на элементы `inline`, `inline-block`, `inline-table` и `table`.

При необходимости выберите `.align-baseline`, `.align-top`, `.align-middle`, `.align-bottom`, `.align-text-bottom` и `.align-text-top`.

Со встроенными элементами:

{{< example >}}
<span class="align-baseline">базовая линия</span>
<span class="align-top">верх</span>
<span class="align-middle">середина</span>
<span class="align-bottom">низ</span>
<span class="align-text-top">верх текста</span>
<span class="align-text-bottom">низ текста</span>
{{< /example >}}

С ячейками таблицы:

{{< example >}}
<table style="height: 100px;">
  <tbody>
    <tr>
      <td class="align-baseline">базовая линия</td>
      <td class="align-top">верх</td>
      <td class="align-middle">середина</td>
      <td class="align-bottom">низ</td>
      <td class="align-text-top">верх текста</td>
      <td class="align-text-bottom">низ текста</td>
    </tr>
  </tbody>
</table>
{{< /example >}}
