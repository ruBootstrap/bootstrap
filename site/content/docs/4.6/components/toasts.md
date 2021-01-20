---
layout: docs
title: Всплывающие сообщения
description: Push-уведомления для посетителей с всплывающим сообщением, легким и легко настраиваемым предупреждающим сообщением.
group: components
toc: true
---

Всплывающие сообщения - это легкие уведомления, имитирующие push-уведомления, которые были популяризированы в мобильных и настольных операционных системах. Они построены с помощью Flexbox, поэтому их легко выровнять и расположить.

## Обзор

Что нужно знать при использовании плагина всплывающих сообщений:

- Если Вы создаете наш JavaScript из исходного кода, для него [требуется `util.js`]({{< docsref "/getting-started/javascript#util" >}}).
- Всплывающие сообщения выбраны из соображений производительности, поэтому **Вы должны инициализировать их самостоятельно**.
- **Обратите внимание, что Вы несете ответственность за размещение всплывающих сообщений.**
- Всплывающие сообщения будут автоматически скрываться, если Вы не укажете `autohide: false`.

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

## Примеры

### Простой

Чтобы поощрять расширяемые и предсказуемые всплывающие сообщения, мы рекомендуем заголовок и тело. Заголовки всплывающих сообщений используют `display: flex`, что позволяет легко выравнивать контент благодаря нашим утилитам полей и флексбок.

Всплывающие сообщения настолько гибкие, насколько Вам нужно, и требуют очень небольшой разметки. Как минимум, мы требуем, чтобы Ваш «всплывающий» контент содержал один элемент, и настоятельно рекомендуем кнопку «закрыть».

{{< example class="bg-light" >}}
<div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-header">
    {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text=" " title=" " >}}
    <strong class="mr-auto">Bootstrap</strong>
    <small>11 минут назад</small>
    <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Закрыть">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  <div class="toast-body">
    Привет, мир! Это всплывающее сообщение.
  </div>
</div>
{{< /example >}}

### Live

Нажмите кнопку ниже, чтобы отобразить всплывающее сообщение (расположение с нашими утилитами в правом нижнем углу), которое по умолчанию было скрыто с помощью `.hide`.

<div class="position-fixed bottom-0 right-0 p-3" style="z-index: 5; right: 0; bottom: 0;">
  <div id="liveToast" class="toast hide" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
    <div class="toast-header">
      {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text="false" title="false" >}}
      <strong class="mr-auto">Bootstrap</strong>
      <small>11 мин назад</small>
      <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="toast-body">
      Привет, мир! Это тост-сообщение.
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" id="liveToastBtn">Показать лайв тост</button>
</div>

```html
<button type="button" class="btn btn-primary" id="liveToastBtn">Показать лайв тост</button>

<div class="position-fixed bottom-0 right-0 p-3" style="z-index: 5; right: 0; bottom: 0;">
  <div id="liveToast" class="toast hide" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
    <div class="toast-header">
      <img src="..." class="rounded mr-2" alt="...">
      <strong class="mr-auto">Bootstrap</strong>
      <small>11 мин назад</small>
      <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="toast-body">
      Привет, мир! Это тост-сообщение.
    </div>
  </div>
</div>
```

### Translucent

Всплывающие сообщения тоже немного полупрозрачные, поэтому они растушевываются поверх всего, на чем могут появиться. Для браузеров, поддерживающих свойство CSS `backdrop-filter`, мы также попытаемся размыть элементы под всплывающим окном.

{{< example class="bg-dark" >}}
<div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-header">
    {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text=" " title=" " >}}
    <strong class="mr-auto">Bootstrap</strong>
    <small class="text-muted">11 минут назад</small>
    <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Закрыть">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  <div class="toast-body">
    Привет, мир! Это всплывающее сообщение.
  </div>
</div>
{{< /example >}}

### Укладка

Если у Вас несколько всплывающих сообщений, мы по умолчанию располагаем их вертикально для удобного чтения.

{{< example class="bg-light" >}}
<div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-header">
    {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text=" " title=" " >}}
    <strong class="mr-auto">Bootstrap</strong>
    <small class="text-muted">прямо сейчас</small>
    <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Закрыть">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  <div class="toast-body">
    Увидеть? Именно так.
  </div>
</div>

<div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-header">
    {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text=" " title=" " >}}
    <strong class="mr-auto">Bootstrap</strong>
    <small class="text-muted">2 секунды назад</small>
    <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Закрыть">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  <div class="toast-body">
    Внимание, всплывающие сообщения складываются автоматически
  </div>
</div>
{{< /example >}}

## Размещение

Размещайте всплывающие сообщения с настраиваемым CSS по мере необходимости. Верхний правый угол часто используется для уведомлений, как и верхний средний. Если Вы собираетесь показывать только одно всплывающее сообщение за раз, поместите стили позиционирования прямо в `.toast`.

{{< example class="bg-dark" >}}
<div aria-live="polite" aria-atomic="true" style="position: relative; min-height: 200px;">
  <div class="toast" style="position: absolute; top: 0; right: 0;">
    <div class="toast-header">
      {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text=" " title=" " >}}
      <strong class="mr-auto">Bootstrap</strong>
      <small>11 минут назад</small>
      <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Закрыть">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="toast-body">
      Привет, мир! Это всплывающее сообщение.
    </div>
  </div>
</div>
{{< /example >}}

Для систем, которые генерируют больше уведомлений, рассмотрите возможность использования элемента упаковки, чтобы их можно было легко складывать.

{{< example class="bg-dark" >}}
<div aria-live="polite" aria-atomic="true" style="position: relative; min-height: 200px;">
  <!-- Расположите это -->
  <div style="position: absolute; top: 0; right: 0;">

    <!-- Then put toasts within -->
    <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
      <div class="toast-header">
        {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text=" " title=" " >}}
        <strong class="mr-auto">Bootstrap</strong>
        <small class="text-muted">прямо сейчас</small>
        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Закрыть">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="toast-body">
        Увидеть? Именно так.
      </div>
    </div>

    <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
      <div class="toast-header">
        {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text=" " title=" " >}}
        <strong class="mr-auto">Bootstrap</strong>
        <small class="text-muted">2 секунды назад</small>
        <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Закрыть">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="toast-body">
        Внимание, всплывающие сообщения складываются автоматически
      </div>
    </div>
  </div>
</div>
{{< /example >}}

Вы также можете поработать с утилитами flexbox для выравнивания всплывающих сообщений по горизонтали и/или вертикали.

{{< example class="bg-dark" >}}
<!-- Контейнер Flexbox для выравнивания всплывающих сообщений -->
<div aria-live="polite" aria-atomic="true" class="d-flex justify-content-center align-items-center" style="height: 200px;">

  <!-- Затем положите всплывающие сообщения внутрь -->
  <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text=" " title=" " >}}
      <strong class="mr-auto">Bootstrap</strong>
      <small>11 минут назад</small>
      <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Закрыть">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="toast-body">
      Привет, мир! Это всплывающее сообщение.
    </div>
  </div>
</div>
{{< /example >}}

## Доступность

Всплывающие сообщения предназначены для того, чтобы немного отвлекать посетителей или пользователей, поэтому, чтобы помочь тем, у кого есть программы чтения с экрана и аналогичные вспомогательные технологии, Вы должны заключить свои всплывающие сообщения в [области `aria-live`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/ARIA_Live_Regions). Изменения в живых областях (например, внедрение/обновление компонента всплывающего сообщения) автоматически объявляются программами чтения с экрана без необходимости перемещать фокус пользователя или иным образом прерывать пользователя. Кроме того, включите `aria-atomic="true"`, чтобы гарантировать, что все всплывающее сообщение всегда объявляется как единый (атомарный) блок, а не объявляет, что было изменено (что может привести к проблемам, если Вы обновите только часть содержимого всплывающего сообщения или при отображении того же всплывающего сообщения позже). Если необходимая информация важна для процесса, например для списка ошибок в форме используйте [компонент уведомлений]({{< docsref "/components/alerts" >}}) вместо всплывающего сообщения.

Обратите внимание, что живая область должна присутствовать в разметке *до* создания или обновления всплывающего сообщения. Если Вы динамически генерируете и то, и другое одновременно и вставляете их на страницу, они обычно не будут объявляться вспомогательными технологиями.

Вам также необходимо адаптировать уровни `role` и `aria-live` в зависимости от контента. Если это важное сообщение, например, ошибка, используйте `role="alert" aria-live="assertive"`, в противном случае используйте атрибуты `role="status" aria-live="polite"`.

По мере изменения отображаемого содержимого не забудьте обновить [таймаут `delay`](#параметры), чтобы у людей было достаточно времени, чтобы прочитать всплывающее сообщение.

```html
<div class="toast" role="alert" aria-live="polite" aria-atomic="true" data-delay="10000">
  <div role="alert" aria-live="assertive" aria-atomic="true">...</div>
</div>
```

При использовании `autohide: false` Вы должны добавить кнопку закрытия, чтобы пользователи могли закрыть всплывающее сообщение.

{{< example class="bg-light" >}}
<div role="alert" aria-live="assertive" aria-atomic="true" class="toast" data-autohide="false">
  <div class="toast-header">
    {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text=" " title=" " >}}
    <strong class="mr-auto">Bootstrap</strong>
    <small>11 минут назад</small>
    <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Закрыть">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  <div class="toast-body">
    Привет, мир! Это всплывающее сообщение.
  </div>
</div>
{{< /example >}}

## Поведение JavaScript

### Применение

Инициализация всплывающего сообщения с помощью JavaScript:

```js
$('.toast').toast(option)
```

### Параметры

Параметры могут передаваться через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-`, как в `data-animation=""`.

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="width: 100px;">Название</th>
      <th style="width: 100px;">Тип</th>
      <th style="width: 50px;">По умолчанию</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>animation</td>
      <td>boolean</td>
      <td>true</td>
      <td>Применить переход CSS fade к всплывающему сообщению</td>
    </tr>
    <tr>
      <td>autohide</td>
      <td>boolean</td>
      <td>true</td>
      <td>Автоматически скрывать всплывающее сообщение</td>
    </tr>
    <tr>
      <td>delay</td>
      <td>number</td>
      <td>
        <code>500</code>
      </td>
      <td>Задержка скрытия всплывающего сообщения (мс)</td>
    </tr>
  </tbody>
</table>

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

#### `$().toast(options)`

Присоединяет обработчик всплывающих подсказок к коллекции элементов.

#### `.toast('show')`

Показывает всплывающее сообщение элемента. **Возврат к вызывающей стороне до того, как всплывающее сообщение было фактически показано** (то есть до того, как произойдет событие `shown.bs.toast`).
Вы должны вручную вызвать этот метод, вместо этого Ваше всплывающее сообщение не будет отображаться.

```js
$('#element').toast('show')
```

#### `.toast('hide')`

Скрывает всплывающее сообщение элемента. **Возврат к вызывающей стороне до того, как всплывающее сообщение было фактически скрыто** (то есть до того, как произойдет событие `hidden.bs.toast`). Вы должны вызвать этот метод вручную, если Вы сделали `autohide` равным `false`.

```js
$('#element').toast('hide')
```

#### `.toast('dispose')`

Скрывает всплывающее сообщение элемента. Ваше всплывающее сообщение останется в DOM, но больше не будет отображаться.

```js
$('#element').toast('dispose')
```

### События

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="width: 150px;">Тип события</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>show.bs.toast</td>
      <td>Это событие запускается немедленно при вызове метода экземпляра <code>show</code>.</td>
    </tr>
    <tr>
      <td>shown.bs.toast</td>
      <td>Это событие запускается, когда всплывающее сообщение становится видимым для пользователя.</td>
    </tr>
    <tr>
      <td>hide.bs.toast</td>
      <td>Это событие запускается сразу после вызова метода экземпляра <code>hide</code>.</td>
    </tr>
    <tr>
      <td>hidden.bs.toast</td>
      <td>Это событие запускается, когда всплывающее сообщение перестает быть скрытым от пользователя.</td>
    </tr>
  </tbody>
</table>

```js
$('#myToast').on('hidden.bs.toast', function () {
  // сделайте что-нибудь...
})
```
