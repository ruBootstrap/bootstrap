---
layout: docs
title: Промежутки
description: Промежутки - это отступы между колонками, используемые для гибкого размещения и выравнивания содержимого в системе сетки Bootstrap.
group: layout
toc: true
---

## Как они работают

- **Промежутки - это разрывы между содержимым колонок, создаваемые горизонтальным `padding`.** Мы устанавливаем `padding-right` и `padding-left` для каждой колонки и используем отрицательный `margin` для смещения этого значения в начале и конец каждой строки для выравнивания содержимого.

- **Промежутки начинаются с ширины `1.5rem` (`24px`).** Это позволяет нам сопоставить нашу сетку с [отступами и полями]({{< docsref "/utilities/spacing" >}}) масштабом.

- **Промежутки можно адаптировать.** Используйте классы промежутков, специфичные для контрольные точки, для изменения горизонтальных промежутков, вертикальных промежутков и всех промежутков.

## Горизонтальные промежутки

Классы `.gx-*` могут использоваться для управления шириной горизонтального промежутка. Родительский элемент `.container` или `.container-fluid` может нуждаться в корректировке, если также используются более крупные промежутка, чтобы избежать нежелательного переполнения, с помощью соответствующей утилиты заполнения. Например, в следующем примере мы увеличили отступ с помощью `.px-4`:

{{< example >}}
<div class="container px-4">
  <div class="row gx-5">
    <div class="col">
     <div class="p-3 border bg-light">Пользовательские внутренние отступы колонок</div>
    </div>
    <div class="col">
      <div class="p-3 border bg-light">Пользовательские внутренние отступы колонок</div>
    </div>
  </div>
</div>
{{< /example >}}

Альтернативное решение - добавить оболочку вокруг `.row` с классом `.overflow-hidden`:

{{< example >}}
<div class="container overflow-hidden">
  <div class="row gx-5">
    <div class="col">
     <div class="p-3 border bg-light">Пользовательские внутренние отступы колонок</div>
    </div>
    <div class="col">
      <div class="p-3 border bg-light">Пользовательские внутренние отступы колонок</div>
    </div>
  </div>
</div>
{{< /example >}}

## Вертикальные промежутки

Классы `.gy-*` могут использоваться для управления шириной вертикального промежутка. Как и горизонтальные промежутки, вертикальные промежутки могут вызвать переполнение под `.row` в конце страницы. Если это происходит, Вы добавляете оболочку вокруг `.row` с классом `.overflow-hidden`:

{{< example >}}
<div class="container overflow-hidden">
  <div class="row gy-5">
    <div class="col-6">
      <div class="p-3 border bg-light">Пользовательские внутренние отступы колонок</div>
    </div>
    <div class="col-6">
      <div class="p-3 border bg-light">Пользовательские внутренние отступы колонок</div>
    </div>
    <div class="col-6">
      <div class="p-3 border bg-light">Пользовательские внутренние отступы колонок</div>
    </div>
    <div class="col-6">
      <div class="p-3 border bg-light">Пользовательские внутренние отступы колонок</div>
    </div>
  </div>
</div>
{{< /example >}}

## Горизонтальные и вертикальные промежутки

Классы `.g-*` могут использоваться для управления шириной горизонтального промежутка, в следующем примере мы используем меньшую ширину промежутка, поэтому нет необходимости добавлять класс-оболочку `.overflow-hidden`.

{{< example >}}
<div class="container">
  <div class="row g-2">
    <div class="col-6">
      <div class="p-3 border bg-light">Пользовательские внутренние отступы колонок</div>
    </div>
    <div class="col-6">
      <div class="p-3 border bg-light">Пользовательские внутренние отступы колонок</div>
    </div>
    <div class="col-6">
      <div class="p-3 border bg-light">Пользовательские внутренние отступы колонок</div>
    </div>
    <div class="col-6">
      <div class="p-3 border bg-light">Пользовательские внутренние отступы колонок</div>
    </div>
  </div>
</div>
{{< /example >}}

## Промежутки колонок ряда

Классы промежутков также можно добавить в [ряд колонок]({{< docsref "/layout/grid#ряд-колонок" >}}). В следующем примере мы используем адаптивные колонки ряда и адаптивные классы промежутков.

{{< example >}}
<div class="container">
  <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
    <div class="col">
      <div class="p-3 border bg-light">Колонка ряда</div>
    </div>
    <div class="col">
      <div class="p-3 border bg-light">Колонка ряда</div>
    </div>
    <div class="col">
      <div class="p-3 border bg-light">Колонка ряда</div>
    </div>
    <div class="col">
      <div class="p-3 border bg-light">Колонка ряда</div>
    </div>
    <div class="col">
      <div class="p-3 border bg-light">Колонка ряда</div>
    </div>
    <div class="col">
      <div class="p-3 border bg-light">Колонка ряда</div>
    </div>
    <div class="col">
      <div class="p-3 border bg-light">Колонка ряда</div>
    </div>
    <div class="col">
      <div class="p-3 border bg-light">Колонка ряда</div>
    </div>
    <div class="col">
      <div class="p-3 border bg-light">Колонка ряда</div>
    </div>
    <div class="col">
      <div class="p-3 border bg-light">Колонка ряда</div>
    </div>
  </div>
</div>
{{< /example >}}

## Нет промежутков

Промежутки между колонками в наших предопределенных классах сетки могут быть удалены с помощью `.g-0`. Это удаляет отрицательные отступы `margin` из `.row` и горизонтальные `padding` из всех непосредственных дочерних колонок.

**Нужен сквозной дизайн?** Удалите родительский файл `.container` или `.container-fluid` и добавьте `.mx-0` к `.row`, чтобы предотвратить переполнение.

На практике это выглядит так. Обратите внимание, что Вы можете продолжать использовать это со всеми другими предопределенными классами сетки (включая ширину колонок, адаптивные уровни, изменение порядка и т.д.).

{{< example class="bd-example-row" >}}
<div class="row g-0">
  <div class="col-sm-6 col-md-8">.col-sm-6 .col-md-8</div>
  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
</div>
{{< /example >}}

## Изменения промежутков

Классы строятся из карты Sass `$gutters`, унаследованной от карты Sass `$spacers`.

```scss
$grid-gutter-width: 1.5rem;
$gutters: (
  0: 0,
  1: $spacer * .25,
  2: $spacer * .5,
  3: $spacer,
  4: $spacer * 1.5,
  5: $spacer * 3,
);
```
