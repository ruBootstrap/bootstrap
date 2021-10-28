---
layout: docs
title: Темы Bootstrap
description: Настройте Bootstrap 4 с помощью наших новых встроенных переменных Sass для глобальных предпочтений стиля для упрощения создания тем и изменения компонентов.
group: getting-started
toc: true
---

## Вступление

В Bootstrap 3 тематизация во многом определялась переопределением переменных в LESS, пользовательским CSS и отдельной таблицей стилей темы, которую мы включили в наши файлы `dist`. Приложив некоторые усилия, можно полностью изменить внешний вид Bootstrap 3, не затрагивая файлы ядра. Bootstrap 4 предлагает знакомый, но немного другой подход.

Теперь создание тем выполняется с помощью переменных Sass, карт Sass и настраиваемого CSS. Больше нет специальной таблицы стилей темы; вместо этого Вы можете включить встроенную тему, чтобы добавлять градиенты, тени и многое другое.

## Sass

Используйте наши исходные файлы Sass, чтобы воспользоваться преимуществами переменных, карт, миксинов и т. д. при [компиляции Sass]({{< docsref "/getting-started/build-tools#sass" >}}) с использованием Вашего собственного конвейера ресурсов.

### Файловая структура

По возможности избегайте изменения файлов ядра Bootstrap. Для Sass это означает создание собственной таблицы стилей, которая импортирует Bootstrap, чтобы Вы могли изменять и расширять ее. Предполагая, что Вы используете менеджер пакетов, такой как npm, у Вас будет файловая структура, которая выглядит следующим образом:

```text
your-project/
├── scss
│   └── custom.scss
└── node_modules/
    └── bootstrap
        ├── js
        └── scss
```

Если Вы загрузили наши исходные файлы и не используете диспетчер пакетов, Вам нужно вручную настроить что-то похожее на эту структуру, сохраняя исходные файлы Bootstrap отдельно от Ваших собственных.

```text
your-project/
├── scss
│   └── custom.scss
└── bootstrap/
    ├── js
    └── scss
```

### Импорт

В свой `custom.scss` Вы импортируете исходные файлы Sass для Bootstrap. У Вас есть два варианта: включить весь Bootstrap или выбрать нужные Вам части. Мы поощряем последнее, но имейте в виду, что между нашими компонентами есть некоторые требования и зависимости. Вам также необходимо будет включить некоторый JavaScript для наших плагинов.

```scss
// Custom.scss
// Вариант A. Включите весь Bootstrap

// Include any default variable overrides here (though functions won't be available)

@import "../node_modules/bootstrap/scss/bootstrap";

// Then add additional custom code here
```

```scss
// Custom.scss
// Вариант Б. Включите части Bootstrap

// 1. Include functions first (so you can manipulate colors, SVGs, calc, etc)
@import "../node_modules/bootstrap/scss/functions";

// 2. Include any default variable overrides here

// 3. Include remainder of required Bootstrap stylesheets
@import "../node_modules/bootstrap/scss/variables";
@import "../node_modules/bootstrap/scss/mixins";

// 4. Include any optional Bootstrap components as you like
@import "../node_modules/bootstrap/scss/reboot";
@import "../node_modules/bootstrap/scss/type";
@import "../node_modules/bootstrap/scss/images";
@import "../node_modules/bootstrap/scss/code";
@import "../node_modules/bootstrap/scss/grid";
```

Имея эту настройку, Вы можете приступить к изменению любых переменных и карт Sass в Вашем `custom.scss`. Вы также можете начать добавлять части Bootstrap в разделе `// Optional` по мере необходимости. Мы предлагаем использовать полный стек импорта из нашего файла `bootstrap.scss` в качестве отправной точки.

### Значения переменных по умолчанию

Каждая переменная Sass в Bootstrap включает флаг `!default`, позволяющий переопределить значение переменной по умолчанию в Вашем собственном Sass без изменения исходного кода Bootstrap. Скопируйте и вставьте переменные по мере необходимости, измените их значения и удалите флаг `!default`. Если переменная уже была назначена, она не будет повторно назначена значениями по умолчанию в Bootstrap.

Вы найдете полный список переменных Bootstrap в `scss/_variables.scss`. Некоторые переменные имеют значение `null`, эти переменные не выводят свойство, если они не переопределены в Вашей конфигурации.

Переопределения переменных должны происходить после импорта наших функций, переменных и миксинов, но до остальной части импорта.

Вот пример, который меняет `background-color` и `color` для `<body>` при импорте и компиляции Bootstrap через npm:

```scss
@import "../node_modules/bootstrap/scss/functions";

// Default variable overrides
$body-bg: #000;
$body-color: #111;

// Required
@import "../node_modules/bootstrap/scss/variables";
@import "../node_modules/bootstrap/scss/mixins";

// Optional Bootstrap components here
@import "../node_modules/bootstrap/scss/root";
@import "../node_modules/bootstrap/scss/reboot";
@import "../node_modules/bootstrap/scss/type";
// etc
```

При необходимости повторите для любой переменной в Bootstrap, включая глобальные параметры ниже.

{{< callout info >}}
{{< partial "callout-info-npm-starter.md" >}}
{{< /callout >}}

### Карты и циклы

Bootstrap 4 включает в себя несколько карт Sass, пар ключ-значение, которые упрощают создание семейств связанных CSS. Мы используем карты Sass для наших цветов, контрольных точек сетки и многого другого. Как и переменные Sass, все карты Sass включают флаг `!default` и могут быть переопределены и расширены.

Некоторые из наших Sass-карт по умолчанию объединены в пустые. Это сделано для того, чтобы упростить расширение данной карты Sass, но это происходит за счет того, что _удаление_ элементов с карты становится немного сложнее.

#### Изменить карту

Чтобы изменить существующий цвет в нашей карте `$theme-colors`, добавьте следующее в свой пользовательский файл Sass:

```scss
$theme-colors: (
  "primary": #0074d9,
  "danger": #ff4136
);
```

#### Добавить в карту

Чтобы добавить новый цвет к `$theme-colors`, добавьте новый ключ и значение:

```scss
$theme-colors: (
  "custom-color": #900
);
```

#### Удалить из карты

Чтобы удалить цвета из `$theme-colors`, или любой другой карты, используйте `map-remove`. Имейте в виду, что Вы должны вставить его между нашими требованиями и опциями:

```scss
// Необходимые
@import "../node_modules/bootstrap/scss/functions";
@import "../node_modules/bootstrap/scss/variables";
@import "../node_modules/bootstrap/scss/mixins";

$theme-colors: map-remove($theme-colors, "info", "light", "dark");

// По желанию
@import "../node_modules/bootstrap/scss/root";
@import "../node_modules/bootstrap/scss/reboot";
@import "../node_modules/bootstrap/scss/type";
...
```

#### Необходимые ключи

Bootstrap предполагает наличие определенных ключей в картах Sass, которые мы использовали, и расширяем их сами. Когда Вы настраиваете включенные карты, Вы можете столкнуться с ошибками, когда используется конкретный ключ карты Sass.

Например, мы используем ключи `primary`, `success` и `danger` из `$theme-colors` для ссылок, кнопок и состояний формы. Замена значений этих ключей не должна вызывать проблем, но их удаление может вызвать проблемы с компиляцией Sass. В этих случаях Вам нужно будет изменить код Sass, который использует эти значения.

### Функции

Bootstrap использует несколько функций Sass, но только часть из них применима к общей тематике. Мы включили три функции для получения значений из цветовых карт:

```scss
@function color($key: "blue") {
  @return map-get($colors, $key);
}

@function theme-color($key: "primary") {
  @return map-get($theme-colors, $key);
}

@function gray($key: "100") {
  @return map-get($grays, $key);
}
```

Это позволяет Вам выбрать один цвет из карты Sass так же, как Вы бы использовали цветовую переменную из v3.

```scss
.custom-element {
  color: gray("100");
  background-color: theme-color("dark");
}
```

У нас также есть другая функция для получения определенного _уровня_ цвета из карты `$theme-colors`. Отрицательные значения уровня сделают цвет светлее, а более высокие - темнее.

```scss
@function theme-color-level($color-name: "primary", $level: 0) {
  $color: theme-color($color-name);
  $color-base: if($level > 0, #000, #fff);
  $level: abs($level);

  @return mix($color-base, $color, $level * $theme-color-interval);
}
```

На практике Вы должны вызвать функцию и передать ей два параметра: имя цвета из `$theme-colors` (например, primary или danger) и числовой уровень.

```scss
.custom-element {
  color: theme-color-level(primary, -10);
}
```

В будущем могут быть добавлены дополнительные функции или Ваш собственный пользовательский Sass для создания функций уровней для дополнительных карт Sass, или даже общий, если Вы хотите быть более подробным.

#### Цветовой контраст

Дополнительная функция, которую мы включили в Bootstrap, - это функция цветового контраста, `color-yiq`. Он использует [цветовое пространство YIQ](https://en.wikipedia.org/wiki/YIQ) для автоматического возврата светлого (`#fff`) или темного (`#111`) контрастного цвета на основе указанного базового цвета. Эта функция особенно полезна для миксинов или циклов, в которых Вы создаете несколько классов.

Например, чтобы сгенерировать образцы цвета из нашей карты `$theme-colors`:

```scss
@each $color, $value in $theme-colors {
  .swatch-#{$color} {
    color: color-yiq($value);
  }
}
```

Его также можно использовать для одноразового использования контрастного вещества:

```scss
.custom-element {
  color: color-yiq(#000); // вернет `color: #fff`
}
```

Вы также можете указать базовый цвет с помощью наших функций цветовой карты:

```scss
.custom-element {
  color: color-yiq(theme-color("dark")); // вернет `color: #fff`
}
```

#### Экранирование SVG

Мы используем функцию `escape-svg` для экранирования символов `<`, `>` и `#` для фоновых изображений SVG. Эти символы необходимо экранировать, чтобы правильно отображать фоновые изображения в IE. При использовании функции `escape-svg` необходимо указывать URI данных.

#### Функции сложения и вычитания

Мы используем функции `add` и `subtract`, чтобы обернуть функцию CSS `calc`. Основная цель этих функций - избежать ошибок, когда безразмерное значение `0` передается в выражение `calc`. Выражения вроде `calc(10px - 0)` вернут ошибку во всех браузерах, несмотря на то, что они математически верны.

Пример, когда расчет действителен:

```scss
$border-radius: .25rem;
$border-width: 1px;

.element {
  // Вывод calc(.25rem - 1px) действителен
  border-radius: calc($border-radius - $border-width);
}

.element {
  // Вывод тот же calc(.25rem - 1px) как указано выше
  border-radius: subtract($border-radius, $border-width);
}
```

Пример неверного вычисления:

```scss
$border-radius: .25rem;
$border-width: 0;

.element {
  // Вывод calc(.25rem - 0) недействителен
  border-radius: calc($border-radius - $border-width);
}

.element {
  // Вывод .25rem
  border-radius: subtract($border-radius, $border-width);
}
```

## Параметры Sass

Настройте Bootstrap 4 с помощью нашего встроенного файла пользовательских переменных и легко переключайте глобальные настройки CSS с помощью новых переменных Sass `$enable-*`. Замените значение переменной и при необходимости перекомпилируйте с помощью `npm run test`.

Вы можете найти и настроить эти переменные для ключевых глобальных параметров в файле Bootstrap `scss/_variables.scss`.

| Переменная                                   | Значения                                     | Описание                                                                               |
| -------------------------------------------- | -------------------------------------------- | -------------------------------------------------------------------------------------- |
| `$spacer`                                    | `1rem` (по умолчанию) или любое значение > 0 | Задает значение разделителя по умолчанию для программного создания наших [утилит-разделителей]({{< docsref "/utilities/spacing" >}}). |
| `$enable-rounded`                            | `true` (по умолчанию) или `false`            | Включает предопределенные стили `border-radius` для различных компонентов. |
| `$enable-shadows`                            | `true` или `false` (по умолчанию)            | Включает предопределенные стили `box-shadow` для различных компонентов. |
| `$enable-gradients`                          | `true` или `false` (по умолчанию)            | Включает предопределенные градиенты с помощью стилей `background-image` для различных компонентов. |
| `$enable-transitions`                        | `true` (по умолчанию) или `false`            | Включает предопределенные `transition` для различных компонентов. |
| `$enable-prefers-reduced-motion-media-query` | `true` (по умолчанию) или `false`            | Включает [медиа-запрос `prefers-reduced-motion`]({{< docsref "/getting-started/accessibility#замедленное-движение" >}}), который подавляет определенные анимации/переходы в зависимости от предпочтения браузера/операционной системы пользователя. |
| `$enable-hover-media-query`                  | `true` или `false` (по умолчанию)            | **Не рекомендуется** |
| `$enable-grid-classes`                       | `true` (по умолчанию) или `false`            | Позволяет создавать классы CSS для системы сеток (например, `.container`, `.row`, `.col-md-1`, и т.д.). |
| `$enable-caret`                              | `true` (по умолчанию) или `false`            | Включает каретку псевдоэлемента `.dropdown-toggle`. |
| `$enable-pointer-cursor-for-buttons`         | `true` (по умолчанию) или `false`            | Добавляет курсор в виде руки к неотключенным кнопочным элементам. |
| `$enable-print-styles`                       | `true` (по умолчанию) или `false`            | Включает стили для оптимизации печати. |
| `$enable-responsive-font-sizes`              | `true` или `false` (по умолчанию)            | Включает [размер адаптивного шрифта]({{< docsref "/content/typography#адаптивные-размеры-шрифтов" >}}). |
| `$enable-validation-icons`                   | `true` (по умолчанию) или `false`            | Включает иконки `background-image` в текстовых полях ввода и некоторых настраиваемых формах для состояний проверки. |
| `$enable-deprecation-messages`               | `true` (по умолчанию) или `false`            | Установите значение `false`, чтобы скрыть предупреждения при использовании любых устаревших миксинов и функций, которые планируется удалить в `v5`. |

## Цвет

Многие из различных компонентов и утилит Bootstrap построены с помощью серии цветов, определенных в карте Sass. Эту карту можно перебрать в Sass, чтобы быстро сгенерировать серию наборов правил.

### Все цвета

Все цвета, доступные в Bootstrap 4, доступны как переменные Sass и карта Sass в файле `scss/_variables.scss`. Это будет расширено в последующих второстепенных выпусках для добавления дополнительных оттенков, как и в уже включенной [палитре оттенков серого](#серые).

<div class="row">
  {{< theme-colors.inline >}}
  {{- range $.Site.Data.colors }}
    {{- if (and (not (eq .name "white")) (not (eq .name "gray")) (not (eq .name "gray-dark"))) }}
    <div class="col-md-4">
      <div class="p-3 mb-3 text-monospace swatch-{{ .name }}">
        <strong class="d-block">${{ .name }}</strong>
        <small>{{ .hex }}</small>
      </div>
    </div>
    {{ end -}}
  {{ end -}}
  {{< /theme-colors.inline >}}
</div>

Вот как Вы можете использовать их в своем Sass:

```scss
// С переменной
.alpha { color: $purple; }

// Из карты Sass с нашей функцией `color()`
.beta { color: color("purple"); }
```

[Цветовые служебные классы]({{< docsref "/utilities/colors" >}}) также доступны для установки `color` и `background-color`.

{{< callout info >}}
В будущем мы будем стремиться предоставить карты и переменные Sass для оттенков каждого цвета, как мы это сделали с цветами в градациях серого ниже.
{{< /callout >}}

### Цвета темы

Мы используем подмножество всех цветов, чтобы создать меньшую цветовую палитру для создания цветовых схем, также доступных в виде переменных Sass и карты Sass в файле `scss/_variables.scss` Bootstrap.

<div class="row">
  {{< theme-colors.inline >}}
  {{- range (index $.Site.Data "theme-colors") }}
    <div class="col-md-4">
      <div class="p-3 mb-3 text-monospace bg-{{ .name }} {{ if (or (eq .name "light") (eq .name "warning")) }}text-dark{{ else }}text-white{{ end }}">
        <strong class="d-block">${{ .name }}</strong>
        <small>{{ .hex }}</small>
      </div>
    </div>
  {{ end -}}
  {{< /theme-colors.inline >}}
</div>

### Серые

Обширный набор переменных серого и карта Sass в `scss/_variables.scss` для согласованных оттенков серого во всем Вашем проекте. Обратите внимание, что это «холодные оттенки серого», которые имеют тенденцию к мягкому синему тону, а не к нейтральным серым.

<div class="row mb-3">
  <div class="col-md-4">
    {{< theme-colors.inline >}}
    {{- range $.Site.Data.grays }}
      <div class="p-3 text-monospace swatch-{{ .name }}">
        <strong class="d-block">$gray-{{ .name }}</strong>
        <small>{{ .hex }}</small>
      </div>
    {{ end -}}
  {{< /theme-colors.inline >}}
  </div>
</div>

В `scss/_variables.scss` Вы найдете цветовые переменные Bootstrap и карту Sass. Вот пример Sass-карты `$colors`:

```scss
$colors: (
  "blue": $blue,
  "indigo": $indigo,
  "purple": $purple,
  "pink": $pink,
  "red": $red,
  "orange": $orange,
  "yellow": $yellow,
  "green": $green,
  "teal": $teal,
  "cyan": $cyan,
  "white": $white,
  "gray": $gray-600,
  "gray-dark": $gray-800
) !default;
```

Добавляйте, удаляйте или изменяйте значения на карте, чтобы обновить их использование во многих других компонентах. К сожалению, в настоящее время не _каждый_ компонент использует эту карту Sass. В будущих обновлениях мы постараемся улучшить это. А пока планируйте использовать переменные `${color}` и эту карту Sass.

## Компоненты

Многие компоненты и утилиты Bootstrap построены с использованием циклов `@each`, которые повторяются по карте Sass. Это особенно полезно для генерации вариантов компонента с помощью нашей `$theme-colors` и создания адаптивных вариантов для каждой контрольной точки. Когда Вы настраиваете эти карты Sass и перекомпилируете, Вы автоматически увидите свои изменения, отраженные в этих циклах.

### Модификаторы

Многие компоненты Bootstrap построены с использованием подхода базового модификатора. Это означает, что основная часть стилей содержится в базовом классе (например, `.btn`), в то время как варианты стилей ограничиваются классами-модификаторами (например, `.btn-danger`). Эти классы модификаторов построены из карты `$theme-colors` для настройки количества и имени наших классов модификаторов.

Вот два примера того, как мы перебираем карту `$theme-colors` для генерации модификаторов для компонента `.alert` и всех наших фоновых утилит `.bg-*`.

```scss
// Создание классов модификаторов предупреждений
@each $color, $value in $theme-colors {
  .alert-#{$color} {
    @include alert-variant(theme-color-level($color, -10), theme-color-level($color, -9), theme-color-level($color, 6));
  }
}

// Создание цветных утилит `.bg- *`
@each $color, $value in $theme-colors {
  @include bg-variant('.bg-#{$color}', $value);
}
```

### Отзывчивый

Эти циклы Sass также не ограничиваются цветовыми картами. Вы также можете создавать адаптивные варианты Ваших компонентов или утилит. Возьмем, к примеру, наши адаптивные утилиты выравнивания текста, в которых мы смешиваем цикл `@each` для карты Sass `$grid-breakpoints` с включением медиа-запроса.

```scss
@each $breakpoint in map-keys($grid-breakpoints) {
  @include media-breakpoint-up($breakpoint) {
    $infix: breakpoint-infix($breakpoint, $grid-breakpoints);

    .text#{$infix}-left   { text-align: left !important; }
    .text#{$infix}-right  { text-align: right !important; }
    .text#{$infix}-center { text-align: center !important; }
  }
}
```

Если Вам нужно изменить Ваши `$grid-breakpoints`, Ваши изменения будут применяться ко всем циклам, повторяющимся по этой карте.

## CSS переменные

Bootstrap 4 включает около двух десятков [настраиваемых свойств (переменных) CSS)](https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties) в своем скомпилированном CSS. Они обеспечивают легкий доступ к часто используемым значениям, таким как цвета нашей темы, контрольные точки и стеки основных шрифтов, при работе в инспекторе Вашего браузера, в изолированной программной среде или при общем прототипировании.

### Доступные переменные

Вот переменные, которые мы включаем (обратите внимание, что требуется `:root`). Они находятся в нашем файле `_root.scss`.

```css
{{< root.inline >}}
{{- $css := readFile "dist/css/bootstrap.css" -}}
{{- $match := findRE ":root {([^}]*)}" $css 1 -}}

{{- if (eq (len $match) 0) -}}
{{- errorf "Got no matches for :root in %q!" $.Page.Path -}}
{{- end -}}

{{- index $match 0 -}}

{{< /root.inline >}}
```

### Примеры

Переменные CSS предлагают такую же гибкость, что и переменные Sass, но без необходимости компиляции перед отправкой в браузер. Например, здесь мы сбрасываем шрифт нашей страницы и стили ссылок с помощью переменных CSS.

```css
body {
  font: 1rem/1.5 var(--font-family-sans-serif);
}
a {
  color: var(--blue);
}
```

### Переменные контрольной точки

Хотя изначально мы включили контрольные точки в наши переменные CSS (например, `--breakpoint-md`), **они не поддерживаются в медиа-запросах**, но их все же можно использовать _внутри_ наборов правил в медиа-запросах. Эти переменные контрольные точки остаются в скомпилированном CSS для обратной совместимости, поскольку они могут использоваться JavaScript. [Подробнее читайте в спецификации](https://www.w3.org/TR/css-variables-1/#using-variables).

Вот пример **того, что не поддерживается:**

```css
@media (min-width: var(--breakpoint-sm)) {
  ...
}
```

А вот пример **того, что поддерживается:**

```css
@media (min-width: 768px) {
  .custom-element {
    color: var(--primary);
  }
}
```
