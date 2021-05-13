---
layout: docs
title: Всплывающие подсказки
description: Документация и примеры для добавления настраиваемых всплывающих подсказок Bootstrap с помощью CSS и JavaScript с использованием CSS3 для анимации и атрибутов данных для локального хранения заголовков.
group: components
toc: true
---

## Обзор

Что нужно знать при использовании плагина всплывающей подсказки:

- Подсказки полагаются на стороннюю библиотеку [Popper](https://popper.js.org/) для позиционирования. Вы должны включить [popper.min.js]({{< param "cdn.popper" >}}) перед bootstrap.js или использовать `bootstrap.bundle.min.js` / `bootstrap.bundle.js`, который содержит Popper, чтобы всплывающие подсказки работали!
- Всплывающие подсказки используются по соображениям производительности, поэтому **Вы должны инициализировать их самостоятельно **.
- Всплывающие подсказки с заголовками нулевой длины никогда не отображаются.
- Укажите `container: 'body'`, чтобы избежать проблем с рендерингом в более сложных компонентах (например, в наших группах ввода, группах кнопок и т.д.).
- Всплывающие подсказки для скрытых элементов работать не будут.
- Всплывающие подсказки для элементов `.disabled` или `disabled` должны запускаться для элемента оболочки.
- При запуске от гиперссылок, охватывающих несколько строк, всплывающие подсказки будут центрированы. Используйте `white-space: nowrap;` на Ваших `<a>`, чтобы избежать такого поведения.
- Всплывающие подсказки необходимо скрыть до того, как соответствующие элементы будут удалены из модели DOM.
- Всплывающие подсказки могут запускаться благодаря элементу внутри теневой модели DOM.

{{< callout info >}}
{{< partial "callout-info-sanitizer.md" >}}
{{< /callout >}}

{{< callout info >}}
{{< partial "callout-info-sanitizer.md" >}}
{{< /callout >}}

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

Получил все это? Отлично, посмотрим, как они работают, на некоторых примерах.

## Пример: включить всплывающие подсказки везде

Один из способов инициализировать все всплывающие подсказки на странице - это выбрать их по их атрибуту `data-bs-toggle`:

```js
var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new bootstrap.Tooltip(tooltipTriggerEl)
})
```

## Примеры

Наведите курсор на ссылки ниже, чтобы увидеть всплывающие подсказки:

<div class="bd-example tooltip-demo">
  <p class="muted">Текст-заполнитель для демонстрации некоторых <a href="#" data-bs-toggle="tooltip" title="Тултип по умолчанию">встроенных ссылок</a> с подсказками. Теперь это просто наполнитель, а не убийца. Содержание размещено здесь только для имитации присутствия <a href="#" data-bs-toggle="tooltip" title="Другой тултип">настоящего текста</a>. И все это просто для того, чтобы дать Вам представление о том, как всплывающие подсказки будут выглядеть при использовании в реальных ситуациях. Надеюсь, Вы теперь увидели, как <a href="#" data-bs-toggle="tooltip" title="Еще один здесь тоже">эти всплывающие подсказки по ссылкам</a> могут работать на практике, если Вы их используете на <a href="#" data-bs-toggle="tooltip" title="The last tip!">Вашем собственном </a> сайте или проекте. </p>
</div>

Наведите курсор на кнопки ниже, чтобы увидеть четыре направления подсказок: вверх, вправо, внизу и влево. Направления зеркалируются при использовании Bootstrap в RTL.

<div class="bd-example tooltip-demo">
  <div class="bd-example-tooltips">
    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" title="Подсказка вверху">Подсказка вверху</button>
    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="right" title="Подсказка справа">Подсказка справа</button>
    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Подсказка внизу">Подсказка внизу</button>
    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="left" title="Подсказка слева">Подсказка слева</button>
    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-html="true" title="<em>Подсказка</em> <u>с</u> <b>HTML</b>">Всплывающая подсказка с HTML</button>
  </div>
</div>

```html
<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" title="Подсказка вверху">
  Подсказка вверху
</button>
<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="right" title="Подсказка справа">
  Подсказка справа
</button>
<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Подсказка внизу">
  Подсказка внизу
</button>
<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="left" title="Подсказка слева">
  Подсказка слева
</button>
```

И с добавленным пользовательским HTML:

```html
<button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-html="true" title="<em>Подсказка</em> <u>с</u> <b>HTML</b>">
  Всплывающая подсказка с HTML
</button>
```

С SVG:

<div class="bd-example tooltip-demo">
  <a href="#" class="d-inline-block" data-bs-toggle="tooltip" title="Подсказка по умолчанию">
    <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 100 100">
      <rect width="100%" height="100%" fill="#563d7c" />
      <circle cx="50" cy="50" r="30" fill="#007bff" />
    </svg>
  </a>
</div>

## Sass

### Переменные

{{< scss-docs name="tooltip-variables" file="scss/_variables.scss" >}}

## Использование

Плагин всплывающих подсказок генерирует контент и разметку по запросу и по умолчанию помещает всплывающие подсказки после их триггерного элемента.

Запуск всплывающей подсказки через JavaScript:

```js
var exampleEl = document.getElementById('example')
var tooltip = new bootstrap.Tooltip(exampleEl, options)
```

{{< callout warning >}}
##### Переполнение `auto` и `scroll`

Положение всплывающей подсказки пытается автоматически измениться, когда **родительский контейнер** имеет `overflow: auto` или `overflow: scroll`, как наш `.table-responsive`, но по-прежнему сохраняет исходное расположение размещения. Чтобы решить эту проблему, установите [параметр `boundary`](https://popper.js.org/docs/v2/modifiers/flip/#boundary) (для модификатора переворота, использующего параметр `popperConfig`) для любого HTMLElement на переопределить значение по умолчанию `'clippingParents'`, например, `document.body`:

```js
var exampleEl = document.getElementById('example')
var tooltip = new bootstrap.Tooltip(exampleEl, {
  boundary: document.body // or document.querySelector('#boundary')
})
```
{{< /callout >}}

### Разметка

Требуемая разметка для всплывающей подсказки - это только атрибут `data` и `title` HTML-элемента, для которого Вы хотите иметь всплывающую подсказку. Сгенерированная разметка всплывающей подсказки довольно проста, хотя для нее требуется позиция (по умолчанию плагином установлено значение `top`).

{{< callout warning >}}
##### Создание всплывающих подсказок для пользователей клавиатуры и вспомогательных технологий

Вы должны добавлять всплывающие подсказки только к HTML-элементам, которые традиционно ориентированы на клавиатуру и являются интерактивными (например, ссылки или элементы управления формы). Хотя произвольные элементы HTML (такие как `<span>`) можно сделать доступными для фокусировки, добавив атрибут `tabindex="0"`, это добавит потенциально раздражающие и сбивающие с толку позиции табуляции на неинтерактивных элементах для пользователей клавиатуры, и большинство Вспомогательные технологии в настоящее время не объявляют всплывающую подсказку в этой ситуации. Кроме того, не полагайтесь исключительно на `hover` в качестве триггера для Вашей всплывающей подсказки, так как это сделает невозможным запуск ваших всплывающих подсказок для пользователей клавиатуры.
{{< /callout >}}

```html
<!-- HTML для записи -->
<a href="#" data-bs-toggle="tooltip" title="Текст всплывающей подсказки!">Наведите на меня</a>

<!-- Разметка, созданная плагином -->
<div class="tooltip bs-tooltip-top" role="tooltip">
  <div class="tooltip-arrow"></div>
  <div class="tooltip-inner">
    Текст всплывающей подсказки!
  </div>
</div>
```

### Отключенные элементы

Элементы с атрибутом `disabled` не являются интерактивными, то есть пользователи не могут сфокусироваться, навести на них курсор или щелкнуть их, чтобы вызвать всплывающую подсказку (или всплывающее окно). В качестве обходного пути Вы захотите вызвать всплывающую подсказку из оболочки `<div>` или `<span>`, в идеале сделанной с фокусировкой на клавиатуре, используя `tabindex="0"`.

<div class="tooltip-demo">
{{< example >}}
<span class="d-inline-block" tabindex="0" data-bs-toggle="tooltip" title="Отключенная подсказка">
  <button class="btn btn-primary" type="button" disabled>Отключенная кнопка</button>
</span>
{{< /example >}}
</div>

### Параметры

Параметры можно передавать через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-bs-`, как в `data-bs-animation=""`. Обязательно измените тип case имени параметра с camelCase на kebab-case при передаче параметров через атрибуты данных. Например, вместо использования `data-bs-customClass="beautifier"` используйте `data-bs-custom-class="beautifier"`.

{{< callout warning >}}
Обратите внимание, что по соображениям безопасности параметры `sanitize`, `sanitizeFn` и `allowList` не могут быть предоставлены с использованием атрибутов данных.
{{< /callout >}}

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
      <td>Применить переход CSS fade к всплывающей подсказке</td>
    </tr>
    <tr>
      <td><code>container</code></td>
      <td>string | element | false</td>
      <td><code>false</code></td>
      <td>
        <p>Добавляет всплывающую подсказку к определенному элементу. Пример: <code>container: 'body'</code>. Этот параметр особенно полезен тем, что позволяет Вам размещать всплывающую подсказку в потоке документа рядом с элементом запуска, что предотвратит отрыв всплывающей подсказки от элемента запуска во время изменения размера окна.</p>
      </td>
    </tr>
    <tr>
      <td><code>delay</code></td>
      <td>number | object</td>
      <td><code>0</code></td>
      <td>
        <p>Задержка показа и скрытия всплывающей подсказки (мс) - не относится к ручному типу триггера</p>
        <p>Если указан номер, задержка применяется как к скрытию, так и к отображению.</p>
        <p>Структура объекта: <code>delay: { "show": 500, "hide": 100 }</code></p>
      </td>
    </tr>
    <tr>
      <td><code>html</code></td>
      <td>boolean</td>
      <td><code>false</code></td>
      <td>
        <p>Разрешить HTML во всплывающей подсказке.</p>
        <p>Если `true`, HTML-теги в <code>title</code> всплывающей подсказки будут отображаться во всплывающей подсказке. Если `false`, свойство <code>innerText</code> будет использоваться для вставки содержимого в DOM.</p>
        <p>Используйте текст, если Вас беспокоят XSS-атаки.</p>
      </td>
    </tr>
    <tr>
      <td><code>placement</code></td>
      <td>string | function</td>
      <td><code>'top'</code></td>
      <td>
        <p>Как разместить всплывающую подсказку - auto | top | bottom | left | right.<br>Если задано <code>auto</code> всплывающая подсказка будет динамически переориентирована.</p>
        <p>Когда функция используется для определения размещения, она вызывается с помощью узла DOM всплывающей подсказки в качестве первого аргумента и узла DOM триггерного элемента в качестве второго. Контекст <code>this</code> установлен на экземпляр всплывающей подсказки.</p>
      </td>
    </tr>
    <tr>
      <td><code>selector</code></td>
      <td>string | false</td>
      <td><code>false</code></td>
      <td>Если предусмотрен селектор, объекты всплывающей подсказки будут делегированы указанным целям. На практике это также используется для применения всплывающих подсказок к динамически добавляемым элементам DOM (поддержка <code>jQuery.on</code>). Смотрите <a href="{{< param repo >}}/issues/4215">это</a> и <a href="https://codepen.io/team/bootstrap/pen/zYBXGwX?editors=1010">информативный пример</a>.</td>
    </tr>
    <tr>
      <td><code>template</code></td>
      <td>string</td>
      <td><code>'&lt;div class="tooltip" role="tooltip"&gt;&lt;div class="tooltip-arrow"&gt;&lt;/div&gt;&lt;div class="tooltip-inner"&gt;&lt;/div&gt;&lt;/div&gt;'</code></td>
      <td>
        <p>Базовый HTML для использования при создании всплывающей подсказки.</p>
        <p><code>title</code> всплывающей подсказки будет вставлен в <code>.tooltip-inner</code>.</p>
        <p><code>.tooltip-arrow</code> станет стрелкой всплывающей подсказки.</p>
        <p>Самый внешний элемент оболочки должен иметь класс <code>.tooltip</code> и <code>role="tooltip"</code>.</p>
      </td>
    </tr>
    <tr>
      <td><code>title</code></td>
      <td>string | element | function</td>
      <td><code>''</code></td>
      <td>
        <p>Значение заголовка по умолчанию, если атрибут <code>title</code> отсутствует.</p>
        <p>Если задана функция, она будет вызываться со ссылкой <code>this</code>, установленной на элемент, к которому прикреплена всплывающая подсказка.</p>
      </td>
    </tr>
    <tr>
      <td><code>trigger</code></td>
      <td>string</td>
      <td><code>'hover focus'</code></td>
      <td>
        <p>Как запускается всплывающая подсказка - click | hover | focus | manual. Вы можете передать несколько триггеров; разделить их пробелом.</p>
        <p><code>'manual'</code> указывает, что всплывающая подсказка будет запускаться программно через <code>.tooltip('show')</code>, <code>.tooltip('hide')</code> и методы <code>.tooltip('toggle')</code>; это значение нельзя комбинировать с другими триггерами.</p>
        <p>Само по себе <code>'hover'</code> приведет к появлению всплывающих подсказок, которые нельзя запускать с клавиатуры, и их следует использовать только при наличии альтернативных методов передачи той же информации пользователям клавиатуры.</p>
      </td>
    </tr>
    <tr>
      <td><code>fallbackPlacements</code></td>
      <td>array</td>
      <td><code>['top', 'right', 'bottom', 'left']</code></td>
      <td>Определите резервные места размещения, предоставив список мест размещения в массиве (в порядке предпочтения). Для получения дополнительной информации смотрите <a href="https://popper.js.org/docs/v2/modifiers/flip/#fallbackplacements">документацию о поведении</a> Popper.</td>
    </tr>
    <tr>
      <td><code>boundary</code></td>
      <td>string | element</td>
      <td><code>'clippingParents'</code></td>
      <td>Граница ограничения переполнения всплывающей подсказки (применяется только к модификатору Popper preventOverflow). По умолчанию это <code>'clippingParents'</code> и может принимать ссылку HTMLElement (только через JavaScript). Дополнительную информацию смотрите в <a href="https://popper.js.org/docs/v2/utils/detect-overflow/#boundary">detectOverflow в документации Popper</a>.</td>
    </tr>
    <tr>
      <td><code>customClass</code></td>
      <td>string | function</td>
      <td><code>''</code></td>
      <td>
        <p>Добавляйте классы во всплывающую подсказку, когда она отображается. Обратите внимание, что эти классы будут добавлены в дополнение к любым классам, указанным в шаблоне. Чтобы добавить несколько классов, разделите их пробелами: <code>'class-1 class-2'</code>.</p>
        <p>Вы также можете передать функцию, которая должна возвращать одну строку, содержащую дополнительные имена классов.</p>
      </td>
    </tr>
    <tr>
      <td><code>sanitize</code></td>
      <td>boolean</td>
      <td><code>true</code></td>
      <td>Включите или отключите дезинфекцию. Если активированы параметры <code>'template'</code> и <code>'title'</code> , будут очищены. Смотрите раздел <a href="{{< docsref "/getting-started/javascript#очистка" >}}">очистки в нашей документации по JavaScript</a>.</td>
    </tr>
    <tr>
      <td><code>allowList</code></td>
      <td>object</td>
      <td><a href="{{< docsref "/getting-started/javascript#sanitizer" >}}">Значение по умолчанию</a></td>
      <td>Объект, содержащий разрешенные атрибуты и теги</td>
    </tr>
    <tr>
      <td><code>sanitizeFn</code></td>
      <td>null | function</td>
      <td><code>null</code></td>
      <td>Здесь Вы можете предоставить свою собственную функцию дезинфекции. Это может быть полезно, если Вы предпочитаете использовать специальную библиотеку для выполнения очистки.</td>
    </tr>
    <tr>
      <td><code>offset</code></td>
      <td>array | string | function</td>
      <td><code>[0, 0]</code></td>
      <td>
        <p>Смещение всплывающей подсказки относительно цели. Вы можете передать строку в атрибутах данных со значениями, разделенными запятыми, например: <code>data-bs-offset="10,20"</code></p>
        <p>Когда функция используется для определения смещения, она вызывается с объектом, содержащим размещение popper, ссылку и popper rects в качестве первого аргумента. Узел DOM запускающего элемента передается в качестве второго аргумента. Функция должна возвращать массив с двумя числами: <code>[<a href="https://popper.js.org/docs/v2/modifiers/offset/#skidding-1">skidding</a>, <a href="https://popper.js.org/docs/v2/modifiers/offset/#distance-1">distance</a>]</code>.</p>
        <p>Дополнительную информацию смотрите в <a href="https://popper.js.org/docs/v2/modifiers/offset/#options">offset</a> документации Popper.</p>
      </td>
    </tr>
    <tr>
      <td><code>offset</code></td>
      <td>array | string | function</td>
      <td><code>[0, 0]</code></td>
      <td>
        <p>Смещение всплывающей подсказки относительно цели. Вы можете передать строку в атрибутах данных со значениями, разделенными запятыми, например: <code>data-bs-offset="10,20"</code></p>
        <p>Когда функция используется для определения смещения, она вызывается с объектом, содержащим размещение popper, ссылку и popper rects в качестве первого аргумента. Узел DOM запускающего элемента передается в качестве второго аргумента. Функция должна возвращать массив с двумя числами: <code>[<a href="https://popper.js.org/docs/v2/modifiers/offset/#skidding-1">skidding</a>, <a href="https://popper.js.org/docs/v2/modifiers/offset/#distance-1">distance</a>]</code>.</p>
        <p>Дополнительную информацию смотрите в <a href="https://popper.js.org/docs/v2/modifiers/offset/#options">offset</a> документации Popper.</p>
      </td>
    </tr>
    <tr>
      <td><code>popperConfig</code></td>
      <td>null | object | function</td>
      <td><code>null</code></td>
      <td>
        <p>Чтобы изменить конфигурацию Popper по умолчанию для Bootstrap, смотрите <a href="https://popper.js.org/docs/v2/constructors/#options">конфигурацию Popper</a>.</p>
        <p>Когда функция используется для создания конфигурации Popper, она вызывается с объектом, который содержит конфигурацию Popper по умолчанию для Bootstrap. Это поможет вам использовать и объединить настройки по умолчанию с вашей собственной конфигурацией. Функция должна возвращать объект конфигурации для Popper.</p>
      </td>
    </tr>
  </tbody>
</table>

{{< callout info >}}
#### Атрибуты данных для отдельных всплывающих подсказок

В качестве альтернативы параметры для отдельных всплывающих подсказок можно указать с помощью атрибутов данных, как описано выше.
{{< /callout >}}

#### Использование функции с `popperConfig`

```js
var tooltip = new bootstrap.Tooltip(element, {
  popperConfig: function (defaultBsPopperConfig) {
    // var newPopperConfig = {...}
    // use defaultBsPopperConfig if needed...
    // return newPopperConfig
  }
})
```

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

#### show

Показывает всплывающую подсказку элемента. **Возврат к вызывающей стороне до того, как всплывающая подсказка была фактически показана** (то есть до того, как произойдет событие `shown.bs.tooltip`). Это считается "ручным" запуском всплывающей подсказки. Всплывающие подсказки с заголовками нулевой длины никогда не отображаются.

```js
tooltip.show()
```

#### hide

Скрывает всплывающую подсказку элемента. **Возврат к вызывающей стороне до того, как всплывающая подсказка была фактически скрыта** (т.е. до того, как произойдет событие `hidden.bs.tooltip`). Это считается "ручным" запуском всплывающей подсказки.

```js
tooltip.hide()
```

#### toggle

Переключает всплывающую подсказку элемента. **Возврат к вызывающей стороне до того, как всплывающая подсказка была фактически показана или скрыта** (то есть до того, как произойдет событие `shown.bs.tooltip` или` hidden.bs.tooltip`). Это считается "ручным" запуском всплывающей подсказки.

```js
tooltip.toggle()
```

#### dispose

Скрывает и уничтожает всплывающую подсказку элемента (Удаляет сохраненные данные в элементе DOM). Всплывающие подсказки, использующие делегирование (которые создаются с использованием [параметра `selector`](#параметры)), не могут быть уничтожены индивидуально для дочерних элементов триггера.

```js
tooltip.dispose()
```

#### enable

Дает возможность отображения всплывающей подсказки элемента. **Подсказки включены по умолчанию.**

```js
tooltip.enable()
```

#### disable

Убирает возможность отображения всплывающей подсказки элемента. Всплывающая подсказка будет отображаться, только если она будет повторно включена.

```js
tooltip.disable()
```

#### toggleEnabled

Переключает возможность отображения или скрытия всплывающей подсказки элемента.

```js
tooltip.toggleEnabled()
```

#### update

Обновляет положение всплывающей подсказки элемента.

```js
tooltip.update()
```

#### getInstance

*Статический* метод, позволяющий получить экземпляр всплывающей подсказки, связанный с элементом DOM.

```js
var exampleTriggerEl = document.getElementById('example')
var tooltip = bootstrap.Tooltip.getInstance(exampleTriggerEl) // Returns a Bootstrap tooltip instance
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
      <td><code>show.bs.tooltip</code></td>
      <td>Это событие запускается немедленно при вызове метода экземпляра <code>show</code>.</td>
    </tr>
    <tr>
      <td><code>shown.bs.tooltip</code></td>
      <td>Это событие запускается, когда всплывающая подсказка становится видимой для пользователя (ожидает завершения переходов CSS).</td>
    </tr>
    <tr>
      <td><code>hide.bs.tooltip</code></td>
      <td>Это событие запускается сразу после вызова метода экземпляра <code>hide</code>.</td>
    </tr>
    <tr>
      <td><code>hidden.bs.tooltip</code></td>
      <td>Это событие запускается, когда всплывающая подсказка перестала быть скрытой от пользователя (будет ждать завершения переходов CSS).</td>
    </tr>
    <tr>
      <td><code>inserted.bs.tooltip</code></td>
      <td>Это событие запускается после события <code>show.bs.tooltip</code>, когда шаблон всплывающей подсказки был добавлен в DOM.</td>
    </tr>
  </tbody>
</table>

```js
var myTooltipEl = document.getElementById('myTooltip')
var tooltip = new bootstrap.Tooltip(myTooltipEl)

myTooltipEl.addEventListener('hidden.bs.tooltip', function () {
  // делайте что-нибудь...
})

tooltip.hide()
```
