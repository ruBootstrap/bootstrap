---
layout: docs
title: Заполнители
description: Используйте заполнители загрузки для ваших компонентов или страниц, чтобы указать, что что-то все еще загружается.
group: components
toc: true
added: "5.1"
---

## Введение

Заполнители можно использовать для улучшения восприятия вашего приложения. Они построены только с помощью HTML и CSS, а это значит, что для их создания не нужен JavaScript. Однако вам понадобится специальный JavaScript для переключения их видимости. Их внешний вид, цвет и размер можно легко настроить с помощью наших служебных классов.

## Пример

В приведенном ниже примере мы берем типичный компонент карты и воссоздаем его с заполнителями, применяемыми для создания «загрузочной карты». Размер и пропорции у них одинаковы.

<div class="bd-example bd-example-placeholder-cards d-flex justify-content-around">
<div class="card">
  {{< placeholder width="100%" height="180" class="card-img-top" text="false" background="#20c997" >}}
  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <p class="card-text">Небольшой пример текста, основанного на названии карточки и составляющего основную часть содержимого карточки.</p>
    <a href="#" class="btn btn-primary">Иди куда-нибудь</a>
  </div>
</div>

<div class="card" aria-hidden="true">
  {{< placeholder width="100%" height="180" class="card-img-top" text="false" >}}
  <div class="card-body">
    <div class="h5 card-title placeholder-glow">
      <span class="placeholder col-6"></span>
    </div>
    <p class="card-text placeholder-glow">
      <span class="placeholder col-7"></span>
      <span class="placeholder col-4"></span>
      <span class="placeholder col-4"></span>
      <span class="placeholder col-6"></span>
      <span class="placeholder col-8"></span>
    </p>
    <a class="btn btn-primary disabled placeholder col-6" aria-disabled="true"></a>
  </div>
</div>
</div>

```html
<div class="card">
  <img src="..." class="card-img-top" alt="...">

  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <p class="card-text">Небольшой пример текста, основанного на названии карточки и составляющего основную часть содержимого карточки.</p>
    <a href="#" class="btn btn-primary">Иди куда-нибудь</a>
  </div>
</div>

<div class="card" aria-hidden="true">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title placeholder-glow">
      <span class="placeholder col-6"></span>
    </h5>
    <p class="card-text placeholder-glow">
      <span class="placeholder col-7"></span>
      <span class="placeholder col-4"></span>
      <span class="placeholder col-4"></span>
      <span class="placeholder col-6"></span>
      <span class="placeholder col-8"></span>
    </p>
    <a class="btn btn-primary disabled placeholder col-6" aria-disabled="true"></a>
  </div>
</div>
```

## Как это устроено

Создайте заполнители с классом `.placeholder` и классом столбца сетки (например, `.col-6`), чтобы установить `width`. Они могут заменять текст внутри элемента или добавляться как класс-модификатор к существующему компоненту.

Мы применяем дополнительный стиль к `.btn` через `::before`, чтобы обеспечить соблюдение высоты `height`. Вы можете расширить этот шаблон для других ситуаций по мере необходимости или добавить в элемент `&nbsp;`, чтобы отразить высоту, когда фактический текст отображается на его месте.

{{< example >}}
<p aria-hidden="true">
  <span class="placeholder col-6"></span>
</p>

<a class="btn btn-primary disabled placeholder col-4" aria-disabled="true"></a>
{{< /example >}}

{{< callout info >}}
Использование `aria-hidden="true"` только указывает на то, что элемент должен быть скрыт для программ чтения с экрана. Поведение *загрузки* заполнителя зависит от того, как авторы на самом деле будут использовать стили заполнителя, как они планируют обновлять вещи и т. д. Некоторый код JavasSript может потребоваться для *замены* состояния заполнителя и информирования пользователей AT об обновлении.
{{< /callout >}}

### Ширина

Вы можете изменить `width` с помощью классов столбцов сетки, утилит ширины или встроенных стилей.

{{< example >}}
<span class="placeholder col-6"></span>
<span class="placeholder w-75"></span>
<span class="placeholder" style="width: 25%;"></span>
{{< /example >}}

### Цвет

По умолчанию заполнитель `placeholder` использует `currentColor`. Это можно изменить с помощью настраиваемого цвета или служебного класса.

{{< example >}}
<span class="placeholder col-12"></span>
{{< placeholders.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<span class="placeholder col-12 bg-{{ .name }}"></span>
{{- end -}}
{{< /placeholders.inline >}}
{{< /example >}}

### Размеры

Размер `.placeholder` основывается на типографском стиле родительского элемента. Настройте их с помощью модификаторов размера: `.placeholder-lg`, `.placeholder-sm` или `.placeholder-xs`.

{{< example >}}
<span class="placeholder col-12 placeholder-lg"></span>
<span class="placeholder col-12"></span>
<span class="placeholder col-12 placeholder-sm"></span>
<span class="placeholder col-12 placeholder-xs"></span>
{{< /example >}}

### Анимация

Анимируйте заполнители с `.placeholder-glow` или `.placeholder-wave`, чтобы лучше передать представление о том, что что-то *активно* загружается.

{{< example >}}
<p class="placeholder-glow">
  <span class="placeholder col-12"></span>
</p>

<p class="placeholder-wave">
  <span class="placeholder col-12"></span>
</p>
{{< /example >}}

## CSS

### Sass переменные

{{< scss-docs name="placeholders" file="scss/_variables.scss" >}}
