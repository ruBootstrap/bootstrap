---
layout: docs
title: Изображения
description: Документация и примеры для настройки изображений на адаптивное поведение (чтобы они никогда не становились больше, чем их родительские элементы) и добавления к ним легких стилей - все через классы.
group: content
toc: true
---

## Адаптивные изображения

Образы в Bootstrap становятся адаптивными с помощью `.img-fluid`. `max-width: 100%;` и `height: auto;` применяются к изображению так, чтобы оно масштабировалось вместе с родительским элементом.

{{< example >}}
{{< placeholder width="100%" height="250" class="bd-placeholder-img-lg img-fluid" text="Адаптивное изображение" >}}
{{< /example >}}

{{< callout warning >}}
##### Изображения SVG и Internet Explorer

В Internet Explorer 10 и 11 изображения SVG с расширением `.img-fluid` имеют непропорционально большой размер. Чтобы исправить это, добавьте при необходимости `width: 100%;` или `.w-100`. Это исправление неправильно изменяет размер других форматов изображений, поэтому Bootstrap не применяет его автоматически.
{{< /callout >}}

## Эскизы изображений

В дополнение к нашим [утилитам закругления границ]({{< docsref "/utilities/borders" >}}), Вы можете использовать `.img-thumbnail`, чтобы придать изображению округлую границу в 1 пиксель.

{{< example >}}
{{< placeholder width="200" height="200" class="img-thumbnail" title="Обычное квадратное изображение-заполнитель с белой рамкой вокруг него, что делает его похожим на фотографию, сделанную на старую камеру мгновенного действия." >}}
{{< /example >}}

## Выравнивание изображений

Выровняйте изображения по [вспомогательным классам с плавающей точкой]({{< docsref "/utilities/float" >}}) или [классам выравнивания текста]({{< docsref "/utilities/text#text-alignment" >}}). Изображения уровня `block` можно центрировать с помощью [служебного класса поля `.mx-auto`]({{< docsref "/utilities/spacing#горизонтальное-центрирование" >}}).

{{< example >}}
{{< placeholder width="200" height="200" class="rounded float-left" >}}
{{< placeholder width="200" height="200" class="rounded float-right" >}}
{{< /example >}}

{{< example >}}
{{< placeholder width="200" height="200" class="rounded mx-auto d-block" >}}
{{< /example >}}

{{< example >}}
<div class="text-center">
  {{< placeholder width="200" height="200" class="rounded" >}}
</div>
{{< /example >}}


## Картина

Если Вы используете элемент `<picture>` для указания нескольких элементов `<source>` для определенного `<img>`, убедитесь, что Вы добавили классы `.img-*` в `<img>`, а не в тег `<picture>`.

```html
<picture>
  <source srcset="..." type="image/svg+xml">
  <img src="..." class="img-fluid img-thumbnail" alt="...">
</picture>
```
