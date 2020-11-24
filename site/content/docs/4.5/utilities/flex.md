---
layout: docs
title: Flex
description: Быстро управляйте макетом, выравниванием и размером столбцов сетки, навигацией, компонентами и т.д. С помощью полного набора гибких утилит флексбокс. Для более сложных реализаций может потребоваться собственный CSS.
group: utilities
toc: true
---

## Включить гибкое поведение

Примените утилиты `display` для создания контейнера flexbox и преобразования **прямых дочерних элементов** в элементы flex. Гибкие контейнеры и элементы можно дополнительно модифицировать с помощью дополнительных свойств гибкости.

{{< example >}}
<div class="d-flex p-2 bd-highlight">Я контейнер Flexbox!</div>
{{< /example >}}

{{< example >}}
<div class="d-inline-flex p-2 bd-highlight">Я встроенный контейнер Flexbox!</div>
{{< /example >}}

Адаптивные варианты также существуют для `.d-flex` и `.d-inline-flex`.

{{< markdown >}}
{{< flex.inline >}}
{{- range $.Site.Data.breakpoints }}
- `.d{{ .abbr }}-flex`
- `.d{{ .abbr }}-inline-flex`
{{- end -}}
{{< /flex.inline >}}
{{< /markdown >}}

## Direction

Задайте направление гибких элементов в гибком контейнере с помощью утилит направления. В большинстве случаев Вы можете опустить здесь горизонтальный класс, поскольку браузер по умолчанию `row`. Однако Вы можете столкнуться с ситуациями, когда Вам нужно явно установить это значение (например, адаптивные макеты).

Используйте `.flex-row`, чтобы установить горизонтальное направление (по умолчанию браузер), или `.flex-row-reverse`, чтобы начать горизонтальное направление с противоположной стороны.

{{< example >}}
<div class="d-flex flex-row bd-highlight mb-3">
  <div class="p-2 bd-highlight">Flex элемент 1</div>
  <div class="p-2 bd-highlight">Flex элемент 2</div>
  <div class="p-2 bd-highlight">Flex элемент 3</div>
</div>
<div class="d-flex flex-row-reverse bd-highlight">
  <div class="p-2 bd-highlight">Flex элемент 1</div>
  <div class="p-2 bd-highlight">Flex элемент 2</div>
  <div class="p-2 bd-highlight">Flex элемент 3</div>
</div>
{{< /example >}}

Используйте `.flex-column`, чтобы задать вертикальное направление, или `.flex-column-reverse`, чтобы начать вертикальное направление с противоположной стороны.

{{< example >}}
<div class="d-flex flex-column bd-highlight mb-3">
  <div class="p-2 bd-highlight">Flex элемент 1</div>
  <div class="p-2 bd-highlight">Flex элемент 2</div>
  <div class="p-2 bd-highlight">Flex элемент 3</div>
</div>
<div class="d-flex flex-column-reverse bd-highlight">
  <div class="p-2 bd-highlight">Flex элемент 1</div>
  <div class="p-2 bd-highlight">Flex элемент 2</div>
  <div class="p-2 bd-highlight">Flex элемент 3</div>
</div>
{{< /example >}}

Адаптивные вариации также существуют для `flex-direction`.

{{< markdown >}}
{{< flex.inline >}}
{{- range $.Site.Data.breakpoints }}
- `.flex{{ .abbr }}-row`
- `.flex{{ .abbr }}-row-reverse`
- `.flex{{ .abbr }}-column`
- `.flex{{ .abbr }}-column-reverse`
{{- end -}}
{{< /flex.inline >}}
{{< /markdown >}}

## Justify content

Используйте утилиты `justify-content` в контейнерах flexbox для изменения выравнивания гибких элементов по главной оси (ось x для начала, ось y, если `flex-direction: column`). Выберите из: `start` (по умолчанию в браузере), `end`, `center`, `between` или `around`.

<div class="bd-example">
  <div class="d-flex justify-content-start bd-highlight mb-3">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
  <div class="d-flex justify-content-end bd-highlight mb-3">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
  <div class="d-flex justify-content-center bd-highlight mb-3">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
  <div class="d-flex justify-content-between bd-highlight mb-3">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
  <div class="d-flex justify-content-around bd-highlight">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
</div>

```html
<div class="d-flex justify-content-start">...</div>
<div class="d-flex justify-content-end">...</div>
<div class="d-flex justify-content-center">...</div>
<div class="d-flex justify-content-between">...</div>
<div class="d-flex justify-content-around">...</div>
```

Адаптивные варианты также существуют для `justify-content`.

{{< markdown >}}
{{< flex.inline >}}
{{- range $.Site.Data.breakpoints }}
- `.justify-content{{ .abbr }}-start`
- `.justify-content{{ .abbr }}-end`
- `.justify-content{{ .abbr }}-center`
- `.justify-content{{ .abbr }}-between`
- `.justify-content{{ .abbr }}-around`
{{- end -}}
{{< /flex.inline >}}
{{< /markdown >}}

## Align items

Используйте утилиты `align-items` в контейнерах flexbox, чтобы изменить выравнивание гибких элементов по поперечной оси (ось Y для начала, ось X, если `flex-direction: column`). Выберите из: `start`, `end`, `center`, `baseline` или `stretch` (по умолчанию в браузере).

<div class="bd-example">
  <div class="d-flex align-items-start bd-highlight mb-3" style="height: 100px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
  <div class="d-flex align-items-end bd-highlight mb-3" style="height: 100px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
  <div class="d-flex align-items-center bd-highlight mb-3" style="height: 100px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
  <div class="d-flex align-items-baseline bd-highlight mb-3" style="height: 100px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
  <div class="d-flex align-items-stretch bd-highlight" style="height: 100px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
</div>

```html
<div class="d-flex align-items-start">...</div>
<div class="d-flex align-items-end">...</div>
<div class="d-flex align-items-center">...</div>
<div class="d-flex align-items-baseline">...</div>
<div class="d-flex align-items-stretch">...</div>
```

Адаптивные варианты также существуют для `align-items`.

{{< markdown >}}
{{< flex.inline >}}
{{- range $.Site.Data.breakpoints }}
- `.align-items{{ .abbr }}-start`
- `.align-items{{ .abbr }}-end`
- `.align-items{{ .abbr }}-center`
- `.align-items{{ .abbr }}-baseline`
- `.align-items{{ .abbr }}-stretch`
{{- end -}}
{{< /flex.inline >}}
{{< /markdown >}}

## Align self

Используйте утилиты `align-self` для элементов flexbox, чтобы индивидуально изменить их выравнивание по поперечной оси (ось Y для начала, ось X, если `flex-direction: column`). Выберите один из тех же параметров, что и `align-items`: `start`, `end`, `center`, `baseline` или `stretch` (по умолчанию в браузере).

<div class="bd-example">
  <div class="d-flex bd-highlight mb-3" style="height: 100px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="align-self-start p-2 bd-highlight">Выровненный flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
  <div class="d-flex bd-highlight mb-3" style="height: 100px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="align-self-end p-2 bd-highlight">Выровненный flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
  <div class="d-flex bd-highlight mb-3" style="height: 100px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="align-self-center p-2 bd-highlight">Выровненный flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
  <div class="d-flex bd-highlight mb-3" style="height: 100px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="align-self-baseline p-2 bd-highlight">Выровненный flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
  <div class="d-flex bd-highlight" style="height: 100px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="align-self-stretch p-2 bd-highlight">Выровненный flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
</div>

```html
<div class="align-self-start">Выровненный flex элемент</div>
<div class="align-self-end">Выровненный flex элемент</div>
<div class="align-self-center">Выровненный flex элемент</div>
<div class="align-self-baseline">Выровненный flex элемент</div>
<div class="align-self-stretch">Выровненный flex элемент</div>
```

Адаптивные варианты также существуют для `align-self`.

{{< markdown >}}
{{< flex.inline >}}
{{- range $.Site.Data.breakpoints }}
- `.align-self{{ .abbr }}-start`
- `.align-self{{ .abbr }}-end`
- `.align-self{{ .abbr }}-center`
- `.align-self{{ .abbr }}-baseline`
- `.align-self{{ .abbr }}-stretch`
{{- end -}}
{{< /flex.inline >}}
{{< /markdown >}}

## Fill

Используйте класс `.flex-fill` для серии родственных элементов, чтобы заставить их ширину равную их содержимому (или равную ширину, если их содержимое не превышает их границы), занимая все доступное горизонтальное пространство.

{{< example >}}
<div class="d-flex bd-highlight">
  <div class="p-2 flex-fill bd-highlight">Flex элемент с большим количеством контента</div>
  <div class="p-2 flex-fill bd-highlight">Flex элемент</div>
  <div class="p-2 flex-fill bd-highlight">Flex элемент</div>
</div>
{{< /example >}}

Адаптивные варианты также существуют для `flex-fill`.

{{< markdown >}}
{{< flex.inline >}}
{{- range $.Site.Data.breakpoints }}
- `.flex{{ .abbr }}-fill`
{{- end -}}
{{< /flex.inline >}}
{{< /markdown >}}

## Grow и shrink

Используйте утилиты `.flex-grow-*` для переключения способности гибкого элемента увеличиваться, чтобы заполнить доступное пространство. В приведенном ниже примере элементы `.flex-grow-1` используют все доступное пространство, в то время как оставшимся двум гибким элементам предоставляется необходимое пространство.

{{< example >}}
<div class="d-flex bd-highlight">
  <div class="p-2 flex-grow-1 bd-highlight">Flex элемент</div>
  <div class="p-2 bd-highlight">Flex элемент</div>
  <div class="p-2 bd-highlight">Третий flex элемент</div>
</div>
{{< /example >}}

Используйте утилиты `.flex-shrink-*` для переключения возможности гибкого элемента сжиматься при необходимости. В приведенном ниже примере второй гибкий элемент с `.flex-shrink-1` принудительно переносит свое содержимое в новую строку, «сжимаясь», чтобы освободить больше места для предыдущего гибкого элемента с `.w-100`.

{{< example >}}
<div class="d-flex bd-highlight">
  <div class="p-2 w-100 bd-highlight">Flex элемент</div>
  <div class="p-2 flex-shrink-1 bd-highlight">Flex элемент</div>
</div>
{{< /example >}}

Адаптивные варианты также существуют для `flex-grow` и `flex-shrink`.

{{< markdown >}}
{{< flex.inline >}}
{{- range $.Site.Data.breakpoints }}
- `.flex{{ .abbr }}-{grow|shrink}-0`
- `.flex{{ .abbr }}-{grow|shrink}-1`
{{- end -}}
{{< /flex.inline >}}
{{< /markdown >}}

## Автоматические поля

Flexbox может делать несколько замечательных вещей, когда Вы смешиваете выравнивание гибкости с автоматическими полями. Ниже показаны три примера управления гибкими элементами через автоматические поля: по умолчанию (без автоматического поля), перемещение двух элементов вправо (`.mr-auto`) и перемещение двух элементов влево (`.ml-auto`).

**К сожалению, IE10 и IE11 не поддерживают должным образом автоматические поля для гибких элементов, родительский элемент которых имеет значение `justify-content` не по умолчанию.** [Смотрите этот ответ на StackOverflow](https://stackoverflow.com/a/37535548) для получения большей информации.

{{< example >}}
<div class="d-flex bd-highlight mb-3">
  <div class="p-2 bd-highlight">Flex элемент</div>
  <div class="p-2 bd-highlight">Flex элемент</div>
  <div class="p-2 bd-highlight">Flex элемент</div>
</div>

<div class="d-flex bd-highlight mb-3">
  <div class="mr-auto p-2 bd-highlight">Flex элемент</div>
  <div class="p-2 bd-highlight">Flex элемент</div>
  <div class="p-2 bd-highlight">Flex элемент</div>
</div>

<div class="d-flex bd-highlight mb-3">
  <div class="p-2 bd-highlight">Flex элемент</div>
  <div class="p-2 bd-highlight">Flex элемент</div>
  <div class="ml-auto p-2 bd-highlight">Flex элемент</div>
</div>
{{< /example >}}

### С align-items

Вертикально переместите один гибкий элемент в верхнюю или нижнюю часть контейнера, смешав `align-items`, `flex-direction: column` и `margin-top: auto` или `margin-bottom: auto`.

{{< example >}}
<div class="d-flex align-items-start flex-column bd-highlight mb-3" style="height: 200px;">
  <div class="mb-auto p-2 bd-highlight">Flex элемент</div>
  <div class="p-2 bd-highlight">Flex элемент</div>
  <div class="p-2 bd-highlight">Flex элемент</div>
</div>

<div class="d-flex align-items-end flex-column bd-highlight mb-3" style="height: 200px;">
  <div class="p-2 bd-highlight">Flex элемент</div>
  <div class="p-2 bd-highlight">Flex элемент</div>
  <div class="mt-auto p-2 bd-highlight">Flex элемент</div>
</div>
{{< /example >}}

## Wrap

Измените способ переноса гибких элементов в гибкий контейнер. Выберите полное отсутствие переноса (по умолчанию в браузере) с помощью `.flex-nowrap`, обертывание с помощью `.flex-wrap` или обратное обертывание с помощью `.flex-wrap-reverse`.

<div class="bd-example">
  <div class="d-flex flex-nowrap bd-highlight" style="width: 8rem;">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
</div>

```html
<div class="d-flex flex-nowrap">
  ...
</div>
```

<div class="bd-example">
  <div class="d-flex flex-wrap bd-highlight">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
</div>

```html
<div class="d-flex flex-wrap">
  ...
</div>
```

<div class="bd-example">
  <div class="d-flex flex-wrap-reverse bd-highlight">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
</div>

```html
<div class="d-flex flex-wrap-reverse">
  ...
</div>
```


Адаптивные варианты также существуют для `flex-wrap`.

{{< markdown >}}
{{< flex.inline >}}
{{- range $.Site.Data.breakpoints }}
- `.flex{{ .abbr }}-nowrap`
- `.flex{{ .abbr }}-wrap`
- `.flex{{ .abbr }}-wrap-reverse`
{{- end -}}
{{< /flex.inline >}}
{{< /markdown >}}

## Order

Измените _визуальный_ порядок определенных гибких элементов с помощью нескольких утилит `order`. Мы предоставляем только варианты для того, чтобы сделать элемент первым или последним, а также выполнить сброс для использования порядка DOM. Поскольку `order` принимает любое целочисленное значение (например, `5`), добавьте собственный CSS для любых дополнительных значений.

{{< example >}}
<div class="d-flex flex-nowrap bd-highlight">
  <div class="order-3 p-2 bd-highlight">Первый flex элемент</div>
  <div class="order-2 p-2 bd-highlight">Второй flex элемент</div>
  <div class="order-1 p-2 bd-highlight">Третий flex элемент</div>
</div>
{{< /example >}}

Адаптивные варианты также существуют для `order`.

{{< markdown >}}
{{< flex.inline >}}
{{- range $bp := $.Site.Data.breakpoints -}}
{{- range (seq 0 12) }}
- `.order{{ $bp.abbr }}-{{ . }}`
{{- end -}}
{{- end -}}
{{< /flex.inline >}}
{{< /markdown >}}


## Align content

Используйте утилиты `align-content` в контейнерах flexbox для выравнивания гибких элементов *вместе* по поперечной оси. Выберите `start` (по умолчанию в браузере), `end`, `center`, `between`, `around` или `stretch`. Чтобы продемонстрировать эти утилиты, мы ввели в действие `flex-wrap: wrap` и увеличили количество гибких элементов.

**Внимание!** Это свойство не влияет на отдельные строки гибких элементов.

<div class="bd-example">
  <div class="d-flex align-content-start flex-wrap bd-highlight mb-3" style="height: 200px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
</div>

```html
<div class="d-flex align-content-start flex-wrap">
  ...
</div>
```

<div class="bd-example">
  <div class="d-flex align-content-end flex-wrap bd-highlight mb-3" style="height: 200px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
</div>

```html
<div class="d-flex align-content-end flex-wrap">...</div>
```

<div class="bd-example">
  <div class="d-flex align-content-center flex-wrap bd-highlight mb-3" style="height: 200px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
</div>

```html
<div class="d-flex align-content-center flex-wrap">...</div>
```

<div class="bd-example">
  <div class="d-flex align-content-between flex-wrap bd-highlight mb-3" style="height: 200px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
</div>

```html
<div class="d-flex align-content-between flex-wrap">...</div>
```

<div class="bd-example">
  <div class="d-flex align-content-around flex-wrap bd-highlight mb-3" style="height: 200px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
</div>

```html
<div class="d-flex align-content-around flex-wrap">...</div>
```

<div class="bd-example">
  <div class="d-flex align-content-stretch flex-wrap bd-highlight mb-3" style="height: 200px">
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
    <div class="p-2 bd-highlight">Flex элемент</div>
  </div>
</div>

```html
<div class="d-flex align-content-stretch flex-wrap">...</div>
```

Адаптивные варианты также существуют для `align-content`.

{{< markdown >}}
{{< flex.inline >}}
{{- range $.Site.Data.breakpoints }}
- `.align-content{{ .abbr }}-start`
- `.align-content{{ .abbr }}-end`
- `.align-content{{ .abbr }}-center`
- `.align-content{{ .abbr }}-around`
- `.align-content{{ .abbr }}-stretch`
{{- end -}}
{{< /flex.inline >}}
{{< /markdown >}}
