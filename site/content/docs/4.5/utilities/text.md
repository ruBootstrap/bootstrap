---
layout: docs
title: Текст
description: Документация и примеры общих текстовых утилит для управления выравниванием, обтеканием, весом и т.д.
group: utilities
toc: true
---

## Выравнивание текста

Легко выравнивайте текст по компонентам с помощью классов выравнивания текста.

{{< example >}}
<p class="text-justify">Ambitioni dedisse scripsisse iudicaretur. Cras mattis iudicium purus sit amet fermentum. Donec sed odio operae, eu vulputate felis rhoncus. Praeterea iter est quasdam res quas ex communi. At nos hinc posthac, sitientis piros Afros. Petierunt uti sibi concilium totius Galliae in diem certam indicere. Cras mattis iudicium purus sit amet fermentum.</p>
{{< /example >}}

Для выравнивания влево, вправо и по центру доступны адаптивные классы, которые используют те же контрольные точки ширины окна просмотра, что и система сетки.

{{< example >}}
<p class="text-left">Текст с выравниванием по левому краю для всех размеров области просмотра.</p>
<p class="text-center">Текст с выравниванием по центру на всех размерах области просмотра.</p>
<p class="text-right">Текст с выравниванием по правому краю для всех размеров области просмотра.</p>

<p class="text-sm-left">Выровненный по левому краю текст на размерных окнах просмотра SM (маленький) или шире.</p>
<p class="text-md-left">Выровненный по левому краю текст на размерных окнах просмотра MD (средний) или шире.</p>
<p class="text-lg-left">Выровненный по левому краю текст на размерных окнах просмотра LG (большой) или шире.</p>
<p class="text-xl-left">Выровненный по левому краю текст на размерных окнах просмотра XL (очень большой) или шире.</p>
{{< /example >}}

## Перенос текста и переполнение

Оберните текст классом `.text-wrap`.

{{< example >}}
<div class="badge badge-primary text-wrap" style="width: 6rem;">
  Этот текст следует обернуть.
</div>
{{< /example >}}

Запретить перенос текста с помощью класса `.text-nowrap`.

{{< example >}}
<div class="text-nowrap bd-highlight" style="width: 8rem;">
  Этот текст должен переполнять родительский.
</div>
{{< /example >}}

Для более длинного содержимого Вы можете добавить класс `.text-truncate` , чтобы обрезать текст многоточием. **Требуется `display: inline-block` или `display: block`.**

{{< example >}}
<!-- Блочный уровень -->
<div class="row">
  <div class="col-2 text-truncate">
    Praeterea iter est quasdam res quas ex communi.
  </div>
</div>

<!-- Встроенный уровень -->
<span class="d-inline-block text-truncate" style="max-width: 150px;">
  Praeterea iter est quasdam res quas ex communi.
</span>
{{< /example >}}

## Разрыв слова

Предотвратите разрушение макета ваших компонентов длинными строками текста, используя `.text-break` для установки `word-wrap: break-word` и `word-break: break-word`. Мы используем `word-wrap` вместо более распространенного `overflow-wrap` для более широкой поддержки браузеров и добавляем устаревший `word-break: break-word`, чтобы избежать проблем с гибкими контейнерами.

{{< example >}}
<p class="text-break">mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm</p>
{{< /example >}}

## Преобразование текста

Преобразование текста в компонентах с помощью классов капитализации текста.

{{< example >}}
<p class="text-lowercase">Текст в нижнем регистре.</p>
<p class="text-uppercase">Текст в верхнем регистре.</p>
<p class="text-capitalize">CapiTaliZed текст.</p>
{{< /example >}}

Обратите внимание, как `.text-capitalize` изменяет только первую букву каждого слова, не затрагивая регистр любых других букв.

## Толщина шрифта и курсив

Быстро измените толщину (жирность) текста или выделите текст курсивом.

{{< example >}}
<p class="font-weight-bold">Жирный текст.</p>
<p class="font-weight-bolder">Более жирный текст (относительно родительского элемента).</p>
<p class="font-weight-normal">Текст нормальной толщины.</p>
<p class="font-weight-light">Текст тонкой толщины.</p>
<p class="font-weight-lighter">Более тонкий текст (относительно родительского элемента).</p>
<p class="font-italic">Курсивный текст.</p>
{{< /example >}}

## Моноширинный

Измените выделение на наш стек моноширинных шрифтов с помощью `.text-monospace`.

{{< example >}}
<p class="text-monospace">Это в моноширинном пространстве</p>
{{< /example >}}

## Сброс цвета

Сбросить цвет текста или ссылки с помощью `.text-reset`, чтобы он унаследовал цвет от своего родителя.

{{< example >}}
<p class="text-muted">
  Приглушенный текст с <a href="#" class="text-reset">ссылкой сброса</a>.
</p>
{{< /example >}}

## Оформление текста

Удалите оформление текста с помощью класса `.text-decoration-none`.

{{< example >}}
<a href="#" class="text-decoration-none">Неподчеркнутая ссылка</a>
{{< /example >}}
