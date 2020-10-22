---
layout: docs
title: Группы списков
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
  <li class="list-group-item active" aria-current="true">Cras justo odio</li>
  <li class="list-group-item">Dapibus ac facilisis in</li>
  <li class="list-group-item">Morbi leo risus</li>
  <li class="list-group-item">Porta ac consectetur ac</li>
  <li class="list-group-item">Vestibulum at eros</li>
</ul>
{{< /example >}}

## Отключенные элементы

Добавьте `.disabled` к `.list-group-item` , чтобы он _показался_ отключенным. Обратите внимание, что для некоторых элементов с `.disabled` также потребуется специальный JavaScript, чтобы полностью отключить их события щелчка (например, ссылки).

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

Используйте `<a>` или `<button>`, чтобы создать элементы группы _actionable_ списка с наведением, отключенным и активным состояниями, добавив `.list-group-item-action`. Мы разделяем эти псевдоклассы, чтобы группы списков, состоящие из неинтерактивных элементов (таких как `<li>` или `<div>`) не обеспечивали доступность щелчка или касания.

Обязательно **не используйте здесь стандартные классы `.btn`**.

{{< example >}}
<div class="list-group">
  <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
    Cras justo odio
  </a>
  <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>
  <a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a>
  <a href="#" class="list-group-item list-group-item-action">Porta ac consectetur ac</a>
  <a href="#" class="list-group-item list-group-item-action disabled" tabindex="-1" aria-disabled="true">Vestibulum at eros</a>
</div>
{{< /example >}}

С помощью `<button>` Вы также можете использовать атрибут `disabled` вместо класса `.disabled`. К сожалению, `<a>` не поддерживают атрибут.

{{< example >}}
<div class="list-group">
  <button type="button" class="list-group-item list-group-item-action active" aria-current="true">
    Cras justo odio
  </button>
  <button type="button" class="list-group-item list-group-item-action">Dapibus ac facilisis in</button>
  <button type="button" class="list-group-item list-group-item-action">Morbi leo risus</button>
  <button type="button" class="list-group-item list-group-item-action">Porta ac consectetur ac</button>
  <button type="button" class="list-group-item list-group-item-action" disabled>Vestibulum at eros</button>
</div>
{{< /example >}}

## Поток

Добавьте `.list-group-flush`, чтобы удалить некоторые границы и закругленные углы для рендеринга элементов группы списков от края до края в родительском контейнере (например, карточки).

{{< example >}}
<ul class="list-group list-group-flush">
  <li class="list-group-item">Cras justo odio</li>
  <li class="list-group-item">Dapibus ac facilisis in</li>
  <li class="list-group-item">Morbi leo risus</li>
  <li class="list-group-item">Porta ac consectetur ac</li>
  <li class="list-group-item">Vestibulum at eros</li>
</ul>
{{< /example >}}

## По горизонтали

Добавьте `.list-group-horizontal`, чтобы изменить расположение элементов группы списков с вертикального на горизонтальное во всех контрольных точках. В качестве альтернативы, выберите адаптивный вариант `.list-group-horizontal-{sm|md|lg|xl|xxl}`, чтобы сделать группу списков горизонтальной, начиная с `min-width` контрольной точки. В настоящее время **группы горизонтального списка нельзя комбинировать с группами скрытого списка.**

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
  <li class="list-group-item list-group-item-{{ .name }}">Простой {{ .name }} элемент группы списка</li>
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
  <a href="#" class="list-group-item list-group-item-action list-group-item-{{ .name }}">A simple {{ .name }} list group item</a>
{{- end -}}
{{< /list.inline >}}
</div>
{{< /example >}}

{{< callout info >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Со значками

Добавьте значки к любому элементу группы списка, чтобы показать количество непрочитанных сообщений, активность и многое другое с помощью некоторых [утилит]({{< docsref "/utilities/flex" >}}).

{{< example >}}
<ul class="list-group">
  <li class="list-group-item d-flex justify-content-between align-items-center">
    Cras justo odio
    <span class="badge bg-primary rounded-pill">14</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-center">
    Dapibus ac facilisis in
    <span class="badge bg-primary rounded-pill">2</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-center">
    Morbi leo risus
    <span class="badge bg-primary rounded-pill">1</span>
  </li>
</ul>
{{< /example >}}

## Пользовательский контент

Добавьте практически любой HTML-код, даже для групп связанных списков, подобных приведенной ниже, с помощью [утилит flexbox]({{< docsref "/utilities/flex" >}}).

{{< example >}}
<div class="list-group">
  <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
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

## Флажки и радио

Поместите флажки и радио Bootstrap в элементы группы списка и настройте их по мере необходимости. Вы можете использовать их без тегов `<label>`, но не забудьте включить атрибут и значение `aria-label` для доступности.

{{< example >}}
<ul class="list-group">
  <li class="list-group-item">
    <input class="form-check-input mr-1" type="checkbox" value="" aria-label="...">
    Cras justo odio
  </li>
  <li class="list-group-item">
    <input class="form-check-input mr-1" type="checkbox" value="" aria-label="...">
    Dapibus ac facilisis in
  </li>
  <li class="list-group-item">
    <input class="form-check-input mr-1" type="checkbox" value="" aria-label="...">
    Morbi leo risus
  </li>
  <li class="list-group-item">
    <input class="form-check-input mr-1" type="checkbox" value="" aria-label="...">
    Porta ac consectetur ac
  </li>
  <li class="list-group-item">
    <input class="form-check-input mr-1" type="checkbox" value="" aria-label="...">
    Vestibulum at eros
  </li>
</ul>
{{< /example >}}

И если Вы хотите, чтобы `<label>` в качестве `.list-group-item` для больших областей попадания, Вы тоже могли это сделать.

{{< example >}}
<div class="list-group">
  <label class="list-group-item">
    <input class="form-check-input mr-1" type="checkbox" value="">
    Cras justo odio
  </label>
  <label class="list-group-item">
    <input class="form-check-input mr-1" type="checkbox" value="">
    Dapibus ac facilisis in
  </label>
  <label class="list-group-item">
    <input class="form-check-input mr-1" type="checkbox" value="">
    Morbi leo risus
  </label>
  <label class="list-group-item">
    <input class="form-check-input mr-1" type="checkbox" value="">
    Porta ac consectetur ac
  </label>
  <label class="list-group-item">
    <input class="form-check-input mr-1" type="checkbox" value="">
    Vestibulum at eros
  </label>
</div>
{{< /example >}}


## Поведение JavaScript

Используйте плагин вкладок JavaScript - включите его отдельно или через скомпилированный файл `bootstrap.js` - чтобы расширить нашу группу списков для создания вкладок локального контента.

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

Вы можете активировать навигацию по группам списков без написания кода JavaScript, просто указав `data-toggle="list"` или на элементе. Используйте эти атрибуты данных в `.list-group-item`.

<div role="tabpanel">
```html
<!-- Группа списка -->
<div class="list-group" id="myList" role="tablist">
  <a class="list-group-item list-group-item-action active" data-toggle="list" href="#home" role="tab">Home</a>
  <a class="list-group-item list-group-item-action" data-toggle="list" href="#profile" role="tab">Profile</a>
  <a class="list-group-item list-group-item-action" data-toggle="list" href="#messages" role="tab">Messages</a>
  <a class="list-group-item list-group-item-action" data-toggle="list" href="#settings" role="tab">Settings</a>
</div>

<!-- Панели вкладок -->
<div class="tab-content">
  <div class="tab-pane active" id="home" role="tabpanel">...</div>
  <div class="tab-pane" id="profile" role="tabpanel">...</div>
  <div class="tab-pane" id="messages" role="tabpanel">...</div>
  <div class="tab-pane" id="settings" role="tabpanel">...</div>
</div>
```
</div>

### Через JavaScript

Включите элемент списка с вкладками через JavaScript (каждый элемент списка нужно активировать индивидуально):

```js
var triggerTabList = [].slice.call(document.querySelectorAll('#myTab a'))
triggerTabList.forEach(function (triggerEl) {
  var tabTrigger = new bootstrap.Tab(triggerEl)

  triggerEl.addEventListener('click', function (e) {
    e.preventDefault()
    tabTrigger.show()
  })
})
```

Вы можете активировать отдельный элемент списка несколькими способами:

```js
var triggerEl = document.querySelector('#myTab a[href="#profile"]')
bootstrap.Tab.getInstance(triggerEl).show() // Select tab by name

var triggerFirstTabEl = document.querySelector('#myTab li:first-child a')
bootstrap.Tab.getInstance(triggerFirstTabEl).show() // Select first tab
```

### Эффект затухания

Чтобы панель вкладок постепенно увеличивалась, добавьте `.fade` к каждому` .tab-pane`. На первой панели вкладок также должен быть `.show`, чтобы исходное содержимое было видимым.

```html
<div class="tab-content">
  <div class="tab-pane fade show active" id="home" role="tabpanel">...</div>
  <div class="tab-pane fade" id="profile" role="tabpanel">...</div>
  <div class="tab-pane fade" id="messages" role="tabpanel">...</div>
  <div class="tab-pane fade" id="settings" role="tabpanel">...</div>
</div>
```

### Методы

#### конструктор

Активирует элемент элемента списка и контейнер содержимого. Вкладка должна иметь либо `data-target` либо `href`, нацеленный на узел контейнера в DOM.

```html
<div class="list-group" id="myList" role="tablist">
  <a class="list-group-item list-group-item-action active" data-toggle="list" href="#home" role="tab">Home</a>
  <a class="list-group-item list-group-item-action" data-toggle="list" href="#profile" role="tab">Profile</a>
  <a class="list-group-item list-group-item-action" data-toggle="list" href="#messages" role="tab">Messages</a>
  <a class="list-group-item list-group-item-action" data-toggle="list" href="#settings" role="tab">Settings</a>
</div>

<div class="tab-content">
  <div class="tab-pane active" id="home" role="tabpanel">...</div>
  <div class="tab-pane" id="profile" role="tabpanel">...</div>
  <div class="tab-pane" id="messages" role="tabpanel">...</div>
  <div class="tab-pane" id="settings" role="tabpanel">...</div>
</div>

<script>
  var firstTabEl = document.querySelector('#myTab a:last-child')
  var firstTab = new bootstrap.Tab(firstTabEl)

  firstTab.show()
</script>
```

#### show

Выбирает указанный элемент списка и показывает связанную с ним панель. Любой другой элемент списка, который был ранее выбран, становится невыделенным, а связанная с ним панель скрывается. **Возврат к вызывающему абоненту до того, как панель вкладок будет отображена** (например, до того, как произойдет событие `shown.bs.tab`).

```js
  var someListItemEl = document.querySelector('#someListItem')
  var tab = new bootstrap.Tab(someListItemEl)

  tab.show()
```

#### dispose

Уничтожает вкладку элемента.

#### getInstance

*Статический* метод, позволяющий получить экземпляр вкладки, связанный с элементом DOM.

```js
var triggerEl = document.querySelector('#trigger')
var tab = bootstrap.Tab.getInstance(triggerEl) // Returns a Bootstrap tab instance
```

### События

При отображении новой вкладки события запускаются в следующем порядке:

1. `hide.bs.tab` (на текущей активной вкладке)
2. `show.bs.tab` (на вкладке для показа)
3. `hidden.bs.tab` (на предыдущей активной вкладке такая же, как для события `hide.bs.tab`)
4. `shown.bs.tab` (на только что активированной вкладке, такой же, как для события `show.bs.tab`)

Если ни одна вкладка еще не была активной, события `hide.bs.tab` и `hidden.bs.tab` не запускаются.

<table class="table">
  <thead>
    <tr>
      <th style="width: 150px;">Тип события</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>show.bs.tab</code></td>
      <td>Это событие запускается при отображении вкладки, но до отображения новой вкладки. Используйте <code>event.target</code> и <code>event.relatedTarget</code> для таргетинга на активную вкладку и предыдущую активную вкладку (если есть) соответственно.</td>
    </tr>
    <tr>
      <td><code>shown.bs.tab</code></td>
      <td>Это событие запускается при отображении вкладки после отображения вкладки. Используйте <code>event.target</code> и <code>event.relatedTarget</code> для таргетинга на активную вкладку и предыдущую активную вкладку (если есть) соответственно.</td>
    </tr>
    <tr>
      <td><code>hide.bs.tab</code></td>
      <td>Это событие возникает, когда должна быть показана новая вкладка (и, следовательно, предыдущая активная вкладка должна быть скрыта). Используйте <code>event.target</code> и <code>event.relatedTarget</code> для таргетинга на текущую активную вкладку и новую вкладку, которая скоро станет активной, соответственно.</td>
    </tr>
    <tr>
      <td><code>hidden.bs.tab</code></td>
      <td>Это событие запускается после отображения новой вкладки (и, таким образом, предыдущая активная вкладка скрыта). Используйте <code>event.target</code> и <code>event.relatedTarget</code> для таргетинга на предыдущую активную вкладку и новую активную вкладку соответственно.</td>
    </tr>
  </tbody>
</table>

```js
var tabEl = document.querySelector('a[data-toggle="list"]')
tabEl.addEventListener('shown.bs.tab', function (e) {
  e.target // недавно активированная вкладка
  e.relatedTarget // предыдущая активная вкладка
})
```
