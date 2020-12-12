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
  <li class="list-group-item">An item</li>
  <li class="list-group-item">A second item</li>
  <li class="list-group-item">A third item</li>
  <li class="list-group-item">A fourth item</li>
  <li class="list-group-item">And a fifth one</li>
</ul>
{{< /example >}}

## Активные элементы

Добавьте `.active` к `.list-group-item`, чтобы указать текущий активный выбор.

{{< example >}}
<ul class="list-group">
  <li class="list-group-item active" aria-current="true">An active item</li>
  <li class="list-group-item">A second item</li>
  <li class="list-group-item">A third item</li>
  <li class="list-group-item">A fourth item</li>
  <li class="list-group-item">And a fifth one</li>
</ul>
{{< /example >}}

## Отключенные элементы

Добавьте `.disabled` к `.list-group-item` , чтобы он _показался_ отключенным. Обратите внимание, что для некоторых элементов с `.disabled` также потребуется специальный JavaScript, чтобы полностью отключить их события щелчка (например, ссылки).

{{< example >}}
<ul class="list-group">
  <li class="list-group-item disabled" aria-disabled="true">A disabled item</li>
  <li class="list-group-item">A second item</li>
  <li class="list-group-item">A third item</li>
  <li class="list-group-item">A fourth item</li>
  <li class="list-group-item">And a fifth one</li>
</ul>
{{< /example >}}

## Ссылки и кнопки

Используйте `<a>` или `<button>`, чтобы создать элементы группы _actionable_ списка с наведением, отключенным и активным состояниями, добавив `.list-group-item-action`. Мы разделяем эти псевдоклассы, чтобы группы списков, состоящие из неинтерактивных элементов (таких как `<li>` или `<div>`) не обеспечивали доступность щелчка или касания.

Обязательно **не используйте здесь стандартные классы `.btn`**.

{{< example >}}
<div class="list-group">
  <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
    The current link item
  </a>
  <a href="#" class="list-group-item list-group-item-action">A second link item</a>
  <a href="#" class="list-group-item list-group-item-action">A third link item</a>
  <a href="#" class="list-group-item list-group-item-action">A fourth link item</a>
  <a href="#" class="list-group-item list-group-item-action disabled" tabindex="-1" aria-disabled="true">A disabled link item</a>
</div>
{{< /example >}}

С помощью `<button>` Вы также можете использовать атрибут `disabled` вместо класса `.disabled`. К сожалению, `<a>` не поддерживают атрибут.

{{< example >}}
<div class="list-group">
  <button type="button" class="list-group-item list-group-item-action active" aria-current="true">
    The current button
  </button>
  <button type="button" class="list-group-item list-group-item-action">A second item</button>
  <button type="button" class="list-group-item list-group-item-action">A third button item</button>
  <button type="button" class="list-group-item list-group-item-action">A fourth button item</button>
  <button type="button" class="list-group-item list-group-item-action" disabled>A disabled button item</button>
</div>
{{< /example >}}

## Поток

Добавьте `.list-group-flush`, чтобы удалить некоторые границы и закругленные углы для рендеринга элементов группы списков от края до края в родительском контейнере (например, карточки).

{{< example >}}
<ul class="list-group list-group-flush">
  <li class="list-group-item">An item</li>
  <li class="list-group-item">A second item</li>
  <li class="list-group-item">A third item</li>
  <li class="list-group-item">A fourth item</li>
  <li class="list-group-item">And a fifth one</li>
</ul>
{{< /example >}}

## По горизонтали

Добавьте `.list-group-horizontal`, чтобы изменить расположение элементов группы списков с вертикального на горизонтальное во всех контрольных точках. В качестве альтернативы, выберите адаптивный вариант `.list-group-horizontal-{sm|md|lg|xl|xxl}`, чтобы сделать группу списков горизонтальной, начиная с `min-width` контрольной точки. В настоящее время **группы горизонтального списка нельзя комбинировать с группами скрытого списка.**

**Совет:** Хотите элементы группы списков одинаковой ширины в горизонтальном положении? Добавьте `.flex-fill` к каждому элементу группы списка.

{{< example >}}
{{< list-group.inline >}}
{{- range $.Site.Data.breakpoints }}
<ul class="list-group list-group-horizontal{{ .abbr }}">
  <li class="list-group-item">An item</li>
  <li class="list-group-item">A second item</li>
  <li class="list-group-item">A third item</li>
</ul>
{{- end -}}
{{< /list-group.inline >}}
{{< /example >}}

## Контекстные классы

Используйте контекстные классы для стилизации элементов списка с фоном и цветом с отслеживанием состояния.

{{< example >}}
<ul class="list-group">
  <li class="list-group-item">A simple default list group item</li>
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
  <a href="#" class="list-group-item list-group-item-action">A simple default list group item</a>
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
    A list item
    <span class="badge bg-primary rounded-pill">14</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-center">
    A second list item
    <span class="badge bg-primary rounded-pill">2</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-center">
    A third list item
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
    <p class="mb-1">Some placeholder content in a paragraph.</p>
    <small>And some small print.</small>
  </a>
  <a href="#" class="list-group-item list-group-item-action">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">Заголовок элемента группы списка</h5>
      <small class="text-muted">3 дня назад</small>
    </div>
    <p class="mb-1">Some placeholder content in a paragraph.</p>
    <small class="text-muted">And some muted small print.</small>
  </a>
  <a href="#" class="list-group-item list-group-item-action">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">Заголовок элемента группы списка</h5>
      <small class="text-muted">3 дня назад</small>
    </div>
    <p class="mb-1">Some placeholder content in a paragraph.</p>
    <small class="text-muted">And some muted small print.</small>
  </a>
</div>
{{< /example >}}

## Флажки и радио

Поместите флажки и радио Bootstrap в элементы группы списка и настройте их по мере необходимости. Вы можете использовать их без тегов `<label>`, но не забудьте включить атрибут и значение `aria-label` для доступности.

{{< example >}}
<ul class="list-group">
  <li class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
    First checkbox
  </li>
  <li class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
    Second checkbox
  </li>
  <li class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
    Third checkbox
  </li>
  <li class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
    Fourth checkbox
  </li>
  <li class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
    Fifth checkbox
  </li>
</ul>
{{< /example >}}

И если Вы хотите, чтобы `<label>` в качестве `.list-group-item` для больших областей попадания, Вы тоже могли это сделать.

{{< example >}}
<div class="list-group">
  <label class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="">
    First checkbox
  </label>
  <label class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="">
    Second checkbox
  </label>
  <label class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="">
    Third checkbox
  </label>
  <label class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="">
    Fourth checkbox
  </label>
  <label class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="">
    Fifth checkbox
  </label>
</div>
{{< /example >}}


## Поведение JavaScript

Используйте плагин вкладок JavaScript - включите его отдельно или через скомпилированный файл `bootstrap.js` - чтобы расширить нашу группу списков для создания вкладок локального контента.

<div class="bd-example" role="tabpanel">
  <div class="row">
    <div class="col-4">
      <div class="list-group" id="list-tab" role="tablist">
        <a class="list-group-item list-group-item-action active" id="list-home-list" data-bs-toggle="tab" href="#list-home" role="tab" aria-controls="list-home">Главная</a>
        <a class="list-group-item list-group-item-action" id="list-profile-list" data-bs-toggle="tab" href="#list-profile" role="tab" aria-controls="list-profile">Профиль</a>
        <a class="list-group-item list-group-item-action" id="list-messages-list" data-bs-toggle="tab" href="#list-messages" role="tab" aria-controls="list-messages">Сообщения</a>
        <a class="list-group-item list-group-item-action" id="list-settings-list" data-bs-toggle="tab" href="#list-settings" role="tab" aria-controls="list-settings">Настройки</a>
      </div>
    </div>
    <div class="col-8">
      <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
          <p>Some placeholder content in a paragraph relating to "Home". And some more content, used here just to pad out and fill this tab panel. In production, you would obviously have more real content here. And not just text. It could be anything, really. Text, images, forms.</p>
        </div>
        <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
          <p>Some placeholder content in a paragraph relating to "Profile". And some more content, used here just to pad out and fill this tab panel. In production, you would obviously have more real content here. And not just text. It could be anything, really. Text, images, forms.</p>
        </div>
        <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
          <p>Some placeholder content in a paragraph relating to "Messages". And some more content, used here just to pad out and fill this tab panel. In production, you would obviously have more real content here. And not just text. It could be anything, really. Text, images, forms.</p>
        </div>
        <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
          <p>Some placeholder content in a paragraph relating to "Settings". And some more content, used here just to pad out and fill this tab panel. In production, you would obviously have more real content here. And not just text. It could be anything, really. Text, images, forms.</p>
        </div>
      </div>
    </div>
  </div>
</div>

```html
<div class="row">
  <div class="col-4">
    <div class="list-group" id="list-tab" role="tablist">
      <a class="list-group-item list-group-item-action active" id="list-home-list" data-bs-toggle="list" href="#list-home" role="tab" aria-controls="home">Главная</a>
      <a class="list-group-item list-group-item-action" id="list-profile-list" data-bs-toggle="list" href="#list-profile" role="tab" aria-controls="profile">Профиль</a>
      <a class="list-group-item list-group-item-action" id="list-messages-list" data-bs-toggle="list" href="#list-messages" role="tab" aria-controls="messages">Сообщения</a>
      <a class="list-group-item list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings" role="tab" aria-controls="settings">Настройки</a>
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

Вы можете активировать навигацию по группам списков без написания кода JavaScript, просто указав `data-bs-toggle="list"` или на элементе. Используйте эти атрибуты данных в `.list-group-item`.

```html
<div role="tabpanel">
  <!-- Группа списка -->
  <div class="list-group" id="myList" role="tablist">
    <a class="list-group-item list-group-item-action active" data-bs-toggle="list" href="#home" role="tab">Главная</a>
    <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#profile" role="tab">Профиль</a>
    <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#messages" role="tab">Сообщения</a>
    <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#settings" role="tab">Настройки</a>
  </div>

<!-- Панели вкладок -->
  <div div class="tab-content">
    <div class="tab-pane active" id="home" role="tabpanel">...</div>
    <div class="tab-pane" id="profile" role="tabpanel">...</div>
    <div class="tab-pane" id="messages" role="tabpanel">...</div>
    <div class="tab-pane" id="settings" role="tabpanel">...</div>
  </div>
</div>
```

### Через JavaScript

Включите элемент списка с вкладками через JavaScript (каждый элемент списка нужно активировать индивидуально):

```js
var triggerTabList = [].slice.call(document.querySelectorAll('#myTab a'))
triggerTabList.forEach(function (triggerEl) {
  var tabTrigger = new bootstrap.Tab(triggerEl)

  triggerEl.addEventListener('click', function (event) {
    event.preventDefault()
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

Активирует элемент элемента списка и контейнер содержимого. Вкладка должна иметь либо `data-bs-target` либо `href`, нацеленный на узел контейнера в DOM.

```html
<div class="list-group" id="myList" role="tablist">
  <a class="list-group-item list-group-item-action active" data-bs-toggle="list" href="#home" role="tab">Home</a>
  <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#profile" role="tab">Profile</a>
  <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#messages" role="tab">Messages</a>
  <a class="list-group-item list-group-item-action" data-bs-toggle="list" href="#settings" role="tab">Settings</a>
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
var tabEl = document.querySelector('a[data-bs-toggle="list"]')
tabEl.addEventListener('shown.bs.tab', function (event) {
  event.target // недавно активированная вкладка
  event.relatedTarget // предыдущая активная вкладка
})
```
