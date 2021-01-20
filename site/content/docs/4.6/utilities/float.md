---
layout: docs
title: Float
description: Переключайте числа с плавающей запятой на любом элементе и в любой точке останова с помощью наших гибких утилит с плавающей запятой.
group: utilities
toc: true
---

## Обзор

Эти служебные классы перемещают элемент влево или вправо или отключают плавающее положение в зависимости от текущего размера области просмотра с помощью [свойства CSS `float`](https://developer.mozilla.org/en-US/docs/Web/CSS/float). `!important` включен, чтобы избежать проблем со специфичностью. Они используют те же точки останова области просмотра, что и наша сеточная система. Имейте в виду, что плавающие утилиты не влияют на гибкие элементы.

## Классы

Переключить плавающий элемент с классом:

{{< example >}}
<div class="float-left">Плавающий слева на всех размерах области просмотра</div><br>
<div class="float-right">Плавающий справа при всех размерах области просмотра</div><br>
<div class="float-none">Не плавающий при всех размерах области просмотра</div>
{{< /example >}}

## Миксины

Или с помощью миксина Sass:

```scss
.element {
  @include float-left;
}
.another-element {
  @include float-right;
}
.one-more {
  @include float-none;
}
```

## Адаптивный

Адаптивные варианты также существуют для каждого значения `float`.

{{< example >}}
<div class="float-sm-left">Плавающие влево на размере окна просмотра SM (маленький) или шире</div><br>
<div class="float-md-left">Плавающие влево на размере окна просмотра MD (средний) или шире</div><br>
<div class="float-lg-left">Плавающие влево на размере окна просмотра LG (большой) или шире</div><br>
<div class="float-xl-left">Плавающие влево на размере окна просмотра XL (очень большой) или шире</div><br>
{{< /example >}}

Вот все классы поддержки;

{{< markdown >}}
{{< float.inline >}}
{{- range $.Site.Data.breakpoints }}
- `.float{{ .abbr }}-left`
- `.float{{ .abbr }}-right`
- `.float{{ .abbr }}-none`
{{- end -}}
{{< /float.inline >}}
{{< /markdown >}}
