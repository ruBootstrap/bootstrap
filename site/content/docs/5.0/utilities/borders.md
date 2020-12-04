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
<span class="border-end"></span>
<span class="border-bottom"></span>
<span class="border-start"></span>
{{< /example >}}

### Вычитание

{{< example class="bd-example-border-utils bd-example-border-utils-0" >}}
<span class="border-0"></span>
<span class="border-top-0"></span>
<span class="border-end-0"></span>
<span class="border-bottom-0"></span>
<span class="border-start-0"></span>
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

## Ширина границы

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
{{< placeholder width="75" height="75" class="rounded" title="Пример закругленного изображения" >}}
{{< placeholder width="75" height="75" class="rounded-top" title="Пример закругленного изображения сверху" >}}
{{< placeholder width="75" height="75" class="rounded-end" title="Пример закругленного изображения справа" >}}
{{< placeholder width="75" height="75" class="rounded-bottom" title="Пример закругленного изображения снизу" >}}
{{< placeholder width="75" height="75" class="rounded-start" title="Пример закругленного изображения слева" >}}
{{< placeholder width="75" height="75" class="rounded-circle" title="Полностью круглое изображение" >}}
{{< placeholder width="150" height="75" class="rounded-pill" title="Закругленное изображение таблетки" >}}
{{< /example >}}

### Размеры

Используйте классы масштабирования для больших или меньших закругленных углов. Размеры варьируются от `0` до `3` и могут быть настроены путем изменения API утилит.

{{< example class="bd-example-rounded-utils" >}}
{{< placeholder width="75" height="75" class="rounded-0" title="Пример изображения без закруглений" >}}
{{< placeholder width="75" height="75" class="rounded-1" title="Пример маленького закругленного изображения" >}}
{{< placeholder width="75" height="75" class="rounded-2" title="Пример закругленного изображения по умолчанию" >}}
{{< placeholder width="75" height="75" class="rounded-3" title="Пример большого закругленного изображения" >}}
{{< /example >}}
