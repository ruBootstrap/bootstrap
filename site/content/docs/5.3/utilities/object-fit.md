---
layout: docs
title: Соответствие объекта
description: Используйте утилиты подгонки объекта, чтобы изменить содержимое [заменяемого элемента](https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element), например `<img>` или `<video>` следует изменить размер, чтобы он соответствовал своему контейнеру.
group: utilities
toc: true
---

## Как это устроено

Измените значение [свойства `object-fit`](https://developer.mozilla.org/en-US/docs/Web/CSS/object-fit) с помощью наших адаптивных служебных классов `object-fit`. Это свойство указывает содержимому заполнять родительский контейнер различными способами, например, сохраняя соотношение сторон или растягивая его, чтобы занимать как можно больше места.

Классы для значения `object-fit` именуются в формате `.object-fit-{value}`. Выберите одно из следующих значений:

- `contain`
- `cover`
- `fill`
- `scale` (для уменьшения)
- `none`

## Примеры

Добавьте класс `object-fit-{value}` в [заменяемый элемент](https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element):

{{< example class="d-flex overflow-auto" >}}
{{< placeholder width="140" height="120" class="object-fit-contain border rounded" text="Object fit contain" markup="img" color="#868e96" background="#dee2e6" >}}
{{< placeholder width="140" height="120" class="object-fit-cover border rounded" text="Object fit cover" markup="img" color="#868e96" background="#dee2e6" >}}
{{< placeholder width="140" height="120" class="object-fit-fill border rounded" text="Object fit fill" markup="img" color="#868e96" background="#dee2e6" >}}
{{< placeholder width="140" height="120" class="object-fit-scale border rounded" text="Object fit scale down" markup="img" color="#868e96" background="#dee2e6" >}}
{{< placeholder width="140" height="120" class="object-fit-none border rounded" text="Object fit none" markup="img" color="#868e96" background="#dee2e6" >}}
{{< /example >}}

## Адаптивность

Адаптивные варианты также существуют для каждого значения `object-fit` с использованием формата `.object-fit-{breakpoint}-{value}`, для следующих сокращений контрольных точек: `sm`, `md`, `lg`, `xl` и `xxl`. Классы можно комбинировать для получения различных эффектов по вашему желанию.

{{< example class="d-flex overflow-auto" >}}
{{< placeholder width="140" height="80" class="object-fit-sm-contain border rounded" text="Contain on sm" markup="img" color="#868e96" background="#dee2e6" >}}
{{< placeholder width="140" height="80" class="object-fit-md-contain border rounded" text="Contain on md" markup="img" color="#868e96" background="#dee2e6" >}}
{{< placeholder width="140" height="80" class="object-fit-lg-contain border rounded" text="Contain on lg" markup="img" color="#868e96" background="#dee2e6" >}}
{{< placeholder width="140" height="80" class="object-fit-xl-contain border rounded" text="Contain on xl" markup="img" color="#868e96" background="#dee2e6" >}}
{{< placeholder width="140" height="80" class="object-fit-xxl-contain border rounded" text="Contain on xxl" markup="img" color="#868e96" background="#dee2e6" >}}
{{< /example >}}

## Видео

Утилиты `.object-fit-{value}` и адаптивные утилиты `.object-fit-{breakpoint}-{value}` также работают с элементами `<video>` elements.

```html
<video src="..." class="object-fit-contain" autoplay></video>
<video src="..." class="object-fit-cover" autoplay></video>
<video src="..." class="object-fit-fill" autoplay></video>
<video src="..." class="object-fit-scale" autoplay></video>
<video src="..." class="object-fit-none" autoplay></video>
```

## CSS

### Sass API утилиты

Утилиты соответствия объекта объявлены в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать утилиты API.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-object-fit" file="scss/_utilities.scss" >}}
