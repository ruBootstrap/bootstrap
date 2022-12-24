---
layout: docs
title: Интервал
description: Bootstrap включает в себя широкий набор сокращенных вспомогательных классов полей, отступов и разрывов для изменения внешнего вида элемента.
group: utilities
toc: true
---

## Поля и отступы

Присваивайте удобные для восприятия значения `margin` или `padding` элементу или подмножеству его сторон с помощью сокращенных классов. Включает поддержку отдельных свойств, всех свойств, а также свойств по вертикали и горизонтали. Классы строятся из карты Sass по умолчанию в диапазоне от `.25rem` до `3rem`.

{{< callout >}}
**Используете модуль компоновки CSS Grid?** Вместо этого рассмотрите возможность использования [утилиты разрыва](#разрыв).
{{< /callout >}}

### Примечание

Утилиты интервалов, которые применяются ко всем контрольным точкам, от `xs` до `xxl`, не имеют в них аббревиатуры контрольные точки. Это связано с тем, что эти классы применяются начиная с `min-width: 0` и выше и поэтому не связаны медиа-запросом. Остальные контрольные точки, однако, содержат аббревиатуру контрольные точки.

Классы именуются в формате `{property}{sides}-{size}` для `xs` и `{property}{sides}-{breakpoint}-{size}` для `sm`, `md`, `lg`, `xl` и `xxl`.

Где *свойство* - одно из:

- `m` - для классов, которые устанавливают `margin`
- `p` - для классов, которые устанавливают `padding`

Где *стороны* - одна из:

- `t` - для классов, которые устанавливают `margin-top` или `padding-top`
- `b` - для классов, которые устанавливают `margin-bottom` или `padding-bottom`
- `s` - (старт) для классов, которые устанавливают `margin-left` или `padding-left` в LTR, `margin-right` или `padding-right` в RTL
- `e` - (конец) для классов, которые устанавливают `margin-right` или `padding-right` в LTR, `margin-left` или `padding-left` в RTL
- `x` - для классов, которые устанавливают оба `*-left` и `*-right`
- `y` - для классов, которые устанавливают оба `*-top` и `*-bottom`
- `blank` - для классов, которые устанавливают `margin` или `padding` со всех 4 сторон элемента

Где *размер* - один из:

- `0` - или классы, устраняющие `margin` или `padding` установив его на `0`
- `1` - (по умолчанию) для классов, которые устанавливают the `margin` или `padding` равным `$spacer * .25`
- `2` - (по умолчанию) для классов, которые устанавливают the `margin` или `padding` равным `$spacer * .5`
- `3` - (по умолчанию) для классов, которые устанавливают the `margin` или `padding` равным `$spacer`
- `4` - (по умолчанию) для классов, которые устанавливают the `margin` или `padding` равным `$spacer * 1.5`
- `5` - (по умолчанию) для классов, которые устанавливают the `margin` или `padding` равным `$spacer * 3`
- `auto` - для классов, которые устанавливают `margin` равным авто

### Примеры

```scss
.mt-0 {
  margin-top: 0 !important;
}

.ms-1 {
  margin-left: ($spacer * .25) !important;
}

.px-2 {
  padding-left: ($spacer * .5) !important;
  padding-right: ($spacer * .5) !important;
}

.p-3 {
  padding: $spacer !important;
}
```

### Горизонтальное центрирование

Кроме того, Bootstrap также включает класс `.mx-auto` для горизонтального центрирования содержимого уровня блока фиксированной ширины, то есть содержимого, имеющего набор `display: block` и `width`, путем установки горизонтальных полей на `auto`.

<div class="bd-example">
  <div class="mx-auto" style="width: 200px; background-color: rgba(86,61,124,.15);">
    Центрированный элемент
  </div>
</div>

```html
<div class="mx-auto" style="width: 200px;">
  Центрированный элемент
</div>
```

## Отрицательное поле

В CSS свойства `margin` могут использовать отрицательные значения (`padding` не может). Эти отрицательные поля **отключены по умолчанию**, но могут быть включены в Sass, установив `$enable-negative-margins: true`.

Синтаксис почти такой же, как у утилит с положительным значением поля по умолчанию, но с добавлением `n` перед запрошенным размером. Вот пример класса, противоположного `.mt-1`:

```scss
.mt-n1 {
  margin-top: -0.25rem !important;
}
```

## Разрыв

При использовании `display: grid` или `display: flex`, вы можете использовать утилиты `gap` для родительского элемента. Это может сэкономить на необходимости добавлять утилиты маржи к отдельным дочерним элементам сетки или гибкого контейнера. Утилиты Gap по умолчанию реагируют и генерируются с помощью нашего API утилит на основе карты Sass `$spacers`.

{{< example class="bd-example-cssgrid" >}}
<div class="grid gap-3">
  <div class="p-2 g-col-6">Grid item 1</div>
  <div class="p-2 g-col-6">Grid item 2</div>
  <div class="p-2 g-col-6">Grid item 3</div>
  <div class="p-2 g-col-6">Grid item 4</div>
</div>
{{< /example >}}

Поддержка включает в себя адаптивные параметры для всех контрольных точек сетки Bootstrap, а также шесть размеров из карты `$spacers` (`0`–`5`). Не существует класса утилиты `.gap-auto`, поскольку он фактически совпадает с `.gap-0`.

### row-gap

`row-gap` устанавливает расстояние по вертикали между дочерними элементами в указанном контейнере.

{{< example class="bd-example-cssgrid" >}}
<div class="grid gap-0 row-gap-3">
  <div class="p-2 g-col-6">Grid item 1</div>
  <div class="p-2 g-col-6">Grid item 2</div>
  <div class="p-2 g-col-6">Grid item 3</div>
  <div class="p-2 g-col-6">Grid item 4</div>
</div>
{{< /example >}}

### column-gap

`column-gap` устанавливает горизонтальное расстояние между дочерними элементами в указанном контейнере.

{{< example class="bd-example-cssgrid" >}}
<div class="grid gap-0 column-gap-3">
  <div class="p-2 g-col-6">Grid item 1</div>
  <div class="p-2 g-col-6">Grid item 2</div>
  <div class="p-2 g-col-6">Grid item 3</div>
  <div class="p-2 g-col-6">Grid item 4</div>
</div>
{{< /example >}}

## Sass

### Карты

Утилиты Spacing объявляются через карту Sass, а затем генерируются с помощью нашего API утилит.

{{< scss-docs name="spacer-variables-maps" file="scss/_variables.scss" >}}

### Утилиты API

Утилиты интервалов объявлены в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать API утилит.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-spacing" file="scss/_utilities.scss" >}}
