---
layout: docs
title: Уведомления
description: Предоставляйте контекстные сообщения обратной связи для типичных действий пользователя с помощью нескольких доступных и гибких предупреждающих сообщений.
group: components
aliases:
  - "/components/"
  - "/docs/5.0/components/"
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

### Отклонение

Используя плагин уведомлений JavaScript, можно отклонить любые встроенные уведомления. Вот как:

- Убедитесь, что Вы загрузили плагин уведомлений или скомпилированный Bootstrap JavaScript.
- Добавьте [кнопку закрытия]({{< docsref "/components/close-button" >}}) и класс `.alert-dismissible`, который добавляет дополнительный отступ справа от уведомления и позиционирует кнопку закрытия.
- На кнопку закрытия добавьте атрибут `data-dismiss="alert"`, который активирует функциональность JavaScript. Обязательно используйте с ним элемент `<button>` для правильного поведения на всех устройствах.
- Чтобы анимировать уведомления при их отклонении, не забудьте добавить классы `.fade` и `.show`.

Вы можете увидеть это в действии на живой демонстрации:

{{< example >}}
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Святой гуакамоле!</strong> Вам следует проверить некоторые из этих полей ниже.
  <button type="button" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
</div>
{{< /example >}}

{{< callout warning >}}
Когда уведомление закрывается, элемент полностью удаляется из структуры страницы. Если пользователь клавиатуры отклоняет уведомление с помощью кнопки закрытия, его фокус внезапно теряется и, в зависимости от браузера, сбрасывается на начало страницы/документа. По этой причине мы рекомендуем включить дополнительный JavaScript, который прослушивает событие `closed.bs.alert` и программно устанавливает `focus()` в наиболее подходящее место на странице. Если Вы планируете переместить фокус на неинтерактивный элемент, который обычно не получает фокус, обязательно добавьте к элементу `tabindex="-1"`.
{{< /callout >}}

## Поведение JavaScript

### Триггеры

Включите отклонение уведомления через JavaScript:

{{< highlight js >}}
var alertList = document.querySelectorAll('.alert')
alertList.forEach(function (alert) {
  new bootstrap.Alert(alert)
})
{{< /highlight >}}

Или с атрибутами `data` на кнопке **в пределах уведомления**, как показано выше:

{{< highlight html >}}
<button type="button" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
{{< /highlight >}}

Обратите внимание, что закрытие уведомления приведет к его удалению из DOM.

### Методы

Вы можете создать экземпляр оповещения с помощью конструктора оповещений, например:

{{< highlight js >}}
var myAlert = document.getElementById('myAlert')
var bsAlert = new bootstrap.Alert(myAlert)
{{< /highlight >}}

Это заставляет предупреждение прослушивать события клика на дочерних элементах, которые имеют атрибут `data-dismiss="alert"`. (Не требуется при использовании автоматической инициализации data-api.)

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
        Уничтожает уведомление элемента
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
  </tbody>
</table>

{{< highlight js >}}
var alertNode = document.querySelector('.alert')
var alert = bootstrap.Alert.getInstance(alertNode)
alert.close()
{{< /highlight >}}

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

{{< highlight js >}}
var myAlert = document.getElementById('myAlert')
myAlert.addEventListener('closed.bs.alert', function () {
  // сделать что-нибудь, например, явно переместить фокус на наиболее подходящий элемент,
  // чтобы он не терялся/не сбрасывался на начало страницы
  // document.getElementById('...').focus()
})
{{< /highlight >}}
