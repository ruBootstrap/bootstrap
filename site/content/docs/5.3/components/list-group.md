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
  <li class="list-group-item">Элемент</li>
  <li class="list-group-item">Второй элемент</li>
  <li class="list-group-item">Третий элемент</li>
  <li class="list-group-item">Четвертый элемент</li>
  <li class="list-group-item">И пятый</li>
</ul>
{{< /example >}}

## Активные элементы

Добавьте `.active` к `.list-group-item`, чтобы указать текущий активный выбор.

{{< example >}}
<ul class="list-group">
  <li class="list-group-item active" aria-current="true">Активный элемент</li>
  <li class="list-group-item">Второй элемент</li>
  <li class="list-group-item">Третий элемент</li>
  <li class="list-group-item">Четвертый элемент</li>
  <li class="list-group-item">И пятый</li>
</ul>
{{< /example >}}

## Отключенные элементы

Добавьте `.disabled` к `.list-group-item` , чтобы он _показался_ отключенным. Обратите внимание, что для некоторых элементов с `.disabled` также потребуется специальный JavaScript, чтобы полностью отключить их события щелчка (например, ссылки).

{{< example >}}
<ul class="list-group">
  <li class="list-group-item disabled" aria-disabled="true">Отключенный элемент</li>
  <li class="list-group-item">Второй элемент</li>
  <li class="list-group-item">Третий элемент</li>
  <li class="list-group-item">Четвертый элемент</li>
  <li class="list-group-item">И пятый</li>
</ul>
{{< /example >}}

## Ссылки и кнопки

Используйте `<a>` или `<button>`, чтобы создать элементы группы _actionable_ списка с наведением, отключенным и активным состояниями, добавив `.list-group-item-action`. Мы разделяем эти псевдоклассы, чтобы группы списков, состоящие из неинтерактивных элементов (таких как `<li>` или `<div>`) не обеспечивали доступность щелчка или касания.

Обязательно **не используйте здесь стандартные классы `.btn`**.

{{< example >}}
<div class="list-group">
  <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
    Текущий элемент ссылка
  </a>
  <a href="#" class="list-group-item list-group-item-action">Второй элемент ссылка</a>
  <a href="#" class="list-group-item list-group-item-action">Третий элемент ссылка</a>
  <a href="#" class="list-group-item list-group-item-action">Четвертый элемент ссылка</a>
  <a class="list-group-item list-group-item-action disabled" aria-disabled="true">Отключенный элемент ссылка</a>
</div>
{{< /example >}}

С помощью `<button>` Вы также можете использовать атрибут `disabled` вместо класса `.disabled`. К сожалению, `<a>` не поддерживают атрибут.

{{< example >}}
<div class="list-group">
  <button type="button" class="list-group-item list-group-item-action active" aria-current="true">
    Текущая кнопка
  </button>
  <button type="button" class="list-group-item list-group-item-action">Второй элемент кнопка</button>
  <button type="button" class="list-group-item list-group-item-action">Третий элемент кнопка</button>
  <button type="button" class="list-group-item list-group-item-action">Четвертый элемент кнопка</button>
  <button type="button" class="list-group-item list-group-item-action" disabled>Отключенный элемент кнопка</button>
</div>
{{< /example >}}

## Поток

Добавьте `.list-group-flush`, чтобы удалить некоторые границы и закругленные углы для рендеринга элементов группы списков от края до края в родительском контейнере (например, карточки).

{{< example >}}
<ul class="list-group list-group-flush">
  <li class="list-group-item">Элемент</li>
  <li class="list-group-item">Второй элемент</li>
  <li class="list-group-item">Третий элемент</li>
  <li class="list-group-item">Четвертый элемент</li>
  <li class="list-group-item">И пятый</li>
</ul>
{{< /example >}}

## Пронумерованный

Добавьте класс модификатора `.list-group-numbered` (и, при необходимости, используйте элемент `<ol>`), чтобы выбрать элементы группы нумерованных списков. Числа генерируются с помощью CSS (в отличие от стиля браузера по умолчанию для `<ol>`) для лучшего размещения внутри элементов группы списков и для лучшей настройки.

Числа генерируются с помощью `counter-reset` в `<ol>`, а затем стилируются и помещаются с помощью псевдоэлемента `::before` в `<li>` с помощью `counter-increment` и `content`.

{{< example >}}
<ol class="list-group list-group-numbered">
  <li class="list-group-item">Элемент списка</li>
  <li class="list-group-item">Элемент списка</li>
  <li class="list-group-item">Элемент списка</li>
</ol>
{{< /example >}}

Они также отлично работают с настраиваемым контентом.

{{< example >}}
<ol class="list-group list-group-numbered">
  <li class="list-group-item d-flex justify-content-between align-items-start">
    <div class="ms-2 me-auto">
      <div class="fw-bold">Подзаголовок</div>
      Контент для элемента списка
    </div>
    <span class="badge text-bg-primary rounded-pill">14</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-start">
    <div class="ms-2 me-auto">
      <div class="fw-bold">Подзаголовок</div>
      Контент для элемента списка
    </div>
    <span class="badge text-bg-primary rounded-pill">14</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-start">
    <div class="ms-2 me-auto">
      <div class="fw-bold">Подзаголовок</div>
      Контент для элемента списка
    </div>
    <span class="badge text-bg-primary rounded-pill">14</span>
  </li>
</ol>
{{< /example >}}

## По горизонтали

Добавьте `.list-group-horizontal`, чтобы изменить расположение элементов группы списков с вертикального на горизонтальное во всех контрольных точках. В качестве альтернативы, выберите адаптивный вариант `.list-group-horizontal-{sm|md|lg|xl|xxl}`, чтобы сделать группу списков горизонтальной, начиная с `min-width` контрольной точки. В настоящее время **группы горизонтального списка нельзя комбинировать с группами скрытого списка.**

**Совет:** Хотите элементы группы списков одинаковой ширины в горизонтальном положении? Добавьте `.flex-fill` к каждому элементу группы списка.

{{< example >}}
{{< list-group.inline >}}
{{- range $.Site.Data.breakpoints }}
<ul class="list-group list-group-horizontal{{ .abbr }}">
  <li class="list-group-item">Элемент</li>
  <li class="list-group-item">Второй элемент</li>
  <li class="list-group-item">Третий элемент</li>
</ul>
{{- end -}}
{{< /list-group.inline >}}
{{< /example >}}

## Варианты

{{< callout info >}}
**Внимание!** Начиная с версии 5.3.0, Sass миксин `list-group-item-variant()` устарел. Переменные CSS вариантов элементов группы теперь переопределены в [цикле Sass](#sass-loop).
{{< /callout >}}

Используйте контекстные классы для стилизации элементов списка с фоном и цветом с отслеживанием состояния.

{{< example >}}
<ul class="list-group">
  <li class="list-group-item">Простой элемент группы списка по умолчанию</li>
{{< list.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
  <li class="list-group-item list-group-item-{{ .name }}">Простой {{ .name }} элемент группы списка</li>
{{- end -}}
{{< /list.inline >}}
</ul>
{{< /example >}}

### Для ссылок и кнопок

Контекстные классы также работают с `.list-group-item-action` для элементов `<a>` и `<button>`. Обратите внимание на добавление здесь стилей наведения, отсутствующих в предыдущем примере. Также поддерживается состояние `.active`; примените его, чтобы указать активный выбор в элементе группы контекстного списка.

{{< example >}}
<div class="list-group">
  <a href="#" class="list-group-item list-group-item-action">Простой элемент группы списка по умолчанию</a>
{{< list.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
  <a href="#" class="list-group-item list-group-item-action list-group-item-{{ .name }}">Простой {{ .name }} элемент группы списка</a>
{{- end -}}
{{< /list.inline >}}
</div>
{{< /example >}}

{{< callout info >}}
{{< partial "callouts/warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Со значками

Добавьте значки к любому элементу группы списка, чтобы показать количество непрочитанных сообщений, активность и многое другое с помощью некоторых [утилит]({{< docsref "/utilities/flex" >}}).

{{< example >}}
<ul class="list-group">
  <li class="list-group-item d-flex justify-content-between align-items-center">
    Элемент списка
    <span class="badge text-bg-primary rounded-pill">14</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-center">
    Второй элемент списка
    <span class="badge text-bg-primary rounded-pill">2</span>
  </li>
  <li class="list-group-item d-flex justify-content-between align-items-center">
    Третий элемент списка
    <span class="badge text-bg-primary rounded-pill">1</span>
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
    <p class="mb-1">Некоторый заполнитель в абзаце.</p>
    <small>И немного мелкого шрифта.</small>
  </a>
  <a href="#" class="list-group-item list-group-item-action">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">Заголовок элемента группы списка</h5>
      <small class="text-body-secondary">3 дня назад</small>
    </div>
    <p class="mb-1">Некоторый заполнитель в абзаце.</p>
    <small class="text-body-secondary">И какой-то приглушенный мелкий шрифт.</small>
  </a>
  <a href="#" class="list-group-item list-group-item-action">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">Заголовок элемента группы списка</h5>
      <small class="text-body-secondary">3 дня назад</small>
    </div>
    <p class="mb-1">Некоторый заполнитель в абзаце.</p>
    <small class="text-body-secondary">И какой-то приглушенный мелкий шрифт.</small>
  </a>
</div>
{{< /example >}}

## Флажки и радио

Поместите флажки и радио Bootstrap в элементы группы списка и настройте их по мере необходимости. Вы можете использовать их без тегов `<label>`, но не забудьте включить атрибут и значение `aria-label` для доступности.

{{< example >}}
<ul class="list-group">
  <li class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="" id="firstCheckbox">
    <label class="form-check-label" for="firstCheckbox">Первый чекбокс</label>
  </li>
  <li class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="" id="secondCheckbox">
    <label class="form-check-label" for="secondCheckbox">Второй чекбокс</label>
  </li>
  <li class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="" id="thirdCheckbox">
    <label class="form-check-label" for="thirdCheckbox">Третий чекбокс</label>
  </li>
</ul>
{{< /example >}}

{{< example >}}
<ul class="list-group">
  <li class="list-group-item">
    <input class="form-check-input me-1" type="radio" name="listGroupRadio" value="" id="firstRadio" checked>
    <label class="form-check-label" for="firstRadio">Первое радио</label>
  </li>
  <li class="list-group-item">
    <input class="form-check-input me-1" type="radio" name="listGroupRadio" value="" id="secondRadio">
    <label class="form-check-label" for="secondRadio">Второе радио</label>
  </li>
  <li class="list-group-item">
    <input class="form-check-input me-1" type="radio" name="listGroupRadio" value="" id="thirdRadio">
    <label class="form-check-label" for="thirdRadio">Третье радио</label>
  </li>
</ul>
{{< /example >}}

Вы можете использовать `.stretched-link` для `<label>`, чтобы сделать кликабельным весь элемент группы списка.

{{< example >}}
<ul class="list-group">
  <li class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="" id="firstCheckboxStretched">
    <label class="form-check-label stretched-link" for="firstCheckboxStretched">Первый чекбокс</label>
  </li>
  <li class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="" id="secondCheckboxStretched">
    <label class="form-check-label stretched-link" for="secondCheckboxStretched">Второй чекбокс</label>
  </li>
  <li class="list-group-item">
    <input class="form-check-input me-1" type="checkbox" value="" id="thirdCheckboxStretched">
    <label class="form-check-label stretched-link" for="thirdCheckboxStretched">Третий чекбокс</label>
  </li>
</ul>
{{< /example >}}

## CSS

### Переменные

{{< added-in "5.2.0" >}}

Как часть развивающегося подхода Bootstrap к переменным CSS, группы списков теперь используют локальные переменные CSS в `.list-group` для расширенной настройки в реальном времени. Значения переменных CSS задаются через Sass, поэтому настройка Sass по-прежнему поддерживается.

{{< scss-docs name="list-group-css-vars" file="scss/_list-group.scss" >}}

### Sass переменные

{{< scss-docs name="list-group-variables" file="scss/_variables.scss" >}}

### Sass миксины

{{< deprecated-in "5.3.0" >}}

{{< scss-docs name="list-group-mixin" file="scss/mixins/_list-group.scss" >}}

### Sass циклы

Цикл, который генерирует классы модификаторов с переопределением переменных CSS.

{{< scss-docs name="list-group-modifiers" file="scss/_list-group.scss" >}}

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
          <p>Некоторое содержимое-заполнитель в абзаце, относящемся к "Главной". И еще немного контента, используемого здесь только для заполнения и заполнения этой панели вкладок. В производственной среде у вас, очевидно, будет больше реального контента. И не только текст. На самом деле это могло быть что угодно. Текст, изображения, формы.</p>
        </div>
        <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
          <p>Некоторое содержимое-заполнитель в абзаце, относящемся к "Профилю". И еще немного контента, используемого здесь только для заполнения и заполнения этой панели вкладок. В производственной среде у вас, очевидно, будет больше реального контента. И не только текст. На самом деле это могло быть что угодно. Текст, изображения, формы.</p>
        </div>
        <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
          <p>Некоторое содержимое-заполнитель в абзаце, относящемся к "Сообщению". И еще немного контента, используемого здесь только для заполнения и заполнения этой панели вкладок. В производственной среде у вас, очевидно, будет больше реального контента. И не только текст. На самом деле это могло быть что угодно. Текст, изображения, формы.</p>
        </div>
        <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
          <p>Некоторое содержимое-заполнитель в абзаце, относящемся к "Настройке". И еще немного контента, используемого здесь только для заполнения и заполнения этой панели вкладок. В производственной среде у вас, очевидно, будет больше реального контента. И не только текст. На самом деле это могло быть что угодно. Текст, изображения, формы.</p>
        </div>
      </div>
    </div>
  </div>
</div>

```html
<div class="row">
  <div class="col-4">
    <div class="list-group" id="list-tab" role="tablist">
      <a class="list-group-item list-group-item-action active" id="list-home-list" data-bs-toggle="list" href="#list-home" role="tab" aria-controls="list-home">Главная</a>
      <a class="list-group-item list-group-item-action" id="list-profile-list" data-bs-toggle="list" href="#list-profile" role="tab" aria-controls="list-profile">Профиль</a>
      <a class="list-group-item list-group-item-action" id="list-messages-list" data-bs-toggle="list" href="#list-messages" role="tab" aria-controls="list-messages">Сообщения</a>
      <a class="list-group-item list-group-item-action" id="list-settings-list" data-bs-toggle="list" href="#list-settings" role="tab" aria-controls="list-settings">Настройки</a>
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
const triggerTabList = document.querySelectorAll('#myTab a')
triggerTabList.forEach(triggerEl => {
  const tabTrigger = new bootstrap.Tab(triggerEl)

  triggerEl.addEventListener('click', event => {
    event.preventDefault()
    tabTrigger.show()
  })
})
```

Вы можете активировать отдельный элемент списка несколькими способами:

```js
const triggerEl = document.querySelector('#myTab a[href="#profile"]')
bootstrap.Tab.getInstance(triggerEl).show() // Select tab by name

const triggerFirstTabEl = document.querySelector('#myTab li:first-child a')
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

{{< callout danger >}}
{{< partial "callouts/danger-async-methods.md" >}}
{{< /callout >}}

Активирует ваш контент как элемент вкладки.

Вы можете создать экземпляр вкладки с помощью конструктора, например:

```js
const bsTab = new bootstrap.Tab('#myTab')
```

{{< bs-table >}}
| Метод | Описание |
| --- | --- |
| `dispose` | Уничтожает вкладку элемента. |
| `getInstance` | Статический метод, который позволяет вам получить экземпляр вкладки, связанный с элементом DOM, вы можете использовать его следующим образом: `bootstrap.Tab.getInstance(element)`. |
| `getOrCreateInstance` | Статический метод, который возвращает экземпляр вкладки, связанный с элементом DOM, или создает новый, если он не был инициализирован. Вы можете использовать его так: `bootstrap.Tab.getOrCreateInstance(element)`. |
| `show` | Выбирает данную вкладку и показывает связанную с ней панель. Любая другая ранее выбранная вкладка становится невыбранной, а связанная с ней панель скрывается. **Возвращается к вызывающей стороне до фактического отображения панели вкладок** (т. е. до возникновения события `shown.bs.tab`). |
{{< /bs-table >}}

### События

При отображении новой вкладки события запускаются в следующем порядке:

1. `hide.bs.tab` (на текущей активной вкладке)
2. `show.bs.tab` (на вкладке для показа)
3. `hidden.bs.tab` (на предыдущей активной вкладке такая же, как для события `hide.bs.tab`)
4. `shown.bs.tab` (на только что активированной вкладке, такой же, как для события `show.bs.tab`)

Если ни одна вкладка еще не была активной, то события `hide.bs.tab` и `hidden.bs.tab` не будут запущены.

{{< bs-table >}}
| Тип события | Описание |
| --- | --- |
| `hide.bs.tab` | Это событие срабатывает, когда должна быть показана новая вкладка (и, следовательно, предыдущая активная вкладка должна быть скрыта). Используйте `event.target` и `event.relatedTarget`, чтобы настроить таргетинг на текущую активную вкладку и новую вкладку, которая скоро станет активной, соответственно. |
| `hidden.bs.tab` | Это событие срабатывает после отображения новой вкладки (и, таким образом, предыдущая активная вкладка скрыта). Используйте `event.target` и `event.relatedTarget`, чтобы выбрать предыдущую активную вкладку и новую активную вкладку соответственно. |
| `show.bs.tab` | Это событие срабатывает при показе вкладки, но до того, как будет показана новая вкладка. Используйте `event.target` и `event.relatedTarget`, чтобы настроить таргетинг на активную вкладку и предыдущую активную вкладку (если она доступна) соответственно. |
| `shown.bs.tab` | Это событие срабатывает при показе вкладки после того, как вкладка была показана. Используйте `event.target` и `event.relatedTarget`, чтобы настроить таргетинг на активную вкладку и предыдущую активную вкладку (если она доступна) соответственно. |
{{< /bs-table >}}

```js
const tabElms = document.querySelectorAll('a[data-bs-toggle="list"]')
tabElms.forEach(tabElm => {
  tabElm.addEventListener('shown.bs.tab', event => {
    event.target // newly activated tab
    event.relatedTarget // previous active tab
  })
})
```
