---
layout: docs
title: Sass
description: Используйте наши исходные файлы Sass, чтобы воспользоваться преимуществами переменных, карт, примесей и функций, которые помогут Вам быстрее создавать и настраивать свой проект.
group: customize
toc: true
---

Используйте наши исходные файлы Sass, чтобы использовать переменные, карты, примеси и многое другое. В нашей сборке мы увеличили точность округления Sass до 6 (по умолчанию 5), чтобы предотвратить проблемы с округлением в браузере.

## Файловая структура

По возможности избегайте изменения файлов ядра Bootstrap. Для Sass это означает создание собственной таблицы стилей, которая импортирует Bootstrap, чтобы вы могли изменять и расширять ее. Предполагая, что вы используете менеджер пакетов, такой как npm, у вас будет файловая структура, которая выглядит следующим образом:

{{< highlight text >}}
your-project/
├── scss
│   └── custom.scss
└── node_modules/
    └── bootstrap
        ├── js
        └── scss
{{< /highlight >}}

Если Вы загрузили наши исходные файлы и не используете менеджер пакетов, Вам нужно вручную настроить что-то похожее на эту структуру, сохраняя исходные файлы Bootstrap отдельно от Ваших собственных.

{{< highlight text >}}
your-project/
├── scss
│   └── custom.scss
└── bootstrap/
    ├── js
    └── scss
{{< /highlight >}}

## Импорт

В свой `custom.scss` Вы импортируете исходные файлы Sass для Bootstrap. У Вас есть два варианта: включить весь Bootstrap или выбрать нужные Вам части. Мы поощряем последнее, но имейте в виду, что между нашими компонентами есть некоторые требования и зависимости. Вам также необходимо будет включить некоторый JavaScript для наших плагинов.

{{< highlight scss >}}
// Custom.scss
// Вариант А: Включите весь Bootstrap

@import "../node_modules/bootstrap/scss/bootstrap";
{{< /highlight >}}

{{< highlight scss >}}
// Custom.scss
// Вариант Б. Включите части Bootstrap

// Необходимые
@import "../node_modules/bootstrap/scss/functions";
@import "../node_modules/bootstrap/scss/variables";
@import "../node_modules/bootstrap/scss/mixins";

// Необязательные
@import "../node_modules/bootstrap/scss/root";
@import "../node_modules/bootstrap/scss/reboot";
@import "../node_modules/bootstrap/scss/type";
@import "../node_modules/bootstrap/scss/images";
@import "../node_modules/bootstrap/scss/containers";
@import "../node_modules/bootstrap/scss/grid";
{{< /highlight >}}

С этой настройкой, Вы можете приступить к изменению любых переменных и карт Sass в Вашем `custom.scss`. Вы также можете начать добавлять части Bootstrap в разделе `// Optional` по мере необходимости. Мы предлагаем использовать полный стек импорта из нашего файла `bootstrap.scss` в качестве отправной точки.

## Значения переменных по умолчанию

Каждая переменная Sass в Bootstrap включает флаг `!default` позволяющий переопределить значение переменной по умолчанию в Вашем собственном Sass без изменения исходного кода Bootstrap. Скопируйте и вставьте переменные по мере необходимости, измените их значения и удалите флаг `!default`. Если переменная уже была назначена, она не будет повторно назначена значениями по умолчанию в Bootstrap.

Вы найдете полный список переменных Bootstrap в `scss/_variables.scss`. Некоторые переменные имеют значение `null`, эти переменные не выводят свойство, если они не переопределены в Вашей конфигурации.

Переопределения переменных в одном файле Sass могут быть до или после переменных по умолчанию. Однако при переопределении файлов Sass Ваши переопределения должны выполняться до того, как Вы импортируете файлы Sass для Bootstrap.

Вот пример, который меняет `background-color` и `color` для `<body>` при импорте и компиляции Bootstrap через npm:

{{< highlight scss >}}
// Ваша переменная переопределяет
$body-bg: #000;
$body-color: #111;

// Bootstrap и его переменные по умолчанию
@import "../node_modules/bootstrap/scss/bootstrap";
{{< /highlight >}}

При необходимости повторите для любой переменной в Bootstrap, включая глобальные параметры ниже.

## Карты и циклы

Bootstrap включает в себя несколько карт Sass, пар ключ-значение, которые упрощают создание семейств связанных CSS. Мы используем карты Sass для наших цветов, контрольных точек сетки и многого другого. Как и переменные Sass, все карты Sass включают флаг `! Default` и могут быть переопределены и расширены.

Некоторые из наших Sass-карт по умолчанию объединены в пустые. Это сделано для того, чтобы упростить расширение данной карты Sass, но это происходит за счет того, что _удаление_ элементов с карты становится немного сложнее.

### Изменение карты

Все переменные в карте `$theme-colors` определены как отдельные переменные. Чтобы изменить существующий цвет в нашей карте `$theme-colors`, добавьте следующее в свой пользовательский файл Sass:

{{< highlight scss >}}
$primary: #0074d9;
$danger: #ff4136;
{{< /highlight >}}

Позже эти переменные устанавливаются в карте Bootstrap `$theme-colors`:

{{< highlight scss >}}
$theme-colors: (
  "primary": $primary,
  "danger": $danger
);
{{< /highlight >}}

### Добавление на карту

Добавьте новые цвета в `$theme-colors` или любую другую карту, создав новую карту Sass с Вашими пользовательскими значениями и объединяя ее с исходной картой. В этом случае мы создадим новую карту `$custom-colors` и объединим ее с `$theme-colors`.

{{< highlight scss >}}
// Создайте свою карту
$custom-colors: (
  "custom-color": #900
);

// Объедините карты
$theme-colors: map-merge($theme-colors, $custom-colors);
{{< /highlight >}}

### Удаление с карты

Чтобы удалить цвета из `$theme-colors` или любой другой карты, используйте `map-remove`. Имейте в виду, что Вы должны вставить его между нашими требованиями и опциями:

{{< highlight scss >}}
// Необходимые
@import "../node_modules/bootstrap/scss/functions";
@import "../node_modules/bootstrap/scss/variables";
@import "../node_modules/bootstrap/scss/mixins";

$theme-colors: map-remove($theme-colors, "info", "light", "dark");

// Необязательные
@import "../node_modules/bootstrap/scss/root";
@import "../node_modules/bootstrap/scss/reboot";
@import "../node_modules/bootstrap/scss/type";
...
{{< /highlight >}}

## Необходимые ключи

Bootstrap предполагает наличие определенных ключей в картах Sass, которые мы использовали, и расширяем их сами. Когда Вы настраиваете включенные карты, Вы можете столкнуться с ошибками, когда используется конкретный ключ карты Sass.

Например, мы используем ключи `primary`, `success` и `danger` из `$theme-colors` для ссылок, кнопок и состояний формы. Замена значений этих ключей не должна вызывать проблем, но их удаление может вызвать проблемы с компиляцией Sass. В этих случаях вам нужно будет изменить код Sass, который использует эти значения.

## Функции

### Цвета

Наряду с имеющимися у нас [Sass maps]({{< docsref "/customize/color#color-sass-maps" >}}) цвета темы также могут использоваться как отдельные переменные, такие как `$primary`.

{{< highlight scss >}}
.custom-element {
  color: $gray-100;
  background-color: $dark;
}
{{< /highlight >}}

Вы можете осветлить или затемнить цвета с помощью функций Bootstrap `tint-color()` и `shade-color()`. Эти функции будут смешивать цвета с черным или белым, в отличие от собственных функций Sass `lighten()` и `darken()`, которые изменяют яркость на фиксированную величину, что часто не приводит к желаемому эффекту.

{{< scss-docs name="color-functions" file="scss/_functions.scss" >}}

На практике Вы должны вызвать функцию и передать параметры цвета и веса.

{{< highlight scss >}}
.custom-element {
  color: tint-color($primary, 10%);
}

.custom-element-2 {
  color: shade-color($danger, 30%);
}
{{< /highlight >}}

### Цветовой контраст

Чтобы соответствовать [стандартам доступности WCAG 2.0 для цветового контраста](https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html), авторы **должны** предоставить [коэффициент контрастности не менее 4.5:1](https://www.w3.org/WAI/WCAG20/quickref/20160105/Overview.php#visual-audio-contrast-contrast), за очень немногими исключениями.

Дополнительная функция, которую мы включили в Bootstrap, - это функция цветового контраста `color-contrast`. Он использует [алгоритм WCAG 2.0](https://www.w3.org/TR/WCAG20-TECHS/G17.html#G17-tests) для расчета пороговых значений контрастности на основе [относительной яркости](https://www.w3.org/WAI/GL/wiki/Relative_luminance) в цветовом пространстве `sRGB` для автоматического возврата светлого (`#fff`), темного (`#212529`) или черного (`#000`) контрастного цвета на основе указанный базовый цвет. Эта функция особенно полезна для примесей или циклов, в которых вы создаете несколько классов.

Например, чтобы сгенерировать образцы цвета из нашей карты `$theme-colors`:

{{< highlight scss >}}
@each $color, $value in $theme-colors {
  .swatch-#{$color} {
    color: color-contrast($value);
  }
}
{{< /highlight >}}

Его также можно использовать для одноразового использования контраста:

{{< highlight scss >}}
.custom-element {
  color: color-contrast(#000); // вернет `color: #fff`
}
{{< /highlight >}}

Вы также можете указать базовый цвет с помощью наших функций цветовой карты:

{{< highlight scss >}}
.custom-element {
  color: color-contrast($dark); // вернет `color: #fff`
}
{{< /highlight >}}

### Escape SVG

Мы используем функцию `escape-svg` для экранирования символов `<`, `>` и `#` для фоновых изображений SVG. При использовании функции `escape-svg` необходимо указывать URI данных.

### Функции сложения и вычитания

Мы используем функции `add` и `subtract` чтобы обернуть CSS функцию `calc`. Основная цель этих функций - избежать ошибок, когда "безразмерное" значение `0` передается в выражение `calc`. Выражения вроде `calc(10px - 0)` вернут ошибку во всех браузерах, несмотря на то, что они математически верны.

Пример, где расчет действителен:

{{< highlight scss >}}
$border-radius: .25rem;
$border-width: 1px;

.element {
  // Вывод calc(.25rem - 1px) действителен
  border-radius: calc($border-radius - $border-width);
}

.element {
  // Выведет то же, что и выше calc(.25rem - 1px)
  border-radius: subtract($border-radius, $border-width);
}
{{< /highlight >}}

Пример неверного расчета:

{{< highlight scss >}}
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
{{< /highlight >}}
