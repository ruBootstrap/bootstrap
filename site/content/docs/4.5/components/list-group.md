---
layout: docs
title: Группа списков
description: Группы списков - это гибкий и мощный компонент для отображения серии контента. Измените и расширьте их для поддержки практически любого содержимого внутри.
group: components
toc: true
---

## Простой пример

Самая основная группа списков - это неупорядоченный список с элементами списка и соответствующими классами. Развивайте его, используя следующие параметры или собственный CSS, если необходимо.

{{< example >}}
<ul class="list-group">
  <li class="list-group-item">Cras justo odio</li>
  <li class="list-group-item">Dapibus ac facilisis in</li>
  <li class="list-group-item">Morbi leo risus</li>
  <li class="list-group-item">Porta ac consectetur ac</li>
  <li class="list-group-item">Vestibulum at eros</li>
</ul>
{{< /example >}}

## Активные элементы

Добавьте `.active` к `.list-group-item`, чтобы указать текущий активный выбор.

{{< example >}}
<ul class="list-group">
  <li class="list-group-item active">Cras justo odio</li>
  <li class="list-group-item">Dapibus ac facilisis in</li>
  <li class="list-group-item">Morbi leo risus</li>
  <li class="list-group-item">Porta ac consectetur ac</li>
  <li class="list-group-item">Vestibulum at eros</li>
</ul>
{{< /example >}}

## Отключенные элементы

Добавьте `.disabled` к `.list-group-item`, чтобы он _показался_ отключенным. Обратите внимание, что для некоторых элементов с `.disabled` также потребуется специальный JavaScript, чтобы полностью отключить их события щелчка (например, ссылки).

{{< example >}}
<ul class="list-group">
  <li class="list-group-item disabled" aria-disabled="true">Cras justo odio</li>
  <li class="list-group-item">Dapibus ac facilisis in</li>
  <li class="list-group-item">Morbi leo risus</li>
  <li class="list-group-item">Porta ac consectetur ac</li>
  <li class="list-group-item">Vestibulum at eros</li>
</ul>
{{< /example >}}

## Ссылки и кнопки

Используйте `<a>` или `<button>` чтобы создать _действенные_ элементы группы списка с наведением, отключенным и активным состояниями, добавьте `.list-group-item-action`. Мы разделяем эти псевдоклассы, чтобы группы списков, состоящие из неинтерактивных элементов (таких как `<li>` или `<div>`) не обеспечивали доступность щелчка или касания.

Обязательно **не используйте здесь стандартные классы `.btn`**.

{{< example >}}
<div class="list-group">
  <a href="#" class="list-group-item list-group-item-action active">
    Cras justo odio
  </a>
  <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>
  <a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a>
  <a href="#" class="list-group-item list-group-item-action">Porta ac consectetur ac</a>
  <a href="#" class="list-group-item list-group-item-action disabled" tabindex="-1" aria-disabled="true">Vestibulum at eros</a>
</div>
{{< /example >}}

С помощью `<button>` Вы также можете использовать атрибут `disabled` вместо класса `.disabled`. К сожалению, `<a>` не поддерживают атрибут `disabled`.

{{< example >}}
<div class="list-group">
  <button type="button" class="list-group-item list-group-item-action active">
    Cras justo odio
  </button>
  <button type="button" class="list-group-item list-group-item-action">Dapibus ac facilisis in</button>
  <button type="button" class="list-group-item list-group-item-action">Morbi leo risus</button>
  <button type="button" class="list-group-item list-group-item-action">Porta ac consectetur ac</button>
  <button type="button" class="list-group-item list-group-item-action" disabled>Vestibulum at eros</button>
</div>
{{< /example >}}

## Поток

Добавьте `.list-group-flush`, чтобы удалить некоторые границы и закругленные углы для рендеринга элементов группы списка от края до края в родительском контейнере (например, карточки).

{{< example >}}
<ul class="list-group list-group-flush">
  <li class="list-group-item">Cras justo odio</li>
  <li class="list-group-item">Dapibus ac facilisis in</li>
  <li class="list-group-item">Morbi leo risus</li>
  <li class="list-group-item">Porta ac consectetur ac</li>
  <li class="list-group-item">Vestibulum at eros</li>
</ul>
{{< /example >}}

## Горизонтальный

Добавьте `.list-group-horizontal`, чтобы изменить расположение элементов группы списков с вертикального на горизонтальное во всех контрольных точках. В качестве альтернативы, выберите адаптивный вариант `.list-group-horizontal-{sm|md|lg|xl}`, чтобы сделать группу списков горизонтальной, начиная с `min-width`. В настоящее время **группы горизонтального списка нельзя комбинировать с группами скрытого списка**.

**Совет:** Хотите элементы группы списков одинаковой ширины в горизонтальном положении? Добавьте `.flex-fill` к каждому элементу группы списка.

{{< example >}}
{{< list-group.inline >}}
{{- range $.Site.Data.breakpoints }}
<ul class="list-group list-group-horizontal{{ .abbr }}">
  <li class="list-group-item">Cras justo odio</li>
  <li class="list-group-item">Dapibus ac facilisis in</li>
  <li class="list-group-item">Morbi leo risus</li>
</ul>
{{- end -}}
{{< /list-group.inline >}}
{{< /example >}}

## Контекстные классы

Используйте контекстные классы для стилизации элементов списка с фоном и цветом с отслеживанием состояния.

{{< example >}}
<ul class="list-group">
  <li class="list-group-item">Dapibus ac facilisis in</li>
{{< list.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
  <li class="list-group-item list-group-item-{{ .name }}">{{ .name }} элемент группы простого списка</li>
{{- end -}}
{{< /list.inline >}}
</ul>
{{< /example >}}

Контекстные классы также работают с `.list-group-item-action`. Обратите внимание на добавление стилей наведения, которых не было в предыдущем примере. Также поддерживается состояние `.active`; примените его, чтобы указать активный выбор в элементе группы контекстного списка.

{{< example >}}
<div class="list-group">
  <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>
{{< list.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
  <a href="#" class="list-group-item list-group-item-action list-group-item-{{ .name }}">{{ .name }} элемент группы простого списка</a>
{{- end -}}
{{< /list.inline >}}
</div>
{{< /example >}}

{{< callout warning >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Со значками

Добавьте значки к любому элементу группы списка, чтобы показать количество непрочитанных сообщений, активность и многое другое с помощью некоторых [утилит]({{< docsref "/utilities/flex" >}}).

{{< example >}}
<ul class="list-group">
  <li class="list-group-item d-flex justify-content-between align-items-center">
    Cras justo odio
    <span class="badge badge-primary badge-pill">14</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-center">
    Dapibus ac facilisis in
    <span class="badge badge-primary badge-pill">2</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-center">
    Morbi leo risus
    <span class="badge badge-primary badge-pill">1</span>
  </li>
</ul>
{{< /example >}}

## Пользовательский контент

Добавьте практически любой HTML-код, даже в группы связанных списков, подобных приведенной ниже, с помощью [утилит flexbox]({{< docsref "/utilities/flex" >}}).

{{< example >}}
<div class="list-group">
  <a href="#" class="list-group-item list-group-item-action active">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">Заголовок элемента группы списка</h5>
      <small>3 дня назад</small>
    </div>
    <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
    <small>Donec id elit non mi porta.</small>
  </a>
  <a href="#" class="list-group-item list-group-item-action">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">Заголовок элемента группы списка</h5>
      <small class="text-muted">3 дня назад</small>
    </div>
    <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
    <small class="text-muted">Donec id elit non mi porta.</small>
  </a>
  <a href="#" class="list-group-item list-group-item-action">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">Заголовок элемента группы списка</h5>
      <small class="text-muted">3 дня назад</small>
    </div>
    <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
    <small class="text-muted">Donec id elit non mi porta.</small>
  </a>
</div>
{{< /example >}}

## Поведение JavaScript

Используйте плагин tab JavaScript - включите его отдельно или через скомпилированный файл `bootstrap.js`- чтобы расширить нашу группу списков для создания вкладок локального контента.

<div class="bd-example" role="tabpanel">
  <div class="row">
    <div class="col-4">
      <div class="list-group" id="list-tab" role="tablist">
        <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="tab" href="#list-home" role="tab" aria-controls="list-home">Главная</a>
        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="tab" href="#list-profile" role="tab" aria-controls="list-profile">Профиль</a>
        <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="tab" href="#list-messages" role="tab" aria-controls="list-messages">Сообщения</a>
        <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="tab" href="#list-settings" role="tab" aria-controls="list-settings">Настройки</a>
      </div>
    </div>
    <div class="col-8">
      <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
          <p>Velit aute mollit ipsum ad dolor consectetur nulla officia culpa adipisicing exercitation fugiat tempor. Voluptate deserunt sit sunt nisi aliqua fugiat proident ea ut. Mollit voluptate reprehenderit occaecat nisi ad non minim tempor sunt voluptate consectetur exercitation id ut nulla. Ea et fugiat aliquip nostrud sunt incididunt consectetur culpa aliquip eiusmod dolor. Anim ad Lorem aliqua in cupidatat nisi enim eu nostrud do aliquip veniam minim.</p>
        </div>
        <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
          <p>Cupidatat quis ad sint excepteur laborum in esse qui. Et excepteur consectetur ex nisi eu do cillum ad laborum. Mollit et eu officia dolore sunt Lorem culpa qui commodo velit ex amet id ex. Officia anim incididunt laboris deserunt anim aute dolor incididunt veniam aute dolore do exercitation. Dolor nisi culpa ex ad irure in elit eu dolore. Ad laboris ipsum reprehenderit irure non commodo enim culpa commodo veniam incididunt veniam ad.</p>
        </div>
        <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
          <p>Ut ut do pariatur aliquip aliqua aliquip exercitation do nostrud commodo reprehenderit aute ipsum voluptate. Irure Lorem et laboris nostrud amet cupidatat cupidatat anim do ut velit mollit consequat enim tempor. Consectetur est minim nostrud nostrud consectetur irure labore voluptate irure. Ipsum id Lorem sit sint voluptate est pariatur eu ad cupidatat et deserunt culpa sit eiusmod deserunt. Consectetur et fugiat anim do eiusmod aliquip nulla laborum elit adipisicing pariatur cillum.</p>
        </div>
        <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
          <p>Irure enim occaecat labore sit qui aliquip reprehenderit amet velit. Deserunt ullamco ex elit nostrud ut dolore nisi officia magna sit occaecat laboris sunt dolor. Nisi eu minim cillum occaecat aute est cupidatat aliqua labore aute occaecat ea aliquip sunt amet. Aute mollit dolor ut exercitation irure commodo non amet consectetur quis amet culpa. Quis ullamco nisi amet qui aute irure eu. Magna labore dolor quis ex labore id nostrud deserunt dolor eiusmod eu pariatur culpa mollit in irure.</p>
        </div>
      </div>
    </div>
  </div>
</div>

```html
<div class="row">
  <div class="col-4">
    <div class="list-group" id="list-tab" role="tablist">
      <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">Главная</a>
      <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">Профиль</a>
      <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">Сообщения</a>
      <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings">Настройки</a>
    </div>
  </div>
  <div class="col-8">
    <div class="tab-content" id="nav-tabContent">
      <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">...</div>
      <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">...</div>
      <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">...</div>
      <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">...</div>
    </div>
  </div>
</div>
```

### Использование атрибутов данных

Вы можете активировать навигацию по группе списков без написания JavaScript, просто указав `data-toggle="list"` или на элементе. Используйте эти атрибуты данных в `.list-group-item`.

```html
<div role="tabpanel">
  <!-- Группа списка -->
  <div class="list-group" id="myList" role="tablist">
    <a class="list-group-item list-group-item-action active" data-toggle="list" href="#home" role="tab">Главная</a>
    <a class="list-group-item list-group-item-action" data-toggle="list" href="#profile" role="tab">Профиль</a>
    <a class="list-group-item list-group-item-action" data-toggle="list" href="#messages" role="tab">Сообщения</a>
    <a class="list-group-item list-group-item-action" data-toggle="list" href="#settings" role="tab">Настройки</a>
  </div>

  <!-- Панели вкладок -->
  <div class="tab-content">
    <div class="tab-pane active" id="home" role="tabpanel">...</div>
    <div class="tab-pane" id="profile" role="tabpanel">...</div>
    <div class="tab-pane" id="messages" role="tabpanel">...</div>
    <div class="tab-pane" id="settings" role="tabpanel">...</div>
  </div>
</div>
```

### Через JavaScript

Включить элемент списка с вкладками через JavaScript (каждый элемент списка нужно активировать индивидуально):

```js
$('#myList a').on('click', function (event) {
  event.preventDefault()
  $(this).tab('show')
})
```

Вы можете активировать отдельный элемент списка несколькими способами:

```js
$('#myList a[href="#profile"]').tab('show') // Выбрать вкладку по названию
$('#myList a:first-child').tab('show') // Выбрать первую вкладку
$('#myList a:last-child').tab('show') // Выбрать последнюю вкладку
$('#myList a:nth-child(3)').tab('show') // Выбрать третью вкладку
```

### Эффект затухания

Чтобы панель вкладок постепенно увеличивалась, добавьте `.fade` к каждому `.tab-pane`. На первой панели вкладок также должен быть `.show`, чтобы исходное содержимое было видимым.

```html
<div class="tab-content">
  <div class="tab-pane fade show active" id="home" role="tabpanel">...</div>
  <div class="tab-pane fade" id="profile" role="tabpanel">...</div>
  <div class="tab-pane fade" id="messages" role="tabpanel">...</div>
  <div class="tab-pane fade" id="settings" role="tabpanel">...</div>
</div>
```

### Методы

#### $().tab

Активирует элемент элемента списка и контейнер содержимого. Вкладка должна иметь либо `data-target`, либо `href`, нацеленный на узел контейнера в DOM.

```html
<div class="list-group" id="myList" role="tablist">
  <a class="list-group-item list-group-item-action active" data-toggle="list" href="#home" role="tab">Главная</a>
  <a class="list-group-item list-group-item-action" data-toggle="list" href="#profile" role="tab">Профиль</a>
  <a class="list-group-item list-group-item-action" data-toggle="list" href="#messages" role="tab">Сообщения</a>
  <a class="list-group-item list-group-item-action" data-toggle="list" href="#settings" role="tab">Настройки</a>
</div>

<div class="tab-content">
  <div class="tab-pane active" id="home" role="tabpanel">...</div>
  <div class="tab-pane" id="profile" role="tabpanel">...</div>
  <div class="tab-pane" id="messages" role="tabpanel">...</div>
  <div class="tab-pane" id="settings" role="tabpanel">...</div>
</div>

<script>
  $(function () {
    $('#myList a:last-child').tab('show')
  })
</script>
```

#### .tab('show')

Выбирает данный элемент списка и показывает связанную с ним панель. Любой другой элемент списка, который был ранее выбран, становится невыделенным, а связанная с ним панель скрывается. **Возврат к вызывающему абоненту до того, как панель вкладок будет отображена** (например, до того, как произойдет событие `shown.bs.tab`).

```js
$('#someListItem').tab('show')
```

### События

При отображении новой вкладки события запускаются в следующем порядке:

1. `hide.bs.tab` (на текущей активной вкладке)
2. `show.bs.tab` (на вкладке, которая будет отображаться)
3. `hidden.bs.tab` (на предыдущей активной вкладке такая же, как для события `hide.bs.tab`)
4. `shown.bs.tab` (на только что активной только что показанной вкладке та же, что и для события `show.bs.tab`)

Если ни одна вкладка еще не была активной, события `hide.bs.tab` и `hidden.bs.tab` не запускаются.

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="width: 150px;">Тип события</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>show.bs.tab</td>
      <td>Это событие запускается при отображении вкладки, но до отображения новой вкладки. Используйте <code>event.target</code> и <code>event.relatedTarget</code> для таргетинга на активную вкладку и предыдущую активную вкладку (при наличии) соответственно.</td>
    </tr>
    <tr>
      <td>shown.bs.tab</td>
      <td>Это событие запускается при отображении вкладки после того, как вкладка была показана. Используйте <code>event.target</code> и <code>event.relatedTarget</code> для таргетинга на активную вкладку и предыдущую активную вкладку (при наличии) соответственно.</td>
    </tr>
    <tr>
      <td>hide.bs.tab</td>
      <td>Это событие возникает, когда должна быть показана новая вкладка (и, следовательно, предыдущая активная вкладка должна быть скрыта). Используйте <code>event.target</code> и <code>event.relatedTarget</code> для таргетинга на текущую активную вкладку и новую вкладку, которая скоро станет активной, соответственно.</td>
    </tr>
    <tr>
      <td>hidden.bs.tab</td>
      <td>Это событие запускается после отображения новой вкладки (и, таким образом, предыдущая активная вкладка скрыта). Используйте <code>event.target</code> и <code>event.relatedTarget</code> для таргетинга на предыдущую активную вкладку и новую активную вкладку соответственно.</td>
    </tr>
  </tbody>
</table>

```js
$('a[data-toggle="list"]').on('shown.bs.tab', function (event) {
  event.target // недавно активированная вкладка
  event.relatedTarget // предыдущая активная вкладка
})
```
