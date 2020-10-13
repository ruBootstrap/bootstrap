---
layout: docs
title: Свойство отображения
description: Быстро и оперативно переключайте отображаемое значение компонентов и многое другое с помощью наших утилит для отображения. Включает поддержку некоторых из наиболее распространенных значений, а также некоторые дополнительные функции для управления отображением при печати.
group: utilities
toc: true
---

## Как это работает

Измените значение свойства [`display` property](https://developer.mozilla.org/en-US/docs/Web/CSS/display) с помощью наших вспомогательных классов адаптивного отображения. Мы намеренно поддерживаем только подмножество всех возможных значений для `display`. Классы можно комбинировать для получения различных эффектов по мере необходимости.

## Обозначение

Утилиты отображения классов, которые применяются ко всем [контрольным точкам]({{< docsref "/layout/breakpoints" >}}), от `xs` до `xxl`, не имеют в себе аббревиатуры контрольной точки. Это потому, что эти классы применяются начиная с `min-width: 0;` и выше, и поэтому не связаны медиа-запросами. Остальные контрольные точки, однако, содержат аббревиатуру контрольной точки.

Таким образом, классы именуются в следующем формате:

- `.d-{value}` для `xs`
- `.d-{breakpoint}-{value}` для `sm`, `md`, `lg`, `xl` и `xxl`.

Где *значение* - одно из:

- `none`
- `inline`
- `inline-block`
- `block`
- `table`
- `table-cell`
- `table-row`
- `flex`
- `inline-flex`

Отображаемые значения можно изменить, изменив переменную `$displays` и перекомпилировав SCSS.

Медиа-запросы влияют на ширину экрана с заданной точкой останова *или больше*. Например, `.d-lg-none` устанавливает `display: none;` на экранах `lg`, `xl` и `xxl`.

## Примеры

{{< example >}}
<div class="d-inline p-2 bg-primary text-white">d-inline</div>
<div class="d-inline p-2 bg-dark text-white">d-inline</div>
{{< /example >}}

{{< example >}}
<span class="d-block p-2 bg-primary text-white">d-block</span>
<span class="d-block p-2 bg-dark text-white">d-block</span>
{{< /example >}}

## Скрытие элементов

Для более быстрой разработки, удобной для мобильных устройств, используйте адаптивные классы отображения для отображения и скрытия элементов по устройствам. Избегайте создания совершенно разных версий одного и того же сайта, вместо этого скройте элементы в зависимости от размера экрана.

Чтобы скрыть элементы, просто используйте класс `.d-none` или один из классов `.d-{sm,md,lg,xl,xxl}-none` для любого варианта адаптивного экрана.

Чтобы отображать элемент только в заданном интервале размеров экрана, Вы можете объединить один класс `.d-*-none` с классом `.d-*-*`, например, `.d-none .d-md-block .d-xl-none .d-xxl-none` скроет элемент для всех размеров экрана, кроме средних и больших устройств.

<table class="table">
  <thead>
    <tr>
      <th>Размер экрана</th>
      <th>Класс</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Скрыто на всех</td>
      <td><code>.d-none</code></td>
    </tr>
    <tr>
      <td>Скрыто только на xs</td>
      <td><code>.d-none .d-sm-block</code></td>
    </tr>
    <tr>
      <td>Скрыто только на sm</td>
      <td><code>.d-sm-none .d-md-block</code></td>
    </tr>
    <tr>
      <td>Скрыто только на md</td>
      <td><code>.d-md-none .d-lg-block</code></td>
    </tr>
    <tr>
      <td>Скрыто только на lg</td>
      <td><code>.d-lg-none .d-xl-block</code></td>
    </tr>
    <tr>
      <td>Скрыто только на xl</td>
      <td><code>.d-xl-none</code></td>
    </tr>
    <tr>
      <td>Скрыто только на xxl</td>
      <td><code>.d-xxl-none</code></td>
    </tr>
    <tr>
      <td>Видно на всех</td>
      <td><code>.d-block</code></td>
    </tr>
    <tr>
      <td>Видно только на xs</td>
      <td><code>.d-block .d-sm-none</code></td>
    </tr>
    <tr>
      <td>Видно только на sm</td>
      <td><code>.d-none .d-sm-block .d-md-none</code></td>
    </tr>
    <tr>
      <td>Видно только на md</td>
      <td><code>.d-none .d-md-block .d-lg-none</code></td>
    </tr>
    <tr>
      <td>Видно только на lg</td>
      <td><code>.d-none .d-lg-block .d-xl-none</code></td>
    </tr>
    <tr>
      <td>Видно только на xl</td>
      <td><code>.d-none .d-xl-block .d-xxl-none</code></td>
    </tr>
    <tr>
      <td>Видно только на xxl</td>
      <td><code>.d-none .d-xxl-block</code></td>
    </tr>
  </tbody>
</table>

{{< example >}}
<div class="d-lg-none">скрыть на lg и более широких экранах</div>
<div class="d-none d-lg-block">скрыть на экранах меньше lg</div>
{{< /example >}}

## Показать в печати

Измените значение `display` элементов при печати с помощью наших служебных классов отображения при печати. Включает поддержку тех же значений `display`, что и наши адаптивные утилиты `.d-*`.

- `.d-print-none`
- `.d-print-inline`
- `.d-print-inline-block`
- `.d-print-block`
- `.d-print-table`
- `.d-print-table-row`
- `.d-print-table-cell`
- `.d-print-flex`
- `.d-print-inline-flex`

Классы печати и отображения можно комбинировать.

{{< example >}}
<div class="d-print-none">Только экран (Скрывать только при печати)</div>
<div class="d-none d-print-block">Только печать (скрыть только на экране)</div>
<div class="d-none d-lg-block d-print-block">Скрыть до большого размера на экране, но всегда показывать на печати</div>
{{< /example >}}
