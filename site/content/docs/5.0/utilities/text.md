---
layout: docs
title: Текст
description: Документация и примеры общих текстовых утилит для управления выравниванием, обтеканием, весом и т.д.
group: utilities
toc: true
---

## Выравнивание текста

Легко выравнивайте текст по компонентам с помощью классов выравнивания текста. Для выравнивания влево, вправо и по центру доступны адаптивные классы, которые используют те же контрольные точки по ширине области просмотра, что и система сетки.

{{< example >}}
<p class="text-start">Текст с выравниванием по левому краю для всех размеров области просмотра.</p>
<p class="text-center">Выровненный по центру текст на всех размерах области просмотра.</p>
<p class="text-end">Текст с выравниванием по правому краю для всех размеров области просмотра.</p>

<p class="text-sm-start">Выровненный по левому краю текст на размерных области просмотра SM (маленький) или шире.</p>
<p class="text-md-start">Выровненный по левому краю текст на размерных области просмотра MD (средний) или шире.</p>
<p class="text-lg-start">Выровненный по левому краю текст на размерных области просмотра LG (большой) или шире.</p>
<p class="text-xl-start">Выровненный по левому краю текст на размерных области просмотра XL (очень большой) или шире.</p>
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

{{< callout warning >}}
Обратите внимание, что [разрыв слов на арабском языке невозможен](https://rtlstyling.com/posts/rtl-styling#3.-line-break), который является наиболее часто используемым языком RTL. Поэтому `.text-break` удаляется из нашего RTL-скомпилированного CSS.
{{< /callout >}}

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
<p class="lh-1">Some placeholder content to show off the line height utilities. Happy birthday. You could've been the greatest. She ride me like a roller coaster. I messed around and got addicted. You just gotta ignite the light and let it shine! I'm intrigued, for a peek, heard it's fascinating. Catch her if you can. I should've told you what you meant to me 'Cause now I pay the price. Do you ever feel, feel so paper thin.</p>
<p class="lh-sm">But you better choose carefully. Yo, shout out to all you kids, buying bottle service, with your rent money. She's sweet as pie but if you break her heart. Just own the night like the 4th of July! In another life I would be your girl. Playing ping pong all night long, everything's all neon and hazy. Shorty so bad, I’m sprung and I don’t care.</p>
<p class="lh-base">I can feel a phoenix inside of me. Maybe a reason why all the doors are closed. We go higher and higher. Passport stamps, she's cosmopolitan. Someone said you had your tattoo removed. All my girls vintage Chanel baby. Someone said you had your tattoo removed.</p>
<p class="lh-lg">But I will get there. This is real so take a chance and don't ever look back, don't ever look back. You could travel the world but nothing comes close to the golden coast. Of anything and everything. Venice beach and Palm Springs, summertime is everything. Do you ever feel already buried deep six feet under? It's time to bring out the big balloons. So cover your eyes, I have a surprise. So I don't have to say you were the one that got away.</p>
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

## Sass

### Variables

{{< scss-docs name="font-variables" file="scss/_variables.scss" >}}

### Maps

Font-size utilities are generated from this map, in combination with our utilities API.

{{< scss-docs name="font-sizes" file="scss/_variables.scss" >}}

### Utilities API

Font and text utilities are declared in our utilities API in `scss/_utilities.scss`. [Learn how to use the utilities API.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-text" file="scss/_utilities.scss" >}}
