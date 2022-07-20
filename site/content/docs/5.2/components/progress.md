---
layout: docs
title: Прогресс
description: Документация и примеры использования настраиваемых индикаторов выполнения Bootstrap с поддержкой составных полос, анимированных фонов и текстовых меток.
group: components
toc: true
---

## Как это устроено

Компоненты Progress состоят из двух HTML-элементов, CSS для установки ширины и нескольких атрибутов. Мы не используем [элемент HTML5 `<progress>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/progress), гарантируя, что Вы можете складывать индикаторы выполнения, анимировать их, и поместите на них текстовые метки.

- Мы используем `.progress` как оболочку, чтобы указать максимальное значение индикатора выполнения.
- Мы используем внутренний `.progress-bar`, чтобы указать прогресс на данный момент.
- Для `.progress-bar` требуется встроенный стиль, служебный класс или пользовательский CSS для установки их ширины.
- `.progress-bar` также требует некоторых атрибутов` role` и `aria`, чтобы сделать его доступным, включая доступное имя (используя `aria-label`, `aria-labelledby` или подобное).

Сложите все это вместе, и вы получите следующие примеры.

{{< example >}}
<div class="progress">
  <div class="progress-bar" role="progressbar" aria-label="Базовый пример" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 25%" aria-label="Базовый пример" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 50%" aria-label="Базовый пример" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 75%" aria-label="Базовый пример" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 100%" aria-label="Базовый пример" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
</div>
{{< /example >}}

Bootstrap предоставляет несколько [утилит для установки ширины]({{< docsref "/utilities/sizing" >}}). В зависимости от Ваших потребностей они могут помочь в быстрой настройке хода выполнения.

{{< example >}}
<div class="progress">
  <div class="progress-bar w-75" role="progressbar" aria-label="Базовый пример" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
</div>
{{< /example >}}

## Метки

Добавляйте метки к индикаторам выполнения, помещая текст в `.progress-bar`.

{{< example >}}
<div class="progress">
  <div class="progress-bar" role="progressbar" aria-label="Пример с меткой" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
</div>
{{< /example >}}

## Высота

Мы устанавливаем значение `height` только для `.progress`, поэтому, если Вы измените это значение, внутренний `.progress-bar` автоматически изменит размер соответственно.

{{< example >}}
<div class="progress" style="height: 1px;">
  <div class="progress-bar" role="progressbar" aria-label="Пример высоты 1пиксель" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress" style="height: 20px;">
  <div class="progress-bar" role="progressbar" aria-label="Пример высоты 20пикселей" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>
{{< /example >}}

## Фоны

Используйте фоновые служебные классы, чтобы изменить внешний вид отдельных индикаторов выполнения.

{{< example >}}
<div class="progress">
  <div class="progress-bar bg-success" role="progressbar" aria-label="Success example" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar bg-info" role="progressbar" aria-label="Info example" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar bg-warning" role="progressbar" aria-label="Warning example" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar bg-danger" role="progressbar" aria-label="Danger example" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
</div>
{{< /example >}}

{{< callout info >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Мультибар

При необходимости включите несколько индикаторов выполнения в компонент прогресса.

{{< example >}}
<div class="progress">
  <div class="progress-bar" role="progressbar" aria-label="Segment one" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
  <div class="progress-bar bg-success" role="progressbar" aria-label="Segment two" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
  <div class="progress-bar bg-info" role="progressbar" aria-label="Segment three" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
</div>
{{< /example >}}

## Полосатый

Добавьте `.progress-bar-striped` к любому `.progress-bar`, чтобы применить полосу через градиент CSS к цвету фона индикатора выполнения.

{{< example >}}
<div class="progress">
  <div class="progress-bar progress-bar-striped" role="progressbar" aria-label="Default striped example" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-success" role="progressbar" aria-label="Success striped example" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-info" role="progressbar" aria-label="Info striped example" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" aria-label="Warning striped example" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" aria-label="Danger striped example" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
</div>
{{< /example >}}

## Анимированные полосы

Полосатый градиент также можно анимировать. Добавьте `.progress-bar-animated` в `.progress-bar`, чтобы анимировать полосы справа налево с помощью анимации CSS3.

{{< example >}}
<div class="progress">
  <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-label="Animated striped example" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"></div>
</div>
{{< /example >}}

## CSS

### Переменные

{{< added-in "5.2.0" >}}

Как часть развивающегося подхода Bootstrap к переменным CSS, индикаторы выполнения теперь используют локальные переменные CSS в `.progress` для расширенной настройки в реальном времени. Значения переменных CSS задаются через Sass, поэтому настройка Sass по-прежнему поддерживается.

{{< scss-docs name="progress-css-vars" file="scss/_progress.scss" >}}

### Переменные Sass

{{< scss-docs name="progress-variables" file="scss/_variables.scss" >}}

### Ключевые кадры

Используется для создания CSS-анимации для `.progress-bar-animated`. Включен в `scss/_progress-bar.scss`.

{{< scss-docs name="progress-keyframes" file="scss/_progress.scss" >}}
