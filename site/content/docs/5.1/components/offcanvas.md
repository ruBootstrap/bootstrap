---
layout: docs
title: Вне холста
description: Встраивайте в свой проект скрытые боковые панели для навигации, корзины покупок и многого другого с помощью нескольких классов и нашего плагина JavaScript.
group: components
toc: true
---

## Как это устроено

Offcanvas - это компонент боковой панели, который можно переключить с помощью JavaScript, чтобы он отображался с левого, правого или нижнего края области просмотра. Кнопки или якоря используются в качестве триггеров, которые прикрепляются к определенным элементам, которые вы переключаете, а атрибуты data используются для вызова нашего JavaScript.

- Offcanvas использует тот же код JavaScript, что и модальные окна. Концептуально они очень похожи, но представляют собой отдельные плагины.
- Точно так же некоторые переменные [источник Sass](#sass) для стилей и размеров offcanvas наследуются от переменных модального окна.
- При отображении offcanvas включает фон по умолчанию, на который можно щелкнуть, чтобы скрыть offcanvas.
- Как и в модальных окнах, одновременно может отображаться только один неактивный холст.

**Внимание!** Учитывая, как CSS обрабатывает анимацию, Вы не можете использовать `margin` или `translate` в элементе `.offcanvas`. Вместо этого используйте класс как независимый элемент оболочки.

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

## Примеры

### Компоненты Offcanvas

Ниже приведен пример offcanvas, который отображается по умолчанию (через `.show` на `.offcanvas`). Offcanvas включает поддержку заголовка с кнопкой закрытия и дополнительный класс тела для некоторого начального заполнения. Мы рекомендуем по возможности включать заголовки offcanvas с действиями по отклонению или предоставлять явное действие по отклонению.

{{< example class="bd-example-offcanvas p-0 bg-light overflow-hidden" >}}
<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvas" aria-labelledby="offcanvasLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasLabel">Offcanvas</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body">
    Здесь размещается контент для offcanvas. Вы можете разместить здесь практически любой компонент Bootstrap или пользовательские элементы.
  </div>
</div>
{{< /example >}}

### Живая демонстрация

Используйте кнопки ниже, чтобы отображать и скрывать элемент offcanvas с помощью JavaScript, который переключает класс `.show` на элемент с классом `.offcanvas`.

- `.offcanvas` скрывает содержимое (по умолчанию)
- `.offcanvas.show` показывает содержимое

Вы можете использовать ссылку с атрибутом `href` или кнопку с атрибутом `data-bs-target`. В обоих случаях требуется `data-bs-toggle="offcanvas"`.

{{< example >}}
<a class="btn btn-primary" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
  Ссылка с помощью атрибута href
</a>
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
  Кнопка с атрибутом data-bs-target
</button>

<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasExampleLabel">Вне холста</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body">
    <div class="">
      Какой-то текст в качестве заполнителя. В реальной жизни у вас могут быть элементы, которые Вы выбрали. Нравится, текст, изображения, списки и т. д.
    </div>
    <div class="dropdown mt-3">
      <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown">
        Кнопка раскрывающегося списка
      </button>
      <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <li><a class="dropdown-item" href="#">Действие</a></li>
        <li><a class="dropdown-item" href="#">Другое действие</a></li>
        <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      </ul>
    </div>
  </div>
</div>
{{< /example >}}

## Размещение

Для компонентов вне холста нет размещения по умолчанию, поэтому Вы должны добавить один из классов модификаторов ниже;

- `.offcanvas-start` помещает offcanvas слева от области просмотра (показано выше)
- `.offcanvas-end` помещает offcanvas в правую часть области просмотра
- `.offcanvas-top` помещает offcanvas в верхнюю часть области просмотра
- `.offcanvas-bottom` помещает offcanvas в нижнюю часть области просмотра

Попробуйте верхний, правый и нижний примеры ниже.

{{< example >}}
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">Переключить верхнюю часть offcanvas</button>

<div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
  <div class="offcanvas-header">
    <h5 id="offcanvasTopLabel">Верх Offcanvas</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    ...
  </div>
</div>
{{< /example >}}

{{< example >}}
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">Переключатель справа offcanvas</button>

<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
  <div class="offcanvas-header">
    <h5 id="offcanvasRightLabel">Offcanvas справа</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body">
    ...
  </div>
</div>
{{< /example >}}

{{< example >}}
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasBottom" aria-controls="offcanvasBottom">Переключатель снизу offcanvas</button>

<div class="offcanvas offcanvas-bottom" tabindex="-1" id="offcanvasBottom" aria-labelledby="offcanvasBottomLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasBottomLabel">Offcanvas снизу</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body small">
    ...
  </div>
</div>
{{< /example >}}

## Фон

Прокрутка элемента `<body>` отключена, когда видны вне холста и его фон. Используйте атрибут `data-bs-scroll` для переключения прокрутки `<body>` и `data-bs-backdrop` для переключения фона.

{{< example >}}
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling">Включить прокрутку body</button>
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBackdrop" aria-controls="offcanvasWithBackdrop">Включить фон (по умолчанию)</button>
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions">Включите прокрутку и фон</button>

<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling" aria-labelledby="offcanvasScrollingLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasScrollingLabel">Цветной с прокруткой</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body">
    <p>Попробуйте прокрутить оставшуюся часть страницы, чтобы увидеть этот параметр в действии.</p>
  </div>
</div>
<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasWithBackdrop" aria-labelledby="offcanvasWithBackdropLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasWithBackdropLabel">Offcanvas с фоном</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body">
    <p>.....</p>
  </div>
</div>
<div class="offcanvas offcanvas-start" data-bs-scroll="true" tabindex="-1" id="offcanvasWithBothOptions" aria-labelledby="offcanvasWithBothOptionsLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">На фоне с прокруткой</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body">
    <p>Попробуйте прокрутить оставшуюся часть страницы, чтобы увидеть этот параметр в действии.</p>
  </div>
</div>
{{< /example >}}

## Доступность

Так как панель offcanvas концептуально является модальным диалогом, не забудьте добавить `aria-labelledby="..."`—ссылку на заголовок offcanvas - в `.offcanvas`. Обратите внимание, что Вам не нужно добавлять `role="dialog"`, поскольку мы уже добавляем его через JavaScript.

## Sass

### Переменные

{{< scss-docs name="offcanvas-variables" file="scss/_variables.scss" >}}

## Использование

Плагин offcanvas использует несколько классов и атрибутов для выполнения тяжелой работы:

- `.offcanvas` скрывает содержимое
- `.offcanvas.show` показывает содержимое
- `.offcanvas-start` скрывает offcanvas слева
- `.offcanvas-end` скрывает offcanvas справа
- `.offcanvas-bottom` скрывает offcanvas внизу

Добавьте кнопку отклонения с атрибутом `data-bs-dismiss="offcanvas"`, который запускает функциональность JavaScript. Обязательно используйте с ним элемент `<button>` для правильного поведения на всех устройствах.

### Через атрибуты данных

#### Переключение

Добавьте к элементу `data-bs-toggle="offcanvas"` и `data-bs-target` или `href`, чтобы автоматически назначить управление одним элементом offcanvas. Атрибут `data-bs-target` принимает CSS-селектор для применения offcanvas. Не забудьте добавить класс `offcanvas` к элементу offcanvas. Если вы хотите, чтобы он был открыт по умолчанию, добавьте дополнительный класс `show`.

#### Отклонение

{{% js-dismiss "offcanvas" %}}

{{< callout warning >}}
Хотя поддерживаются оба способа отклонения модального окна, имейте в виду, что удаление модального окна извне не соответствует [шаблону проектирования модального диалога WAI-ARIA](https://www.w3.org/TR/wai-aria-practices-1.1/#dialog_modal). Делайте это на свой страх и риск.
{{< /callout >}}

### Через JavaScript

Включить вручную с помощью:

```js
var offcanvasElementList = Array.prototype.slice.call(document.querySelectorAll('.offcanvas'))
var offcanvasList = offcanvasElementList.map(function (offcanvasEl) {
  return new bootstrap.Offcanvas(offcanvasEl)
})
```

### Опции

Параметры можно передавать через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-bs-`, как в `data-bs-backdrop=""`.

{{< bs-table "table" >}}
| Название | Тип | По умолчанию | Описание |
| --- | --- | --- | --- |
| `backdrop` | boolean | `true` | Нанесите фон на тело, пока не открыт холст |
| `keyboard` | boolean | `true` | Закрывает offcanvas при нажатии клавиши выхода |
| `scroll` | boolean | `false` | Разрешить прокрутку тела при открытом вне холста |
{{< /bs-table >}}

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

Активирует Ваш контент как элемент offcanvas. Принимает необязательные параметры `object`.

Вы можете создать экземпляр offcanvas с помощью конструктора, например:

```js
var myOffcanvas = document.getElementById('myOffcanvas')
var bsOffcanvas = new bootstrap.Offcanvas(myOffcanvas)
```

{{< bs-table "table" >}}
| Метод | Описание |
| --- | --- |
| `toggle` | Переключает элемент offcanvas на показанный или скрытый. **Возврат к вызывающей стороне до того, как элемент offcanvas был фактически показан или скрыт** (то есть до того, как произойдет событие `shown.bs.offcanvas` или `hidden.bs.offcanvas`). |
| `show` | Показывает элемент offcanvas. **Возврат к вызывающей стороне до того, как элемент offcanvas был фактически показан** (то есть до того, как произойдет событие `shown.bs.offcanvas`). |
| `hide` | Скрывает элемент offcanvas. **Возврат к вызывающей стороне до того, как элемент offcanvas был фактически скрыт** (то есть до того, как произойдет событие `hidden.bs.offcanvas`). |
| `getInstance` | *Статический* метод, который позволяет вам получить экземпляр offcanvas, связанный с элементом DOM. |
| `getOrCreateInstance` | *Статический* метод, который позволяет вам получить экземпляр offcanvas, связанный с элементом DOM, или создать новый, если он не был инициализирован |
{{< /bs-table >}}

### События

Класс offcanvas в Bootstrap предоставляет несколько событий для подключения к функциональности offcanvas.

{{< bs-table "table" >}}
| Тип события | Описание |
| --- | --- |
| `show.bs.offcanvas` | Это событие срабатывает немедленно, когда вызывается метод экземпляра `show`. |
| `shown.bs.offcanvas` | Это событие запускается, когда элемент offcanvas стал видимым для пользователя (будет ждать завершения переходов CSS). |
| `hide.bs.offcanvas` | Это событие запускается сразу после вызова метода `hide`. |
| `hidden.bs.offcanvas` | Это событие запускается, когда элемент offcanvas был скрыт от пользователя (будет ждать завершения переходов CSS). |
{{< /bs-table >}}

```js
var myOffcanvas = document.getElementById('myOffcanvas')
myOffcanvas.addEventListener('hidden.bs.offcanvas', function () {
  // сделай что-нибудь...
})
```
