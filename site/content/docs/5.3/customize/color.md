---
layout: docs
title: Цвет
Описание: Bootstrap поддерживается обширной цветовой системой, которая определяет наши стили и компоненты. Это дает возможность более полной настройки и расширения для любого проекта.
group: customize
toc: true
---

## Цвета

{{< added-in "5.3.0" >}}

В версии 5.3.0 цветовая палитра Bootstrap продолжает расширяться и становится более нюансированной. Мы добавили новые переменные для `secondary` и `tertiary` цвета текста и фона, а также `{color}-bg-subtle`, `{color}-border-subtle` и `{color}-text-emphasis` для нашего цвета темы. Эти новые цвета доступны через переменные Sass и CSS (но не наши карты цветов или служебные классы) с явной целью упростить настройку нескольких цветовых режимов, таких как светлый и темный. Эти новые переменные глобально установлены в `:root` и адаптированы для нашего нового темного цветового режима, в то время как исходные цвета темы остаются неизменными.

Цвета, оканчивающиеся на `-rgb`, предоставляют значения `red, green, blue` для использования в цветовых режимах `rgb()` и `rgba()`. Например, `rgba(var(--bs-secondary-bg-rgb), .5)`.

{{< callout warning>}}
**Внимание!** Существует некоторая потенциальная путаница с нашими новыми вторичными и третичными цветами и нашим существующим вторичным цветом темы, а также с нашими светлыми и темными цветами темы. Ожидайте, что это будет исправлено в v6.
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
        {{< markdown >}}**Body —** Передний план (цвет) и фон по умолчанию, включая компоненты.{{< /markdown >}}
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
        {{< markdown >}}**Secondary —** Используйте опцию `color` для более светлого текста. Используйте опцию `bg` для разделителей и для указания отключенных состояний компонентов.{{< /markdown >}}
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
        {{< markdown >}}**Tertiary —** Используйте опцию `color` для еще более светлого текста. Используйте опцию `bg` , чтобы стилизовать фоны для состояний hover, accents и wells.{{< /markdown >}}
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
        {{< markdown >}}**Emphasis —** Для более контрастного текста. Не применимо для фона.{{< /markdown >}}
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
        {{< markdown >}}**Border —** Для границ компонентов, разделителей и правил. Используйте `--bs-border-color-translucent` для смешивания с фоном со значением `rgba()`.{{< /markdown >}}
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
        {{< markdown >}}**Primary —** Цвет основной темы, используемый для гиперссылок, стилей фокуса, активных состояний компонентов и форм.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 bg-primary">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-primary`<br>`--bs-primary-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="background-color: var(--bs-primary-bg-subtle)">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-primary-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="border: 5px var(--bs-primary-border-subtle) solid">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-primary-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="py-3 fw-bold h5" style="color: var(--bs-primary-text-emphasis)">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-primary-text-emphasis`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Success —** Цвет темы, используемый для положительных или успешных действий и информации.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 bg-success">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-success`<br>`--bs-success-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="background-color: var(--bs-success-bg-subtle)">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-success-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="border: 5px var(--bs-success-border-subtle) solid">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-success-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="py-3 fw-bold h5" style="color: var(--bs-success-text-emphasis)">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-success-text-emphasis`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Danger —** Цвет темы, используемый для ошибок и опасных действий.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 bg-danger">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-danger`<br>`--bs-danger-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="background-color: var(--bs-danger-bg-subtle)">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-danger-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="border: 5px var(--bs-danger-border-subtle) solid">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-danger-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="py-3 fw-bold h5" style="color: var(--bs-danger-text-emphasis)">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-danger-text-emphasis`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Warning —** Цвет темы, используемый для неразрушающих предупреждающих сообщений.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 bg-warning">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-warning`<br>`--bs-warning-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="background-color: var(--bs-warning-bg-subtle)">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-warning-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="border: 5px var(--bs-warning-border-subtle) solid">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-warning-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="py-3 fw-bold h5" style="color: var(--bs-warning-text-emphasis)">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-warning-text-emphasis`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Info —** Цвет темы, используемый для нейтрального и информативного контента.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 bg-info">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-info`<br>`--bs-info-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="background-color: var(--bs-info-bg-subtle)">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-info-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="border: 5px var(--bs-info-border-subtle) solid">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-info-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="py-3 fw-bold h5" style="color: var(--bs-info-text-emphasis)">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-info-text-emphasis`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Light —** Дополнительная опция темы для менее контрастных цветов.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 bg-light">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-light`<br>`--bs-light-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="background-color: var(--bs-light-bg-subtle)">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-light-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="border: 5px var(--bs-light-border-subtle) solid">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-light-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="py-3 fw-bold h5" style="color: var(--bs-light-text-emphasis)">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-light-text-emphasis`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td rowspan="4">
        {{< markdown >}}**Dark —** Дополнительная опция темы для более контрастных цветов.{{< /markdown >}}
      </td>
      <td class="ps-0">
        <div class="p-3 rounded-2 bg-dark">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-dark`<br>`--bs-dark-rgb`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="background-color: var(--bs-dark-bg-subtle)">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-dark-bg-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="p-3 rounded-2" style="border: 5px var(--bs-dark-border-subtle) solid">&nbsp;</div>
      </td>
      <td>
        {{< markdown >}}`--bs-dark-border-subtle`{{< /markdown >}}
      </td>
    </tr>
    <tr>
      <td>
        <div class="py-3 fw-bold h5" style="color: var(--bs-dark-text-emphasis)">Text</div>
      </td>
      <td>
        {{< markdown >}}`--bs-dark-text-emphasis`{{< /markdown >}}
      </td>
    </tr>
  </tbody>
</table>

### Использование новых цветов

Эти новые цвета доступны через переменные CSS и служебные классы, такие как `--bs-primary-bg-subtle` и `.bg-primary-subtle`, что позволяет вам создавать собственные правила CSS с помощью переменных или быстро применять их. стили через классы. Утилиты построены с переменными CSS, связанными с цветом, и, поскольку мы настраиваем эти переменные CSS для темного режима, они также адаптируются к цветовому режиму по умолчанию.

{{< example >}}
<div class="p-3 text-primary-emphasis bg-primary-subtle border border-primary-subtle rounded-3">
  Пример элемента с утилитами
</div>
{{< /example >}}

### Цвета темы

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
@import "bootstrap/scss/variables-dark";
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
