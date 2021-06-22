---
layout: docs
title: Служебный API
description: Служебный API - это инструмент на основе Sass для создания служебных классов.
group: utilities
aliases: "/docs/5.0/utilities/"
toc: true
---

Утилиты Bootstrap создаются с помощью нашего служебного API и могут использоваться для изменения или расширения нашего набора служебных классов по умолчанию через Sass. Наш служебный API основан на серии карт и функций Sass для создания семейств классов с различными параметрами. Если Вы не знакомы с картами Sass, прочитайте [официальную документацию Sass](https://sass-lang.com/documentation/values/maps), чтобы начать работу.

Карта `$utilities` содержит все наши утилиты и позже объединяется с Вашей пользовательской картой `$utilities`, если она есть. Карта утилит содержит ключевой список групп утилит, которые принимают следующие параметры:

{{< bs-table "table text-start" >}}
| Опция | Тип | Описание |
| --- | --- | --- |
| `property` | **Обязательно** | Имя свойства. Это может быть строка или массив строк (например, horizontal paddings (горизонтальные отступы) или margins (поля)). |
| `values` | **Обязательно** | Список значений или карта, если Вы не хотите, чтобы имя класса совпадало со значением. Если в качестве ключа карты используется `null`, он не компилируется. |
| `class` | Необязательно | Переменная для имени класса, если Вы не хотите, чтобы оно совпадало со свойством. Если Вы не предоставили ключ `class`, а ключ `property` представляет собой массив строк, имя класса будет первым элементом массива `property`. |
| `state` | Необязательно | Список вариантов псевдоклассов, таких как `:hover` или `:focus`, которые создаются для утилиты. Нет значения по умолчанию. |
| `responsive` | Необязательно | Логическое значение, указывающее, нужно ли создавать адаптивные классы. По умолчанию `false`. |
| `rfs` | Необязательно | Логическое значение, чтобы разрешить плавное изменение масштаба. Взгляните на страницу [RFS]({{< docsref "/getting-started/rfs" >}}), чтобы узнать, как это работает. по умолчанию false. |
| `print` | Необязательно | Логическое значение, указывающее, нужно ли создавать классы для печати. По умолчанию `false`. |
| `rtl` | Необязательно | Логическое значение, указывающее, следует ли сохранять утилиту в RTL. По умолчанию `true`. |

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

### Пользовательский префикс класса

Используйте опцию `class`, чтобы изменить префикс класса, используемый в скомпилированном CSS:

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
.o-0 { opacity: 0; }
.o-25 { opacity: .25; }
.o-50 { opacity: .5; }
.o-75 { opacity: .75; }
.o-100 { opacity: 1; }
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

### Адаптивные утилиты

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

### Замена утилит

Переопределите существующие утилиты, используя тот же ключ. Например, если Вам нужны дополнительные вспомогательные классы отзывчивого переполнения, Вы можете сделать это:

```scss
$utilities: (
  "overflow": (
    responsive: true,
    property: overflow,
    values: visible hidden scroll auto,
  ),
);
```

### Утилиты для печати

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

### Добавление утилит

Новые утилиты могут быть добавлены к карте по умолчанию `$utilities` с помощью `map-merge`. Убедитесь, что наши необходимые файлы Sass и `_utilities.scss` сначала импортированы, а затем используйте `map-merge`, чтобы добавить Ваши дополнительные утилиты. Например, вот как добавить отзывчивую утилиту `cursor` с тремя значениями.

```scss
@import "bootstrap/scss/functions";
@import "bootstrap/scss/variables";
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
```

### Изменение утилит

Измените существующие утилиты в карте по умолчанию `$utilities` с помощью функций `map-get` и `map-merge`. В приведенном ниже примере мы добавляем дополнительное значение к утилитам `width`. Начните с начального `map-merge`, а затем укажите, какую утилиту Вы хотите изменить. Оттуда извлеките вложенную карту `"width"` «map-get» для доступа и изменения параметров и значений утилиты.

```scss
@import "bootstrap/scss/functions";
@import "bootstrap/scss/variables";
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
```

#### Включение адаптивности

Вы можете включить адаптивные классы для существующего набора утилит, которые в настоящее время не отвечают по умолчанию. Например, чтобы сделать классы `border` адаптивными:

```scss
@import "bootstrap/scss/functions";
@import "bootstrap/scss/variables";
@import "bootstrap/scss/utilities";

$utilities: map-merge(
  $utilities, (
    "border": map-merge(
      map-get($utilities, "border"),
      ( responsive: true ),
    ),
  )
);
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
@import "bootstrap/scss/utilities";

$utilities: map-merge(
  $utilities, (
    "margin-start": map-merge(
      map-get($utilities, "margin-start"),
      ( class: ml ),
    ),
  )
);
```

### Удаление утилит

Удалите любую из утилит по умолчанию, установив для ключа группы значение `null`. Например, чтобы удалить все наши утилиты `width`, создайте `$utilities`, `map-merge` и добавьте внутрь `"width": null`.

```scss
@import "bootstrap/scss/functions";
@import "bootstrap/scss/variables";
@import "bootstrap/scss/utilities";

$utilities: map-merge(
  $utilities,
  (
    "width": null
  )
);
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
