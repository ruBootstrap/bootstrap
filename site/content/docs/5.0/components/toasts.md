---
layout: docs
title: Всплывающие сообщения
description: Пуш-уведомления для посетителей с тостом, легким и легко настраиваемым предупреждающим сообщением.
group: components
toc: true
---

Тосты - это легкие уведомления, имитирующие пуш-уведомления, которые были популяризированы в мобильных и настольных операционных системах. Они построены с помощью Flexbox, поэтому их легко выровнять и расположить.

## Обзор

Что нужно знать при использовании плагина всплывающих сообщений:

- Всплывающие сообщения включены по соображениям производительности, поэтому **Вы должны инициализировать их самостоятельно**.
- **Обратите внимание, что Вы несете ответственность за размещение всплывающих сообщений.**
- Всплывающие сообщения  будут автоматически скрываться, если Вы не укажете `autohide: false`.

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

## Примеры

### Базовый

Чтобы поощрять расширяемые и предсказуемые тосты, мы рекомендуем заголовок и тело. Заголовки тостов используют `display: flex`, что позволяет легко выравнивать контент благодаря нашим утилитам `margin` и `flexbox`.

Тосты настолько гибкие, насколько Вам нужно, и требуют очень небольшой разметки. Как минимум, мы требуем, чтобы Ваш "всплывающий" контент содержал один элемент, и настоятельно рекомендуем кнопку «закрыть».

{{< example class="bg-light" >}}
<div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-header">
    {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text="false" title="false" >}}
    <strong class="mr-auto">Bootstrap</strong>
    <small>11 мин. назад</small>
    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
  </div>
  <div class="toast-body">
    Привет мир! Это тост-сообщение.
  </div>
</div>
{{< /example >}}

### Полупрозрачный

Тосты тоже слегка полупрозрачные, поэтому они смешиваются с тем, на чем могут появиться. Для браузеров, поддерживающих свойство CSS `backdrop-filter`, мы также попытаемся размыть элементы под всплывающим окном.

{{< example class="bg-dark" >}}
<div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-header">
    {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text="false" title="false" >}}
    <strong class="mr-auto">Bootstrap</strong>
    <small class="text-muted">11 мин. назад</small>
    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
  </div>
  <div class="toast-body">
    Привет мир! Это тост-сообщение.
  </div>
</div>
{{< /example >}}

### Укладка

Когда у Вас несколько тостов, мы по умолчанию располагаем их вертикально для удобного чтения.

{{< example class="bg-light" >}}
<div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-header">
    {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text="false" title="false" >}}
    <strong class="mr-auto">Bootstrap</strong>
    <small class="text-muted">прямо сейчас</small>
    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
  </div>
  <div class="toast-body">
    Видно? Именно так.
  </div>
</div>

<div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-header">
    {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text="false" title="false" >}}
    <strong class="mr-auto">Bootstrap</strong>
    <small class="text-muted">2 секунды назад</small>
    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
  </div>
  <div class="toast-body">
    Внимание, тосты складываются автоматически
  </div>
</div>
{{< /example >}}

### Пользовательский контент

Настройте свои тосты, удалив субкомпоненты, настроив с помощью [утилит]({{< docsref "/utilities/api" >}}) или добавив собственную разметку. Здесь мы создали более простой тост, удалив по умолчанию `.toast-header`, добавив собственную иконку скрытия из [Иконок Bootstrap]({{< param icons >}}), и используя некоторые [утилиты flexbox]({{< docsref "/utilities/flex" >}}), чтобы настроить макет.

{{< example class="bg-light" >}}
<div class="toast d-flex align-items-center" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-body">
    Привет мир! Это тост-сообщение.
  </div>
  <button type="button" class="btn-close ml-auto mr-2" data-bs-dismiss="toast" aria-label="Close"></button>
</div>
{{< /example >}}

Кроме того, Вы также можете добавить в тосты дополнительные элементы управления и компоненты.

{{< example class="bg-light" >}}
<div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-body">
    Привет мир! Это тост-сообщение.
    <div class="mt-2 pt-2 border-top">
      <button type="button" class="btn btn-primary btn-sm">Действовать</button>
      <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="toast">Закрыть</button>
    </div>
  </div>
</div>
{{< /example >}}

### Цветовые схемы

Основываясь на приведенном выше примере, Вы можете создавать различные цветовые схемы всплывающих окон с помощью наших [утилит цвета]({{< docsref "/utilities/colors" >}}). Здесь мы добавили `.bg-primary` и `.text-white` к `.toast`, а затем добавили `.text-white` к нашей кнопке закрытия. Для получения четких краев мы удаляем границу по умолчанию с помощью `.border-0`.

{{< example class="bg-light" >}}
<div class="toast d-flex align-items-center text-white bg-primary border-0" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-body">
    Привет мир! Это тост-сообщение.
  </div>
  <button type="button" class="btn-close btn-close-white ml-auto mr-2" data-bs-dismiss="toast" aria-label="Close"></button>
</div>
{{< /example >}}

## Размещение

Размещайте тосты с настраиваемым CSS по мере необходимости. Верхний правый угол часто используется для уведомлений, как и верхний средний. Если Вы собираетесь показывать только один тост за раз, поместите стили позиционирования прямо в `.toast`.

{{< example class="bg-dark" >}}
<div aria-live="polite" aria-atomic="true" style="position: relative; min-height: 200px;">
  <div class="toast" style="position: absolute; top: 0; right: 0;">
    <div class="toast-header">
      {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text="false" title="false" >}}
      <strong class="mr-auto">Bootstrap</strong>
      <small>11 мин. назад</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
    </div>
    <div class="toast-body">
      Привет мир! Это тост-сообщение.
    </div>
  </div>
</div>
{{< /example >}}

Для систем, которые генерируют больше уведомлений, рассмотрите возможность использования элемента упаковки, чтобы их можно было легко складывать.

{{< example class="bg-dark" >}}
<div aria-live="polite" aria-atomic="true" style="position: relative; min-height: 200px;">
  <!-- Расположите это -->
  <div style="position: absolute; top: 0; right: 0;">

    <!-- Затем положите тосты внутрь -->
    <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
      <div class="toast-header">
        {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text="false" title="false" >}}
        <strong class="mr-auto">Bootstrap</strong>
        <small class="text-muted">прямо сейчас</small>
        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
      </div>
      <div class="toast-body">
        Видно? Именно так.
      </div>
    </div>

    <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
      <div class="toast-header">
        {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text="false" title="false" >}}
        <strong class="mr-auto">Bootstrap</strong>
        <small class="text-muted">2 секунды назад</small>
        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
      </div>
      <div class="toast-body">
        Внимание, тосты складываются автоматически
      </div>
    </div>
  </div>
</div>
{{< /example >}}

Вы также можете поработать с утилитами flexbox для выравнивания тостов по горизонтали и/или вертикали.

{{< example class="bg-dark" >}}
<!-- Контейнер Flexbox для выравнивания тостов -->
<div aria-live="polite" aria-atomic="true" class="d-flex justify-content-center align-items-center" style="min-height: 200px;">

  <!-- Затем положите тосты внутрь -->
  <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text="false" title="false" >}}
      <strong class="mr-auto">Bootstrap</strong>
      <small>11 мин. назад</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
    </div>
    <div class="toast-body">
      Привет мир! Это тост-сообщение.
    </div>
  </div>
</div>
{{< /example >}}

## Доступность

Тосты предназначены для того, чтобы немного отвлекать посетителей или пользователей, поэтому, чтобы помочь тем, у кого есть средства чтения с экрана и аналогичные вспомогательные технологии, Вы должны заключить свои тосты в область [область `aria-live`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/ARIA_Live_Regions). Изменения в живых регионах (такие как внедрение/обновление компонента тоста) автоматически объявляются программами чтения с экрана без необходимости перемещать фокус пользователя или иным образом прерывать пользователя. Кроме того, включите `aria-atomic="true"`, чтобы гарантировать, что весь тост всегда объявляется как единый (атомарный) блок, а не объявляет, что было изменено (что может привести к проблемам, если Вы обновите только часть содержимого тоста. или при отображении того же всплывающего сообщения позже). Если необходимая информация важна для процесса, например для списка ошибок в форме используйте [компонент уведомления]({{< docsref "/components/alerts" >}}) вместо тоста.

Обратите внимание, что живая область должна присутствовать в разметке *до* создания или обновления тоста. Если Вы динамически генерируете и то, и другое одновременно и вставляете их на страницу, они обычно не будут объявляться вспомогательными технологиями.

Вам также необходимо адаптировать уровни `role` и `aria-live` в зависимости от контента. Если это важное сообщение, такое как ошибка, используйте `role="alert" aria-live="assertive"`, иначе используйте атрибуты `role="status" aria-live="polite"`.

По мере изменения отображаемого содержимого не забудьте обновить [таймаут `delay`](#параметры), чтобы у людей было достаточно времени, чтобы прочитать тост.

```html
<div class="toast" role="alert" aria-live="polite" aria-atomic="true" data-bs-delay="10000">
  <div role="alert" aria-live="assertive" aria-atomic="true">...</div>
</div>
```

При использовании `autohide: false` Вы должны добавить кнопку закрытия, чтобы пользователи могли закрыть всплывающее сообщение.

{{< example class="bg-light" >}}
<div role="alert" aria-live="assertive" aria-atomic="true" class="toast" data-bs-autohide="false">
  <div class="toast-header">
    {{< placeholder width="20" height="20" background="#007aff" class="rounded mr-2" text="false" title="false" >}}
    <strong class="mr-auto">Bootstrap</strong>
    <small>11 мин. назад</small>
    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
  </div>
  <div class="toast-body">
    Привет мир! Это тост-сообщение.
  </div>
</div>
{{< /example >}}

## Поведение JavaScript

### Использование

Инициализировать тосты через JavaScript:

```js
var toastElList = [].slice.call(document.querySelectorAll('.toast'))
var toastList = toastElList.map(function (toastEl) {
  return new bootstrap.Toast(toastEl, option)
})
```

### Параметры

Параметры могут передаваться через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-bs-`, как в `data-bs-animation=""`.

<table class="table">
  <thead>
    <tr>
      <th style="width: 100px;">Наименование</th>
      <th style="width: 100px;">Тип</th>
      <th style="width: 50px;">По умолчанию</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>animation</code></td>
      <td>boolean</td>
      <td><code>true</code></td>
      <td>Применить переход CSS fade к тосту</td>
    </tr>
    <tr>
      <td><code>autohide</code></td>
      <td>boolean</td>
      <td><code>true</code></td>
      <td>Автоматически скрывать тост</td>
    </tr>
    <tr>
      <td><code>delay</code></td>
      <td>number</td>
      <td>
        <code>5000</code>
      </td>
      <td>Задержка скрытия тоста (мс)</td>
    </tr>
  </tbody>
</table>

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

#### show

Показывает тост элемента. **Возврат к вызывающей стороне до того, как тост был фактически показан** (то есть до того, как произойдет событие `shown.bs.toast`).
Вы должны вручную вызвать этот метод, вместо этого Ваш тост не будет отображаться.

```js
toast.show()
```

#### hide

Скрывает тост элемента. **Возврат к вызывающей стороне до того, как тост был фактически скрыт** (т.е. до того, как произойдет событие `hidden.bs.toast`). Вы должны вызвать этот метод вручную, если Вы сделали для `autohide` значение `false`.

```js
toast.hide()
```

#### dispose

Скрывает тост элемента. Ваш тост останется в DOM, но больше не будет отображаться.

```js
toast.dispose()
```

### События

<table class="table">
  <thead>
    <tr>
      <th style="width: 150px;">Тип события</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>show.bs.toast</code></td>
      <td>Это событие запускается немедленно при вызове метода экземпляра <code>show</code>.</td>
    </tr>
    <tr>
      <td><code>shown.bs.toast</code></td>
      <td>Это событие запускается, когда тост становится видимым для пользователя.</td>
    </tr>
    <tr>
      <td><code>hide.bs.toast</code></td>
      <td>Это событие запускается сразу после вызова метода экземпляра <code>hide</code>.</td>
    </tr>
    <tr>
      <td><code>hidden.bs.toast</code></td>
      <td>Это событие запускается, когда тост перестает быть скрытым от пользователя..</td>
    </tr>
  </tbody>
</table>

```js
var myToastEl = document.getElementById('myToast')
myToastEl.addEventListener('hidden.bs.toast', function () {
  // сделайте что-нибудь...
})
```
