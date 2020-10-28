---
layout: docs
title: Текст
description: Документация и примеры общих текстовых утилит для управления выравниванием, обтеканием, весом и т.д.
group: utilities
toc: true
---

## Выравнивание текста

Легко выравнивайте текст по компонентам с помощью классов выравнивания текста. Для выравнивания влево, вправо и по центру доступны адаптивные классы, которые используют те же точки останова по ширине области просмотра, что и система сетки.

{{< example >}}
<p class="text-left">Текст с выравниванием по левому краю для всех размеров области просмотра.</p>
<p class="text-center">Выровненный по центру текст на всех размерах области просмотра.</p>
<p class="text-right">Текст с выравниванием по правому краю для всех размеров области просмотра.</p>

<p class="text-sm-left">Выровненный по левому краю текст на размерных области просмотра SM (маленький) или шире.</p>
<p class="text-md-left">Выровненный по левому краю текст на размерных области просмотра MD (средний) или шире.</p>
<p class="text-lg-left">Выровненный по левому краю текст на размерных области просмотра LG (большой) или шире.</p>
<p class="text-xl-left">Выровненный по левому краю текст на размерных области просмотра XL (очень большой) или шире.</p>
{{< /example >}}

{{< callout info >}}
Обратите внимание, что мы не предоставляем служебные классы для выравнивания текста по всей ширине. Хотя эстетически выровненный по ширине текст может выглядеть более привлекательно, он делает интервалы между словами более случайными и, следовательно, труднее читать.
{{< /callout >}}

## Перенос текста и переполнение

Оберните текст классом `.text-wrap`.

{{< example >}}
<div class="badge bg-primary text-wrap" style="width: 6rem;">
  Этот текст следует обернуть.
</div>
{{< /example >}}

Запретить перенос текста с помощью класса `.text-nowrap`.

{{< example >}}
<div class="text-nowrap bd-highlight" style="width: 8rem;">
  Этот текст должен переполнять родительский.
</div>
{{< /example >}}

## Разрыв слова

Предотвратите разрушение макета ваших компонентов длинными строками текста, используя `.text-break` для установки `word-wrap: break-word` и `word-break: break-word`. Мы используем `word-wrap` вместо более обычного `overflow-wrap` для более широкой поддержки браузеров и добавляем устаревший `word-break: break-word`, чтобы избежать проблем с гибкими контейнерами.

{{< example >}}
<p class="text-break">mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm</p>
{{< /example >}}

## Преобразование текста

Преобразование текста в компонентах с помощью классов капитализации текста.

{{< example >}}
<p class="text-lowercase">Текст в нижнем регистре.</p>
<p class="text-uppercase">Текст в верхнем регистре.</p>
<p class="text-capitalize">Заглавный текст.</p>
{{< /example >}}

Обратите внимание, как `.text-capitalize` изменяет только первую букву каждого слова, не затрагивая регистр любых других букв.

## Размер шрифта

Быстро изменить размер шрифта текста `font-size`. В то время как наши классы заголовков (например, `.h1`–`.h6`) применяют `font-size`, `font-weight` и `line-height`, эти утилиты применяют _только_ `font-size`. Размер этих утилит соответствует элементам заголовка HTML, поэтому по мере увеличения числа их размер уменьшается.

{{< example >}}
<p class="fs-1">.fs-1 text</p>
<p class="fs-2">.fs-2 text</p>
<p class="fs-3">.fs-3 text</p>
<p class="fs-4">.fs-4 text</p>
<p class="fs-5">.fs-5 text</p>
<p class="fs-6">.fs-6 text</p>
{{< /example >}}

Настройте свой доступный `font-size`, изменив карту Sass `$font-sizes`.

{{< scss-docs name="font-sizes" file="scss/_variables.scss" >}}

## Толщина шрифта и курсив

С помощью этих утилит можно быстро изменить `font-weight` или `font-style`. Утилиты `font-style` сокращенно обозначаются как `.fst-*`, а утилиты `font-weight` сокращаются как `.fw-*`.

{{< example >}}
<p class="fw-weight-bold">Жирный текст.</p>
<p class="fw-weight-bolder">Более жирный текст (относительно родительского элемента).</p>
<p class="fw-weight-normal">Текст с нормальной толщиной.</p>
<p class="fw-weight-light">Текст с легкой толщиной.</p>
<p class="fw-weight-lighter">Более легкий текст (относительно родительского элемента).</p>
<p class="fst-italic">Курсивный текст.</p>
<p class="fst-normal">Текст с обычным шрифтом</p>
{{< /example >}}

## Высота линии

Измените высоту строки с помощью утилит `.lh-*`.

{{< example >}}
<p class="lh-1">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Cras mattis pannenkoek purus sit amet fermentum. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>
<p class="lh-sm">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Cras mattis pannenkoek purus sit amet fermentum. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>
<p class="lh-base">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Cras mattis pannenkoek purus sit amet fermentum. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>
<p class="lh-lg">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Cras mattis pannenkoek purus sit amet fermentum. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>
{{< /example >}}

## Моноширинный

Измените выделение на наш стек моноширинных шрифтов с помощью `.font-monospace`.

{{< example >}}
<p class="font-monospace">Это в моноширинном пространстве</p>
{{< /example >}}

## Сброс цвета

Сбросить цвет текста или ссылки с помощью `.text-reset`, чтобы он унаследовал цвет от своего родителя.

{{< example >}}
<p class="text-muted">
  Скрытый текст со <a href="#" class="text-reset">ссылкой для сброса.</a>.
</p>
{{< /example >}}

## Оформление текста

Украшайте текст в компонентах классами оформления текста.

{{< example >}}
<p class="text-decoration-underline">Под этим текстом есть линия.</p>
<p class="text-decoration-line-through">В этом тексте проходит линия.</p>
<a href="#" class="text-decoration-none">Текстовое оформление этой ссылки удалено.</a>
{{< /example >}}
