---
layout: docs
title: Система сеток
description: Используйте нашу мощную сетку flexbox, ориентированную на мобильные устройства, для создания макетов всех форм и размеров благодаря системе из двенадцати колонок, шести адаптивным уровням по умолчанию, переменным и миксинам Sass, а также десяткам предопределенных классов.
group: layout
toc: true
---

## Пример

Система сеток Bootstrap использует серию контейнеров, строк и колонок для компоновки и выравнивания содержимого. Он построен с помощью [flexbox](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox) и полностью адаптивен. Ниже приведен пример и подробное объяснение того, как объединяется сетка.

{{< callout info >}}
**Новичок или незнаком с flexbox?** [Прочтите это руководство по flexbox на CSS Tricks](https://css-tricks.com/snippets/css/a-guide-to-flexbox/#flexbox-background) для получения справочной информации, терминологии, рекомендаций и фрагментов кода.
{{< /callout >}}

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col">
      Колонка
    </div>
    <div class="col">
      Колонка
    </div>
    <div class="col">
      Колонка
    </div>
  </div>
</div>
{{< /example >}}

В приведенном выше примере создаются три колонки одинаковой ширины на всех устройствах и в окнах просмотра с использованием наших предопределенных классов сетки. Эти колонки центрируются на странице с родительским `.container`.

## Как это устроено

Вот как объединяется сетка:

- **Наша сетка поддерживает [шесть адаптивных контрольных точек]({{< docsref "/layout/breakpoints" >}}).** Контрольные точки основаны на медиа-запросах `min-width`, то есть они влияют на эту контрольную точку и все вышеперечисленные (например, `.col-sm-4` применяется к `sm`, `md`, `lg`, `xl` и `xxl`). Это означает, что Вы можете управлять размером и поведением контейнера и колонки с помощью каждой контрольной точки.

- **Контейнеры центрируют и размещают Ваш контент по горизонтали.** Используйте `.container` для адаптивной ширины в пикселях, `.container-fluid` для `width: 100%` во всех окнах просмотра и на всех устройствах или адаптивный контейнер (например, `.container-md`) для комбинации подвижной и пиксельной ширины.

- **Ряды (rows) являются оболочками для колонок.** Каждая колонка имеет горизонтальный `padding` (называемый промежутком) для управления пространством между ними. Затем этому `padding` противодействуют строки с отрицательными полями, чтобы обеспечить визуальное выравнивание содержимого колонок по левой стороне. Строки также поддерживают классы модификаторов для [единообразного применения размеров колонок](#ряд-колонок) и [классов промежутков]({{< docsref "/layout/gutters" >}}) для изменения интервала Вашего контента.

- **Колонки невероятно гибкие.** В каждой строке доступно 12 шаблонов колонок, что позволяет создавать различные комбинации элементов, охватывающих любое количество колонок. Классы колонок указывают количество колонок шаблона, которые необходимо охватить (например, `col-4` охватывает четыре). `width` задаются в процентах, поэтому Вы всегда имеете одинаковый относительный размер.

- **Промежутки также являются адаптивными и настраиваемыми.** [Доступны классы промежутков]({{< docsref "/layout/gutters" >}}) во всех контрольных точках с теми же размерами, что и наши [поля и отступы]({{< docsref "/utilities/spacing" >}}). Измените горизонтальные промежутки на классы `.gx-*`, вертикальные промежутки на `.gy-*`, или все промежутки на классы `.g-*`. `.g-0` также доступен для удаления промежутков.

- **Переменные Sass, карты и миксины питают сетку.** Если Вы не хотите использовать предопределенные классы сетки в Bootstrap, Вы можете использовать наш [источник Sass сетки](#sass) чтобы создать свой собственный с большим количеством семантическая разметка. Мы также включаем некоторые настраиваемые свойства CSS для использования этих переменных Sass для еще большей гибкости для Вас.

Помните об ограничениях и [ошибках вокруг flexbox](https://github.com/philipwalton/flexbugs), таких как [невозможность использования некоторых элементов HTML в качестве гибких контейнеров](https://github.com/philipwalton/flexbugs#flexbug-9).

## Параметры сетки

Система сеток Bootstrap может адаптироваться ко всем шести контрольным точкам по умолчанию и любым настраиваемым Вами контрольным точкам. Шесть уровней сетки по умолчанию следующие:

- Очень маленький - Extra small (xs)
- Маленький - Small (sm)
- Средний - Medium (md)
- Большой - Large (lg)
- Очень большой - Extra large (xl)
- Огромный - Extra extra large (xxl)

Как отмечалось выше, каждая из этих контрольных точек имеет собственный контейнер, уникальный префикс класса и модификаторы. Вот как меняется сетка в этих контрольных точках:

<table class="table mb-4">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col">
        xs<br>
        <span class="fw-normal">&lt;576px</span>
      </th>
      <th scope="col">
        sm<br>
        <span class="fw-normal">&ge;576px</span>
      </th>
      <th scope="col">
        md<br>
        <span class="fw-normal">&ge;768px</span>
      </th>
      <th scope="col">
        lg<br>
        <span class="fw-normal">&ge;992px</span>
      </th>
      <th scope="col">
        xl<br>
        <span class="fw-normal">&ge;1200px</span>
      </th>
      <th scope="col">
        xxl<br>
        <span class="fw-normal">&ge;1400px</span>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th class="text-nowrap" scope="row">Контейнер <code class="fw-normal">max-width</code></th>
      <td>Ничего (авто)</td>
      <td>540px</td>
      <td>720px</td>
      <td>960px</td>
      <td>1140px</td>
      <td>1320px</td>
    </tr>
    <tr>
      <th class="text-nowrap" scope="row">Префикс класса</th>
      <td><code>.col-</code></td>
      <td><code>.col-sm-</code></td>
      <td><code>.col-md-</code></td>
      <td><code>.col-lg-</code></td>
      <td><code>.col-xl-</code></td>
      <td><code>.col-xxl-</code></td>
    </tr>
    <tr>
      <th class="text-nowrap" scope="row"># колонок</th>
      <td colspan="6">12</td>
    </tr>
    <tr>
      <th class="text-nowrap" scope="row">Ширина промежутка</th>
      <td colspan="6">1.5rem (.75rem слева и справа)</td>
    </tr>
    <tr>
      <th class="text-nowrap" scope="row">Индивидуальные промежутки</th>
      <td colspan="6"><a href="{{< docsref "/layout/gutters" >}}">Да</a></td>
    </tr>
    <tr>
      <th class="text-nowrap" scope="row">Вкладываемые</th>
      <td colspan="6"><a href="#nesting">Да</a></td>
    </tr>
    <tr>
      <th class="text-nowrap" scope="row">Порядок колонок</th>
      <td colspan="6"><a href="{{< docsref "/layout/columns#reordering" >}}">Да</a></td>
    </tr>
  </tbody>
</table>

## Колонки с автоматической компоновкой

Используйте классы колонок, специфичные для контрольной точки, для удобного определения размера колонки без явного нумерованного класса, например `.col-sm-6`.

### Равная ширина

Например, вот два макета сетки, которые применяются к каждому устройству и окну просмотра, от `xs` до `xxl`. Добавьте любое количество классов без единиц измерения для каждой нужной контрольной точки, и каждая колонка будет одинаковой ширины.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col">
      1 из 2
    </div>
    <div class="col">
      2 из 2
    </div>
  </div>
  <div class="row">
    <div class="col">
      1 из 3
    </div>
    <div class="col">
      2 из 3
    </div>
    <div class="col">
      3 из 3
    </div>
  </div>
</div>
{{< /example >}}

### Установка ширины одного колонки

Автоматическая компоновка колонок сетки Flexbox также означает, что Вы можете установить ширину одного колонки и автоматически изменять размер колонок-братьев вокруг него. Вы можете использовать предопределенные классы сетки (как показано ниже), миксины сетки или встроенную ширину. Обратите внимание, что размер других колонок будет изменяться независимо от ширины центрального колонки.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col">
      1 из 3
    </div>
    <div class="col-6">
      2 из 3 (шире)
    </div>
    <div class="col">
      3 из 3
    </div>
  </div>
  <div class="row">
    <div class="col">
      1 из 3
    </div>
    <div class="col-5">
      2 из 3 (шире)
    </div>
    <div class="col">
      3 из 3
    </div>
  </div>
</div>
{{< /example >}}

### Переменная ширина контента

Используйте классы `col-{breakpoint}-auto` для определения размера колонок в зависимости от естественной ширины их содержимого.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row justify-content-md-center">
    <div class="col col-lg-2">
      1 из 3
    </div>
    <div class="col-md-auto">
      Переменная ширина контента
    </div>
    <div class="col col-lg-2">
      3 из 3
    </div>
  </div>
  <div class="row">
    <div class="col">
      1 из 3
    </div>
    <div class="col-md-auto">
      Переменная ширина контента
    </div>
    <div class="col col-lg-2">
      3 из 3
    </div>
  </div>
</div>
{{< /example >}}

## Адаптивные классы

Сетка Bootstrap включает шесть уровней предопределенных классов для создания сложных адаптивных макетов. Настройте размер колонок на очень маленьких, маленьких, средних, больших или очень больших устройствах по своему усмотрению.

### Все контрольные точки

Для сеток, одинаковых от самых маленьких до самых крупных, используйте классы `.col` и `.col-*`. Укажите нумерованный класс, если Вам нужна колонка определенного размера; в противном случае не стесняйтесь использовать `.col`.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col">col</div>
    <div class="col">col</div>
    <div class="col">col</div>
    <div class="col">col</div>
  </div>
  <div class="row">
    <div class="col-8">col-8</div>
    <div class="col-4">col-4</div>
  </div>
</div>
{{< /example >}}

### Сложение по горизонтали

Используя один набор классов `.col-sm-*`, Вы можете создать базовую систему сеток, которая начинается с накопления и становится горизонтальной в малой контрольной точке (`sm`).

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-sm-8">col-sm-8</div>
    <div class="col-sm-4">col-sm-4</div>
  </div>
  <div class="row">
    <div class="col-sm">col-sm</div>
    <div class="col-sm">col-sm</div>
    <div class="col-sm">col-sm</div>
  </div>
</div>
{{< /example >}}

### Смешение и сочетание

Не хотите, чтобы Ваши колонки просто складывались в несколько ярусов сетки? При необходимости используйте комбинацию разных классов для каждого уровня. См. пример ниже, чтобы лучше понять, как все это работает.

{{< example class="bd-example-row" >}}
<div class="container">
  <!-- Сложите колонки на мобильном устройстве, сделав одну полную, а другую половинную -->
  <div class="row">
    <div class="col-md-8">.col-md-8</div>
    <div class="col-6 col-md-4">.col-6 .col-md-4</div>
  </div>

  <!-- Ширина колонок начинается с 50% на мобильных устройствах и увеличивается до 33,3% на компьютерах. -->
  <div class="row">
    <div class="col-6 col-md-4">.col-6 .col-md-4</div>
    <div class="col-6 col-md-4">.col-6 .col-md-4</div>
    <div class="col-6 col-md-4">.col-6 .col-md-4</div>
  </div>

  <!-- колонки всегда имеют ширину 50% на мобильных и настольных компьютерах. -->
  <div class="row">
    <div class="col-6">.col-6</div>
    <div class="col-6">.col-6</div>
  </div>
</div>
{{< /example >}}

### Ряд колонок

Используйте адаптивные классы `.row-cols-*`, чтобы быстро установить количество столбцов, которые лучше всего отображают ваш контент и макет. В то время как обычные классы `.col-*` применяются к отдельным столбцам (например, `.col-md-4`), классы столбцов строк устанавливаются в родительском `.row` по умолчанию для содержащихся столбцов. С помощью `.row-cols-auto` вы можете придать столбцам их естественную ширину.

Используйте эти классы столбцов строк для быстрого создания базовых макетов сетки или для управления макетами карточек и переопределения при необходимости на уровне столбцов.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row row-cols-2">
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
  </div>
</div>
{{< /example >}}

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row row-cols-3">
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
  </div>
</div>
{{< /example >}}

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row row-cols-auto">
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
  </div>
</div>
{{< /example >}}

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row row-cols-4">
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
  </div>
</div>
{{< /example >}}

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row row-cols-4">
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col-6">Колонка</div>
    <div class="col">Колонка</div>
  </div>
</div>
{{< /example >}}

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
  </div>
</div>
{{< /example >}}

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row row-cols-2 row-cols-lg-3">
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col">Колонка</div>
    <div class="col-4 col-lg-2">Колонка</div>
    <div class="col-4 col-lg-2">Колонка</div>
    <div class="col-4 col-lg-2">Колонка</div>
    <div class="col-4 col-lg-2">Колонка</div>
    <div class="col-4 col-lg-2">Колонка</div>
    <div class="col-4 col-lg-2">Колонка</div>
  </div>
</div>
{{< /example >}}

Вы также можете использовать сопутствующий миксин Sass, `row-cols()`:

```scss
.element {
  // Три колонки для начала
  @include row-cols(3);

  // Пять колонок от средней контрольной точки вверх
  @include media-breakpoint-up(md) {
    @include row-cols(5);
  }
}
```

## Вложенность

Чтобы вложить содержимое в сетку по умолчанию, добавьте новую колонку `.row` и набор колонок `.col-sm-*` в существующую колонку `.col-sm-*`. Вложенные строки должны включать набор колонок, которые в сумме составляют до 12 или меньше (не обязательно использовать все 12 доступных колонок).

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-sm-3">
      Уровень 1: .col-sm-3
    </div>
    <div class="col-sm-9">
      <div class="row">
        <div class="col-8 col-sm-6">
          Уровень 2: .col-8 .col-sm-6
        </div>
        <div class="col-4 col-sm-6">
          Уровень 2: .col-4 .col-sm-6
        </div>
      </div>
    </div>
  </div>
</div>
{{< /example >}}

## Sass

При использовании исходных файлов Sass в Bootstrap у Вас есть возможность использовать переменные и миксины Sass для создания настраиваемых, семантических и адаптивных макетов страниц. Наши предопределенные классы сетки используют те же самые переменные и миксины, чтобы предоставить целый набор готовых к использованию классов для быстрых адаптивных макетов.

### Переменные

Переменные и карты определяют количество колонок, ширину промежутка и точку медиа-запроса, с которой следует начинать колонки с плавающей запятой. Мы используем их для создания предопределенных классов сетки, описанных выше, а также для пользовательских миксинов, перечисленных ниже.

```scss
$grid-columns:      12;
$grid-gutter-width: 1.5rem;
```

{{< scss-docs name="grid-breakpoints" file="scss/_variables.scss" >}}

{{< scss-docs name="container-max-widths" file="scss/_variables.scss" >}}

### Примеси

Миксины используются вместе с переменными сетки для генерации семантического CSS для отдельных колонок сетки.

```scss
// Создает оболочку для серии колонок
@include make-row();

// Подготавливает элемент к сетке (применив все, кроме ширины)
@include make-col-ready();

// Без дополнительных значений размера миксин создаст одинаковые столбцы (аналогично использованию .col)
@include make-col();
@include make-col($size, $columns: $grid-columns);

// Получите удовольствие, смещая или изменяя порядок сортировки
@include make-col-offset($size, $columns: $grid-columns);
```

### Пример использования

Вы можете изменить переменные на свои собственные значения или просто использовать миксины со значениями по умолчанию. Вот пример использования настроек по умолчанию для создания макета из двух колонок с промежутком между ними.

```scss
.example-container {
  @include make-container();
  // Обязательно укажите эту ширину после примеси, чтобы переопределить
  // `width: 100%`, сгенерированная `make-container()`
  width: 800px;
}

.example-row {
  @include make-row();
}

.example-content-main {
  @include make-col-ready();

  @include media-breakpoint-up(sm) {
    @include make-col(6);
  }
  @include media-breakpoint-up(lg) {
    @include make-col(8);
  }
}

.example-content-secondary {
  @include make-col-ready();

  @include media-breakpoint-up(sm) {
    @include make-col(6);
  }
  @include media-breakpoint-up(lg) {
    @include make-col(4);
  }
}
```

{{< example >}}
<div class="example-container">
  <div class="example-row">
    <div class="example-content-main">Главное содержимое</div>
    <div class="example-content-secondary">Вторичное содержимое</div>
  </div>
</div>
{{< /example >}}

## Настройка сетки

Используя наши встроенные сеточные переменные и карты Sass, можно полностью настроить предопределенные классы сеток. Измените количество уровней, размеры медиа-запроса и ширину контейнера, а затем перекомпилируйте.

### Колонки и промежутки

Количество колонок сетки можно изменить с помощью переменных Sass. `$grid-columns` используется для генерации ширины (в процентах) каждого отдельного колонки, в то время как `$grid-gutter-width` устанавливает ширину промежутков между колонкими.

```scss
$grid-columns: 12 !default;
$grid-gutter-width: 1.5rem !default;
```

### Уровни сетки

Выходя за рамки самих колонок, Вы также можете настроить количество уровней сетки. Если Вам нужно всего четыре уровня сетки, Вы бы обновили `$grid-breakpoints` и `$container-max-widths` примерно так:

```scss
$grid-breakpoints: (
  xs: 0,
  sm: 480px,
  md: 768px,
  lg: 1024px
);

$container-max-widths: (
  sm: 420px,
  md: 720px,
  lg: 960px
);
```

При внесении любых изменений в переменные или карты Sass Вам необходимо сохранить изменения и перекомпилировать. В результате будет выведен новый набор предопределенных классов сетки для ширины колонок, смещений и порядка. Утилиты адаптивной видимости также будут обновлены для использования настраиваемых контрольных точек. Убедитесь, что Вы установили значения сетки в `px` (не `rem`, `em` или `%`).
