---
layout: docs
title: Укорачивание текста
description: Обрезать длинные строки текста с помощью многоточия.
group: helpers
toc: false
---

Для более длинного содержимого Вы можете добавить класс `.text-truncate`, чтобы обрезать текст многоточием. **Требуется `display: inline-block` или `display: block`.**

{{< example >}}
<!-- Блочный уровень -->
<div class="row">
  <div class="col-2 text-truncate">
    Praeterea iter est quasdam res quas ex communi.
  </div>
</div>

<!-- Строчный уровень -->
<span class="d-inline-block text-truncate" style="max-width: 150px;">
  Praeterea iter est quasdam res quas ex communi.
</span>
{{< /example >}}
