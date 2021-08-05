---
layout: docs
title: Уведомления
description: Предоставляйте контекстные сообщения обратной связи для типичных действий пользователя с помощью нескольких доступных и гибких предупреждающих сообщений.
group: components
toc: true
---

## Примеры

Уведомления доступны для текста любой длины, а также с кнопкой закрытия. Для правильного оформления используйте один из восьми **обязательных** контекстных классов (например, `.alert-success`). Для встроенного отклонения используйте [подключаемый модуль JavaScript уведомлений](#отклонение).

{{< example >}}
{{< alerts.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="alert alert-{{ .name }}" role="alert">
  Простое {{ .name }} уведомление - зацените!
</div>{{- end -}}
{{< /alerts.inline >}}
{{< /example >}}

{{< callout info >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

### Живой пример

Нажмите кнопку ниже, чтобы отобразить предупреждение (скрытое с помощью встроенных стилей для запуска), затем отклоните (и уничтожьте) его с помощью встроенной кнопки закрытия.

<div id="liveAlertPlaceholder"></div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" id="liveAlertBtn">Показать живое уведомление</button>
</div>

```html
<button type="button" class="btn btn-primary" id="liveAlertBtn">Показать живое уведомление</button>

<div class="alert alert-primary alert-dismissible" role="alert" id="liveAlert">
  <strong>Отлично!</strong> Вы активировали это уведомление.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
```

Мы используем следующий код JavaScript для запуска нашей демонстрации предупреждений в реальном времени:

```js
var alertPlaceholder = document.getElementById('liveAlertPlaceholder')
var alertTrigger = document.getElementById('liveAlertBtn')

function alert(message, type) {
  var wrapper = document.createElement('div')
  wrapper.innerHTML = '<div class="alert alert-' + type + ' alert-dismissible" role="alert">' + message + '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>'

  alertPlaceholder.append(wrapper)
}

if (alertTrigger) {
  alertTrigger.addEventListener('click', function () {
    alert('Отлично, вы запустили это предупреждающее сообщение!', 'success')
  })
}
```

### Цвет ссылки

Используйте служебный класс `.alert-link`, чтобы быстро предоставлять соответствующие цветные ссылки в любом уведомлении.

{{< example >}}
{{< alerts.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="alert alert-{{ .name }}" role="alert">
  Простое {{ .name }} уведомление с <a href="#" class="alert-link">примером ссылки</a>. Нажмите, если нравится.
</div>{{ end -}}
{{< /alerts.inline >}}
{{< /example >}}

### Дополнительный контент

Уведомления также могут содержать дополнительные элементы HTML, такие как заголовки, абзацы и разделители.

{{< example >}}
<div class="alert alert-success" role="alert">
  <h4 class="alert-heading">Отлично сработано!</h4>
  <p>О да, Вы успешно прочитали это важное уведомляющее сообщение. Этот пример текста будет работать немного дольше, чтобы Вы могли увидеть, как интервалы в уведомлении работают с этим типом контента.</p>
  <hr>
  <p class="mb-0">Когда Вам нужно, обязательно используйте утилиты полей, чтобы все было в хорошо и аккуратно.</p>
</div>
{{< /example >}}

### Иконки

Точно так же вы можете использовать [утилиты flexbox]({{< docsref "/utilities/flex" >}}) и [Bootstrap Icons]({{< param icons >}}) для создания предупреждений с помощью иконок. В зависимости от ваших иконок и содержимого вы можете добавить больше утилит или настраиваемых стилей.

{{< example >}}
<div class="alert alert-primary d-flex align-items-center" role="alert">
  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  </svg>
  <div>
    Пример оповещения со значком
  </div>
</div>
{{< /example >}}

Вам нужно более одного значка для ваших уведомлений? Подумайте о том, чтобы использовать больше иконок Bootstrap и создать такой локальный спрайт SVG, чтобы легко ссылаться на одни и те же иконки повторно.

{{< example >}}
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
  </symbol>
  <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
  </symbol>
  <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  </symbol>
</svg>

<div class="alert alert-primary d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Info:"><use xlink:href="#info-fill"/></svg>
  <div>
    Пример уведомления с иконкой
  </div>
</div>
<div class="alert alert-success d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
  <div>
    Пример уведомления об успехе с иконкой
  </div>
</div>
<div class="alert alert-warning d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Warning:"><use xlink:href="#exclamation-triangle-fill"/></svg>
  <div>
    Пример уведомления предупреждения с иконкой
  </div>
</div>
<div class="alert alert-danger d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
  <div>
    Пример уведомления об опасности с иконкой
  </div>
</div>
{{< /example >}}

### Отклонение

Точно так же вы можете использовать [утилиты flexbox]({{< docsref "/utilities/flex" >}}) и [Иконки Bootstrap]({{< param icons >}}) для создания предупреждений с помощью иконок. В зависимости от ваших иконок и содержимого вы можете добавить больше утилит или настраиваемых стилей.

{{< example >}}
<div class="alert alert-primary d-flex align-items-center" role="alert">
  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  </svg>
  <div>
    Пример уведомления с иконкой
  </div>
</div>
{{< /example >}}

Вам нужно более одной иконки для ваших уведомлений? Рассмотрите возможность использования большего количества иконок Bootstrap и создания подобного локального спрайта SVG, чтобы можно было легко ссылаться на одни и те же иконки повторно.

{{< example >}}
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
  </symbol>
  <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
  </symbol>
  <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  </symbol>
</svg>

<div class="alert alert-primary d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24"><use xlink:href="#info-fill"/></svg>
  <div>
    Пример уведомления с иконкой
  </div>
</div>
<div class="alert alert-success d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24"><use xlink:href="#check-circle-fill"/></svg>
  <div>
    Пример уведомления об успехе с иконкой
  </div>
</div>
<div class="alert alert-warning d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24"><use xlink:href="#exclamation-triangle-fill"/></svg>
  <div>
    Пример уведомления с иконкой
  </div>
</div>
<div class="alert alert-danger d-flex align-items-center" role="alert">
  <svg class="bi flex-shrink-0 me-2" width="24" height="24"><use xlink:href="#exclamation-triangle-fill"/></svg>
  <div>
    Пример уведомления об опасности с иконкой
  </div>
</div>
{{< /example >}}

### Отклонение

Используя плагин уведомлений JavaScript, можно отклонить любые встроенные уведомления. Вот как:

- Убедитесь, что Вы загрузили плагин уведомлений или скомпилированный Bootstrap JavaScript.
- Добавьте [кнопку закрытия]({{< docsref "/components/close-button" >}}) и класс `.alert-dismissible`, который добавляет дополнительный отступ справа от уведомления и позиционирует кнопку закрытия.
- На кнопку закрытия добавьте атрибут `data-bs-dismiss="alert"`, который активирует функциональность JavaScript. Обязательно используйте с ним элемент `<button>` для правильного поведения на всех устройствах.
- Чтобы анимировать уведомления при их отклонении, не забудьте добавить классы `.fade` и `.show`.

Вы можете увидеть это в действии на живой демонстрации:

{{< example >}}
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Святой гуакамоле!</strong> Вам следует проверить некоторые из этих полей ниже.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Закрыть"></button>
</div>
{{< /example >}}

{{< callout warning >}}
Когда уведомление закрывается, элемент полностью удаляется из структуры страницы. Если пользователь клавиатуры отклоняет уведомление с помощью кнопки закрытия, его фокус внезапно теряется и, в зависимости от браузера, сбрасывается на начало страницы/документа. По этой причине мы рекомендуем включить дополнительный JavaScript, который прослушивает событие `closed.bs.alert` и программно устанавливает `focus()` в наиболее подходящее место на странице. Если Вы планируете переместить фокус на неинтерактивный элемент, который обычно не получает фокус, обязательно добавьте к элементу `tabindex="-1"`.
{{< /callout >}}

## Sass

### Переменные

{{< scss-docs name="alert-variables" file="scss/_variables.scss" >}}

### Вариант миксина

Используется в сочетании с `$theme-colors` для создания классов контекстных модификаторов для наших предупреждений.

{{< scss-docs name="alert-variant-mixin" file="scss/mixins/_alert.scss" >}}

### Цикл

Цикл, который генерирует классы модификаторов с помощью миксина `alert-variant()`.

{{< scss-docs name="alert-modifiers" file="scss/_alert.scss" >}}

## Поведение JavaScript

### Инициализация

Инициализировать элементы как уведомления

```js
var alertList = document.querySelectorAll('.alert')
var alerts =  [].slice.call(alertList).map(function (element) {
  return new bootstrap.Alert(element)
})
```

{{< callout info >}}
Единственная цель - отклонить предупреждение, нет необходимости инициализировать компонент вручную через JS API. При использовании `data-bs-dismiss="alert"`, компонент будет автоматически инициализирован и должным образом закрыт.

Подробнее см. В разделе [триггеры](#триггеры).
{{< /callout >}}

### Триггеры

{{% js-dismiss "alert" %}}

**Обратите внимание, что закрытие предупреждения приведет к его удалению из DOM.**

### Методы

<table class="table">
  <thead>
    <tr>
      <th>Метод</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
        <code>close</code>
      </td>
      <td>
        Закрывает уведомление, удаляя его из модели DOM. Если в элементе присутствуют классы <code>.fade</code> и <code>.show</code>, предупреждение исчезнет, прежде чем оно будет удалено.
      </td>
    </tr>
    <tr>
      <td>
        <code>dispose</code>
      </td>
      <td>
        Уничтожает уведомление элемента (Удаляет сохраненные данные в элементе DOM)
      </td>
    </tr>
    <tr>
      <td>
        <code>getInstance</code>
      </td>
      <td>
        Статический метод, который позволяет Вам получить экземпляр предупреждения, связанный с элементом DOM, Вы можете использовать его следующим образом: <code>bootstrap.Alert.getInstance(alert)</code>
      </td>
    </tr>
    <tr>
      <td>
        <code>getOrCreateInstance</code>
      </td>
      <td>
        Статический метод, который возвращает экземпляр предупреждения, связанный с элементом DOM, или создает новый, если он не был инициализирован.
        Вы можете использовать это так: <code>bootstrap.Alert.getOrCreateInstance(element)</code>
      </td>
    </tr>
  </tbody>
</table>

```js
var alertNode = document.querySelector('.alert')
var alert = bootstrap.Alert.getInstance(alertNode)
alert.close()
```

### События

Плагин уведомлений Bootstrap предоставляет несколько событий для подключения к функциям уведомлений.

<table class="table">
  <thead>
    <tr>
      <th>Событие</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>close.bs.alert</code></td>
      <td>
        Срабатывает немедленно при вызове метода экземпляра <code>close</code>.
      </td>
    </tr>
    <tr>
      <td><code>closed.bs.alert</code></td>
      <td>
        Срабатывает, когда уведомление закрыто и переходы CSS завершены.
      </td>
    </tr>
  </tbody>
</table>

```js
var myAlert = document.getElementById('myAlert')
myAlert.addEventListener('closed.bs.alert', function () {
  // сделать что-нибудь, например, явно переместить фокус на наиболее подходящий элемент,
  // чтобы он не терялся/не сбрасывался на начало страницы
  // document.getElementById('...').focus()
})
```
