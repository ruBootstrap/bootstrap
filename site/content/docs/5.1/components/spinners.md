---
layout: docs
title: Состояние загрузки
description: Укажите состояние загрузки компонента или страницы с помощью волчков Bootstrap, полностью построенных с использованием HTML, CSS и без JavaScript.
group: components
toc: true
---

## Обзор

Bootstrap «спиннеры» можно использовать для отображения состояния загрузки в Ваших проектах. Они построены только с помощью HTML и CSS, а это значит, что для их создания не нужен JavaScript. Однако Вам понадобится специальный JavaScript, чтобы переключить их видимость. Их внешний вид, расположение и размер можно легко настроить с помощью наших замечательных служебных классов.

Для удобства здесь каждый загрузчик включает в себя `role="status"` и вложенный `<span class="visually-hidden">Загрузка...</span>`.

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

## Спиннер с границей

Используйте спиннеры с границей для легкого индикатора загрузки.

{{< example >}}
<div class="spinner-border" role="status">
  <span class="visually-hidden">Загрузка...</span>
</div>
{{< /example >}}

### Цвета

Спиннер с границей использует `currentColor` в качестве своего `border-color`, что означает, что Вы можете настроить цвет с помощью [утилит цвета текста][color]. Вы можете использовать любую из наших утилит цвета текста на стандартном спиннере.

{{< example >}}
{{< spinner.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="spinner-border text-{{ .name }}" role="status">
  <span class="visually-hidden">Загрузка...</span>
</div>
{{- end -}}
{{< /spinner.inline >}}
{{< /example >}}

{{< callout info >}}
**Почему бы не использовать утилиты `border-color`?** Каждая граница определяет `transparent` границу по крайней мере для одной стороны, поэтому утилиты `.border-{color}` переопределят это.
{{< /callout >}}

## Увеличивающийся спиннер

Если Вам не нравится спиннер с границами, переключитесь на увеличивающийся спиннер. Хотя технически он не вращается, он постоянно растет!

{{< example >}}
<div class="spinner-grow" role="status">
  <span class="visually-hidden">Загрузка...</span>
</div>
{{< /example >}}

Опять же, этот спиннер построен с помощью `currentColor`, так что Вы можете легко изменить его внешний вид с помощью [утилит цвета текста][color]. Здесь он выделен синим цветом вместе с поддерживаемыми вариантами.

{{< example >}}
{{< spinner.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="spinner-grow text-{{ .name }}" role="status">
  <span class="visually-hidden">Загрузка...</span>
</div>
{{- end -}}
{{< /spinner.inline >}}
{{< /example >}}

## Выравнивание

Спиннеры в Bootstrap построены с помощью `rem`, `currentColor` и `display: inline-flex`. Это означает, что их можно легко изменить размер, перекрасить и быстро выровнять.

### Поля

Используйте [утилиты полей][margin], например, `.m-5`, чтобы упростить интервалы.

{{< example >}}
<div class="spinner-border m-5" role="status">
  <span class="visually-hidden">Загрузка...</span>
</div>
{{< /example >}}

### Размещение

Используйте [flexbox утилиты][flex], [float утилиты][float] или утилиты [выравнивание текста][text] для размещения спиннеров именно там, где они вам нужны в любой ситуации.

#### Флексы

{{< example >}}
<div class="d-flex justify-content-center">
  <div class="spinner-border" role="status">
    <span class="visually-hidden">Загрузка...</span>
  </div>
</div>
{{< /example >}}

{{< example >}}
<div class="d-flex align-items-center">
  <strong>Загрузка...</strong>
  <div class="spinner-border ms-auto" role="status" aria-hidden="true"></div>
</div>
{{< /example >}}

#### Флоаты

{{< example >}}
<div class="clearfix">
  <div class="spinner-border float-end" role="status">
    <span class="visually-hidden">Загрузка...</span>
  </div>
</div>
{{< /example >}}

#### Выравнивание текста

{{< example >}}
<div class="text-center">
  <div class="spinner-border" role="status">
    <span class="visually-hidden">Загрузка...</span>
  </div>
</div>
{{< /example >}}

## Размер

Добавьте `.spinner-border-sm` и `.spinner-grow-sm`, чтобы получить счетчик меньшего размера, который можно быстро использовать в других компонентах.

{{< example >}}
<div class="spinner-border spinner-border-sm" role="status">
  <span class="visually-hidden">Загрузка...</span>
</div>
<div class="spinner-grow spinner-grow-sm" role="status">
  <span class="visually-hidden">Загрузка...</span>
</div>
{{< /example >}}

Или используйте собственный CSS или встроенные стили, чтобы изменить размеры по мере необходимости.

{{< example >}}
<div class="spinner-border" style="width: 3rem; height: 3rem;" role="status">
  <span class="visually-hidden">Загрузка...</span>
</div>
<div class="spinner-grow" style="width: 3rem; height: 3rem;" role="status">
  <span class="visually-hidden">Загрузка...</span>
</div>
{{< /example >}}

## Кнопки

Используйте счетчики внутри кнопок, чтобы указать, что действие в настоящее время обрабатывается или выполняется. Вы также можете поменять местами текст из элемента счетчика и использовать текст кнопки по мере необходимости.

{{< example >}}
<button class="btn btn-primary" type="button" disabled>
  <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
  <span class="visually-hidden">Загрузка...</span>
</button>
<button class="btn btn-primary" type="button" disabled>
  <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
  Загрузка...
</button>
{{< /example >}}

{{< example >}}
<button class="btn btn-primary" type="button" disabled>
  <span class="spinner-grow spinner-grow-sm" role="status" aria-hidden="true"></span>
  <span class="visually-hidden">Загрузка...</span>
</button>
<button class="btn btn-primary" type="button" disabled>
  <span class="spinner-grow spinner-grow-sm" role="status" aria-hidden="true"></span>
  Загрузка...
</button>
{{< /example >}}

## Sass

### Переменные

{{< scss-docs name="spinner-variables" file="scss/_variables.scss" >}}

### Ключевые кадры

Используется для создания анимации CSS для наших спиннеров. Включен в `scss/_spinners.scss`.

{{< scss-docs name="spinner-border-keyframes" file="scss/_spinners.scss" >}}

{{< scss-docs name="spinner-grow-keyframes" file="scss/_spinners.scss" >}}


[color]:   {{< docsref "/utilities/colors" >}}
[display]: {{< docsref "/utilities/display" >}}
[flex]:    {{< docsref "/utilities/flex" >}}
[float]:   {{< docsref "/utilities/float" >}}
[margin]:  {{< docsref "/utilities/spacing" >}}
[sizing]:  {{< docsref "/utilities/sizing" >}}
[text]:    {{< docsref "/utilities/text" >}}
