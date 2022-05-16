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
- Всплывающие сообщения будут автоматически скрываться, если Вы не укажете `autohide: false`.

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
    {{< placeholder width="20" height="20" background="#007aff" class="rounded me-2" text="false" title="false" >}}
    <strong class="me-auto">Bootstrap</strong>
    <small>11 мин. назад</small>
    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
  </div>
  <div class="toast-body">
    Привет мир! Это тост-сообщение.
  </div>
</div>
{{< /example >}}

{{< callout warning >}}
Ранее наши скрипты динамически добавляли класс `.hide`, чтобы полностью скрыть тост (с помощью `display:none`, а не только с `opacity:0`). Теперь в этом больше нет необходимости. Однако для обратной совместимости наш сценарий будет продолжать переключать класс (даже если в этом нет практической необходимости) до следующей основной версии.
{{< /callout >}}

### Живой пример

Нажмите кнопку ниже, чтобы отобразить тост (расположенный с нашими утилитами в правом нижнем углу), который по умолчанию скрыт.

<div class="toast-container position-fixed bottom-0 end-0 p-3">
  <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      {{< placeholder width="20" height="20" background="#007aff" class="rounded me-2" text="false" title="false" >}}
      <strong class="me-auto">Bootstrap</strong>
      <small>11 мин назад</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
    </div>
    <div class="toast-body">
      Привет, мир! Это тост-сообщение.
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" id="liveToastBtn">Показать лайв тосты</button>
</div>

```html
<button type="button" class="btn btn-primary" id="liveToastBtn">Показать лайв тосты</button>

<div class="toast-container position-fixed bottom-0 end-0 p-3">
  <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      <img src="..." class="rounded me-2" alt="...">
      <strong class="me-auto">Bootstrap</strong>
      <small>11 мин назад</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
    </div>
    <div class="toast-body">
      Привет, мир! Это тост-сообщение.
    </div>
  </div>
</div>
```

Мы используем следующий код JavaScript для запуска нашей демонстрации тостов:

```js
const toastTrigger = document.getElementById('liveToastBtn')
const toastLiveExample = document.getElementById('liveToast')
if (toastTrigger) {
  toastTrigger.addEventListener('click', () => {
    const toast = new bootstrap.Toast(toastLiveExample)

    toast.show()
  })
}
```

### Полупрозрачный

Тосты слегка полупрозрачны, чтобы гармонировать с тем, что находится под ними.

{{< example class="bg-dark" >}}
<div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="toast-header">
    {{< placeholder width="20" height="20" background="#007aff" class="rounded me-2" text="false" title="false" >}}
    <strong class="me-auto">Bootstrap</strong>
    <small class="text-muted">11 мин. назад</small>
    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
  </div>
  <div class="toast-body">
    Привет мир! Это тост-сообщение.
  </div>
</div>
{{< /example >}}

### Укладка

Вы можете складывать всплывающие сообщения, завернув их в контейнер для тостов, который по вертикали добавит некоторого расстояния.

{{< example class="bg-light" >}}
<div class="toast-container position-static">
  <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      {{< placeholder width="20" height="20" background="#007aff" class="rounded me-2" text="false" title="false" >}}
      <strong class="me-auto">Bootstrap</strong>
      <small class="text-muted">прямо сейчас</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
    </div>
    <div class="toast-body">
      Видите? Именно так.
    </div>
  </div>

  <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      {{< placeholder width="20" height="20" background="#007aff" class="rounded me-2" text="false" title="false" >}}
      <strong class="me-auto">Bootstrap</strong>
      <small class="text-muted">2 секунды назад</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
    </div>
    <div class="toast-body">
      Внимание, всплывающие сообщения складываются автоматически
    </div>
  </div>
</div>
{{< /example >}}

### Пользовательский контент

Настройте тосты, удалив подкомпоненты, настроив их с помощью [утилит]({{< docsref "/utilities/api" >}}) или добавив собственную разметку. Здесь мы создали более простой тост, удалив стандартный `.toast-header`, добавив собственный значок скрытия из [Bootstrap Icons]({{< param icons >}}) и используя некоторые [утилиты flexbox]({{< docsref "/utilities/flex" >}}) для настройки макета.

{{< example class="bg-light" >}}
<div class="toast align-items-center" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="d-flex">
    <div class="toast-body">
    Привет, мир! Это тост-сообщение.
   </div>
    <button type="button" class="btn-close me-2 m-auto" data-bs-dismiss="toast" aria-label="Закрыть"></button>
  </div>
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

Основываясь на приведенном выше примере, вы можете создавать различные цветовые схемы всплывающих уведомлений с помощью утилит [цвета]({{< docsref "/utilities/colors" >}}) и [фона]({{< docsref "/utilities/background" >}}). Здесь мы добавили `.text-bg-primary` к `.toast`, а затем добавили `.btn-close-white` к нашей кнопке закрытия. Для четкого края мы удаляем границу по умолчанию с помощью `.border-0`.

{{< example class="bg-light" >}}
<div class="toast align-items-center text-bg-primary border-0" role="alert" aria-live="assertive" aria-atomic="true">
  <div class="d-flex">
    <div class="toast-body">
      Привет, мир! Это тост-сообщение.
    </div>
    <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Закрыть"></button>
  </div>
</div>
{{< /example >}}

## Размещение

Размещайте тосты с настраиваемым CSS по мере необходимости. Верхний правый угол часто используется для уведомлений, как и верхний средний. Если Вы собираетесь показывать только один тост за раз, поместите стили позиционирования прямо в `.toast`.

{{< example >}}
<form>
  <div class="mb-3">
    <label for="selectToastPlacement">Размещение тостов</label>
    <select class="form-select mt-2" id="selectToastPlacement">
      <option value="" selected>Выберите позицию...</option>
      <option value="top-0 start-0">Верх слева</option>
      <option value="top-0 start-50 translate-middle-x">Верх по центру</option>
      <option value="top-0 end-0">Верх справа</option>
      <option value="top-50 start-0 translate-middle-y">Середина слева</option>
      <option value="top-50 start-50 translate-middle">Середина по центру</option>
      <option value="top-50 end-0 translate-middle-y">Середина справа</option>
      <option value="bottom-0 start-0">Низ слева</option>
      <option value="bottom-0 start-50 translate-middle-x">Низ по центру</option>
      <option value="bottom-0 end-0">Низ справа</option>
    </select>
  </div>
</form>
<div aria-live="polite" aria-atomic="true" class="bg-dark position-relative bd-example-toasts">
  <div class="toast-container p-3" id="toastPlacement">
    <div class="toast">
      <div class="toast-header">
        {{< placeholder width="20" height="20" background="#007aff" class="rounded me-2" text="false" title="false" >}}
        <strong class="me-auto">Bootstrap</strong>
        <small>11 мин назад</small>
      </div>
      <div class="toast-body">
        Привет мир! Это тост-сообщение.
      </div>
    </div>
  </div>
</div>
{{< /example >}}

Для систем, которые генерируют больше уведомлений, рассмотрите возможность использования элемента упаковки, чтобы их можно было легко складывать.

{{< example class="bg-dark bd-example-toasts p-0" >}}
<div aria-live="polite" aria-atomic="true" class="position-relative">
  <!-- Позиционируйте его: -->
  <!-- - `.toast-container` для промежутка между тостами -->
  <!-- - `top-0` и `end-0` чтобы тосты располагались в правом верхнем углу -->
  <!-- - `.p-3` чтобы тосты не прилипали к краю контейнера  -->
  <div class="toast-container top-0 end-0 p-3">

    <!-- Затем положите тосты внутрь -->
    <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
      <div class="toast-header">
        {{< placeholder width="20" height="20" background="#007aff" class="rounded me-2" text="false" title="false" >}}
        <strong class="me-auto">Bootstrap</strong>
        <small class="text-muted">just now</small>
        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
      </div>
      <div class="toast-body">
        Видно? Именно так.
      </div>
    </div>

    <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
      <div class="toast-header">
        {{< placeholder width="20" height="20" background="#007aff" class="rounded me-2" text="false" title="false" >}}
        <strong class="me-auto">Bootstrap</strong>
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

{{< example class="bg-dark bd-example-toasts d-flex" >}}
<!-- Контейнер Flexbox для выравнивания тостов -->
<div aria-live="polite" aria-atomic="true" class="d-flex justify-content-center align-items-center w-100">

  <!-- Затем положите тосты внутрь -->
  <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      {{< placeholder width="20" height="20" background="#007aff" class="rounded me-2" text="false" title="false" >}}
      <strong class="me-auto">Bootstrap</strong>
      <small>11 мин назад</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
    </div>
    <div class="toast-body">
      Привет мир! Это тост-сообщение.
    </div>
  </div>
</div>
{{< /example >}}

## Доступность

Тосты предназначены для того, чтобы немного отвлекать посетителей или пользователей, поэтому, чтобы помочь тем, у кого есть программы чтения с экрана и аналогичные вспомогательные технологии, вы должны заключить свои тосты в [области `aria-live`](https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/ARIA_Live_Regions). Изменения в живых регионах (такие как внедрение / обновление компонента тоста) автоматически объявляются программами чтения с экрана без необходимости перемещать фокус пользователя или иным образом прерывать пользователя. Кроме того, включите `aria-atomic="true"`, чтобы гарантировать, что весь тост всегда объявляется как единая (атомарная) единица, а не просто объявляет, что было изменено (что может привести к проблемам, если вы обновите только часть содержимого тоста, или при отображении того же содержимого тоста в более поздний момент времени). Если необходимая информация важна для процесса, например для получения списка ошибок в форме используйте [компонент уведомления]({{< docsref "/components/alerts" >}}) вместо тоста.

Обратите внимание, что живая область должна присутствовать в разметке *до* создания или обновления тоста. Если Вы динамически генерируете и то, и другое одновременно и вставляете их на страницу, они обычно не будут объявляться вспомогательными технологиями.

Вам также необходимо адаптировать уровни `role` и `aria-live` в зависимости от контента. Если это важное сообщение, такое как ошибка, используйте `role="alert" aria-live="assertive"`, иначе используйте атрибуты `role="status" aria-live="polite"`.

По мере изменения содержимого, которое вы показываете, не забудьте обновить [таймаут `delay`](#options), чтобы у пользователей было достаточно времени, чтобы прочитать тост.

```html
<div class="toast" role="alert" aria-live="polite" aria-atomic="true" data-bs-delay="10000">
  <div role="alert" aria-live="assertive" aria-atomic="true">...</div>
</div>
```

При использовании `autohide: false` Вы должны добавить кнопку закрытия, чтобы пользователи могли закрыть всплывающее сообщение.

{{< example class="bg-light" >}}
<div role="alert" aria-live="assertive" aria-atomic="true" class="toast" data-bs-autohide="false">
  <div class="toast-header">
    {{< placeholder width="20" height="20" background="#007aff" class="rounded me-2" text="false" title="false" >}}
    <strong class="me-auto">Bootstrap</strong>
    <small>11 мин. назад</small>
    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Закрыть"></button>
  </div>
  <div class="toast-body">
    Привет мир! Это тост-сообщение.
  </div>
</div>
{{< /example >}}

Хотя технически можно добавить в тосты настраиваемые/активные элементы управления (например, дополнительные кнопки или ссылки), вам следует избегать этого для автоматического скрытия тостов. Даже если вы зададите тосту длинный [тайм-аут `delay`](#options), пользователям клавиатуры и вспомогательных технологий может быть трудно вовремя добраться до тоста, чтобы принять меры (поскольку тосты не получают фокус при отображении) . Если вам абсолютно необходимы дополнительные элементы управления, мы рекомендуем использовать всплывающее окно с `autohide: false`.

## CSS

### Переменные

{{< added-in "5.2.0" >}}

Как часть развивающегося подхода Bootstrap к переменным CSS, тосты теперь используют локальные переменные CSS в `.toast` для расширенной настройки в реальном времени. Значения переменных CSS задаются через Sass, поэтому настройка Sass по-прежнему поддерживается.

{{< scss-docs name="toast-css-vars" file="scss/_toasts.scss" >}}

### Переменные Sass

{{< scss-docs name="toast-variables" file="scss/_variables.scss" >}}

## Использование

Инициализировать тосты через JavaScript:

```js
const toastElList = document.querySelectorAll('.toast')
const toastList = [...toastElList].map(toastEl => new bootstrap.Toast(toastEl, option))
```

### Триггеры

{{% js-dismiss "toast" %}}

### Опции

{{< markdown >}}
{{< partial "js-data-attributes.md" >}}
{{< /markdown >}}

{{< bs-table "table" >}}
| Название | Тип | По умолчанию | Описание |
| --- | --- | --- | --- |
| `animation` | boolean | `true` | Примените CSS-переход затухания к тосту |
| `autohide` | boolean | `true`  | Автоматически скрывать тост после задержки |
| `delay` | number | `5000` | Задержка в миллисекундах перед тем, как скрыть всплывающее уведомление |
{{< /bs-table >}}

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

{{< bs-table "table" >}}
| Метод | Описание |
| --- | --- |
| `show` | Показывает тост элемента. **Возвращается к вызывающей стороне до того, как всплывающее уведомление действительно будет показано** (т. е. до того, как произойдет событие `shown.bs.toast`). Вы должны вручную вызвать этот метод, вместо этого ваш тост не будет отображаться. |
| `hide` | Скрывает тост элемента. **Возвращается к вызывающей стороне до того, как всплывающее уведомление будет фактически скрыто** (т. е. до того, как произойдет событие `hidden.bs.toast`). Вы должны вручную вызывать этот метод, если вы установили для `autohide` значение `false`. |
| `isShown` | Возвращает логическое значение в соответствии с состоянием видимости всплывающего уведомления. |
| `dispose` | Скрывает тост элемента. Ваше всплывающее уведомление останется в DOM, но больше не будет отображаться. |
| `getInstance` | *Статический* метод, позволяющий получить экземпляр scrollspy, связанный с элементом DOM. <br> Например: `const myToastEl = document.getElementById('myToastEl')` `const myToast = bootstrap.Toast.getInstance(myToastEl)` Возвращает экземпляр всплывающего уведомления|
| `getOrCreateInstance` | *Статический* метод, который позволяет вам получить экземпляр scrollspy, связанный с элементом DOM, или создать новый, если он не был инициализирован. <br>`const myToastEl = document.getElementById('myToastEl')`  `const myToast = bootstrap.Toast.getOrCreateInstance(myToastEl)` Возвращает экземпляр всплывающего уведомления Bootstrap |
{{< /bs-table >}}

### События

{{< bs-table "table" >}}
| Событие | Описание |
| --- | --- |
| `show.bs.toast` | Это событие срабатывает немедленно при вызове метода экземпляра `show`. |
| `shown.bs.toast` | Это событие запускается, когда всплывающее уведомление становится видимым для пользователя. |
| `hide.bs.toast` | Это событие запускается сразу после вызова метода экземпляра `hide`. |
| `hidden.bs.toast` | Это событие запускается, когда всплывающее уведомление перестает быть скрытым от пользователя. |
{{< /bs-table >}}

```js
const myToastEl = document.getElementById('myToast')
myToastEl.addEventListener('hidden.bs.toast', () => {
  // сделайте что-нибудь...
})
```
