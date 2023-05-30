---
layout: docs
title: Плавающие
description: Переключайте плавающие на любом элементе и в любой контрольной точке с помощью наших гибких утилит float.
group: utilities
toc: true
---

## Обзор

Эти служебные классы перемещают элемент влево или вправо или отключают плавающее положение в зависимости от текущего размера области просмотра с помощью [свойства CSS `float`](https://developer.mozilla.org/en-US/docs/Web/CSS/float). `!important` включен, чтобы избежать проблем со специфичностью. Они используют те же контрольные точки области просмотра, что и наша сеточная система. Имейте в виду, что плавающие утилиты не влияют на гибкие элементы.

{{< example >}}
<div class="float-start">Плавающий влево на всех размерах области просмотра</div><br>
<div class="float-end">Плавающий вправо при всех размерах области просмотра</div><br>
<div class="float-none">Не плавающий при всех размерах области просмотра</div>
{{< /example >}}

## Адаптивность

Адаптивные варианты также существуют для каждого значения `float`.

{{< example >}}
<div class="float-sm-start">Плавающий влево на SM (маленький) размере области просмотра или шире</div><br>
<div class="float-md-start">Плавающий влево на MD (средний) размере области просмотра или шире</div><br>
<div class="float-lg-start">Плавающий влево на LG (большой) размере области просмотра или шире</div><br>
<div class="float-xl-start">Плавающий влево на XL (очень большой) размере области просмотра или шире</div><br>
{{< /example >}}

Вот все поддерживаемые классы:

{{< markdown >}}
{{< float.inline >}}
{{- range $.Site.Data.breakpoints }}
- `.float{{ .abbr }}-start`
- `.float{{ .abbr }}-end`
- `.float{{ .abbr }}-none`
{{- end -}}
{{< /float.inline >}}
{{< /markdown >}}

## CSS

### Sass API утилиты

Утилиты флоат объявлены в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать API утилит.]({{< docsref "/utilities/api#использование-api" >}})

{{< scss-docs name="utils-float" file="scss/_utilities.scss" >}}
