---
layout: docs
title: Цвет
description: Bootstrap поддерживается обширной цветовой системой, которая определяет наши стили и компоненты. Это дает возможность более полной настройки и расширения для любого проекта.
group: customize
toc: true
---

## Colors

{{< added-in "5.3.0" >}}

Bootstrap's color palette has continued to expand and become more nuanced in v5.3.0. We've added new variables for `secondary` and `tertiary` text and background colors, plus `{color}-bg-subtle`, `{color}-border-subtle`, and `{color}-text` for our theme colors. These new colors are available through Sass and CSS variables (but not our color maps or utility classes) with the express goal of making it easier to customize across multiple colors modes like light and dark. These new variables are globally set on `:root` and are adapted for our new dark color mode while our original theme colors remain unchanged.

Colors ending in `-rgb` provide the `red, green, blue` values for use in `rgb()` and `rgba()` color modes. For example, `rgba(var(--bs-secondary-bg-rgb), .5)`.

{{< callout warning>}}
**Heads up!** There's some potential confusion with our new secondary and tertiary colors, and our existing secondary theme color, as well as our light and dark theme colors. Expect this to be ironed out in v6.
{{< /callout >}}

<table class="table table-swatches">
  <thead>
    <tr>
      <th style="width: 340px;">Description</th>
      <th style="width: 200px;" class="ps-0">Swatch</th>
      <th>Variables</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td rowspan="2">
        {{< markdown >}}**Body —** Default foreground (color) and background, including components.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2" style="background-color: var(--bs-body-color);">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-body-color`<br>`--bs-body-color-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2 border" style="background-color: var(--bs-body-bg);">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-body-bg`<br>`--bs-body-bg-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="2">
        {{< markdown >}}**Secondary —** Use the `color` option for lighter text. Use the `bg` option for dividers and to indicate disabled component states.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2" style="background-color: var(--bs-secondary-color);">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-secondary-color`<br>`--bs-secondary-color-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2 border" style="background-color: var(--bs-secondary-bg);">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-secondary-bg`<br>`--bs-secondary-bg-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="2">
        {{< markdown >}}**Tertiary —** Use the `color` option for even lighter text. Use the `bg` option to style backgrounds for hover states, accents, and wells.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2" style="background-color: var(--bs-tertiary-color);">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-tertiary-color`<br>`--bs-tertiary-color-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2 border" style="background-color: var(--bs-tertiary-bg);">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-tertiary-bg`<br>`--bs-tertiary-bg-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        {{< markdown >}}**Emphasis —** For higher contrast text. Not applicable for backgrounds.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2" style="background-color: var(--bs-emphasis-color);">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-emphasis-color`<br>`--bs-emphasis-color-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        {{< markdown >}}**Border —** For component borders, dividers, and rules. Use `--bs-border-color-translucent` to blend with backgrounds with an `rgba()` value.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2" style="background-color: var(--bs-border-color);">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-border-color`<br>`--bs-border-color-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Primary —** Main theme color, used for hyperlinks, focus styles, and component and form active states.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 text-bg-primary">Primary</div>
      </td>
      <td>
        {{< markdown >}}`--bs-primary`<br>`--bs-primary-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-primary-bg-subtle); --bs-border-color: var(--bs-primary-border-subtle); color: var(--bs-primary-text);">Background subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-primary-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-primary-border-subtle); color: var(--bs-primary-text);">Border subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-primary-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-primary-text); color: var(--bs-body-bg);">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-primary-text`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Success —** Theme color used for positive or successful actions and information.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 text-bg-success">Success</div>
      </td>
      <td>
        {{< markdown >}}`--bs-success`<br>`--bs-success-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-success-bg-subtle); --bs-border-color: var(--bs-success-border-subtle); color: var(--bs-success-text);">Background subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-success-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-success-border-subtle); color: var(--bs-success-text);">Border subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-success-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-success-text); color: var(--bs-body-bg);">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-success-text`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Danger —** Theme color used for errors and dangerous actions.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 text-bg-danger">Danger</div>
      </td>
      <td>
        {{< markdown >}}`--bs-danger`<br>`--bs-danger-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-danger-bg-subtle); --bs-border-color: var(--bs-danger-border-subtle); color: var(--bs-danger-text);">Background subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-danger-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-danger-border-subtle); color: var(--bs-danger-text);">Border subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-danger-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-danger-text); color: var(--bs-body-bg);">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-danger-text`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Warning —** Theme color used for non-destructive warning messages.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 text-bg-warning">Warning</div>
      </td>
      <td>
        {{< markdown >}}`--bs-warning`<br>`--bs-warning-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-warning-bg-subtle); --bs-border-color: var(--bs-warning-border-subtle); color: var(--bs-warning-text);">Background subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-warning-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-warning-border-subtle); color: var(--bs-warning-text);">Border subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-warning-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-warning-text); color: var(--bs-body-bg);">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-warning-text`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Info —** Theme color used for neutral and informative content.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 text-bg-info">Info</div>
      </td>
      <td>
        {{< markdown >}}`--bs-info`<br>`--bs-info-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-info-bg-subtle); --bs-border-color: var(--bs-info-border-subtle); color: var(--bs-info-text);">Background subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-info-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-info-border-subtle); color: var(--bs-info-text);">Border subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-info-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 h-100 rounded-2" style="background-color: var(--bs-info-text); color: var(--bs-body-bg);">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-info-text`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Light —** Additional theme option for less contrasting colors.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 text-bg-light border">Light</div>
      </td>
      <td>
        {{< markdown >}}`--bs-light`<br>`--bs-light-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-light-bg-subtle); --bs-border-color: var(--bs-light-border-subtle); color: var(--bs-light-text);">Background subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-light-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-light-border-subtle); color: var(--bs-light-text);">Border subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-light-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 h-100 rounded-2" style="background-color: var(--bs-light-text); color: var(--bs-body-bg);">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-light-text`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Dark —** Additional theme option for higher contrasting colors.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 text-bg-dark border">Dark</div>
      </td>
      <td>
        {{< markdown >}}`--bs-dark`<br>`--bs-dark-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-dark-bg-subtle); --bs-border-color: var(--bs-dark-border-subtle); color: var(--bs-dark-text);">Background subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-dark-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-dark-border-subtle); color: var(--bs-dark-text);">Border subtle</div>
      </td>
      <td>
        {{< markdown >}}`--bs-dark-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 h-100 rounded-2" style="background-color: var(--bs-dark-text); color: var(--bs-body-bg);">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-dark-text`{{< /markdown >}}
      </td>
    </tr>
  </tbody>
</table>

### Using the new colors

These new colors are accessible via CSS variables and utility classes—like `--bs-primary-bg-subtle` and `.bg-primary-subtle`—allowing you to compose your own CSS rules with the variables, or to quickly apply styles via classes. The utilities are built with the color's associated CSS variables, and since we customize those CSS variables for dark mode, they are also adaptive to color mode by default.

{{< example >}}
<div class="p-3 text-primary-emphasis bg-primary-subtle border border-primary-subtle rounded-3">
  Example element with utilities
</div>
{{< /example >}}

### Theme colors

Мы используем подмножество всех цветов, чтобы создать меньшую цветовую палитру для создания цветовых схем, также доступных в виде переменных Sass и карты Sass в файле `scss/_variables.scss`.

<div class="row">
  {{< theme-colors.inline >}}
  {{- range (index $.Site.Data "theme-colors") }}
    <div class="col-md-4">
      <div class="p-3 mb-3 text-bg-{{ .name }} rounded-3">{{ .name | title }}</div>
    </div>
  {{ end -}}
  {{< /theme-colors.inline >}}
</div>

Все эти цвета доступны в виде карты Sass, `$theme-colors`.

{{< scss-docs name="theme-colors-map" file="scss/_variables.scss" >}}

Ознакомьтесь с [нашей документацией по картам и циклам Sass]({{< docsref "/customize/sass#maps-and-loops" >}}), чтобы узнать, как изменить эти цвета.

### Все цвета

Все цвета Bootstrap доступны как переменные Sass и карта Sass в файле `scss/_variables.scss`. Чтобы избежать увеличения размеров файлов, мы не создаем классы цвета текста или фона для каждой из этих переменных. Вместо этого мы выбираем подмножество этих цветов для [палитры темы](#theme-colors).

Обязательно следите за коэффициентом контрастности при настройке цветов. Как показано ниже, мы добавили три коэффициента контрастности к каждому из основных цветов: один для текущих цветов образца, один для белого и один для черного.

<div class="row font-monospace">
  {{< theme-colors.inline >}}
  {{- range $color := $.Site.Data.colors }}
    {{- if (and (not (eq $color.name "white")) (not (eq $color.name "gray")) (not (eq $color.name "gray-dark"))) }}
    <div class="col-md-4 mb-3">
      <div class="p-3 mb-2 position-relative swatch-{{ $color.name }}">
        <strong class="d-block">${{ $color.name }}</strong>
        {{ $color.hex }}
      </div>
      {{ range (seq 100 100 900) }}
      <div class="p-3 bd-{{ $color.name }}-{{ . }}">${{ $color.name }}-{{ . }}</div>
      {{ end }}
    </div>
    {{ end -}}
  {{ end -}}

  <div class="col-md-4 mb-3">
    <div class="p-3 mb-2 position-relative swatch-gray-500">
      <strong class="d-block">$gray-500</strong>
      #adb5bd
    </div>
  {{- range $.Site.Data.grays }}
    <div class="p-3 bd-gray-{{ .name }}">$gray-{{ .name }}</div>
  {{ end -}}
  </div>
  {{< /theme-colors.inline >}}

  <div class="col-md-4 mb-3">
    <div class="p-3 mb-2 bd-black text-white">
      <strong class="d-block">$black</strong>
      #000
    </div>
    <div class="p-3 mb-2 bd-white border">
      <strong class="d-block">$white</strong>
      #fff
    </div>
  </div>
</div>

### Примечания к Sass

Sass не может программно генерировать переменные, поэтому мы вручную создали переменные для каждого оттенка и оттенка сами. Мы указываем значение средней точки (например, `$blue-500`) и используем пользовательские цветовые функции для придания оттенка (осветления) или затенения (затемнения) наших цветов с помощью цветовой функции Sass `mix()`.

Использование `mix()` - это не то же самое, что `lighten()` и `darken()` - первый смешивает указанный цвет с белым или черным, а последний только регулирует значение яркости каждого цвета. В результате получается гораздо более полный набор цветов, как [показано в этой демонстрации CodePen](https://codepen.io/emdeoh/pen/zYOQOPB).

Наши функции `tint-color()` и `shade-color()` используют `mix()` вместе с нашей переменной `$theme-color-interval`, которая определяет ступенчатое процентное значение для каждого смешанного цвета, который мы производим. См. полный исходный код в файлах `scss/_functions.scss` и `scss/_variables.scss`.

## Карты sass цвета

Исходные файлы Sass Bootstrap включают три карты, которые помогут Вам быстро и легко просмотреть список цветов и их шестнадцатеричные значения.

- `$colors` список всех наших доступных базовых цветов (`500`)
- `$theme-colors` список всех цветов темы с семантическими именами (показано ниже)
- `$grays` список всех оттенков и теней серого

В `scss/_variables.scss` Вы найдете цветовые переменные Bootstrap и карту Sass. Вот пример Sass-карты `$colors`:

{{< scss-docs name="colors-map" file="scss/_variables.scss" >}}

Добавляйте, удаляйте или изменяйте значения на карте, чтобы обновить, как они используются во многих других компонентах. К сожалению, в настоящее время не _каждый_ компонент использует эту карту Sass. В будущих обновлениях мы постараемся улучшить это. А пока планируйте использовать переменные `${color}` и эту карту Sass.

### Пример

Вот как Вы можете использовать их в своем Sass:

```scss
.alpha { color: $purple; }
.beta {
  color: $yellow-300;
  background-color: $indigo-900;
}
```

Утилиты [Цвета]({{< docsref "/utilities/colors" >}}) и [фона]({{< docsref "/utilities/background" >}}) также доступны для установки `color` и `background-color` с использованием значений цвета `500`.

## Генерация утилит

{{< added-in "5.1.0" >}}

Bootstrap не включает утилиты `color` и `background-color` для каждой цветовой переменной, но вы можете создать их самостоятельно с помощью нашего [служебного API]({{< docsref "/utilities/api" >}}) и нашего расширенного Карты Sass добавлены в v5.1.0.

1. Для начала убедитесь, что вы импортировали наши функции, переменные, миксины и утилиты.
2. Используйте нашу функцию `map-merge-multiple()`, чтобы быстро объединить несколько карт Sass в новую карту.
3. Объедините эту новую комбинированную карту, чтобы дополнить любую утилиту именем класса `{color}-{level}`.

Вот пример, который генерирует утилиты цвета текста (например, `.text-purple-500`) используя вышеуказанные шаги.

```scss
@import "bootstrap/scss/functions";
@import "bootstrap/scss/variables";
@import "bootstrap/scss/maps";
@import "bootstrap/scss/mixins";
@import "bootstrap/scss/utilities";

$all-colors: map-merge-multiple($blues, $indigos, $purples, $pinks, $reds, $oranges, $yellows, $greens, $teals, $cyans);

$utilities: map-merge(
  $utilities,
  (
    "color": map-merge(
      map-get($utilities, "color"),
      (
        values: map-merge(
          map-get(map-get($utilities, "color"), "values"),
          (
            $all-colors
          ),
        ),
      ),
    ),
  )
);

@import "bootstrap/scss/utilities/api";
```

Это создаст новые утилиты `.text-{color}-{level}` для каждого цвета и уровня. То же самое можно сделать и с любыми другими коммунальными предприятиями и объектами недвижимости.
