---
layout: docs
title: Изображения
description: Документация и примеры для выбора изображений для адаптивное поведения (чтобы они никогда не становились шире своего родителя) и добавления к ним облегченных стилей - все через классы.
group: content
toc: true
---

## Адаптивные изображения

Изображения в Bootstrap сделаны адаптивными с помощью `.img-fluid`. Это применяет `max-width: 100%;` и `height: auto;` к изображению так, чтобы оно масштабировалось с шириной родительского элемента.

{{< example >}}
{{< placeholder width="100%" height="250" class="bd-placeholder-img-lg img-fluid" text="Адаптивное изображение" >}}
{{< /example >}}

## Эскизы изображений

В дополнение к нашим [утилитам border-radius]({{< docsref "/utilities/borders" >}}) Вы можете использовать `.img-thumbnail`, чтобы придать изображению округлую границу в 1 пиксель.

{{< example >}}
{{< placeholder width="200" height="200" class="img-thumbnail" title="Обычное квадратное изображение-заполнитель с белой рамкой вокруг него, что делает его похожим на фотографию, сделанную на старую камеру мгновенного действия." >}}
{{< /example >}}

## Выравнивание изображений

Выровняйте изображения по [вспомогательным классам с плавающей точкой]({{< docsref "/utilities/float" >}}) или [классам выравнивания текста]({{< docsref "/utilities/text#text-alignment" >}}). Изображения уровня `block` можно центрировать с помощью [утилиты класса поля `.mx-auto`]({{< docsref "/utilities/spacing#horizontal-centering" >}}).

{{< example >}}
{{< placeholder width="200" height="200" class="rounded float-start" >}}
{{< placeholder width="200" height="200" class="rounded float-end" >}}
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

## CSS

### Sass переменные

Переменные доступны для миниатюр изображений.

{{< scss-docs name="thumbnail-variables" file="scss/_variables.scss" >}}
