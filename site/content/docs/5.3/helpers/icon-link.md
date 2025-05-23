---
layout: docs
title: Иконка-ссылка
description: Быстро создавайте стилизованные гиперссылки с помощью иконок Bootstrap или других иконок.
group: helpers
toc: true
added:
  version: "5.3"
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
  <svg xmlns="http://www.w3.org/2000/svg" class="bi" viewBox="0 0 16 16" aria-hidden="true">
    <path d="M8.186 1.113a.5.5 0 0 0-.372 0L1.846 3.5l2.404.961L10.404 2l-2.218-.887zm3.564 1.426L5.596 5 8 5.961 14.154 3.5l-2.404-.961zm3.25 1.7-6.5 2.6v7.922l6.5-2.6V4.24zM7.5 14.762V6.838L1 4.239v7.923l6.5 2.6zM7.443.184a1.5 1.5 0 0 1 1.114 0l7.129 2.852A.5.5 0 0 1 16 3.5v8.662a1 1 0 0 1-.629.928l-7.185 2.874a.5.5 0 0 1-.372 0L.63 13.09a1 1 0 0 1-.63-.928V3.5a.5.5 0 0 1 .314-.464L7.443.184z"/>
  </svg>
  Иконка-ссылка
</a>
{{< /example >}}

{{< example >}}
<a class="icon-link" href="#">
  Иконка-ссылка
  <svg xmlns="http://www.w3.org/2000/svg" class="bi" viewBox="0 0 16 16" aria-hidden="true">
    <path d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
  </svg>
</a>
{{< /example >}}

## Стиль при наведении

Добавьте `.icon-link-hover`, чтобы перемещать иконку вправо при наведении.

{{< example >}}
<a class="icon-link icon-link-hover" href="#">
  Иконка-ссылка
  <svg xmlns="http://www.w3.org/2000/svg" class="bi" viewBox="0 0 16 16" aria-hidden="true">
    <path d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
  </svg>
</a>
{{< /example >}}

## Кастомизация

Измените стиль ссылки иконки с помощью наших переменных CSS, переменных Sass, утилит или пользовательских стилей.

### CSS переменные

При необходимости измените переменные CSS `--bs-link-*` и `--bs-icon-link-*`, чтобы изменить внешний вид по умолчанию.

Настройте `transform` при наведении, переопределив переменную CSS `--bs-icon-link-transform`:

{{< example >}}
<a class="icon-link icon-link-hover" style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);" href="#">
  <svg xmlns="http://www.w3.org/2000/svg" class="bi" viewBox="0 0 16 16" aria-hidden="true">
    <path d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
    <path d="M9.5 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5h3zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3z"/>
  </svg>
  Иконка-ссылка
</a>
{{< /example >}}

Настройте цвет, переопределив переменную CSS `--bs-link-*`:

{{< example >}}
<a class="icon-link icon-link-hover" style="--bs-link-hover-color-rgb: 25, 135, 84;" href="#">
  Иконка-ссылка
  <svg xmlns="http://www.w3.org/2000/svg" class="bi" viewBox="0 0 16 16" aria-hidden="true">
    <path d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
  </svg>
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
  <svg xmlns="http://www.w3.org/2000/svg" class="bi" viewBox="0 0 16 16" aria-hidden="true">
    <path d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
  </svg>
</a>
{{< /example >}}
