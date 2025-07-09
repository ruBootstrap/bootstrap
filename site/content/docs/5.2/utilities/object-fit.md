---
layout: docs
title: Object fit
description: Используйте утилиты object fit для изменения того, как содержимое [заменяемого элемента](https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element), такого как `<img>` или `<video>`, должно изменять размер для соответствия своему контейнеру.
group: utilities
toc: true
---

## Как это работает

Измените значение свойства [`object-fit`](https://developer.mozilla.org/en-US/docs/Web/CSS/object-fit) с помощью наших адаптивных утилитарных классов `object-fit`. Это свойство указывает содержимому заполнить родительский контейнер различными способами, такими как сохранение соотношения сторон или растягивание для занятия максимально возможного пространства.

Классы для значения `object-fit` именуются с использованием формата `.object-fit-{value}`. Выберите из следующих значений:

- `contain`
- `cover`
- `fill`
- `scale` (для scale-down)
- `none`

## Примеры

Добавьте класс `object-fit-{value}` к [заменяемому элементу](https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element):

{{< example class="d-flex overflow-auto" >}}
{{< placeholder width="140" height="120" class="object-fit-contain border rounded" text="Object fit contain" markup="img" >}}
{{< placeholder width="140" height="120" class="object-fit-cover border rounded" text="Object fit cover" markup="img" >}}
{{< placeholder width="140" height="120" class="object-fit-fill border rounded" text="Object fit fill" markup="img" >}}
{{< placeholder width="140" height="120" class="object-fit-scale border rounded" text="Object fit scale down" markup="img" >}}
{{< placeholder width="140" height="120" class="object-fit-none border rounded" text="Object fit none" markup="img" >}}
{{< /example >}}

## Адаптивность

Адаптивные варианты также существуют для каждого значения `object-fit` с использованием формата `.object-fit-{breakpoint}-{value}`, для следующих сокращений точек останова: `sm`, `md`, `lg`, `xl` и `xxl`. Классы можно комбинировать для различных эффектов по мере необходимости.

{{< example class="d-flex overflow-auto" >}}
{{< placeholder width="140" height="80" class="object-fit-sm-contain border rounded" text="Contain on sm" markup="img" >}}
{{< placeholder width="140" height="80" class="object-fit-md-contain border rounded" text="Contain on md" markup="img" >}}
{{< placeholder width="140" height="80" class="object-fit-lg-contain border rounded" text="Contain on lg" markup="img" >}}
{{< placeholder width="140" height="80" class="object-fit-xl-contain border rounded" text="Contain on xl" markup="img" >}}
{{< placeholder width="140" height="80" class="object-fit-xxl-contain border rounded" text="Contain on xxl" markup="img" >}}
{{< /example >}}

## Видео

Утилиты `.object-fit-{value}` и адаптивные `.object-fit-{breakpoint}-{value}` также работают с элементами `<video>`.

```html
<video src="..." class="object-fit-contain" autoplay></video>
<video src="..." class="object-fit-cover" autoplay></video>
<video src="..." class="object-fit-fill" autoplay></video>
<video src="..." class="object-fit-scale" autoplay></video>
<video src="..." class="object-fit-none" autoplay></video>
```

## Utilities API

Утилиты object fit объявлены в нашем utilities API в `scss/_utilities.scss`. [Узнайте, как использовать utilities API.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-object-fit" file="scss/_utilities.scss" >}}
