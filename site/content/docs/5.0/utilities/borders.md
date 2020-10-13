---
layout: docs
title: Границы
description: Используйте утилиты для создания границ, чтобы быстро настроить границу и радиус границы элемента. Отлично подходит для изображений, кнопок или любого другого элемента.
group: utilities
toc: true
---

## Граница

Используйте служебные программы для создания границ, чтобы добавить или удалить границы элемента. Выбирайте из всех границ или по одной.

### Добавка

{{< example class="bd-example-border-utils" >}}
<span class="border"></span>
<span class="border-top"></span>
<span class="border-right"></span>
<span class="border-bottom"></span>
<span class="border-left"></span>
{{< /example >}}

### Вычитание

{{< example class="bd-example-border-utils bd-example-border-utils-0" >}}
<span class="border-0"></span>
<span class="border-top-0"></span>
<span class="border-right-0"></span>
<span class="border-bottom-0"></span>
<span class="border-left-0"></span>
{{< /example >}}

## Цвет границы

Измените цвет границы с помощью утилит, созданных на основе цветов нашей темы.

{{< example class="bd-example-border-utils" >}}
{{< border.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<span class="border border-{{ .name }}"></span>
{{- end -}}
{{< /border.inline >}}
<span class="border border-white"></span>
{{< /example >}}

### Ширина границы

{{< example class="bd-example-border-utils" >}}
<span class="border border-1"></span>
<span class="border border-2"></span>
<span class="border border-3"></span>
<span class="border border-4"></span>
<span class="border border-5"></span>
{{< /example >}}

## Радиус границы

Добавьте классы к элементу, чтобы легко скруглить его углы.

{{< example class="bd-example-rounded-utils" >}}
{{< placeholder width="75" height="75" class="rounded" title="Example rounded image" >}}
{{< placeholder width="75" height="75" class="rounded-top" title="Example top rounded image" >}}
{{< placeholder width="75" height="75" class="rounded-right" title="Example right rounded image" >}}
{{< placeholder width="75" height="75" class="rounded-bottom" title="Example bottom rounded image" >}}
{{< placeholder width="75" height="75" class="rounded-left" title="Example left rounded image" >}}
{{< placeholder width="75" height="75" class="rounded-circle" title="Completely round image" >}}
{{< placeholder width="150" height="75" class="rounded-pill" title="Rounded pill image" >}}
{{< placeholder width="75" height="75" class="rounded-0" title="Example non-rounded image (overrides rounding applied elsewhere)" >}}
{{< /example >}}


## Размеры

Используйте `.rounded-lg` или `.rounded-sm` для большего или меньшего радиуса границы.

{{< example class="bd-example-rounded-utils" >}}
{{< placeholder width="75" height="75" class="rounded-sm" title="Example small rounded image" >}}
{{< placeholder width="75" height="75" class="rounded-lg" title="Example large rounded image" >}}
{{< /example >}}
