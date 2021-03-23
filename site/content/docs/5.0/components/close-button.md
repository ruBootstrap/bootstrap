---
layout: docs
title: Кнопка закрытия
description: Общая кнопка закрытия для отклонения содержимого, такого как модальные окна и предупреждения.
group: components
toc: true
---

## Пример

Предоставьте возможность отклонить или закрыть компонент с помощью `.btn-close`. Стиль по умолчанию ограничен, но легко настраивается. Измените переменные Sass, чтобы заменить стандартное `background-image`. **Не забудьте включить текст для программ чтения с экрана**, как мы сделали с `aria-label`.

{{< example >}}
<button type="button" class="btn-close" aria-label="Close"></button>
{{< /example >}}

## Отключенное состояние

Отключенные кнопки закрытия меняют свою `opacity`. Мы также применили `pointer-events: none` и `user-select: none` для предотвращения срабатывания состояния зависания и активного состояния.

{{< example >}}
<button type="button" class="btn-close" disabled aria-label="Close"></button>
{{< /example >}}

## Белый вариант

Измените значение по умолчанию `.btn-close` на белый с классом `.btn-close-white`. Этот класс использует свойство `filter` для инвертирования `background-image`.

{{< example class="bg-dark" >}}
<button type="button" class="btn-close btn-close-white" aria-label="Close"></button>
<button type="button" class="btn-close btn-close-white" disabled aria-label="Close"></button>
{{< /example >}}

## Sass

### Variables

{{< scss-docs name="close-variables" file="scss/_variables.scss" >}}
