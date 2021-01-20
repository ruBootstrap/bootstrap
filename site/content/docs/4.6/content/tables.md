---
layout: docs
title: Таблицы
description: Документация и примеры для выбора стиля таблиц (учитывая их преобладающее использование в плагинах JavaScript) с помощью Bootstrap.
group: content
toc: true
---

## Примеры

Из-за широкого использования таблиц в сторонних виджетах, таких как календари и средства выбора даты, мы разработали наши таблицы для **подписки**. Просто добавьте базовый класс `.table` к любому `<table>`, затем расширьте его с помощью пользовательских стилей или наших различных включенных классов модификаторов.

Используя самую простую разметку таблиц, вот как таблицы на основе `.table` выглядят в Bootstrap. **Все стили таблиц наследуются в Bootstrap 4**, что означает, что любые вложенные таблицы будут иметь тот же стиль, что и родительские.

{{< example >}}
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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

Вы также можете инвертировать цвета - светлый текст на темном фоне - с помощью `.table-dark`.

{{< example >}}
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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

## Варианты заголовка таблицы

Подобно таблицам и темным таблицам, используйте классы-модификаторы `.thead-light` или `.thead-dark`, чтобы `<thead>` казались светлыми или темно-серыми.

{{< example >}}
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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

<table class="table">
  <thead class="thead-light">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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

## Полосатые строки

Используйте `.table-striped`, чтобы добавить полосатую зебру к любой строке таблицы внутри `<tbody>`.

{{< example >}}
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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

{{< example >}}
<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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

## Таблица с границами

Добавьте `.table-bordered` для границ со всех сторон таблицы и ячеек.

{{< example >}}
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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
      <td colspan="2">Ларри Птица</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
{{< /example >}}

{{< example >}}
<table class="table table-bordered table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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
      <td colspan="2">Ларри Птица</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
{{< /example >}}

## Таблица без границ

Добавьте `.table-borderless` для таблицы без границ.

{{< example >}}
<table class="table table-borderless">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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
      <td colspan="2">Ларри Птица</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
{{< /example >}}

`.table-borderless` также может использоваться на темных таблицах.

{{< example >}}
<table class="table table-borderless table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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
      <td colspan="2">Ларри Птица</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
{{< /example >}}

## Строки с наведением

Добавьте `.table-hover`, чтобы включить состояние наведения на строки таблицы внутри `<tbody>`.

{{< example >}}
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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
      <td colspan="2">Ларри Птица</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
{{< /example >}}

{{< example >}}
<table class="table table-hover table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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
      <td colspan="2">Ларри Птица</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
{{< /example >}}

## Маленькая таблица

Добавьте `.table-sm`, чтобы сделать таблицы более компактными, сократив заполнение ячеек пополам.

{{< example >}}
<table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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
      <td colspan="2">Ларри Птица</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
{{< /example >}}

{{< example >}}
<table class="table table-sm table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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
      <td colspan="2">Ларри Птица</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
{{< /example >}}

## Контекстные классы

Используйте контекстные классы для раскрашивания строк таблицы или отдельных ячеек.

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
      <tr class="table-active">
        <th scope="row">Активный</th>
        <td>Ячейка</td>
        <td>Ячейка</td>
      </tr>
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
<!-- По строкам -->
<tr class="table-active">...</tr>{{< table.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<tr class="table-{{ .name }}">...</tr>
{{- end -}}
{{< /table.inline >}}

<!-- По ячейкам (`td` или `th`) -->
<tr>
  <td class="table-active">...</td>{{< table.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
  <td class="table-{{ .name }}">...</td>
{{- end -}}
{{< /table.inline >}}
</tr>
{{< /highlight >}}

Обычные варианты фона таблицы недоступны для темной таблицы, однако Вы можете использовать [текстовые или фоновые утилиты]({{< docsref "/utilities/colors" >}}) для достижения аналогичных стилей.

<div class="bd-example">
  <table class="table table-dark">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Заголовок</th>
        <th scope="col">Заголовок</th>
      </tr>
    </thead>
    <tbody>
      <tr class="bg-primary">
        <th scope="row">1</th>
        <td>Ячейка</td>
        <td>Ячейка</td>
      </tr>
      <tr>
        <th scope="row">2</th>
        <td>Ячейка</td>
        <td>Ячейка</td>
      </tr>
      <tr class="bg-success">
        <th scope="row">3</th>
        <td>Ячейка</td>
        <td>Ячейка</td>
      </tr>
      <tr>
        <th scope="row">4</th>
        <td>Ячейка</td>
        <td>Ячейка</td>
      </tr>
      <tr class="bg-info">
        <th scope="row">5</th>
        <td>Ячейка</td>
        <td>Ячейка</td>
      </tr>
      <tr>
        <th scope="row">6</th>
        <td>Ячейка</td>
        <td>Ячейка</td>
      </tr>
      <tr class="bg-warning">
        <th scope="row">7</th>
        <td>Ячейка</td>
        <td>Ячейка</td>
      </tr>
      <tr>
        <th scope="row">8</th>
        <td>Ячейка</td>
        <td>Ячейка</td>
      </tr>
      <tr class="bg-danger">
        <th scope="row">9</th>
        <td>Ячейка</td>
        <td>Ячейка</td>
      </tr>
    </tbody>
  </table>
</div>

```html
<!-- По строкам -->
<tr class="bg-primary">...</tr>
<tr class="bg-success">...</tr>
<tr class="bg-warning">...</tr>
<tr class="bg-danger">...</tr>
<tr class="bg-info">...</tr>

<!-- По ячейкам (`td` или `th`) -->
<tr>
  <td class="bg-primary">...</td>
  <td class="bg-success">...</td>
  <td class="bg-warning">...</td>
  <td class="bg-danger">...</td>
  <td class="bg-info">...</td>
</tr>
```

{{< callout warning >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

Создайте адаптивные таблицы, заключив любой `.table` в `.table-responsive{-sm|-md|-lg|-xl}`, заставляя таблицу прокручиваться по горизонтали при каждой контрольной точке `max-width` до (но не включая) 576px, 768px, 992px и 1120px соответственно.

{{< callout info >}}
{{< partial "callout-info-mediaqueries-breakpoints.md" >}}
{{< /callout >}}

## Заголовки

`<caption>` действует как заголовок таблицы. Это помогает пользователям программ чтения с экрана найти таблицу, понять, о чем она, и решить, хотят ли они ее прочитать.

{{< example >}}
<table class="table">
  <caption>Список пользователей</caption>
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Первый</th>
      <th scope="col">Последний</th>
      <th scope="col">Обращение</th>
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

Адаптивные таблицы позволяют с легкостью прокручивать таблицы по горизонтали. Сделайте любую таблицу адаптивной во всех окнах просмотра, заключив в `.table` с `.table-responsive`. Или выберите максимальную контрольную точку, до которой будет реагировать таблица, используя `.table-responsive{-sm|-md|-lg|-xl}`.

{{< callout warning >}}
##### Вертикальная обрезка/усечение

В адаптивных таблицах используется `overflow-y: hidden`, который обрезает любое содержимое, выходящее за пределы нижнего или верхнего края таблицы. В частности, это может вырезать раскрывающиеся меню и другие сторонние виджеты.
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

Используйте `.table-responsive{-sm|-md|-lg|-xl}` по мере необходимости для создания адаптивных таблиц до определенной контрольной точки. С этой контрольной точки и выше таблица будет вести себя нормально и не будет прокручиваться по горизонтали.

**Эти таблицы могут отображаться неработающими до тех пор, пока их адаптивные стили не будут применяться при определенной ширине области просмотра.**

{{< tables.inline >}}
{{ range $.Site.Data.breakpoints }}
{{ if not (eq .breakpoint "xs") }}
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
{{- if not (eq .breakpoint "xs") }}
<div class="table-responsive{{ .abbr }}">
  <table class="table">
    ...
  </table>
</div>
{{ end -}}
{{- end -}}
{{< /tables.inline >}}
{{< /highlight >}}
