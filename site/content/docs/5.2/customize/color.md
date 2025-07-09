---
layout: docs
title: Цвет
description: Bootstrap поддерживается обширной цветовой системой, которая определяет наши стили и компоненты. Это дает возможность более полной настройки и расширения для любого проекта.
group: customize
toc: true
---

## Цвета

{{< added-in "5.3.0" >}}

Цветовая палитра Bootstrap продолжает расширяться и становится более гибкой в версии 5.3.0. Мы добавили новые переменные для вторичных (`secondary`) и третичных (`tertiary`) цветов текста и фона, а также `{color}-bg-subtle`, `{color}-border-subtle` и `{color}-text` для наших тематических цветов. Эти новые цвета доступны через переменные Sass и CSS (но не через наши карты цветов или утилитарные классы) с целью облегчить настройку для различных цветовых режимов, таких как светлый и темный. Эти новые переменные глобально задаются на `:root` и адаптированы для нового темного режима, в то время как наши исходные тематические цвета остаются без изменений.

Цвета, заканчивающиеся на `-rgb`, предоставляют значения `red, green, blue` для использования в цветовых режимах `rgb()` и `rgba()`. Например, `rgba(var(--bs-secondary-bg-rgb), .5)`.

{{< callout warning>}}
**Внимание!** Возможна путаница с нашими новыми вторичными и третичными цветами, а также с существующим вторичным тематическим цветом, а также с нашими светлыми и темными тематическими цветами. Ожидайте, что это будет доработано в v6.
{{< /callout >}}

<table class="table table-swatches">
  <thead>
    <tr>
      <th style="width: 340px;">Описание</th>
      <th style="width: 200px;" class="ps-0">Образец</th>
      <th>Переменные</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td rowspan="2">
        {{< markdown >}}**Основной —** Цвет текста и фона по умолчанию, включая компоненты.{{< /markdown >}}
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
        {{< markdown >}}**Вторичный —** Используйте опцию `color` для более светлого текста. Используйте опцию `bg` для разделителей и для обозначения неактивных состояний компонентов.{{< /markdown >}}
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
        {{< markdown >}}**Третичный —** Используйте опцию `color` для еще более светлого текста. Используйте опцию `bg` для фонов состояний наведения, акцентов и областей.{{< /markdown >}}
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
        {{< markdown >}}**Акцент —** Для текста с более высоким контрастом. Не применяется к фонам.{{< /markdown >}}
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
        {{< markdown >}}**Граница —** Для границ компонентов, разделителей и линий. Используйте `--bs-border-color-translucent` для смешивания с фоном с помощью значения `rgba()`.{{< /markdown >}}
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
        {{< markdown >}}**Основной —** Главный цвет темы, используется для гиперссылок, стилей фокуса, активных состояний компонентов и форм.{{< /markdown >}}
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
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-primary-bg-subtle); --bs-border-color: var(--bs-primary-border-subtle); color: var(--bs-primary-text);">Фон (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-primary-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-primary-border-subtle); color: var(--bs-primary-text);">Граница (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-primary-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-primary-text); color: var(--bs-body-bg);">Текст</div>
      </td>
      <td>
        {{< markdown >}}`--bs-primary-text`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Успех —** Цвет темы, используемый для положительных или успешных действий и информации.{{< /markdown >}}
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
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-success-bg-subtle); --bs-border-color: var(--bs-success-border-subtle); color: var(--bs-success-text);">Фон (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-success-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-success-border-subtle); color: var(--bs-success-text);">Граница (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-success-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-success-text); color: var(--bs-body-bg);">Текст</div>
      </td>
      <td>
        {{< markdown >}}`--bs-success-text`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Опасность —** Цвет темы, используемый для ошибок и опасных действий.{{< /markdown >}}
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
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-danger-bg-subtle); --bs-border-color: var(--bs-danger-border-subtle); color: var(--bs-danger-text);">Фон (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-danger-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-danger-border-subtle); color: var(--bs-danger-text);">Граница (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-danger-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-danger-text); color: var(--bs-body-bg);">Текст</div>
      </td>
      <td>
        {{< markdown >}}`--bs-danger-text`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Предупреждение —** Цвет темы, используемый для неразрушающих предупреждающих сообщений.{{< /markdown >}}
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
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-warning-bg-subtle); --bs-border-color: var(--bs-warning-border-subtle); color: var(--bs-warning-text);">Фон (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-warning-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-warning-border-subtle); color: var(--bs-warning-text);">Граница (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-warning-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-warning-text); color: var(--bs-body-bg);">Текст</div>
      </td>
      <td>
        {{< markdown >}}`--bs-warning-text`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Информация —** Цвет темы, используемый для нейтрального и информативного контента.{{< /markdown >}}
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
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-info-bg-subtle); --bs-border-color: var(--bs-info-border-subtle); color: var(--bs-info-text);">Фон (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-info-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-info-border-subtle); color: var(--bs-info-text);">Граница (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-info-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 h-100 rounded-2" style="background-color: var(--bs-info-text); color: var(--bs-body-bg);">Текст</div>
      </td>
      <td>
        {{< markdown >}}`--bs-info-text`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Светлый —** Дополнительная опция темы для менее контрастных цветов.{{< /markdown >}}
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
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-light-bg-subtle); --bs-border-color: var(--bs-light-border-subtle); color: var(--bs-light-text);">Фон (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-light-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-light-border-subtle); color: var(--bs-light-text);">Граница (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-light-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 h-100 rounded-2" style="background-color: var(--bs-light-text); color: var(--bs-body-bg);">Текст</div>
      </td>
      <td>
        {{< markdown >}}`--bs-light-text`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Темный —** Дополнительная опция темы для более контрастных цветов.{{< /markdown >}}
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
        <div class="px-3 py-2 rounded-2 border" style="background-color: var(--bs-dark-bg-subtle); --bs-border-color: var(--bs-dark-border-subtle); color: var(--bs-dark-text);">Фон (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-dark-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 rounded-2" style="background-color: var(--bs-dark-border-subtle); color: var(--bs-dark-text);">Граница (subtle)</div>
      </td>
      <td>
        {{< markdown >}}`--bs-dark-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="px-3 py-2 h-100 rounded-2" style="background-color: var(--bs-dark-text); color: var(--bs-body-bg);">Текст</div>
      </td>
      <td>
        {{< markdown >}}`--bs-dark-text`{{< /markdown >}}
      </td>
    </tr>
  </tbody>
</table>

### Использование новых цветов

Эти новые цвета доступны через CSS-переменные и утилитарные классы — такие как `--bs-primary-bg-subtle` и `.bg-primary-subtle` — что позволяет вам создавать собственные CSS-правила с переменными или быстро применять стили с помощью классов. Утилиты построены на основе связанных CSS-переменных цвета, и поскольку мы настраиваем эти переменные для темного режима, они также адаптируются к цветовым режимам по умолчанию.

{{< example >}}
<div class="p-3 text-primary-emphasis bg-primary-subtle border border-primary-subtle rounded-3">
  Пример элемента с утилитами
</div>
{{< /example >}}

### Тематические цвета

Мы используем подмножество всех цветов для создания меньшей цветовой палитры для построения цветовых схем, также доступных как переменные Sass и карта Sass в файле `scss/_variables.scss`.

<div class="row">
  {{< theme-colors.inline >}}
  {{- range (index $.Site.Data "theme-colors") }}
    <div class="col-md-4">
      <div class="p-3 mb-3 text-bg-{{ .name }} rounded-3">{{ .name | title }}</div>
    </div>
  {{ end -}}
  {{< /theme-colors.inline >}}
</div>

Все эти цвета доступны как карта Sass `$theme-colors`.

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

Sass не может программно генерировать переменные, поэтому мы вручную создали переменные для каждого оттенка и тона. Мы указываем значение средней точки (например, `$blue-500`) и используем пользовательские цветовые функции для осветления (tint) или затемнения (shade) наших цветов с помощью функции Sass `mix()`.

Использование `mix()` — это не то же самое, что `lighten()` и `darken()` — первая смешивает указанный цвет с белым или черным, а последние только регулируют значение яркости каждого цвета. В результате получается гораздо более полный набор цветов, как [показано в этой демонстрации CodePen](https://codepen.io/emdeoh/pen/zYOQOPB).

Наши функции `tint-color()` и `shade-color()` используют `mix()` вместе с нашей переменной `$theme-color-interval`, которая определяет ступенчатое процентное значение для каждого смешанного цвета, который мы производим. См. полный исходный код в файлах `scss/_functions.scss` и `scss/_variables.scss`.

## Карты цветов Sass

Исходные файлы Sass Bootstrap включают три карты, которые помогут вам быстро и легко просмотреть список цветов и их шестнадцатеричные значения.

- `$colors` — список всех наших доступных базовых цветов (`500`)
- `$theme-colors` — список всех цветов темы с семантическими именами (показано ниже)
- `$grays` — список всех оттенков и тонов серого

В `scss/_variables.scss` вы найдете цветовые переменные Bootstrap и карту Sass. Вот пример карты Sass `$colors`:

{{< scss-docs name="colors-map" file="scss/_variables.scss" >}}

Добавляйте, удаляйте или изменяйте значения на карте, чтобы обновить, как они используются во многих других компонентах. К сожалению, в настоящее время не _каждый_ компонент использует эту карту Sass. В будущих обновлениях мы постараемся улучшить это. А пока планируйте использовать переменные `${color}` и эту карту Sass.

### Пример

Вот как вы можете использовать их в своем Sass:

```scss
.alpha { color: $purple; }
.beta {
  color: $yellow-300;
  background-color: $indigo-900;
}
```

Утилиты [цвета]({{< docsref "/utilities/colors" >}}) и [фона]({{< docsref "/utilities/background" >}}) также доступны для установки `color` и `background-color` с использованием значений цвета `500`.

## Генерация утилит

{{< added-in "5.1.0" >}}

Bootstrap не включает утилиты `color` и `background-color` для каждой цветовой переменной, но вы можете создать их самостоятельно с помощью нашего [Utility API]({{< docsref "/utilities/api" >}}) и нашей расширенной карты Sass, добавленной в v5.1.0.

1. Для начала убедитесь, что вы импортировали наши функции, переменные, миксины и утилиты.
2. Используйте нашу функцию `map-merge-multiple()`, чтобы быстро объединить несколько карт Sass в новую карту.
3. Объедините эту новую комбинированную карту, чтобы дополнить любую утилиту с именем класса `{color}-{level}`.

Вот пример, который генерирует утилиты цвета текста (например, `.text-purple-500`), используя вышеуказанные шаги.

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

Это создаст новые утилиты `.text-{color}-{level}` для каждого цвета и уровня. То же самое можно сделать и с любыми другими утилитами и свойствами.
