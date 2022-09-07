---
layout: docs
title: Offcanvas
description: Встраивайте в свой проект скрытые боковые панели для навигации, корзины покупок и многого другого с помощью нескольких классов и нашего плагина JavaScript.
group: components
toc: true
---

## Как это устроено

Offcanvas — это компонент боковой панели, который можно переключать с помощью JavaScript, чтобы он отображался слева, справа, сверху или снизу области просмотра. Кнопки или якоря используются в качестве триггеров, которые прикрепляются к определенным элементам, которые вы переключаете, а атрибуты `data` используются для вызова нашего JavaScript.

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
<div class="offcanvas offcanvas-start show" tabindex="-1" id="offcanvas" aria-labelledby="offcanvasLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasLabel">Offcanvas</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
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
    <h5 class="offcanvas-title" id="offcanvasExampleLabel">Offcanvas</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body">
    <div class="">
      Какой-то текст в качестве заполнителя. В реальной жизни у вас могут быть элементы, которые Вы выбрали. Нравится, текст, изображения, списки и т. д.
    </div>
    <div class="dropdown mt-3">
      <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown">
        Кнопка раскрывающегося списка
      </button>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Действие</a></li>
        <li><a class="dropdown-item" href="#">Другое действие</a></li>
        <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      </ul>
    </div>
  </div>
</div>
{{< /example >}}

### Прокрутка Body

Прокрутка элемента `<body>` отключена, когда видимы offcanvas и его фон. Используйте атрибут `data-bs-scroll`, чтобы включить прокрутку `<body>`.

{{< example >}}
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling">Включить прокрутку тела</button>

<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling" aria-labelledby="offcanvasScrollingLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasScrollingLabel">Offcanvas с прокруткой тела</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body">
    <p>Попробуйте прокрутить оставшуюся часть страницы, чтобы увидеть эту опцию в действии.</p>
  </div>
</div>
{{< /example >}}

### Прокрутка тела и подложка

Вы также можете включить прокрутку `<body>` с видимым фоном.

{{< example >}}
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions">Включить прокрутку и фон</button>

<div class="offcanvas offcanvas-start" data-bs-scroll="true" tabindex="-1" id="offcanvasWithBothOptions" aria-labelledby="offcanvasWithBothOptionsLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Фон с прокруткой</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body">
    <p>Попробуйте прокрутить оставшуюся часть страницы, чтобы увидеть эту опцию в действии.</p>
  </div>
</div>
{{< /example >}}

### Статический фон

Когда фон установлен на статический, offcanvas не будет закрываться при щелчке за его пределами.

{{< example >}}
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop" aria-controls="staticBackdrop">
  Переключить статический offcanvas
</button>

<div class="offcanvas offcanvas-start" data-bs-backdrop="static" tabindex="-1" id="staticBackdrop" aria-labelledby="staticBackdropLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="staticBackdropLabel">Offcanvas</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body">
    <div>
      Я не закроюсь, если вы нажмете вне меня.
    </div>
  </div>
</div>
{{< /example >}}

## Темный offcanvas

{{< added-in "5.2.0" >}}

Измените внешний вид offcanvases с помощью утилит, чтобы они лучше соответствовали различным контекстам, таким как темные панели навигации. Здесь мы добавляем `.text-bg-dark` к `.offcanvas` и `.btn-close-white` к `.btn-close` для правильной стилизации с темным offcanvas. Если у вас есть раскрывающиеся списки, рассмотрите возможность добавления `.dropdown-menu-dark` в `.dropdown-menu`.

{{< example class="bd-example-offcanvas p-0 bg-light overflow-hidden" >}}
<div class="offcanvas offcanvas-start show text-bg-dark" tabindex="-1" id="offcanvasDark" aria-labelledby="offcanvasDarkLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasDarkLabel">Offcanvas</h5>
    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvasDark" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body">
    <p>Разместите контент offcanvas здесь.</p>
  </div>
</div>
{{< /example >}}

## Отзывчивость

{{< added-in "5.2.0" >}}

Отзывчивые классы offcanvas скрывают содержимое за пределами области просмотра от указанной контрольной точке и ниже. Выше этой контрольной точки содержимое внутри будет вести себя как обычно. Например, `.offcanvas-lg` hides content in an offcanvas below the `lg` breakpoint, but shows the content above the `lg` breakpoint.

{{< example >}}
<button class="btn btn-primary d-lg-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasResponsive" aria-controls="offcanvasResponsive">Переключатель offcanvas</button>

<div class="alert alert-info d-none d-lg-block">Измените размер окна браузера, чтобы отображался адаптивный переключатель offcanvas.</div>

<div class="offcanvas-lg offcanvas-end" tabindex="-1" id="offcanvasResponsive" aria-labelledby="offcanvasResponsiveLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasResponsiveLabel">Отзывчивый offcanvas</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasResponsive" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body">
    <p class="mb-0">Это содержимое в <code>.offcanvas-lg</code>.</p>
  </div>
</div>
{{< /example >}}

Отзывчивые классы offcanvas доступны для каждой контрольной точке.

- `.offcanvas`
- `.offcanvas-sm`
- `.offcanvas-md`
- `.offcanvas-lg`
- `.offcanvas-xl`
- `.offcanvas-xxl`

## Размещение

Для компонентов вне холста нет размещения по умолчанию, поэтому вы должны добавить один из классов модификаторов ниже.

- `.offcanvas-start` помещает offcanvas слева от области просмотра (показано выше)
- `.offcanvas-end` помещает offcanvas в правую часть области просмотра
- `.offcanvas-top` помещает offcanvas в верхнюю часть области просмотра
- `.offcanvas-bottom` помещает offcanvas в нижнюю часть области просмотра

Попробуйте верхний, правый и нижний примеры ниже.

{{< example >}}
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">Переключить верхнюю часть offcanvas</button>

<div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasTopLabel">Offcanvas вверху</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
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
    <h5 class="offcanvas-title" id="offcanvasRightLabel">Offcanvas справа</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
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
    <h5 class="offcanvas-title" id="offcanvasBottomLabel">Offcanvas внизу</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Закрыть"></button>
  </div>
  <div class="offcanvas-body small">
    ...
  </div>
</div>
{{< /example >}}

## Доступность

Так как панель offcanvas концептуально является модальным диалогом, не забудьте добавить `aria-labelledby="..."` — ссылку на заголовок offcanvas - в `.offcanvas`. Обратите внимание, что Вам не нужно добавлять `role="dialog"`, поскольку мы уже добавляем его через JavaScript.

## CSS

### Переменные

{{< added-in "5.2.0" >}}

Как часть развивающегося подхода Bootstrap к переменным CSS, offcanvas теперь использует локальные переменные CSS в `.offcanvas` для расширенной настройки в реальном времени. Значения переменных CSS задаются через Sass, поэтому настройка Sass по-прежнему поддерживается.

{{< scss-docs name="offcanvas-css-vars" file="scss/_offcanvas.scss" >}}

### Переменные Sass

{{< scss-docs name="offcanvas-variables" file="scss/_variables.scss" >}}

## Использование

Плагин offcanvas использует несколько классов и атрибутов для выполнения тяжелой работы:

- `.offcanvas` скрывает содержимое
- `.offcanvas.show` показывает содержимое
- `.offcanvas-start` скрывает offcanvas слева
- `.offcanvas-end` скрывает offcanvas справа
- `.offcanvas-top` скрывает offcanvas сверху
- `.offcanvas-bottom` скрывает offcanvas внизу

Добавьте кнопку отклонения с атрибутом `data-bs-dismiss="offcanvas"`, который запускает функциональность JavaScript. Обязательно используйте с ним элемент `<button>` для правильного поведения на всех устройствах.

### Через атрибуты данных

#### Переключение

Добавьте к элементу `data-bs-toggle="offcanvas"` и `data-bs-target` или `href`, чтобы автоматически назначить управление одним элементом offcanvas. Атрибут `data-bs-target` принимает CSS-селектор для применения offcanvas. Не забудьте добавить класс `offcanvas` к элементу offcanvas. Если вы хотите, чтобы он был открыт по умолчанию, добавьте дополнительный класс `show`.

#### Отклонение

{{% js-dismiss "offcanvas" %}}

{{< callout warning >}}
Хотя поддерживаются оба способа отклонения модального окна, имейте в виду, что удаление модального окна извне не соответствует [Шаблон диалогового окна (модального) Руководства по авторской работе ARIA] (https://www.w3.org/WAI/ARIA/apg/patterns/dialogmodal/). Делайте это на свой страх и риск.
{{< /callout >}}

### Через JavaScript

Включить вручную с помощью:

```js
const offcanvasElementList = document.querySelectorAll('.offcanvas')
const offcanvasList = [...offcanvasElementList].map(offcanvasEl => new bootstrap.Offcanvas(offcanvasEl))
```

### Опции

{{< markdown >}}
{{< partial "js-data-attributes.md" >}}
{{< /markdown >}}

{{< bs-table "table" >}}
| Название | Тип | По умолчанию | Описание |
| --- | --- | --- | --- |
| `backdrop` | boolean or the string `static` | `true` | Применить фон на тело, пока открыт offcanvas. В качестве альтернативы укажите `static` для подложки, которая не закрывает экран при нажатии. |
| `keyboard` | boolean | `true` | Закрывает offcanvas при нажатии клавиши выхода. |
| `scroll` | boolean | `false` | Разрешает прокрутку тела, когда открыт offcanvas. |
{{< /bs-table >}}

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

Активирует Ваш контент как элемент offcanvas. Принимает необязательные параметры `object`.

Вы можете создать экземпляр offcanvas с помощью конструктора, например:

```js
const bsOffcanvas = new bootstrap.Offcanvas('#myOffcanvas')
```

{{< bs-table "table" >}}
| Метод | Описание |
| --- | --- |
| `getInstance` | *Статический* метод, который позволяет вам получить экземпляр offcanvas, связанный с элементом DOM. |
| `getOrCreateInstance` | *Статический* метод, который позволяет вам получить экземпляр offcanvas, связанный с элементом DOM, или создать новый, если он не был инициализирован. |
| `hide` | Скрывает элемент offcanvas. **Возврат к вызывающей стороне до того, как элемент offcanvas был фактически скрыт** (то есть до того, как произойдет событие `hidden.bs.offcanvas`). |
| `show` | Показывает элемент offcanvas. **Возврат к вызывающей стороне до того, как элемент offcanvas был фактически показан** (то есть до того, как произойдет событие `shown.bs.offcanvas`). |
| `toggle` | Переключает элемент offcanvas на показанный или скрытый. **Возврат к вызывающей стороне до того, как элемент offcanvas был фактически показан или скрыт** (то есть до того, как произойдет событие `shown.bs.offcanvas` или `hidden.bs.offcanvas`). |
{{< /bs-table >}}

### События

Класс offcanvas в Bootstrap предоставляет несколько событий для подключения к функциональности offcanvas.

{{< bs-table "table" >}}
| Тип события | Описание |
| --- | --- |
| `hide.bs.offcanvas` | Это событие запускается сразу после вызова метода `hide`. |
| `hidden.bs.offcanvas` | Это событие запускается, когда элемент вне холста был скрыт от пользователя (будет ожидать завершения переходов CSS). |
| `hidePrevented.bs.offcanvas` | Это событие запускается, когда отображается offcanvas, его фон является `static` и выполняется щелчок за пределами offcanvas. Событие также запускается, когда нажата клавиша escape, а для параметра `keyboard` установлено значение `false`. |
| `show.bs.offcanvas` | Это событие срабатывает немедленно при вызове метода экземпляра `show`. |
| `shown.bs.offcanvas` | Это событие запускается, когда элемент offcanvas становится видимым для пользователя (будет ожидать завершения переходов CSS). |
{{< /bs-table >}}

```js
const myOffcanvas = document.getElementById('myOffcanvas')
myOffcanvas.addEventListener('hidden.bs.offcanvas', event => {
  // сделайте что-нибудь...
})
```
