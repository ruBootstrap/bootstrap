---
layout: docs
title: Служебный API
description: Служебный API - это инструмент на основе Sass для создания служебных классов.
group: utilities
aliases: "/docs/5.2/utilities/"
toc: true
---

Утилиты Bootstrap создаются с помощью нашего служебного API и могут использоваться для изменения или расширения нашего набора служебных классов по умолчанию через Sass. Наш служебный API основан на серии карт и функций Sass для создания семейств классов с различными параметрами. Если Вы не знакомы с картами Sass, прочитайте [официальную документацию Sass](https://sass-lang.com/documentation/values/maps), чтобы начать работу.

Карта `$utilities` содержит все наши утилиты и позже объединяется с Вашей пользовательской картой `$utilities`, если она есть. Карта утилит содержит ключевой список групп утилит, которые принимают следующие параметры:

{{< bs-table "table table-utilities" >}}
| Опция | Тип | Значение&nbsp;по&nbsp;умолчанию | Описание |
| --- | --- | --- | --- |
| [`property`](#property) | **Обязательно** | – | Имя свойства. Это может быть строка или массив строк (например, горизонтальные отступы или поля). |
| [`values`](#values) | **Обязательно** | – | Список значений или карта, если вы не хотите, чтобы имя класса совпадало со значением. Если в качестве ключа карты используется `null`, `class` не добавляется перед именем класса. |
| [`class`](#class) | Необязательно | null | Имя сгенерированного класса. Если не указано, а свойство `property` является массивом строк, класс `class` по умолчанию будет первым элементом массива свойств `property`. Если не указано и `property` представляет собой строку, ключи `values` используются для имен `class`. |
| [`css-var`](#css-variable-utilities) | Необязательно | `false` | Логическое значение для генерации переменных CSS вместо правил CSS. |
| [`css-variable-name`](#css-variable-utilities) | Необязательно | null | Пользовательское имя без префикса для переменной CSS внутри набора правил. |
| [`local-vars`](#local-css-variables) | Необязательно | null | Карта локальных переменных CSS для генерации в дополнение к правилам CSS. |
| [`state`](#states) | Необязательно | null | Список вариантов псевдокласса (например, `:hover` или `:focus`) для генерации. |
| [`responsive`](#responsive) | Необязательно | `false` | Логическое значение, указывающее, должны ли создаваться отзывчивые классы. |
| `rfs` | Необязательно | `false` | Логическое значение для включения [плавного изменения масштаба с помощью RFS]({{< docsref "/getting-started/rfs" >}}). |
| [`print`](#print) | Необязательно | `false` | Логическое значение, указывающее, нужно ли создавать классы печати. |
| `rtl` | Необязательно | `true` | Логическое значение, указывающее, следует ли сохранять утилиту в RTL. |
{{< /bs-table >}}

## Пояснение API

Все служебные переменные добавляются в переменную `$utilities` в нашей таблице стилей `_utilities.scss`. Каждая группа утилит выглядит примерно так:

```scss
$utilities: (
  "opacity": (
    property: opacity,
    values: (
      0: 0,
      25: .25,
      50: .5,
      75: .75,
      100: 1,
    )
  )
);
```

Что выводит следующее:

```css
.opacity-0 { opacity: 0; }
.opacity-25 { opacity: .25; }
.opacity-50 { opacity: .5; }
.opacity-75 { opacity: .75; }
.opacity-100 { opacity: 1; }
```

### Свойство

Требуемый ключ `property` должен быть установлен для любой утилиты, и он должен содержать допустимое свойство CSS. Это свойство используется в сгенерированном наборе правил утилиты. Когда ключ `class` опущен, он также служит именем класса по умолчанию. Рассмотрим утилиту `text-decoration`:

```scss
$utilities: (
  "text-decoration": (
    property: text-decoration,
    values: none underline line-through
  )
);
```

Вывод:

```css
.text-decoration-none { text-decoration: none !important; }
.text-decoration-underline { text-decoration: underline !important; }
.text-decoration-line-through { text-decoration: line-through !important; }
```

### Значения

Используйте ключ `values` , чтобы указать, какие значения для указанного `property` должны использоваться в сгенерированных именах классов и правилах. Может быть списком или картой (задается в утилитах или в переменной Sass).

В виде списка, как в случае с [утилитами `text-decoration`]({{< docsref "/utilities/text#text-decoration" >}}):

```scss
values: none underline line-through
```

В виде карты, например: [утилиты `opacity`]({{< docsref "/utilities/opacity" >}}):

```scss
values: (
  0: 0,
  25: .25,
  50: .5,
  75: .75,
  100: 1,
)
```

В качестве переменной Sass, которая устанавливает список или карту, как в наших [утилитах `position`]({{< docsref "/utilities/position" >}}):

```scss
values: $position-values
```

### Класс

Используйте опцию `class`, чтобы изменить префикс класса, используемый в скомпилированном CSS. Например, чтобы изменить с `.opacity-*` на `.o-*`:

```scss
$utilities: (
  "opacity": (
    property: opacity,
    class: o,
    values: (
      0: 0,
      25: .25,
      50: .5,
      75: .75,
      100: 1,
    )
  )
);
```

Вывод:

```css
.o-0 { opacity: 0 !important; }
.o-25 { opacity: .25 !important; }
.o-50 { opacity: .5 !important; }
.o-75 { opacity: .75 !important; }
.o-100 { opacity: 1 !important; }
```

Если `class: null`, генерирует классы для каждого из ключей `values`:

```scss
$utilities: (
  "visibility": (
    property: visibility,
    class: null,
    values: (
      visible: visible,
      invisible: hidden,
    )
  )
);
```

Вывод:

```css
.visible { visibility: visible !important; }
.invisible { visibility: hidden !important; }
```

### Утилиты переменных CSS

Установите логическую опцию `css-var` в значение `true`, и API будет генерировать локальные переменные CSS для данного селектора вместо обычных правил `property: value`. Добавьте необязательное `css-variable-name`, чтобы задать имя переменной CSS, отличное от имени класса.

Рассмотрим наши утилиты `.text-opacity-*`. Если мы добавим параметр `css-variable-name`, мы получим собственный вывод.

```scss
$utilities: (
  "text-opacity": (
    css-var: true,
    css-variable-name: text-alpha,
    class: text-opacity,
    values: (
      25: .25,
      50: .5,
      75: .75,
      100: 1
    )
  ),
);
```

Вывод:

```css
.text-opacity-25 { --bs-text-alpha: .25; }
.text-opacity-50 { --bs-text-alpha: .5; }
.text-opacity-75 { --bs-text-alpha: .75; }
.text-opacity-100 { --bs-text-alpha: 1; }
```

### Локальные переменные CSS

Используйте опцию `local-vars`, чтобы указать карту Sass, которая будет генерировать локальные переменные CSS в наборе правил служебного класса. Обратите внимание, что для использования этих локальных переменных CSS в сгенерированных правилах CSS может потребоваться дополнительная работа. Например, рассмотрим наши утилиты `.bg-*`:

```scss
$utilities: (
  "background-color": (
    property: background-color,
    class: bg,
    local-vars: (
      "bg-opacity": 1
    ),
    values: map-merge(
      $utilities-bg-colors,
      (
        "transparent": transparent
      )
    )
  )
);
```

Вывод:

```css
.bg-primary {
  --bs-bg-opacity: 1;
  background-color: rgba(var(--bs-primary-rgb), var(--bs-bg-opacity)) !important;
}
```

### Состояния

Используйте опцию `state` для генерации вариаций псевдокласса. Примеры псевдоклассов: `:hover` и `:focus`. Когда предоставляется список состояний, для этого псевдокласса создаются имена классов. Например, чтобы изменить непрозрачность при наведении указателя мыши, добавьте `state: hover`, и Вы получите `.opacity-hover: hover` в Вашем скомпилированном CSS.

Нужны несколько псевдоклассов? Используйте список состояний, разделенных пробелами: `state: hover focus`.

```scss
$utilities: (
  "opacity": (
    property: opacity,
    class: opacity,
    state: hover,
    values: (
      0: 0,
      25: .25,
      50: .5,
      75: .75,
      100: 1,
    )
  )
);
```

Что выводит следующее:

```css
.opacity-0-hover:hover { opacity: 0 !important; }
.opacity-25-hover:hover { opacity: .25 !important; }
.opacity-50-hover:hover { opacity: .5 !important; }
.opacity-75-hover:hover { opacity: .75 !important; }
.opacity-100-hover:hover { opacity: 1 !important; }
```

### Адаптивность

Добавьте логическое значение `responseive` для создания адаптивных утилит (например, `.opacity-md-25`) для [всех контрольных точек]({{<docsref "/layout/breakpoints">}}).

```scss
$utilities: (
  "opacity": (
    property: opacity,
    responsive: true,
    values: (
      0: 0,
      25: .25,
      50: .5,
      75: .75,
      100: 1,
    )
  )
);
```

Что выводит следующее:

```css
.opacity-0 { opacity: 0 !important; }
.opacity-25 { opacity: .25 !important; }
.opacity-50 { opacity: .5 !important; }
.opacity-75 { opacity: .75 !important; }
.opacity-100 { opacity: 1 !important; }

@media (min-width: 576px) {
  .opacity-sm-0 { opacity: 0 !important; }
  .opacity-sm-25 { opacity: .25 !important; }
  .opacity-sm-50 { opacity: .5 !important; }
  .opacity-sm-75 { opacity: .75 !important; }
  .opacity-sm-100 { opacity: 1 !important; }
}

@media (min-width: 768px) {
  .opacity-md-0 { opacity: 0 !important; }
  .opacity-md-25 { opacity: .25 !important; }
  .opacity-md-50 { opacity: .5 !important; }
  .opacity-md-75 { opacity: .75 !important; }
  .opacity-md-100 { opacity: 1 !important; }
}

@media (min-width: 992px) {
  .opacity-lg-0 { opacity: 0 !important; }
  .opacity-lg-25 { opacity: .25 !important; }
  .opacity-lg-50 { opacity: .5 !important; }
  .opacity-lg-75 { opacity: .75 !important; }
  .opacity-lg-100 { opacity: 1 !important; }
}

@media (min-width: 1200px) {
  .opacity-xl-0 { opacity: 0 !important; }
  .opacity-xl-25 { opacity: .25 !important; }
  .opacity-xl-50 { opacity: .5 !important; }
  .opacity-xl-75 { opacity: .75 !important; }
  .opacity-xl-100 { opacity: 1 !important; }
}

@media (min-width: 1400px) {
  .opacity-xxl-0 { opacity: 0 !important; }
  .opacity-xxl-25 { opacity: .25 !important; }
  .opacity-xxl-50 { opacity: .5 !important; }
  .opacity-xxl-75 { opacity: .75 !important; }
  .opacity-xxl-100 { opacity: 1 !important; }
}
```

### Печать

Включение опции `print` **также** сгенерирует служебные классы для печати, которые применяются только в медиа-запросе `@media print {...}`.

```scss
$utilities: (
  "opacity": (
    property: opacity,
    print: true,
    values: (
      0: 0,
      25: .25,
      50: .5,
      75: .75,
      100: 1,
    )
  )
);
```

Что выводит следующее:

```css
.opacity-0 { opacity: 0 !important; }
.opacity-25 { opacity: .25 !important; }
.opacity-50 { opacity: .5 !important; }
.opacity-75 { opacity: .75 !important; }
.opacity-100 { opacity: 1 !important; }

@media print {
  .opacity-print-0 { opacity: 0 !important; }
  .opacity-print-25 { opacity: .25 !important; }
  .opacity-print-50 { opacity: .5 !important; }
  .opacity-print-75 { opacity: .75 !important; }
  .opacity-print-100 { opacity: 1 !important; }
}
```

## Важность

Все утилиты, генерируемые API, включают `!important` , чтобы гарантировать, что они переопределяют компоненты и классы модификаторов должным образом. Вы можете переключать этот параметр глобально с помощью переменной `$enable-important-utilities` (по умолчанию `true`).

## Использование API

Теперь, когда Вы знакомы с тем, как работает API утилит, узнайте, как добавлять свои собственные классы и изменять наши утилиты по умолчанию.

### Переопределение утилит

Переопределите существующие утилиты, используя тот же ключ. Например, если вам нужны дополнительные вспомогательные классы отзывчивого переполнения, вы можете сделать это:

```scss
$utilities: (
  "overflow": (
    responsive: true,
    property: overflow,
    values: visible hidden scroll auto,
  ),
);
```

### Добавление утилит

Новые утилиты могут быть добавлены к карте по умолчанию `$utilities` с помощью `map-merge`. Убедитесь, что наши необходимые файлы Sass и `_utilities.scss` сначала импортированы, а затем используйте `map-merge`, чтобы добавить Ваши дополнительные утилиты. Например, вот как добавить отзывчивую утилиту `cursor` с тремя значениями.

```scss
@import "bootstrap/scss/functions";
@import "bootstrap/scss/variables";
@import "bootstrap/scss/maps";
@import "bootstrap/scss/mixins";
@import "bootstrap/scss/utilities";

$utilities: map-merge(
  $utilities,
  (
    "cursor": (
      property: cursor,
      class: cursor,
      responsive: true,
      values: auto pointer grab,
    )
  )
);
@import "bootstrap/scss/utilities/api";
```

### Изменение утилит

Измените существующие утилиты в карте по умолчанию `$utilities` с помощью функций `map-get` и `map-merge`. В приведенном ниже примере мы добавляем дополнительное значение к утилитам `width`. Начните с начального `map-merge`, а затем укажите, какую утилиту Вы хотите изменить. Оттуда извлеките вложенную карту `"width"` «map-get» для доступа и изменения параметров и значений утилиты.

```scss
@import "bootstrap/scss/functions";
@import "bootstrap/scss/variables";
@import "bootstrap/scss/maps";
@import "bootstrap/scss/mixins";
@import "bootstrap/scss/utilities";

$utilities: map-merge(
  $utilities,
  (
    "width": map-merge(
      map-get($utilities, "width"),
      (
        values: map-merge(
          map-get(map-get($utilities, "width"), "values"),
          (10: 10%),
        ),
      ),
    ),
  )
);

@import "bootstrap/scss/utilities/api";
```

#### Включение адаптивности

Вы можете включить адаптивные классы для существующего набора утилит, которые в настоящее время не отвечают по умолчанию. Например, чтобы сделать классы `border` адаптивными:

```scss
@import "bootstrap/scss/functions";
@import "bootstrap/scss/variables";
@import "bootstrap/scss/maps";
@import "bootstrap/scss/mixins";
@import "bootstrap/scss/utilities";

$utilities: map-merge(
  $utilities, (
    "border": map-merge(
      map-get($utilities, "border"),
      ( responsive: true ),
    ),
  )
);

@import "bootstrap/scss/utilities/api";
```

Теперь это будет генерировать ответные варианты `.border` и `.border-0` для каждой контрольной точки. Ваш сгенерированный CSS будет выглядеть так:

```css
.border { ... }
.border-0 { ... }

@media (min-width: 576px) {
  .border-sm { ... }
  .border-sm-0 { ... }
}

@media (min-width: 768px) {
  .border-md { ... }
  .border-md-0 { ... }
}

@media (min-width: 992px) {
  .border-lg { ... }
  .border-lg-0 { ... }
}

@media (min-width: 1200px) {
  .border-xl { ... }
  .border-xl-0 { ... }
}

@media (min-width: 1400px) {
  .border-xxl { ... }
  .border-xxl-0 { ... }
}
```

#### Переименование утилит

Отсутствуют утилиты v4 или Вы привыкли к другому соглашению об именах? API утилит можно использовать для переопределения результирующего `class` данной утилиты - например, чтобы переименовать утилиты `.ms-*` в старые `.ml-*`:

```scss
@import "bootstrap/scss/functions";
@import "bootstrap/scss/variables";
@import "bootstrap/scss/maps";
@import "bootstrap/scss/mixins";
@import "bootstrap/scss/utilities";

$utilities: map-merge(
  $utilities, (
    "margin-start": map-merge(
      map-get($utilities, "margin-start"),
      ( class: ml ),
    ),
  )
);

@import "bootstrap/scss/utilities/api";
```

### Удаление утилит

Удалите все стандартные утилиты с помощью [Sass-функции `map-remove()`](https://sass-lang.com/documentation/modules/map#remove).

```scss
@import "bootstrap/scss/functions";
@import "bootstrap/scss/variables";
@import "bootstrap/scss/maps";
@import "bootstrap/scss/mixins";
@import "bootstrap/scss/utilities";

// Удалить несколько утилит с помощью списка, разделенного запятыми
$utilities: map-remove($utilities, "width", "float");

@import "bootstrap/scss/utilities/api";
```

Вы также можете использовать [Sass функцию `map-merge()`](https://sass-lang.com/documentation/modules/map#merge) и установить для группового ключа значение `null`, чтобы удалить утилиту.

```scss
@import "bootstrap/scss/functions";
@import "bootstrap/scss/variables";
@import "bootstrap/scss/maps";
@import "bootstrap/scss/mixins";
@import "bootstrap/scss/utilities";

$utilities: map-merge(
  $utilities,
  (
    "width": null
  )
);
```

### Добавление, удаление, изменение

Вы можете добавлять, удалять и изменять множество утилит одновременно с помощью [Sass-функции `map-merge()`](https://sass-lang.com/documentation/modules/map#merge). Вот как вы можете объединить предыдущие примеры в одну большую карту.

```scss
@import "bootstrap/scss/functions";
@import "bootstrap/scss/variables";
@import "bootstrap/scss/maps";
@import "bootstrap/scss/mixins";
@import "bootstrap/scss/utilities";
$utilities: map-merge(
  $utilities,
  (
    // Remove the `width` utility
    "width": null,
    // Make an existing utility responsive
    "border": map-merge(
      map-get($utilities, "border"),
      ( responsive: true ),
    ),
    // Add new utilities
    "cursor": (
      property: cursor,
      class: cursor,
      responsive: true,
      values: auto pointer grab,
    )
  )
);
@import "bootstrap/scss/utilities/api";
```

#### Удалить утилиту в RTL

Некоторые крайние случаи затрудняют [стилизацию RTL](https://rtlstyling.com/posts/rtl-styling#common-things-that-might-not-work-for-rtl), например, разрывы строк на арабском языке. Таким образом, утилиты можно исключить из вывода RTL, установив для опции `rtl` значение `false`:

```scss
$utilities: (
  "word-wrap": (
    property: word-wrap word-break,
    class: text,
    values: (break: break-word),
    rtl: false
  ),
);
```

Вывод:

```css
/* rtl:begin:remove */
.text-break {
  word-wrap: break-word !important;
  word-break: break-word !important;
}
/* rtl:end:remove */
```

Это ничего не выводит в RTL, благодаря [управляющей директиве RTLCSS `remove`](https://rtlcss.com/learn/usage-guide/control-directives/#remove).
