---
layout: docs
title: Соотношения
description: Используйте сгенерированные псевдоэлементы, чтобы заставить элемент поддерживать выбранное Вами соотношение сторон. Идеально подходит для быстрой обработки встраиваемых видео или слайд-шоу в зависимости от ширины родительского элемента.
group: helpers
toc: true
---

## Обзор

Используйте помощник по соотношению сторон для управления соотношением сторон внешнего контента, такого как `<iframe>`, `<embed>`, `<video>` и `<object>`. Эти помощники также могут использоваться в любом стандартном дочернем элементе HTML (например, a `<div>` или `<img>`). Стили применяются от родительского класса `.ratio` непосредственно к дочернему.

Соотношения сторон объявляются в карте Sass и включаются в каждый класс через переменную CSS, что также позволяет [настраиваемые соотношения сторон](#custom-ratios).

{{< callout info >}}
**Профессиональный совет!** Вам не нужно `frameborder="0"` на Ваших `<iframe>`, поскольку мы переопределим это для Вас в [Reboot]({{< docsref "/content/reboot" >}}).
{{< /callout >}}

## Пример

Оберните любое встраивание, например `<iframe>`, в родительский элемент с помощью `.ratio` и класса соотношения сторон. Размер непосредственного дочернего элемента автоматически изменяется благодаря нашему универсальному селектору `.ratio > *`.

{{< example >}}
<div class="ratio ratio-16x9">
  <iframe src="https://www.youtube.com/embed/zpOULjyy-n8?rel=0" title="YouTube video" allowfullscreen></iframe>
</div>
{{< /example >}}

## Соотношения сторон

Соотношения сторон можно настроить с помощью классов-модификаторов. По умолчанию предусмотрены следующие классы соотношений:

{{< example class="bd-example-ratios" >}}
<div class="ratio ratio-1x1">
  <div>1x1</div>
</div>
<div class="ratio ratio-4x3">
  <div>4x3</div>
</div>
<div class="ratio ratio-16x9">
  <div>16x9</div>
</div>
<div class="ratio ratio-21x9">
  <div>21x9</div>
</div>
{{< /example >}}

## Пользовательские соотношения

Каждый класс `.ratio-*` включает настраиваемое свойство CSS (или переменную CSS) в селекторе. Вы можете переопределить эту переменную CSS, чтобы создавать настраиваемые соотношения сторон на лету с помощью некоторых быстрых вычислений с Вашей стороны.

Например, чтобы создать соотношение сторон 2x1, установите `--bs-aspect-ratio: 50%` для параметра `.ratio`.

{{< example class="bd-example-ratios" >}}
<div class="ratio" style="--bs-aspect-ratio: 50%;">
  <div>2x1</div>
</div>
{{< /example >}}

Эта переменная CSS позволяет легко изменять соотношение сторон между контрольными точками. Следующее - 4x3 для начала, но меняется на настраиваемый 2x1 в средней контрольной точке.

```scss
.ratio-4x3 {
  @include media-breakpoint-up(md) {
    --bs-aspect-ratio: 50%; // 2x1
  }
}
```

{{< example class="bd-example-ratios bd-example-ratios-breakpoint" >}}
<div class="ratio ratio-4x3">
  <div>4x3, затем 2x1</div>
</div>
{{< /example >}}


## Sass карты

В `_variables.scss` Вы можете изменить соотношение сторон, которое Вы хотите использовать. Вот наша карта по умолчанию `$ratio-aspect-ratios` map. Измените карту по своему усмотрению и перекомпилируйте свой Sass, чтобы использовать их.

{{< scss-docs name="aspect-ratios" file="scss/_variables.scss" >}}
