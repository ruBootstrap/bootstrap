---
layout: docs
title: Таблицы
description: Документация и примеры для выбора стиля таблиц (учитывая их преобладающее использование в плагинах JavaScript) с помощью Bootstrap.
group: content
toc: true
---

## Обзор

Из-за повсеместного использования элементов `<table>` в сторонних виджетах, таких как календари и средства выбора даты, таблицы Bootstrap имеют **подписку**. Добавьте базовый класс `.table` к любому `<table>`, затем расширьте с помощью наших дополнительных классов модификаторов или пользовательских стилей. Все стили таблиц не наследуются в Bootstrap, то есть любые вложенные таблицы могут быть стилизованы независимо от родительских.

Используя самую простую разметку таблиц, вот как таблицы на основе `.table` выглядят в Bootstrap.

{{< table class="table" simplified="false" >}}

## Варианты

Используйте контекстные классы для раскрашивания таблиц, строк таблицы или отдельных ячеек.

{{< callout info >}}
**Внимание!** Из-за более сложного CSS, используемого для создания вариантов нашей таблицы, они, скорее всего, не увидят адаптивный стиль цветового режима до версии 6.
{{< /callout >}}

<div class="bd-example">
  <table class="table">
    <thead>
      <tr>
        <th scope="col">Класс</th>
        <th scope="col">Заголовок</th>
        <th scope="col">Заголовок</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">По умолчанию</th>
        <td>Ячейка</td>
        <td>Ячейка</td>
      </tr>
      {{< table.inline >}}
      {{- range (index $.Site.Data "theme-colors") }}
        <tr class="table-{{ .name }}">
          <th scope="row">{{ .name | title }}</th>
          <td>Ячейка</td>
          <td>Ячейка</td>
        </tr>
      {{- end -}}
      {{< /table.inline >}}
    </tbody>
  </table>
</div>

{{< highlight html >}}
<!-- На таблицах -->{{< table.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<table class="table-{{ .name }}">...</table>
{{- end -}}
{{< /table.inline >}}

<!-- На строках -->{{< table.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<tr class="table-{{ .name }}">...</tr>
{{- end -}}
{{< /table.inline >}}

<!-- На ячейках (`td` или `th`) -->
<tr>{{< table.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
  <td class="table-{{ .name }}">...</td>
{{- end -}}
{{< /table.inline >}}
</tr>
{{< /highlight >}}

{{< callout info >}}
{{< partial "callouts/warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Акцентированные таблицы

### Полосатые строки

Используйте `.table-striped`, чтобы добавить полосатую зебру к любой строке таблицы внутри `<tbody>`.

{{< table class="table table-striped" >}}

### Полосатые колонки

Используйте `.table-striped-columns`, чтобы добавить полосу зебры к любому столбцу таблицы.

{{< table class="table table-striped-columns" >}}

Эти классы также можно добавить в варианты таблиц:

{{< table class="table table-dark table-striped" >}}

{{< table class="table table-dark table-striped-columns" >}}

{{< table class="table table-success table-striped" >}}

{{< table class="table table-success table-striped-columns" >}}

### Строки с наведением

Добавьте `.table-hover`, чтобы включить состояние наведения курсора на строки таблицы внутри `<tbody>`.

{{< table class="table table-hover" >}}

{{< table class="table table-dark table-hover" >}}

Эти наводимые строки также можно комбинировать с вариантом полосатой строки:

{{< table class="table table-striped table-hover" >}}

### Активные таблицы

Выделите строку или ячейку таблицы, добавив класс `.table-active`.

<div class="bd-example">
  <table class="table">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Первый</th>
        <th scope="col">Последний</th>
        <th scope="col">Обработчик</th>
      </tr>
    </thead>
    <tbody>
      <tr class="table-active">
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
      </tr>
      <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
      </tr>
      <tr>
        <th scope="row">3</th>
        <td colspan="2" class="table-active">Larry the Bird</td>
        <td>@twitter</td>
      </tr>
    </tbody>
  </table>
</div>

```html
<table class="table">
  <thead>
    ...
  </thead>
  <tbody>
    <tr class="table-active">
      ...
    </tr>
    <tr>
      ...
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2" class="table-active">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
```

<div class="bd-example">
  <table class="table table-dark">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Первый</th>
        <th scope="col">Последний</th>
        <th scope="col">Обработчик</th>
      </tr>
    </thead>
    <tbody>
      <tr class="table-active">
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
      </tr>
      <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
      </tr>
      <tr>
        <th scope="row">3</th>
        <td colspan="2" class="table-active">Larry the Bird</td>
        <td>@twitter</td>
      </tr>
    </tbody>
  </table>
</div>

```html
<table class="table table-dark">
  <thead>
    ...
  </thead>
  <tbody>
    <tr class="table-active">
      ...
    </tr>
    <tr>
      ...
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2" class="table-active">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
```

## Как работают варианты и акцентированные таблицы?

Для таблиц с акцентом ([полосатые строки](#полосатые-строки), [полосатые колонки](#полосатые-колонки), [строки с наведением](#строки-с-наведением) и [активные таблицы](#активные-таблицы))мы использовали некоторые методы, чтобы эти эффекты работали для все наши [варианты таблиц](#варианты):

- Мы начинаем с установки фона ячейки таблицы с помощью настраиваемого свойства `--bs-table-bg`. Затем все варианты таблицы устанавливают это настраиваемое свойство для раскрашивания ячеек таблицы. Таким образом, у нас не будет проблем, если полупрозрачные цвета используются в качестве фона стола.
- Затем мы добавляем тень вставки на ячейки таблицы с помощью `box-shadow: inset 0 0 0 9999px var(--bs-table-accent-bg);` на слой поверх любого указанного `background-color`. Поскольку мы используем большой разброс и отсутствие размытия, цвет будет монотонным. Так как `--bs-table-accent-bg` по умолчанию не установлен, у нас нет тени блока по умолчанию.
- Когда добавляются классы `.table-striped`, `.table-striped-columns`, `.table-hover` или `.table-active` для `--bs-table-accent-bg` устанавливается полупрозрачный цвет для раскрашивания фона.
- Для каждого варианта таблицы мы генерируем цвет `--bs-table-accent-bg` с самым высоким контрастом в зависимости от этого цвета. Например, основной цвет для `.table-primary` темнее, а для `.table-dark` светлее.
- Цвета текста и границ генерируются одинаково, а их цвета наследуются по умолчанию.

За кадром это выглядит так:

{{< scss-docs name="table-variant" file="scss/mixins/_table-variants.scss" >}}

## Границы таблицы

### Таблицы с границами

Добавьте `.table-bordered` для границ со всех сторон таблицы и ячеек.

{{< table class="table table-bordered" >}}

Для изменения цвета можно добавить [утилиты цвета границы]({{< docsref "/utilities/borders#border-color" >}}):

{{< table class="table table-bordered border-primary" >}}

### Таблицы без границ

Добавьте `.table-borderless` для таблицы без границ.

{{< table class="table table-borderless" >}}

{{< table class="table table-dark table-borderless" >}}

## Маленькие таблицы

Добавьте `.table-sm`, чтобы сделать любой `.table` более компактным, разрезав все ячейки `padding` пополам.

{{< table class="table table-sm" >}}

{{< table class="table table-dark table-sm" >}}

## Разделители групп таблиц

Добавьте более толстую и темную границу между группами таблиц — `<thead>`, `<tbody>` и `<tfoot>` — с помощью `.table-group-divider`. Настройте цвет, изменив `border-top-color` (для которого в настоящее время мы не предоставляем служебный класс).

{{< example >}}
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обработчик</th>
    </tr>
  </thead>
  <tbody class="table-group-divider">
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
{{< /example >}}

## Вертикальное выравнивание

Ячейки таблицы `<thead>` всегда выравниваются по вертикали по низу. Ячейки таблицы в `<tbody>` наследуют свое выравнивание от `<table>` и по умолчанию выравниваются по верхнему краю. Используйте классы [вертикальное выравнивание]({{< docsref "/utilities/vertical-align" >}}) для повторного выравнивания там, где это необходимо.

<div class="bd-example">
  <div class="table-responsive">
    <table class="table align-middle">
      <thead>
        <tr>
          <th scope="col" class="w-25">Заголовок 1</th>
          <th scope="col" class="w-25">Заголовок 2</th>
          <th scope="col" class="w-25">Заголовок 3</th>
          <th scope="col" class="w-25">Заголовок 4</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Эта ячейка наследует <code>vertical-align: middle;</code> из таблицы</td>
          <td>Эта ячейка наследует <code>vertical-align: middle;</code> из таблицы</td>
          <td>Эта ячейка наследует <code>vertical-align: middle;</code> из таблицы</td>
          <td>Это текст-заполнитель, предназначенный для того, чтобы занять довольно много места по вертикали, чтобы продемонстрировать, как работает вертикальное выравнивание в предыдущих ячейках.</td>
        </tr>
        <tr class="align-bottom">
          <td>Эта ячейка наследует <code>vertical-align: bottom;</code> из строки таблицы</td>
          <td>Эта ячейка наследует <code>vertical-align: bottom;</code> из строки таблицы</td>
          <td>Эта ячейка наследует <code>vertical-align: bottom;</code> из строки таблицы</td>
          <td>Это текст-заполнитель, предназначенный для того, чтобы занять довольно много места по вертикали, чтобы продемонстрировать, как работает вертикальное выравнивание в предыдущих ячейках.</td>
        </tr>
        <tr>
          <td>Эта ячейка наследует <code>vertical-align: middle;</code> из таблицы</td>
          <td>Эта ячейка наследует <code>vertical-align: middle;</code> из таблицы</td>
          <td class="align-top">Эта ячейка выровнена по верхнему краю.</td>
          <td>Это текст-заполнитель, предназначенный для того, чтобы занять довольно много места по вертикали, чтобы продемонстрировать, как работает вертикальное выравнивание в предыдущих ячейках.</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

```html
<div class="table-responsive">
  <table class="table align-middle">
    <thead>
      <tr>
        ...
      </tr>
    </thead>
    <tbody>
      <tr>
        ...
      </tr>
      <tr class="align-bottom">
        ...
      </tr>
      <tr>
        <td>...</td>
        <td>...</td>
        <td class="align-top">Эта ячейка выровнена по верхнему краю.</td>
        <td>...</td>
      </tr>
    </tbody>
  </table>
</div>
```

## Вложенность

Стили границ, активные стили и варианты таблиц не наследуются вложенными таблицами.

<div class="bd-example">
<table class="table table-striped table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обработчик</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <td colspan="4">
        <table class="table mb-0">
          <thead>
            <tr>
              <th scope="col">Заголовок</th>
              <th scope="col">Заголовок</th>
              <th scope="col">Заголовок</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">А</th>
              <td>Первый</td>
              <td>Последний</td>
            </tr>
            <tr>
              <th scope="row">Б</th>
              <td>Первый</td>
              <td>Последний</td>
            </tr>
            <tr>
              <th scope="row">В</th>
              <td>Первый</td>
              <td>Последний</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
</div>

```html
<table class="table table-striped">
  <thead>
    ...
  </thead>
  <tbody>
    ...
    <tr>
      <td colspan="4">
        <table class="table mb-0">
          ...
        </table>
      </td>
    </tr>
    ...
  </tbody>
</table>
```

## Как работает вложение

Чтобы предотвратить попадание _любых_ стилей во вложенные таблицы, мы используем селектор дочернего комбинатора (`>`) в нашем CSS. Поскольку нам нужно настроить таргетинг на все `td` и `th` в `thead`, `tbody` и `tfoot`, наш селектор без этого выглядел бы довольно долго. Таким образом, мы используем довольно странно выглядящий селектор `.table > :not(caption) > * > *` для нацеливания на все `td` и `th` в `.table`, но ни на одну из потенциально вложенных таблиц.

Обратите внимание, что если Вы добавите `<tr>` в качестве прямых дочерних элементов таблицы, эти `<tr>` по умолчанию будут заключены в `<tbody>`, что заставит наши селекторы работать должным образом.

## Анатомия

### Верхний колонтитул таблицы

Подобно таблицам и темным таблицам, используйте классы-модификаторы `.table-light` или `.table-dark` чтобы `<thead>` казались светлыми или темно-серыми.

<div class="bd-example">
<table class="table">
  <thead class="table-light">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обработчик</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
</div>

```html
<table class="table">
  <thead class="table-light">
    ...
  </thead>
  <tbody>
    ...
  </tbody>
</table>
```

<div class="bd-example">
<table class="table">
  <thead class="table-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обработчик</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
</div>

```html
<table class="table">
  <thead class="table-dark">
    ...
  </thead>
  <tbody>
    ...
  </tbody>
</table>
```

### Нижний колонтитул таблицы

<div class="bd-example">
<table class="table">
  <thead class="table-light">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обработчик</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <td>Подвал</td>
      <td>Подвал</td>
      <td>Подвал</td>
      <td>Подвал</td>
    </tr>
  </tfoot>
</table>
</div>

```html
<table class="table">
  <thead>
    ...
  </thead>
  <tbody>
    ...
  </tbody>
  <tfoot>
    ...
  </tfoot>
</table>
```

### Заголовки

`<caption>` действует как заголовок таблицы. Это помогает пользователям программ чтения с экрана найти таблицу, понять, о чем она, и решить, хотят ли они ее прочитать.

<div class="bd-example">
  <table class="table">
    <caption>Список пользователей</caption>
    {{< partial "table-content" >}}
  </table>
</div>

```html
<table class="table table-sm">
  <caption>Список пользователей</caption>
  <thead>
    ...
  </thead>
  <tbody>
    ...
  </tbody>
</table>
```

Вы также можете поместить `<caption>` в верхнюю часть таблицы с помощью `.caption-top`.

{{< example >}}
<table class="table caption-top">
  <caption>Список пользователей</caption>
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обработчик</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
{{< /example >}}

## Адаптивные таблицы

Адаптивные таблицы позволяют с легкостью прокручивать таблицы по горизонтали. Сделайте любую таблицу адаптивной во всех окнах просмотра, заключив в `.table` с `.table-responsive`. Или выберите максимальную контрольную точку, до которой будет реагировать таблица, используя `.table-responsive{-sm|-md|-lg|-xl|-xxl}`.

{{< callout warning >}}

##### Вертикальная обрезка/усечение

Адаптивные таблицы используют `overflow-y: hidden`, который отсекает любое содержимое, выходящее за нижний или верхний края таблицы. В частности, это может вырезать раскрывающиеся меню и другие сторонние виджеты.
{{< /callout >}}

### Всегда адаптивный

Через каждую контрольную точку используйте `.table-responsive` для горизонтальной прокрутки таблиц.

<div class="bd-example">
  <div class="table-responsive">
    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

```html
<div class="table-responsive">
  <table class="table">
    ...
  </table>
</div>
```

### Специфическая контрольная точка

Используйте `.table-responsive{-sm|-md|-lg|-xl|-xxl}` по мере необходимости для создания адаптивных таблиц до определенной контрольной точки. С этой контрольной точки и выше таблица будет вести себя нормально и не будет прокручиваться по горизонтали.

**Эти таблицы могут отображаться неработающими до тех пор, пока их адаптивные стили не будут применены к определенной ширине области просмотра.**

{{< tables.inline >}}
{{ range $.Site.Data.breakpoints }}
{{ if not (eq . "xs") }}
<div class="bd-example">
  <div class="table-responsive{{ .abbr }}">
    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
          <th scope="col">Заголовок</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
          <td>Ячейка</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
{{ end -}}
{{- end -}}
{{< /tables.inline >}}

{{< highlight html >}}
{{< tables.inline >}}
{{- range $.Site.Data.breakpoints -}}
{{- if not (eq . "xs") }}
<div class="table-responsive{{ .abbr }}">
  <table class="table">
    ...
  </table>
</div>
{{ end -}}
{{- end -}}
{{< /tables.inline >}}
{{< /highlight >}}

## CSS

### Sass переменные

{{< scss-docs name="table-variables" file="scss/_variables.scss" >}}

### Sass цикл

{{< scss-docs name="table-loop" file="scss/_variables.scss" >}}

### Кастомизация

- Факторные переменные (`$table-striped-bg-factor`, `$table-active-bg-factor` и `$table-hover-bg-factor`) используются для определения контраста в вариантах таблиц.
- Кроме светлого и темного вариантов таблицы, цвета темы осветляются переменной `$table-bg-scale`.
