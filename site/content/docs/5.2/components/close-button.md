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
<button type="button" class="btn-close" aria-label="Закрыть"></button>
{{< /example >}}

## Отключенное состояние

Отключенные кнопки закрытия меняют свою `opacity`. Мы также применили `pointer-events: none` и `user-select: none` для предотвращения срабатывания состояния зависания и активного состояния.

{{< example >}}
<button type="button" class="btn-close" disabled aria-label="Закрыть"></button>
{{< /example >}}

## Темный вариант

{{< callout info >}}
**Внимание!** Начиная с версии 5.3.0, класс `.btn-close-white` устарел. Вместо этого используйте `data-bs-theme="dark"`, чтобы изменить цветовой режим кнопки закрытия.
{{< /callout >}}

Добавьте `data-bs-theme="dark"` к `.btn-close` или к его родительскому элементу, чтобы инвертировать кнопку закрытия. Это использует свойство `filter` для инвертирования `background-image` без переопределения его значения.

{{< example class="bg-dark" >}}
<div data-bs-theme="dark">
  <button type="button" class="btn-close" aria-label="Закрыть"></button>
  <button type="button" class="btn-close" disabled aria-label="Закрыть"></button>
</div>
{{< /example >}}

## Sass

### Переменные

{{< scss-docs name="close-variables" file="scss/_variables.scss" >}}
