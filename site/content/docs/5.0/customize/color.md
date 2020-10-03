---
layout: docs
title: Цвет
description: Bootstrap поддерживается обширной цветовой системой, которая определяет наши стили и компоненты. Это дает возможность более полной настройки и расширения для любого проекта.
group: customize
toc: true
---

## Цвета темы

Мы используем подмножество всех цветов, чтобы создать меньшую цветовую палитру для создания цветовых схем, также доступных в виде переменных Sass и карты Sass в файле `scss/_variables.scss`.

<div class="row">
  {{< theme-colors.inline >}}
  {{- range (index $.Site.Data "theme-colors") }}
    <div class="col-md-4">
      <div class="p-3 mb-3 bg-{{ .name }} {{ if or (eq .name "light") (eq .name "warning") }}text-dark{{ else if (eq .name "info")}}text-body{{ else }}text-white{{ end }}">{{ .name | title }}</div>
    </div>
  {{ end -}}
  {{< /theme-colors.inline >}}
</div>

Все эти цвета доступны в виде карты Sass, `$theme-colors`.

{{< scss-docs name="theme-colors-map" file="scss/_variables.scss" >}}

Ознакомьтесь с [нашей документацией по картам и циклам Sass]({{< docsref "/customize/sass#maps-and-loops" >}}), чтобы узнать, как изменить эти цвета.

## Все цвета

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

Добавляйте, удаляйте или изменяйте значения на карте, чтобы обновить, как они используются во многих других компонентах. К сожалению, в настоящее время не _every_ компонент использует эту карту Sass. В будущих обновлениях мы постараемся улучшить это. А пока планируйте использовать переменные `${color}` и эту карту Sass.

### Пример

Вот как Вы можете использовать их в своем Sass:

{{< highlight scss >}}
.alpha { color: $purple; }
.beta {
  color: $yellow-300;
  background-color: $indigo-900;
}
{{< /highlight >}}

[Цветовые служебные классы]({{< docsref "/utilities/colors" >}}) также доступны для установки `color` и `background-color` с использованием `500` значений цвета.
