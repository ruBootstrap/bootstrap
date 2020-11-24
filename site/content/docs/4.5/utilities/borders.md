---
layout: docs
title: Границы
description: Используйте утилиты для создания границ, чтобы быстро настроить границу и радиус границы элемента. Отлично подходит для изображений, кнопок или любого другого элемента.
group: utilities
aliases: "/docs/4.5/utilities/"
toc: true
---

## Граница

Используйте служебные программы для создания границ, чтобы добавить или удалить границы элемента. Выбирайте из всех границ или по одной.

### Добавка

{{< example class="bd-example-border-utils">}}
<span class="border"></span>
<span class="border-top"></span>
<span class="border-right"></span>
<span class="border-bottom"></span>
<span class="border-left"></span>
{{< /example >}}

### Субтрактивный

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

## Радиус границы

Добавьте классы к элементу, чтобы легко скруглить его углы.

{{< example>}}
{{< placeholder width="75" height="75" class="rounded" title="Пример закругленного изображения" >}}
{{< placeholder width="75" height="75" class="rounded-top" title="Пример закругленного изображения сверху" >}}
{{< placeholder width="75" height="75" class="rounded-right" title="Пример закругленного изображения справа" >}}
{{< placeholder width="75" height="75" class="rounded-bottom" title="Пример закругленного изображения снизу" >}}
{{< placeholder width="75" height="75" class="rounded-left" title="Пример закругленного изображения слева" >}}
{{< placeholder width="75" height="75" class="rounded-circle" title="Полностью круглое изображение" >}}
{{< placeholder width="150" height="75" class="rounded-pill" title="Закругленное изображение таблетки" >}}
{{< placeholder width="75" height="75" class="rounded-0" title="Пример изображения без закруглений (отменяет округление, примененное где-либо еще)" >}}
{{< /example >}}

## Размеры

Используйте `.rounded-lg` или `.rounded-sm` для большего или меньшего радиуса границы.

{{< example >}}
{{< placeholder width="75" height="75" class="rounded-sm" title="Пример маленького закругленного изображения" >}}
{{< placeholder width="75" height="75" class="rounded-lg" title="Пример большого закругленного изображения" >}}
{{< /example >}}
