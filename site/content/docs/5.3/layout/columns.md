---
layout: docs
title: Колонки
description: Узнайте, как изменять колонки с помощью нескольких опций для выравнивания, упорядочивания и смещения благодаря нашей системе сеток flexbox. Кроме того, узнайте, как использовать классы колонок для управления шириной элементов без сетки.
group: layout
toc: true
---

{{< callout info >}}
**Внимание!** Обязательно [прочтите страницу Сетка]({{< docsref "/layout/grid" >}}), прежде чем погрузиться в то, как изменять и настраивать колонки сетки.
{{< /callout >}}

## Как они работают

- **Колонки основаны на архитектуре Flexbox сетки.** Flexbox означает, что у нас есть возможности для изменения отдельных колонок и [модификации групп колонок на уровне строки]({{< docsref "/layout/grid#ряд-колонок" >}}). Вы выбираете, как колонки увеличиваются, уменьшаются или изменяются иным образом.

- **При построении макетов сетки весь контент размещается в колонках.** Иерархия сетки Bootstrap идет от [контейнера]({{< docsref "/layout/containers" >}}) до строки к колонки Вашего содержимого. В редких случаях Вы можете комбинировать контент и колонку, но имейте в виду, что это может иметь непредвиденные последствия.

- **Bootstrap включает предопределенные классы для создания быстрых и отзывчивых макетов.** Благодаря [шести контрольным точкам]({{< docsref "/layout/breakpoints" >}}) и дюжине колонок на каждом уровне сетки у нас есть десятки классов уже построен для Вас, чтобы создавать желаемые макеты. При желании это можно отключить через Sass.

## Выравнивание

Используйте утилиты выравнивания flexbox для вертикального и горизонтального выравнивания колонок.

### Вертикальное выравнивание

Измените вертикальное выравнивание с помощью любого адаптивного класса `align-items-*`.

{{< example class="bd-example-row bd-example-row-flex-cols" >}}
<div class="container">
  <div class="row align-items-start">
    <div class="col">
      Одна из трех колонок
    </div>
    <div class="col">
      Одна из трех колонок
    </div>
    <div class="col">
      Одна из трех колонок
    </div>
  </div>
</div>
{{< /example >}}

{{< example class="bd-example-row bd-example-row-flex-cols" >}}
<div class="container text-center">
  <div class="row align-items-center">
    <div class="col">
      Одна из трех колонок
    </div>
    <div class="col">
      Одна из трех колонок
    </div>
    <div class="col">
      Одна из трех колонок
    </div>
  </div>
</div>
{{< /example >}}

{{< example class="bd-example-row bd-example-row-flex-cols" >}}
<div class="container text-center">
  <div class="row align-items-end">
    <div class="col">
      Одна из трех колонок
    </div>
    <div class="col">
      Одна из трех колонок
    </div>
    <div class="col">
      Одна из трех колонок
    </div>
  </div>
</div>
{{< /example >}}

Или измените выравнивание каждого столбца по отдельности с помощью любого из адаптивных классов `.align-self-*`.

{{< example class="bd-example-row bd-example-row-flex-cols" >}}
<div class="container">
  <div class="row">
    <div class="col align-self-start">
      Одна из трех колонок
    </div>
    <div class="col align-self-center">
      Одна из трех колонок
    </div>
    <div class="col align-self-end">
      Одна из трех колонок
    </div>
  </div>
</div>
{{< /example >}}

### Горизонтальное выравнивание

Измените горизонтальное выравнивание с помощью любого адаптивного класса `justify-content-*`.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row justify-content-start">
    <div class="col-4">
      Одна из двух колонок
    </div>
    <div class="col-4">
      Одна из двух колонок
    </div>
  </div>
  <div class="row justify-content-center">
    <div class="col-4">
      Одна из двух колонок
    </div>
    <div class="col-4">
      Одна из двух колонок
    </div>
  </div>
  <div class="row justify-content-end">
    <div class="col-4">
      Одна из двух колонок
    </div>
    <div class="col-4">
      Одна из двух колонок
    </div>
  </div>
  <div class="row justify-content-around">
    <div class="col-4">
      Одна из двух колонок
    </div>
    <div class="col-4">
      Одна из двух колонок
    </div>
  </div>
  <div class="row justify-content-between">
    <div class="col-4">
      Одна из двух колонок
    </div>
    <div class="col-4">
      Одна из двух колонок
    </div>
  </div>
  <div class="row justify-content-evenly">
    <div class="col-4">
      Одна из двух колонок
    </div>
    <div class="col-4">
      Одна из двух колонок
    </div>
  </div>
</div>
{{< /example >}}

### Обертывание колонок

Если в одной строке помещается более 12 колонок, каждая группа дополнительных колонок, как одно целое, переносится на новую строку.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-9">.col-9</div>
    <div class="col-4">.col-4<br>Поскольку 9 + 4 = 13 &gt; 12, этот div шириной в 4 колонки переносится на новую строку как один непрерывный блок.</div>
    <div class="col-6">.col-6<br>Последующие колонки продолжаются вдоль новой строки.</div>
  </div>
</div>
{{< /example >}}

### Разрывы колонок

Разбиение колонок на новую строку в flexbox требует небольшого хака: добавьте элемент с `width: 100%` везде, где Вы хотите перенести колонки на новую строку. Обычно это достигается с помощью нескольких `.row`, но не каждый метод реализации может это учитывать.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
    <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>

    <!-- Заставит следующие колонки переходить на новую строку -->
    <div class="w-100"></div>

    <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
    <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
  </div>
</div>
{{< /example >}}

Вы также можете применить этот разрыв в определенных контрольных точках с помощью наших [утилит для адаптивного отображения]({{< docsref "/utilities/display" >}}).

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-6 col-sm-4">.col-6 .col-sm-4</div>
    <div class="col-6 col-sm-4">.col-6 .col-sm-4</div>

    <!-- Заставит следующие колонки переходить на новую строку в контрольной точке md и выше -->
    <div class="w-100 d-none d-md-block"></div>

    <div class="col-6 col-sm-4">.col-6 .col-sm-4</div>
    <div class="col-6 col-sm-4">.col-6 .col-sm-4</div>
  </div>
</div>
{{< /example >}}

## Изменение порядка

### Класса порядка

Используйте классы `.order-` для управления **визуальным порядком** вашего контента. Эти классы адаптивны, поэтому вы можете задать `order` по контрольной точке (например, `.order-1.order-md-2`). Включает поддержку `1` по `5` на всех шести уровнях сетки.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col">
      Первый в DOM, порядок не применяется
    </div>
    <div class="col order-5">
      Второй в DOM, с наибольшим порядком
    </div>
    <div class="col order-1">
      Третий в DOM, с 1 порядком
    </div>
  </div>
</div>
{{< /example >}}

Существуют также адаптивные классы `.order-first` и `.order-last`, которые изменяют `order` элемента, применяя `order: -1` и `order: 6` соответственно. Эти классы также могут быть при необходимости смешаны с пронумерованными классами `.order-*`.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col order-last">
      Первый в DOM, порядок последнего
    </div>
    <div class="col">
      Второй в DOM, без порядка
    </div>
    <div class="col order-first">
      Третий в DOM, порядок первого
    </div>
  </div>
</div>
{{< /example >}}

Если вам нужно больше классов `.order-*`, вы можете добавить новые, изменив нашу карту Sass `$utilities`. [Прочтите нашу документацию по картам и циклам Sass]({{< docsref "/customize/sass#maps-and-loops">}}) или [нашу документацию по утилитам изменения]({{< docsref "/utilities/api#modify-utilities">}}) для получения подробной информации.

```scss
$utilities: map-merge(
  $utilities,
  (
    "order": map-merge(
      map-get($utilities, "order"),
      (
        values: map-merge(
          map-get(map-get($utilities, "order"), "values"),
          (
            6: 6, // Add a new `.order-{breakpoint}-6` utility
            last: 7 // Change the `.order-{breakpoint}-last` utility to use the next number
          )
        ),
      ),
    ),
  )
);
```

### Смещение колонок

Вы можете смещать колонки сетки двумя способами: нашими адаптивными классами сетки `.offset-` и нашими [утилитами полей]({{< docsref "/utilities/spacing" >}}). Классы сетки имеют размер, соответствующий колонкам, в то время как поля более полезны для быстрых макетов, где ширина смещения является переменной.

#### Классы смещения

Переместите колонки вправо, используя классы `.offset-md-*`. Эти классы увеличивают левое поле колонки на колонки `*`. Например, `.offset-md-4` перемещает `.col-md-4` на четыре колонки.

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

В дополнение к очистке колонки в адаптивных контрольных точках Вам может потребоваться сбросить смещения. См. это в действии в [пример сетки]({{< docsref "/examples/grid" >}}).

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

#### Утилиты полей

С переходом на flexbox в v4 Вы можете использовать утилиты полей, такие как `.me-auto`, чтобы отодвинуть одноуровневые столбцы друг от друга.

{{< example class="bd-example-row" >}}
<div class="container">
  <div class="row">
    <div class="col-md-4">.col-md-4</div>
    <div class="col-md-4 ms-auto">.col-md-4 .ms-auto</div>
  </div>
  <div class="row">
    <div class="col-md-3 ms-md-auto">.col-md-3 .ms-md-auto</div>
    <div class="col-md-3 ms-md-auto">.col-md-3 .ms-md-auto</div>
  </div>
  <div class="row">
    <div class="col-auto me-auto">.col-auto .me-auto</div>
    <div class="col-auto">.col-auto</div>
  </div>
</div>
{{< /example >}}

## Автономные классы колонок

Классы `.col-*` также могут использоваться вне `.row`, чтобы дать элементу определенную ширину. Когда классы колонок используются как непрямые дочерние элементы строки, отступы опускаются.

{{< example class="bd-example-row" >}}
<div class="col-3 p-3 mb-2">
  .col-3: width of 25%
</div>

<div class="col-sm-9 p-3">
  .col-sm-9: width of 75% above sm breakpoint
</div>
{{< /example >}}

Классы можно использовать вместе с утилитами для создания гибких плавающих изображений. Убедитесь, что содержимое обернуто в оболочку [`.clearfix`]({{< docsref "/helpers/clearfix" >}}), чтобы очистить плавающее значение, если текст короче.

{{< example >}}
<div class="clearfix">
  {{< placeholder width="100%" height="210" class="col-md-6 float-md-end mb-3 ms-md-3" text="Адаптивное плавающее изображение" >}}

  <p>
    Абзац текста-заполнителя. Мы используем его здесь, чтобы показать использование класса clearfix. Мы добавляем здесь довольно много бессмысленных фраз, чтобы продемонстрировать, как столбцы здесь взаимодействуют с плавающим изображением.
  </p>

  <p>
    Как видите, абзацы изящно обтекают плавающее изображение. А теперь представьте, как это будет выглядеть с фактическим содержанием здесь, а не просто с этим скучным текстом-заполнителем, который продолжается и продолжается, но на самом деле не передает никакой осязаемой информации. Он просто занимает место, и его не стоит читать.
  </p>

  <p>
    И тем не менее, здесь вы, по-прежнему настойчив в чтении этот текст-заполнитель, в надежде еще несколько прозрений, или некоторые скрытые пасхальные яйца содержания. Возможно, шутка. К сожалению, здесь ничего этого нет.
  </p>
</div>
{{< /example >}}
