---
layout: docs
title: Контейнеры
description: Контейнеры - это фундаментальный строительный блок Bootstrap, который содержит, дополняет и выравнивает Ваш контент в пределах данного устройства или области просмотра.
group: layout
toc: true
---

## Как они работают

Контейнеры являются самым основным элементом макета в Bootstrap и **необходимы при использовании нашей сеточной системы по умолчанию**. Контейнеры используются для содержания, заполнения и (иногда) центрирования содержимого внутри них. Хотя контейнеры *могут* быть вложенными, для большинства макетов вложенный контейнер не требуется.

Bootstrap поставляется с тремя разными контейнерами:

- `.container`, который устанавливает `max-width` для каждой контрольной точки
- `.container-{breakpoint}`, который равен `width: 100%` до указанной контрольной точки
- `.container-fluid`, который равен `width: 100%` во всех контрольных точках

В приведенной ниже таблице показано, как `max-width` каждого контейнера сравнивается с исходными `.container` и `.container-fluid` для каждой контрольной точки.

Посмотрите их в действии и сравните их в нашем [примере сетки]({{< docsref "/examples/grid#containers" >}}).

{{< bs-table "table" >}}
|  | Extra small<div class="fw-normal">&lt;576px</div> | Small<div class="fw-normal">&ge;576px</div> | Medium<div class="fw-normal">&ge;768px</div> | Large<div class="fw-normal">&ge;992px</div> | X-Large<div class="fw-normal">&ge;1200px</div> | XX-Large<div class="fw-normal">&ge;1400px</div> |
| --- | --- | --- | --- | --- | --- | --- |
| `.container` | <span class="text-muted">100%</span> | 540px | 720px | 960px | 1140px | 1320px |
| `.container-sm` | <span class="text-muted">100%</span> | 540px | 720px | 960px | 1140px | 1320px |
| `.container-md` | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | 720px | 960px | 1140px | 1320px |
| `.container-lg` | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | 960px | 1140px | 1320px |
| `.container-xl` | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | 1140px | 1320px |
| `.container-xxl` | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | 1320px |
| `.container-fluid` | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> | <span class="text-muted">100%</span> |
{{< /bs-table >}}

## Контейнер по умолчанию

Наш класс `.container` по умолчанию является адаптивным контейнером фиксированной ширины, что означает, что его максимальная ширина изменяется в каждой контрольной точке.

```html
<div class="container">
  <!-- Контент здесь -->
</div>
```

## Адаптивные контейнеры

Адаптивные контейнеры позволяют Вам указать класс шириной 100% до достижения указанной контрольной точки, после чего мы применяем `max-width` для каждой из более высоких контрольных точек. Например, `.container-sm` имеет 100% ширину для начала до тех пор, пока не будет достигнута контрольная точка `sm`,  где он будет масштабироваться с помощью `md`, `lg`, `xl` и `xxl`.

```html
<div class="container-sm">100% шириной до контрольной точки small</div>
<div class="container-md">100% шириной до контрольной точки medium</div>
<div class="container-lg">100% шириной до контрольной точки large</div>
<div class="container-xl">100% шириной до контрольной точки extra large</div>
<div class="container-xxl">100% шириной до контрольной точки extra extra large</div>
```

## Подвижные контейнеры

Используйте `.container-fluid` для контейнера полной ширины, охватывающего всю ширину области просмотра.

```html
<div class="container-fluid">
  ...
</div>
```

## Sass

Как показано выше, Bootstrap генерирует серию предопределенных контейнерных классов, чтобы помочь Вам создать желаемые макеты. Вы можете настроить эти предопределенные классы контейнеров, изменив карту Sass (находится в `_variables.scss`), которая их поддерживает:

{{< scss-docs name="container-max-widths" file="scss/_variables.scss" >}}

Помимо настройки Sass, Вы также можете создавать свои собственные контейнеры с помощью нашего миксина Sass.

```scss
// Исходный миксин
@mixin make-container($padding-x: $container-padding-x) {
  width: 100%;
  padding-right: $padding-x;
  padding-left: $padding-x;
  margin-right: auto;
  margin-left: auto;
}

// Применение
.custom-container {
  @include make-container();
}
```

Для получения дополнительной информации и примеров того, как изменить наши карты и переменные Sass, обратитесь к [разделу Sass документации Сеток]({{< docsref "/layout/grid#sass" >}}).
