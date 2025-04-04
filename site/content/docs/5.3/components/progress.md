---
layout: docs
title: Прогресс
description: Документация и примеры использования настраиваемых индикаторов выполнения Bootstrap с поддержкой составных полос, анимированных фонов и текстовых меток.
group: components
toc: true
---

{{< callout info >}}
**Новая разметка в версии v5.3.0 —** Мы отказались от предыдущей структуры HTML для индикаторов выполнения и заменили ее более доступной. Предыдущая структура будет продолжать работать до v6. [Посмотрите, что изменилось, в нашем руководстве по миграции.]({{< docsref "/migration#improved-markup-for-progress-bars" >}})
{{< /callout >}}

## Как это работает

Компоненты Progress состоят из двух HTML-элементов, CSS для установки ширины и нескольких атрибутов. Мы не используем [элемент HTML5 `<progress>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/progress), гарантируя, что Вы можете складывать индикаторы выполнения, анимировать их, и поместите на них текстовые метки.

- Мы используем `.progress` в качестве оболочки, чтобы указать максимальное значение индикатора выполнения.
- Оболочке `.progress` также требуются атрибуты `role="progress"` и `aria`, чтобы сделать ее доступной, включая доступное имя (используя `aria-label`, `aria-labelledby` или подобное).
- Мы используем внутренний `.progress-bar` исключительно для визуальной панели и метки.
- `.progress-bar` требует встроенного стиля, служебного класса или пользовательского CSS для установки его ширины.
- Мы предоставляем специальный класс `.progress-stacked` для создания нескольких индикаторов выполнения.

Сложите все это вместе, и вы получите следующие примеры.

{{< example >}}
<div class="progress" role="progressbar" aria-label="Basic example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar" style="width: 0%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Basic example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar" style="width: 25%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Basic example" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar" style="width: 50%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Basic example" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar" style="width: 75%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Basic example" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar" style="width: 100%"></div>
</div>
{{< /example >}}

## Размер бара

### Ширина

Bootstrap предоставляет несколько [утилит для установки ширины]({{< docsref "/utilities/sizing" >}}). В зависимости от ваших потребностей, это может помочь быстро настроить ширину `.progress-bar`.

{{< example >}}
<div class="progress" role="progressbar" aria-label="Basic example" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar w-75"></div>
</div>
{{< /example >}}

### Высота

Вы только устанавливаете значение `height` в контейнере `.progress`, поэтому, если вы измените это значение, внутренний `.progress-bar` автоматически изменит размер соответственно.

{{< example >}}
<div class="progress" role="progressbar" aria-label="Example 1px high" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="height: 1px">
  <div class="progress-bar" style="width: 25%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Example 20px high" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="height: 20px">
  <div class="progress-bar" style="width: 25%"></div>
</div>
{{< /example >}}

## Метки

Добавляйте метки к индикаторам выполнения, помещая текст в `.progress-bar`.

{{< example >}}
<div class="progress" role="progressbar" aria-label="Example with label" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar" style="width: 25%">25%</div>
</div>
{{< /example >}}

### Длинные метки

Обратите внимание, что по умолчанию содержимое внутри `.progress-bar` контролируется с помощью `overflow: hidden`, поэтому оно не выходит за пределы полосы. Если полоса прогресса короче метки, содержимое будет ограничено и может стать нечитаемым. Чтобы изменить это поведение, можно использовать `.overflow-visible` из [overflow utilities]({{< docsref "/utilities/overflow" >}}).

{{< callout warning >}}
Метки, длиннее полосы прогресса, могут быть не полностью доступны при использовании этого метода, поскольку он полагается на цвет текста, имеющий правильный коэффициент контрастности с фоновыми цветами `.progress` и `.progress-bar`. Будьте осторожны при реализации этого примера.

Если текст может перекрывать полосу прогресса, мы часто рекомендуем отображать метку за пределами полосы прогресса для лучшей доступности.
{{< /callout >}}

## Фоны

Используйте фоновые служебные классы, чтобы изменить внешний вид отдельных индикаторов выполнения.

{{< example >}}
<div class="progress" role="progressbar" aria-label="Success example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar bg-success" style="width: 25%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Info example" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar bg-info" style="width: 50%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Пример предупреждения" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar bg-warning" style="width: 75%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Пример опасности" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar bg-danger" style="width: 100%"></div>
</div>
{{< /example >}}

{{< callout info >}}
{{< partial "callouts/warning-color-assistive-technologies.md" >}}
{{< /callout >}}

Если вы добавляете метки к индикаторам выполнения с пользовательским фоновым цветом, обязательно также установите соответствующий [цвет текста]({{< docsref "/utilities/colors#colors">}}), чтобы метки оставались читаемыми и имели достаточный контраст. Мы рекомендуем использовать вспомогательные классы [цвет и фон]({{< docsref "/helpers/color-background">}}).

{{< example >}}
<div class="progress" role="progressbar" aria-label="Success example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar text-bg-success" style="width: 25%">25%</div>
</div>
<div class="progress" role="progressbar" aria-label="Info example" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar text-bg-info" style="width: 50%">50%</div>
</div>
<div class="progress" role="progressbar" aria-label="Warning example" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar text-bg-warning" style="width: 75%">75%</div>
</div>
<div class="progress" role="progressbar" aria-label="Danger example" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar text-bg-danger" style="width: 100%">100%</div>
</div>
{{< /example >}}

## Мультибар

Вы можете включить несколько компонентов прогресса в контейнер с `.progress-stacked`, чтобы создать один сложенный индикатор выполнения. Обратите внимание, что в этом случае стиль для установки визуальной ширины индикатора выполнения *должен* применяться к элементам `.progress`, а не `.progress-bar`.

{{< example >}}
<div class="progress-stacked">
  <div class="progress" role="progressbar" aria-label="Segment one" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" style="width: 15%">
    <div class="progress-bar"></div>
  </div>
  <div class="progress" role="progressbar" aria-label="Segment two" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
    <div class="progress-bar bg-success"></div>
  </div>
  <div class="progress" role="progressbar" aria-label="Segment three" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
    <div class="progress-bar bg-info"></div>
  </div>
</div>
{{< /example >}}

## Полосатый

Добавьте `.progress-bar-striped` к любому `.progress-bar`, чтобы применить полосу через градиент CSS к цвету фона индикатора выполнения.

{{< example >}}
<div class="progress" role="progressbar" aria-label="Default striped example" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar progress-bar-striped" style="width: 10%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Success striped example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar progress-bar-striped bg-success" style="width: 25%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Info striped example" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar progress-bar-striped bg-info" style="width: 50%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Warning striped example" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar progress-bar-striped bg-warning" style="width: 75%"></div>
</div>
<div class="progress" role="progressbar" aria-label="Danger striped example" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar progress-bar-striped bg-danger" style="width: 100%"></div>
</div>
{{< /example >}}

## Анимированные полосы

Полосатый градиент также можно анимировать. Добавьте `.progress-bar-animated` в `.progress-bar`, чтобы анимировать полосы справа налево с помощью анимации CSS3.

{{< example >}}
<div class="progress" role="progressbar" aria-label="Animated striped example" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar progress-bar-striped progress-bar-animated" style="width: 75%"></div>
</div>
{{< /example >}}

## CSS

### Переменные

{{< added-in "5.2.0" >}}

Как часть развивающегося подхода Bootstrap к переменным CSS, индикаторы выполнения теперь используют локальные переменные CSS в `.progress` для расширенной настройки в реальном времени. Значения переменных CSS задаются через Sass, поэтому настройка Sass по-прежнему поддерживается.

{{< scss-docs name="progress-css-vars" file="scss/_progress.scss" >}}

### Sass переменные

{{< scss-docs name="progress-variables" file="scss/_variables.scss" >}}

### Ключевые кадры

Используется для создания CSS-анимации для `.progress-bar-animated`. Включен в `scss/_progress-bar.scss`.

{{< scss-docs name="progress-keyframes" file="scss/_progress.scss" >}}
