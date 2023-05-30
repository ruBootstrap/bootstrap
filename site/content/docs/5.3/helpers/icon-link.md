---
layout: docs
title: Иконка-ссылка
description: Быстро создавайте стилизованные гиперссылки с помощью иконок Bootstrap или других иконок.
group: helpers
toc: true
added: 5.3
---

Вспомогательный компонент ссылки на иконку изменяет стили ссылок по умолчанию, улучшая их внешний вид и быстро выравнивая любое сочетание иконки и текста. Выравнивание задается с помощью встроенного стиля flexbox и значения по умолчанию `gap`. Мы стилизуем подчеркивание с помощью пользовательского смещения и цвета. Иконки автоматически имеют размер `1em`, чтобы лучше всего соответствовать размеру шрифта связанного с ними текста `font-size`.

Ссылки на иконки предполагают, что используются [Bootstrap Icons](https://icons.getbootstrap.com), но вы можете использовать любая иконка или изображение, которое вам нравится.

{{< callout >}}
Если иконки носят исключительно декоративный характер, их следует скрыть от вспомогательных технологий с помощью `aria-hidden="true"`, как мы сделали в наших примерах. Для иконок, которые передают значение, предоставьте соответствующую текстовую альтернативу, добавив `role="img"` и соответствующий `aria-label="..."` к SVGs.
{{< /callout >}}

## Пример

Возьмите обычный элемент `<a>`, добавьте `.icon-link` и вставьте иконку слева или справа от текста ссылки. Размер иконки автоматически изменяется, он размещается и окрашивается.

{{< example >}}
<a class="icon-link" href="#">
  <svg class="bi" aria-hidden="true"><use xlink:href="#box-seam"></use></svg>
  Иконка-ссылка
</a>
{{< /example >}}

{{< example >}}
<a class="icon-link" href="#">
  Иконка-ссылка
  <svg class="bi" aria-hidden="true"><use xlink:href="#arrow-right"></use></svg>
</a>
{{< /example >}}

## Стиль при наведении

Добавьте `.icon-link-hover`, чтобы перемещать иконку вправо при наведении.

{{< example >}}
<a class="icon-link icon-link-hover" href="#">
  Иконка-ссылка
  <svg class="bi" aria-hidden="true"><use xlink:href="#arrow-right"></use></svg>
</a>
{{< /example >}}

## Кастомизация

Измените стиль ссылки иконки с помощью наших переменных CSS, переменных Sass, утилит или пользовательских стилей.

### CSS переменные

При необходимости измените переменные CSS `--bs-link-*` и `--bs-icon-link-*`, чтобы изменить внешний вид по умолчанию.

Настройте `transform` при наведении, переопределив переменную CSS `--bs-icon-link-transform`:

{{< example >}}
<a class="icon-link icon-link-hover" style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);" href="#">
  <svg class="bi" aria-hidden="true"><use xlink:href="#clipboard"></use></svg>
  Иконка-ссылка
</a>
{{< /example >}}

Настройте цвет, переопределив переменную CSS `--bs-link-*`:

{{< example >}}
<a class="icon-link icon-link-hover" style="--bs-link-hover-color-rgb: 25, 135, 84;" href="#">
  Иконка-ссылка
  <svg class="bi" aria-hidden="true"><use xlink:href="#arrow-right"></use></svg>
</a>
{{< /example >}}

### Sass переменные

Настройте переменные Sass для ссылок на иконки, чтобы изменить все стили ссылок на иконки в вашем проекте на основе Bootstrap.

{{< scss-docs name="icon-link-variables" file="scss/_variables.scss" >}}

### Sass API утилиты

Измените ссылки на иконки с помощью любой из [наших утилит ссылок]({{< docsref "/utilities/link/" >}}) для изменения цвета подчеркивания и смещения.

{{< example >}}
<a class="icon-link icon-link-hover link-success link-underline-success link-underline-opacity-25" href="#">
  Иконка-ссылка
  <svg class="bi" aria-hidden="true"><use xlink:href="#arrow-right"></use></svg>
</a>
{{< /example >}}
