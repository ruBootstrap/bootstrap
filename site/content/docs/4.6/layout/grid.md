---
layout: docs
title: Система сеток
description: Используйте нашу мощную сетку flexbox, ориентированную на мобильные устройства, для создания макетов всех форм и размеров благодаря системе из двенадцати столбцов, пяти адаптивным уровням по умолчанию, переменным и миксинам Sass, а также десяткам предопределенных классов.
group: layout
toc: true
---

## Как это работает

Система сеток Bootstrap использует серию контейнеров, строк и столбцов для компоновки и выравнивания содержимого. Он построен с помощью [flexbox](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Basic_Concepts_of_Flexbox) и полностью адаптивен. Ниже приведен пример и подробное рассмотрение того, как объединяется сетка.

**Новичок или незнакомец с flexbox?** [Прочтите это руководство по CSS Tricks по flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/#flexbox-background) для фона, терминология, рекомендации и фрагменты кода.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-sm">
      Один из трех столбцов
    </div>
    <div class="col-sm">
      Один из трех столбцов
    </div>
    <div class="col-sm">
      Один из трех столбцов
    </div>
  </div>
</div>
{{< /example >}}

В приведенном выше примере создаются три столбца одинаковой ширины на малых, средних, больших и очень больших устройствах с использованием наших предопределенных классов сетки. Эти столбцы центрируются на странице с родительским `.container`.

Вот как это работает:

- Контейнеры предоставляют средства для центрирования и горизонтального размещения содержимого Вашего сайта. Используйте `.container` для адаптивной ширины в пикселях или `.container-fluid` для параметра `width: 100%` для всех размеров области просмотра и устройства.
- Строки - это обертки для столбцов. У каждого столбца есть горизонтальный `padding` (называемый полем) для управления пространством между ними. Затем этому `padding` противодействуют строки с отрицательными полями. Таким образом, все содержимое Ваших столбцов визуально выравнивается по левому краю
- В макете сетки содержимое должно быть размещено внутри столбцов, и только столбцы могут быть непосредственными дочерними элементами строк.
- Благодаря flexbox, столбцы сетки без указанной ширины `width` будут автоматически компоноваться как столбцы одинаковой ширины. Например, каждый из четырех экземпляров `.col-sm` автоматически будет иметь ширину 25% от небольшой контрольной точки и выше. См. дополнительные примеры в разделе [столбцы auto-layout](#столбцы-автоматической-компоновки).
- Классы столбцов указывают количество столбцов, которое Вы хотите использовать из возможных 12 в строке. Итак, если Вам нужны три столбца одинаковой ширины, Вы можете использовать `.col-4`.
- Ширина `width` столбцов задается в процентах, поэтому они всегда гибкие и имеют размер относительно их родительского элемента.
- Столбцы имеют горизонтальный `padding` для создания промежутков между отдельными столбцами, однако Вы можете удалить `margin` из строк и `padding` из столбцов с помощью `.no-gutters` в строке `.row`.
- Чтобы сетка реагировала, есть пять контрольных точек сетки, по одной для каждой [отзывчивой контрольной точки]({{< docsref "/layout/overview#отзывчивые-контрольные-точки" >}}): все контрольные точки (очень маленькие), маленькие, средние, большие и очень большие.
- Контрольные точки сетки основаны на медиа-запросах минимальной ширины, то есть **они применяются к этой одной контрольной точке и всем тем, что выше нее** (например, `.col-sm-4` применяется к маленьким, средним, большим и очень большим устройствам , но не первая контрольная точка `xs`).
- Вы можете использовать предопределенные классы сетки (например `.col-4`) или [Sass mixins](#sass-миксины) для большей семантической разметки.

Помните об ограничениях и [ошибках вокруг flexbox](https://github.com/philipwalton/flexbugs), таких как [невозможность использования некоторых элементов HTML в качестве гибких контейнеров](https://github.com/philipwalton/flexbugs#flexbug-9).

## Параметры сетки

В то время как Bootstrap использует `em` или `rem` для определения большинства размеров, `px` используются для контрольных точек сетки и ширины контейнера. Это связано с тем, что ширина области просмотра указана в пикселях и не изменяется в зависимости от [размера шрифта](https://drafts.csswg.org/mediaqueries-3/#units).

Посмотрите, как аспекты системы сеток Bootstrap работают на нескольких устройствах с помощью удобной таблицы.

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th></th>
      <th class="text-center">
        Очень маленький<br>
        <small>&lt;576px</small>
      </th>
      <th class="text-center">
        Маленький<br>
        <small>&ge;576px</small>
      </th>
      <th class="text-center">
        Средний<br>
        <small>&ge;768px</small>
      </th>
      <th class="text-center">
        Большой<br>
        <small>&ge;992px</small>
      </th>
      <th class="text-center">
        Очень большой<br>
        <small>&ge;1200px</small>
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th class="text-nowrap" scope="row">Максимальная ширина контейнера</th>
      <td>Нет (авто)</td>
      <td>540px</td>
      <td>720px</td>
      <td>960px</td>
      <td>1140px</td>
    </tr>
    <tr>
      <th class="text-nowrap" scope="row">Префикс класса</th>
      <td><code>.col-</code></td>
      <td><code>.col-sm-</code></td>
      <td><code>.col-md-</code></td>
      <td><code>.col-lg-</code></td>
      <td><code>.col-xl-</code></td>
    </tr>
    <tr>
      <th class="text-nowrap" scope="row"># из колонок</th>
      <td colspan="5">12</td>
    </tr>
    <tr>
      <th class="text-nowrap" scope="row">Ширина полей</th>
      <td colspan="5">30px (15px с каждой стороны столбца)</td>
    </tr>
    <tr>
      <th class="text-nowrap" scope="row">Вкладываемые</th>
      <td colspan="5">Да</td>
    </tr>
    <tr>
      <th class="text-nowrap" scope="row">Порядок столбцов</th>
      <td colspan="5">Да</td>
    </tr>
  </tbody>
</table>

## Столбцы автоматической компоновки

Используйте классы столбцов, специфичные для контрольной точки, для упрощения определения размера столбца без явного нумерованного класса, такого как `.col-sm-6`.

### Равная ширина

Например, вот два макета сетки, которые применяются к каждому устройству и окну просмотра, от `xs` до `xl`. Добавьте любое количество классов без единиц измерения для каждой нужной контрольной точки, и каждый столбец будет одинаковой ширины.

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

### Многострочная с равной шириной

Создайте столбцы одинаковой ширины, которые охватывают несколько строк, вставив расширение `.w-100` там, где Вы хотите, чтобы столбцы переходили в новую строку. Сделайте переносы адаптивными, смешав `.w-100` с некоторыми [утилитами адаптивного отображения]({{< docsref "/utilities/display" >}}).

Была [ошибка Safari flexbox](https://github.com/philipwalton/flexbugs#flexbug-11), которая не позволяла этому работать без явного `flex-basis` или `border`. Существуют обходные пути для более старых версий браузеров, но в них нет необходимости, если Ваши целевые браузеры не относятся к версиям с ошибками.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col">col</div>
    <div class="col">col</div>
    <div class="w-100"></div>
    <div class="col">col</div>
    <div class="col">col</div>
  </div>
</div>
{{< /example >}}

### Установка ширины одного столбца

Автоматическая компоновка столбцов сетки Flexbox также означает, что Вы можете установить ширину одного столбца и автоматически изменять размер столбцов-братьев вокруг него. Вы можете использовать предопределенные классы сетки (как показано ниже), миксины сетки или встроенную ширину. Обратите внимание, что размер других столбцов будет изменяться независимо от ширины центрального столбца.

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

### Содержимое переменной ширины

Используйте классы `col-{breakpoint}-auto` для определения размера столбцов в зависимости от естественной ширины их содержимого.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row justify-content-md-center">
    <div class="col col-lg-2">
      1 из 3
    </div>
    <div class="col-md-auto">
      Содержимое переменной ширины
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
      Содержимое переменной ширины
    </div>
    <div class="col col-lg-2">
      3 из 3
    </div>
  </div>
</div>
{{< /example >}}

## Адаптивные классы

Сетка Bootstrap включает пять уровней предопределенных классов для создания сложных адаптивных макетов. Настройте размер столбцов на очень маленьком, маленьком, среднем, большом или очень большом устройстве по своему усмотрению.

### Все контрольные точки

Для сеток, одинаковых от самых маленьких до самых крупных, используйте классы `.col` и `.col-*`. Укажите нумерованный класс, если Вам нужен столбец определенного размера; в противном случае не стесняйтесь использовать `.col`.

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

### Сложено по горизонтали

Используя единственный набор классов `.col-sm-*`, Вы можете создать базовую систему сеток, которая начинается с накопления и становится горизонтальной в маленькой контрольной точке (`sm`).

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

### Смешивать и сочетать

Не хотите, чтобы Ваши столбцы просто складывались в несколько ярусов сетки? При необходимости используйте комбинацию разных классов для каждого уровня. Смотрите пример ниже, чтобы лучше понять, как все это работает.

{{< example class="bd-example-row" >}}
<div class="container">
  <!-- Сложите столбцы на мобильном устройстве, сделав одну полную, а другую половинную -->
  <div class="row">
    <div class="col-md-8">.col-md-8</div>
    <div class="col-6 col-md-4">.col-6 .col-md-4</div>
  </div>

  <!-- Ширина столбцов начинается с 50% на мобильных устройствах и увеличивается до 33,3% на компьютерах -->
  <div class="row">
    <div class="col-6 col-md-4">.col-6 .col-md-4</div>
    <div class="col-6 col-md-4">.col-6 .col-md-4</div>
    <div class="col-6 col-md-4">.col-6 .col-md-4</div>
  </div>

  <!-- Столбцы всегда имеют ширину 50% на мобильных устройствах и компьютерах -->
  <div class="row">
    <div class="col-6">.col-6</div>
    <div class="col-6">.col-6</div>
  </div>
</div>
{{< /example >}}

### Поля

Промежутки можно оперативно отрегулировать с помощью специальных классов заполнения и отрицательного отступа. Чтобы изменить отступы в заданной строке, объедините утилиту отрицательного поля в `.row` и соответствующие утилиты заполнения в `.col`. Родительский элемент `.container` или `.container-fluid` может также нуждаться в корректировке, чтобы избежать нежелательного переполнения, используя снова соответствующую утилиту заполнения.

Вот пример настройки сетки Bootstrap на большой (`lg`) контрольной точке и выше. Мы увеличили заполнение `.col` с помощью `.px-lg-5`, противодействовали этому с помощью `.mx-lg-n5` родительского `.row`, а затем скорректировали оболочку `.container` с помощью `.px-lg-5`.

{{< example >}}
<div class="container px-lg-5">
  <div class="row mx-lg-n5">
    <div class="col py-3 px-lg-5 border bg-light">Пользовательские отступы столбцов</div>
    <div class="col py-3 px-lg-5 border bg-light">Пользовательские отступы столбцов</div>
  </div>
</div>
{{< /example >}}

### Строка столбцов

Используйте адаптивные классы `.row-cols-*`, чтобы быстро установить количество столбцов, которые лучше всего отображают Ваш контент и макет. В то время как обычные классы `.col-*` применяются к отдельным столбцам (например, `.col-md-4`), классы столбцов строк устанавливаются в родительском `.row` в качестве ярлыка.

Используйте эти классы столбцов строк для быстрого создания базовых макетов сетки или для управления макетами карточек.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row row-cols-2">
    <div class="col">Столбец</div>
    <div class="col">Столбец</div>
    <div class="col">Столбец</div>
    <div class="col">Столбец</div>
  </div>
</div>
{{< /example >}}

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row row-cols-3">
    <div class="col">Столбец</div>
    <div class="col">Столбец</div>
    <div class="col">Столбец</div>
    <div class="col">Столбец</div>
  </div>
</div>
{{< /example >}}

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row row-cols-4">
    <div class="col">Столбец</div>
    <div class="col">Столбец</div>
    <div class="col">Столбец</div>
    <div class="col">Столбец</div>
  </div>
</div>
{{< /example >}}

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row row-cols-4">
    <div class="col">Столбец</div>
    <div class="col">Столбец</div>
    <div class="col-6">Столбец</div>
    <div class="col">Столбец</div>
  </div>
</div>
{{< /example >}}

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">
    <div class="col">Столбец</div>
    <div class="col">Столбец</div>
    <div class="col">Столбец</div>
    <div class="col">Столбец</div>
  </div>
</div>
{{< /example >}}

Вы также можете использовать сопутствующий миксин Sass, `row-cols()`:

```scss
.element {
  // Три столбца для начала
  @include row-cols(3);

  // Пять столбцов от средней контрольной точки вверх
  @include media-breakpoint-up(md) {
    @include row-cols(5);
  }
}
```

## Выравнивание

Используйте утилиты выравнивания flexbox для вертикального и горизонтального выравнивания столбцов. **Internet Explorer 10-11 не поддерживает вертикальное выравнивание гибких элементов, когда гибкий контейнер имеет `min-height`, как показано ниже.** [Подробнее смотрите Flexbugs #3.](https://github.com/philipwalton/flexbugs#flexbug-3)

### Вертикальное выравнивание

{{< example class="bd-example-row bd-example-row-flex-cols" >}}
<div class="container">
  <div class="row align-items-start">
    <div class="col">
      Один из трех столбцов
    </div>
    <div class="col">
      Один из трех столбцов
    </div>
    <div class="col">
      Один из трех столбцов
    </div>
  </div>
  <div class="row align-items-center">
    <div class="col">
      Один из трех столбцов
    </div>
    <div class="col">
      Один из трех столбцов
    </div>
    <div class="col">
      Один из трех столбцов
    </div>
  </div>
  <div class="row align-items-end">
    <div class="col">
      Один из трех столбцов
    </div>
    <div class="col">
      Один из трех столбцов
    </div>
    <div class="col">
      Один из трех столбцов
    </div>
  </div>
</div>
{{< /example >}}

{{< example class="bd-example-row bd-example-row-flex-cols" >}}
<div class="container">
  <div class="row">
    <div class="col align-self-start">
      Один из трех столбцов
    </div>
    <div class="col align-self-center">
      Один из трех столбцов
    </div>
    <div class="col align-self-end">
      Один из трех столбцов
    </div>
  </div>
</div>
{{< /example >}}

### Горизонтальное выравнивание

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row justify-content-start">
    <div class="col-4">
      Один из двух столбцов
    </div>
    <div class="col-4">
      Один из двух столбцов
    </div>
  </div>
  <div class="row justify-content-center">
    <div class="col-4">
      Один из двух столбцов
    </div>
    <div class="col-4">
      Один из двух столбцов
    </div>
  </div>
  <div class="row justify-content-end">
    <div class="col-4">
      Один из двух столбцов
    </div>
    <div class="col-4">
      Один из двух столбцов
    </div>
  </div>
  <div class="row justify-content-around">
    <div class="col-4">
      Один из двух столбцов
    </div>
    <div class="col-4">
      Один из двух столбцов
    </div>
  </div>
  <div class="row justify-content-between">
    <div class="col-4">
      Один из двух столбцов
    </div>
    <div class="col-4">
      Один из двух столбцов
    </div>
  </div>
</div>
{{< /example >}}

### Без отступов

Промежутки между столбцами в наших предопределенных классах сетки могут быть удалены с помощью `.no-gutters`. Это удаляет отрицательные поля `margin` для `.row` и горизонтальные отступы `padding` из всех непосредственных дочерних столбцов.

Вот исходный код для создания этих стилей. Обратите внимание, что переопределения столбцов ограничены областью действия только первых дочерних столбцов и нацелены через [селектор атрибутов](https://developer.mozilla.org/en-US/docs/Web/CSS/Attribute_selectors). Несмотря на то, что это создает более конкретный селектор, заполнение столбцов можно дополнительно настроить с помощью [утилиты интервала]({{< docsref "/utilities/spacing" >}}).

**Нужен дизайн от края до края?** Отбросьте родительский `.container` или `.container-fluid`.

```scss
.no-gutters {
  margin-right: 0;
  margin-left: 0;

  > .col,
  > [class*="col-"] {
    padding-right: 0;
    padding-left: 0;
  }
}
```

На практике это выглядит так. Обратите внимание, что Вы можете продолжать использовать это со всеми другими предопределенными классами сетки (включая ширину столбцов, адаптивные уровни, изменение порядка и т.д.).

{{< example class="bd-example-row" >}}
<div class="row no-gutters">
  <div class="col-sm-6 col-md-8">.col-sm-6 .col-md-8</div>
  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
</div>
{{< /example >}}

### Обертывание столбцов

Если в одной строке помещается более 12 столбцов, каждая группа дополнительных столбцов, как одно целое, переносится на новую строку.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-9">.col-9</div>
    <div class="col-4">.col-4<br>Поскольку 9 + 4 = 13 &gt; 12, этот div шириной в 4 столбца переносится на новую строку как один непрерывный блок.</div>
    <div class="col-6">.col-6<br>Последующие столбцы продолжаются вдоль новой строки.</div>
  </div>
</div>
{{< /example >}}

### Разрывы столбцов

Разбиение столбцов на новую строку в flexbox требует небольшого взлома: добавьте элемент с `width: 100%` везде, где Вы хотите перенести столбцы на новую строку. Обычно это достигается с помощью нескольких `.row`, но не каждый метод реализации может это учитывать.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
    <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>

    <!-- Заставить следующие столбцы переходить на новую строку -->
    <div class="w-100"></div>

    <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
    <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
  </div>
</div>
{{< /example >}}

Вы также можете применить этот перерыв в определенных контрольных точках с помощью наших [утилит для адаптивного отображения]({{< docsref "/utilities/display" >}}).

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-6 col-sm-4">.col-6 .col-sm-4</div>
    <div class="col-6 col-sm-4">.col-6 .col-sm-4</div>

    <!-- Заставить следующие столбцы переходить на новую строку в контрольной точке md и выше -->
    <div class="w-100 d-none d-md-block"></div>

    <div class="col-6 col-sm-4">.col-6 .col-sm-4</div>
    <div class="col-6 col-sm-4">.col-6 .col-sm-4</div>
  </div>
</div>
{{< /example >}}

## Изменение порядка

### Классы порядка

Используйте классы `.order-` для управления **визуальным порядком** Вашего контента. Эти классы являются адаптивными, поэтому Вы можете установить `order` по контрольной точке (например, `.order-1.order-md-2`). Включает поддержку от `1` до `12` на всех пяти уровнях сетки.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col">
      Первый в DOM, порядок не применяется
    </div>
    <div class="col order-12">
      Второй в DOM, с большим порядком
    </div>
    <div class="col order-1">
      Третий в DOM, порядка 1
    </div>
  </div>
</div>
{{< /example >}}

Также существуют адаптивные классы `.order-first` и `.order-last`, которые изменяют порядок `order` элемента, применяя `order: -1` и `order: 13` (`order: $columns + 1`) соответственно. Эти классы также могут быть при необходимости смешаны с пронумерованными классами `.order-*`.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col order-last">
      Сначала в DOM, последним порядком
    </div>
    <div class="col">
      Второй в DOM, неупорядоченный
    </div>
    <div class="col order-first">
      Третий в DOM, первым порядком
    </div>
  </div>
</div>
{{< /example >}}

### Смещение столбцов

Вы можете смещать столбцы сетки двумя способами: нашими адаптивными классами сетки `.offset-` и нашими [утилитами отступа]({{< docsref "/utilities/spacing" >}}). Классы сетки имеют размер, соответствующий столбцам, в то время как поля более полезны для быстрых макетов, где ширина смещения является переменной.

#### Классы смещения

Переместите столбцы вправо, используя классы `.offset-md-*`. Эти классы увеличивают левое поле столбца на столбцы `*`. Например, `.offset-md-4` перемещает `.col-md-4` на четыре столбца.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-md-4">.col-md-4</div>
    <div class="col-md-4 offset-md-4">.col-md-4 .offset-md-4</div>
  </div>
  <div class="row">
    <div class="col-md-3 offset-md-3">.col-md-3 .offset-md-3</div>
    <div class="col-md-3 offset-md-3">.col-md-3 .offset-md-3</div>
  </div>
  <div class="row">
    <div class="col-md-6 offset-md-3">.col-md-6 .offset-md-3</div>
  </div>
</div>
{{< /example >}}

В дополнение к очистке столбца в ответных контрольных точках Вам может потребоваться сбросить смещения. См. это в действии в [примере сетки]({{< docsref "/examples/grid" >}}).

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-sm-5 col-md-6">.col-sm-5 .col-md-6</div>
    <div class="col-sm-5 offset-sm-2 col-md-6 offset-md-0">.col-sm-5 .offset-sm-2 .col-md-6 .offset-md-0</div>
  </div>
  <div class="row">
    <div class="col-sm-6 col-md-5 col-lg-6">.col-sm-6 .col-md-5 .col-lg-6</div>
    <div class="col-sm-6 col-md-5 offset-md-2 col-lg-6 offset-lg-0">.col-sm-6 .col-md-5 .offset-md-2 .col-lg-6 .offset-lg-0</div>
  </div>
</div>
{{< /example >}}

#### Утилиты отступа

С переходом на flexbox в v4 Вы можете использовать утилиты полей, такие как `.mr-auto`, чтобы отодвинуть одноуровневые столбцы друг от друга.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-md-4">.col-md-4</div>
    <div class="col-md-4 ml-auto">.col-md-4 .ml-auto</div>
  </div>
  <div class="row">
    <div class="col-md-3 ml-md-auto">.col-md-3 .ml-md-auto</div>
    <div class="col-md-3 ml-md-auto">.col-md-3 .ml-md-auto</div>
  </div>
  <div class="row">
    <div class="col-auto mr-auto">.col-auto .mr-auto</div>
    <div class="col-auto">.col-auto</div>
  </div>
</div>
{{< /example >}}

## Вложенность

Чтобы вложить контент в сетку по умолчанию, добавьте новый столбец `.row` и набор столбцов `.col-sm-*` в существующий столбец `.col-sm-*`. Вложенные строки должны включать набор столбцов, которые в сумме составляют до 12 или меньше (не обязательно использовать все 12 доступных столбцов).

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-sm-9">
      Уровень 1: .col-sm-9
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

## Sass миксины

При использовании исходных файлов Sass в Bootstrap у Вас есть возможность использовать переменные и миксины Sass для создания настраиваемых, семантических и адаптивных макетов страниц. Наши предопределенные классы сетки используют те же самые переменные и миксины, чтобы предоставить целый набор готовых классов для быстрых адаптивных макетов.

### Переменные

Переменные и карты определяют количество столбцов, ширину промежутка и точку медиа-запроса, с которой следует начинать столбцы с плавающей запятой. Мы используем их для создания предопределенных классов сетки, описанных выше, а также для пользовательских миксинов, перечисленных ниже.

```scss
$grid-columns:      12;
$grid-gutter-width: 30px;

$grid-breakpoints: (
  // Очень маленький экран / телефон
  xs: 0,
  // Маленький экран / телефон
  sm: 576px,
  // Средний экран / планшет
  md: 768px,
  // Большой экран / настольный
  lg: 992px,
  // Очень большой экран / широкий настольный
  xl: 1200px
);

$container-max-widths: (
  sm: 540px,
  md: 720px,
  lg: 960px,
  xl: 1140px
);
```

### Миксины

Миксины используются вместе с переменными сетки для генерации семантического CSS для отдельных столбцов сетки.

```scss
// Создает оболочку для серии столбцов
@include make-row();

// Подготовьте элемент к сетке (применив все, кроме ширины)
@include make-col-ready();
@include make-col($size, $columns: $grid-columns);

// Получите удовольствие, смещая или изменяя порядок сортировки
@include make-col-offset($size, $columns: $grid-columns);
```

### Пример использования

Вы можете изменить переменные на свои собственные значения или просто использовать миксины со значениями по умолчанию. Вот пример использования настроек по умолчанию для создания макета из двух столбцов с промежутком между ними.

```scss
.example-container {
  @include make-container();
  // Обязательно укажите эту ширину после примеси, чтобы переопределить
  // `width: 100%` создано `make-container()`
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
    <div class="example-content-main">Главое содержимое</div>
    <div class="example-content-secondary">Вторичное содержимое</div>
  </div>
</div>
{{< /example >}}

## Настройка сетки

Используя наши встроенные сеточные переменные и карты Sass, можно полностью настроить предопределенные классы сеток. Измените количество уровней, размеры медиа-запроса и ширину контейнера, а затем перекомпилируйте.

### Колонки и промежутки

Количество столбцов сетки можно изменить с помощью переменных Sass. `$grid-columns` используется для генерации ширины (в процентах) каждого отдельного столбца, в то время как `$grid-gutter-width` устанавливает ширину промежутков между столбцами.

```scss
$grid-columns: 12 !default;
$grid-gutter-width: 30px !default;
```

### Уровни сетки

Выходя за рамки самих столбцов, Вы также можете настроить количество уровней сетки. Если Вам нужно всего четыре уровня сетки, Вы бы обновили `$grid-breakpoints` и `$container-max-widths` примерно так:

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

При внесении любых изменений в переменные или карты Sass Вам необходимо сохранить изменения и перекомпилировать. В результате будет выведен новый набор предопределенных классов сетки для ширины столбцов, смещений и порядка. Утилиты адаптивной видимости также будут обновлены для использования настраиваемых контрольных точек. Убедитесь, что Вы установили значения сетки в `px` (не `rem`, `em` или `%`).
