---
layout: docs
title: Всплывающие окна
description: Документация и примеры добавления всплывающих окон Bootstrap, подобных тем, которые есть в iOS, к любому элементу на вашем сайте.
group: components
toc: true
---

## Обзор

Что нужно знать при использовании плагина всплывающих окон:

- Всплывающие окна полагаются на стороннюю библиотеку [Popper](https://popper.js.org/) для позиционирования. Вы должны включить [popper.min.js]({{< param "cdn.popper" >}}) перед bootstrap.js или использовать `bootstrap.bundle.min.js` / `bootstrap.bundle.js`, который содержит Popper.js, чтобы всплывающие окна работали!
- Всплывающие окна требуют [плагина всплывающей подсказки]]({{< docsref "/components/tooltips" >}}) в качестве зависимости.
- Всплывающие окна выбираются из соображений производительности, поэтому **Вы должны инициализировать их самостоятельно**.
- Значения `title` и `content` нулевой длины никогда не будут показывать всплывающее окно.
- Укажите `container: 'body'` чтобы избежать проблем с рендерингом в более сложных компонентах (например, в наших группах ввода, группах кнопок и т.д.).
- Запуск всплывающих окон для скрытых элементов не работает.
- Всплывающие окна для элементов `.disabled` или `disabled` должны запускаться на элементе оболочки.
- При запуске из якорей, которые переносятся по нескольким строкам, всплывающие окна будут центрированы между общей шириной якорей. Используйте `.text-nowrap` на Ваших `<a>`, чтобы избежать такого поведения.
- Всплывающие окна необходимо скрыть до того, как соответствующие им элементы будут удалены из DOM.
- Всплывающие окна могут запускаться благодаря элементу внутри теневой DOM.

{{< callout info >}}
{{< partial "callout-info-sanitizer.md" >}}
{{< /callout >}}

{{< callout info >}}
{{< partial "callout-info-sanitizer.md" >}}
{{< /callout >}}

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

Продолжайте читать, чтобы увидеть, как работают всплывающие окна, на некоторых примерах.

## Пример: Включить всплывающие окна везде

Один из способов инициализировать все всплывающие окна на странице - выбрать их по атрибуту `data-bs-toggle`:

```js
var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
  return new bootstrap.Popover(popoverTriggerEl)
})
```

## Пример: Использование опции `container`

Если у Вас есть стили родительского элемента, которые мешают отображению всплывающего окна, Вы захотите указать собственный `container`, чтобы HTML всплывающего окна отображался внутри этого элемента.

```js
var popover = new bootstrap.Popover(document.querySelector('.example-popover'), {
  container: 'body'
})
```

## Пример

{{< example >}}
<button type="button" class="btn btn-lg btn-danger" data-bs-toggle="popover" title="Заголовок всплывающего сообщения" data-bs-content="А вот и потрясающий контент. Это очень интересно. Правильно?">Нажмите, чтобы переключить всплывающее окно</button>
{{< /example >}}

### Четыре направления

Доступны четыре варианта: по верхнему, правому, нижнему и левому краям. Направления зеркалируются при использовании Bootstrap в RTL.

{{< example >}}
<button type="button" class="btn btn-secondary" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="top" data-bs-content="Верхнее всплывающее окно">
  Всплывающее окно вверху
</button>
<button type="button" class="btn btn-secondary" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="right" data-bs-content="Правое всплывающее окно">
  Всплывающее окно справа
</button>
<button type="button" class="btn btn-secondary" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="bottom" data-bs-content="Нижнее всплывающее окно">
  Всплывающее окно внизу
</button>
<button type="button" class="btn btn-secondary" data-bs-container="body" data-bs-toggle="popover" data-bs-placement="left" data-bs-content="Левое всплывающее окно">
  Всплывающее окно слева
</button>
{{< /example >}}

### Отклонить при следующем нажатии

Используйте триггер `focus`, чтобы закрыть всплывающие окна при следующем щелчке пользователем элемента, отличного от элемента переключения.

{{< callout danger >}}
#### Специальная разметка, необходимая для закрытия при следующем клике

Для правильного кроссбраузерного и кроссплатформенного поведения Вы должны использовать тег `<a>`, _не_ тег `<button>`, и Вы также должны включить [`tabindex`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/tabindex).
{{< /callout >}}

{{< example >}}
<a tabindex="0" class="btn btn-lg btn-danger" role="button" data-bs-toggle="popover" data-bs-trigger="focus" title="Отклоняемое всплывающее окно" data-bs-content="А вот и потрясающий контент. Это очень интересно. Правильно?">Отклоняемое всплывающее окно</a>
{{< /example >}}

```js
var popover = new bootstrap.Popover(document.querySelector('.popover-dismiss'), {
  trigger: 'focus'
})
```

### Отключенные элементы

Элементы с атрибутом `disabled` не являются интерактивными, то есть пользователи не могут навести на них курсор или щелкнуть по ним, чтобы вызвать всплывающее окно (или всплывающую подсказку). В качестве обходного пути Вы захотите запускать всплывающее окно из оболочки `<div>` или `<span>`, в идеале сделанной с фокусировкой на клавиатуре, используя `tabindex="0"`.

Для отключенных триггеров всплывающего окна Вы также можете предпочесть `data-bs-trigger="hover focus"`, чтобы всплывающее окно отображалось как немедленная визуальная обратная связь для ваших пользователей, поскольку они могут не ожидать _клик_ на отключенный элемент.

{{< example >}}
<span class="d-inline-block" tabindex="0" data-bs-toggle="popover" data-bs-trigger="hover focus" data-bs-content="Disabled popover">
  <button class="btn btn-primary" type="button" disabled>Отключенная кнопка</button>
</span>
{{< /example >}}

## Sass

### Переменные

{{< scss-docs name="popover-variables" file="scss/_variables.scss" >}}

## Использование

Включить всплывающие окна через JavaScript:

```js
var exampleEl = document.getElementById('example')
var popover = new bootstrap.Popover(exampleEl, options)
```

{{< callout warning >}}

### Как заставить всплывающие окна работать для пользователей клавиатуры и вспомогательных технологий

Чтобы позволить пользователям клавиатуры активировать Ваши всплывающие окна, Вам следует добавлять их только к элементам HTML, которые традиционно ориентированы на клавиатуру и являются интерактивными (например, ссылки или элементы управления формами). Хотя произвольные элементы HTML (такие как `<span>`) можно сделать доступными для фокусировки, добавив атрибут `tabindex="0"`, это добавит потенциально раздражающие и сбивающие с толку позиции табуляции на неинтерактивных элементах для пользователей клавиатуры, и большинство Вспомогательные технологии в настоящее время не объявляют содержимое всплывающего окна в этой ситуации. Кроме того, не полагайтесь исключительно на `hover` как на триггер для Ваших всплывающих окон, так как это сделает их невозможным для пользователей клавиатуры.

Хотя Вы можете вставлять богатый структурированный HTML-код в всплывающие окна с опцией `html`, мы настоятельно рекомендуем Вам избегать добавления чрезмерного количества контента. В настоящее время всплывающие окна работают так, что после отображения их содержимое привязывается к элементу триггера с атрибутом `aria-describedby`. В результате весь контент всплывающего окна будет объявлен пользователям вспомогательных технологий как один длинный непрерывный поток.

Кроме того, хотя можно также включить интерактивные элементы управления (например, элементы формы или ссылки) в Ваше всплывающее окно (путем добавления этих элементов в `allowList` разрешенных атрибутов и тегов), имейте в виду, что в настоящее время всплывающее окно не управляет фокусом клавиатуры. Когда пользователь клавиатуры открывает всплывающее окно, фокус остается на инициирующем элементе, и поскольку всплывающее окно обычно не следует сразу за триггером в структуре документа, нет гарантии, что перемещение вперед/нажатие <kbd>TAB</kbd> приведет к перемещению пользователя клавиатуры в само всплывающее окно. Короче говоря, простое добавление интерактивных элементов управления к всплывающему окну может сделать эти элементы управления недоступными/непригодными для использования пользователями клавиатуры и пользователей вспомогательных технологий или, по крайней мере, сделать общий порядок фокусировки нелогичным. В этих случаях рассмотрите возможность использования модального диалога.
{{< /callout >}}

### Параметры

Параметры можно передавать через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра в `data-bs-`, как в `data-bs-animation=""`. Обязательно измените тип case имени параметра с camelCase на kebab-case при передаче параметров через атрибуты данных. Например, вместо использования `data-bs-customClass="beautifier"` используйте `data-bs-custom-class="beautifier"`.

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
      <td>Применить переход CSS fade к всплывающему окну</td>
    </tr>
    <tr>
      <td><code>container</code></td>
      <td>string | element | false</td>
      <td><code>false</code></td>
      <td>
        <p>Добавляет всплывающее окно к определенному элементу. Пример: <code>container: 'body'</code>. Этот параметр особенно полезен тем, что позволяет Вам размещать всплывающее окно в потоке документа рядом с элементом запуска, что предотвращает отрыв всплывающего окна от элемента запуска во время изменения размера окна.</p>
      </td>
    </tr>
    <tr>
      <td><code>content</code></td>
      <td>string | element | function</td>
      <td><code>''</code></td>
      <td>
        <p>Значение содержимого по умолчанию, если атрибут <code>data-bs-content</code> отсутствует.</p>
        <p>Если задана функция, она будет вызываться со ссылкой <code>this</code>, установленной на элемент, к которому прикреплено всплывающее окно.</p>
      </td>
    </tr>
    <tr>
      <td><code>delay</code></td>
      <td>number | object</td>
      <td><code>0</code></td>
      <td>
        <p>Задержка показа и скрытия всплывающего окна (мс) - не относится к ручному типу триггера</p>
        <p>Если указан номер, задержка применяется как к скрытию, так и к отображению.</p>
        <p>Структура объекта: <code>delay: { "show": 500, "hide": 100 }</code></p>
      </td>
    </tr>
    <tr>
      <td><code>html</code></td>
      <td>boolean</td>
      <td><code>false</code></td>
      <td>Вставьте HTML в всплывающее окно. Если false, свойство, <code>innerText</code> будет использоваться для вставки содержимого в DOM. Используйте текст, если Вас беспокоят XSS-атаки.</td>
    </tr>
    <tr>
      <td><code>placement</code></td>
      <td>string | function</td>
      <td><code>'right'</code></td>
      <td>
        <p>Как разместить всплывающее сообщение - auto | top | bottom | left | right.<br>Когда <code>auto</code>, всплывающее окно будет динамически переориентировано.</p>
        <p>Когда функция используется для определения размещения, она вызывается с помощью узла DOM всплывающего окна в качестве первого аргумента и узла DOM элемента запуска в качестве второго. Контекст <code>this</code> установлен на экземпляр всплывающего окна.</p>
      </td>
    </tr>
    <tr>
      <td><code>selector</code></td>
      <td>string | false</td>
      <td><code>false</code></td>
      <td>Если указан селектор, объекты всплывающих окон будут делегированы указанным целям. На практике это используется для включения всплывающих окон динамического HTML-контента. См. <a href="{{< param repo >}}/issues/4215">это</a> и <a href="https://codepen.io/team/bootstrap/pen/zYBXGwX?editors=1010">информативный пример</a>.</td>
    </tr>
    <tr>
      <td><code>template</code></td>
      <td>string</td>
      <td><code>'&lt;div class="popover" role="tooltip"&gt;&lt;div class="popover-arrow"&gt;&lt;/div&gt;&lt;h3 class="popover-header"&gt;&lt;/h3&gt;&lt;div class="popover-body"&gt;&lt;/div&gt;&lt;/div&gt;'</code></td>
      <td>
        <p>Базовый HTML-код для использования при создании всплывающего окна.</p>
        <p><code>title</code> всплывающего окна будет вставлен в <code>.popover-header</code>.</p>
        <p><code>content</code> всплывающего окна будет вставлен в <code>.popover-body</code>.</p>
        <p><code>.popover-arrow</code> станет стрелкой всплывающего окна.</p>
        <p>Самый внешний элемент оболочки должен иметь класс <code>.popover</code>.</p>
      </td>
    </tr>
    <tr>
      <td><code>title</code></td>
      <td>string | element | function</td>
      <td><code>''</code></td>
      <td>
        <p>Значение заголовка по умолчанию, если атрибут <code>title</code> отсутствует.</p>
        <p>Если задана функция, она будет вызываться со ссылкой <code>this</code>, установленной на элемент, к которому прикреплено всплывающее окно.</p>
      </td>
    </tr>
    <tr>
      <td><code>trigger</code></td>
      <td>string</td>
      <td><code>'click'</code></td>
      <td>Как запускается всплывающее окно - click | hover | focus | manual. Вы можете передать несколько триггеров; разделите их пробелом. <code>manual</code> нельзя комбинировать с другими триггерами.</td>
    </tr>
    <tr>
      <td><code>fallbackPlacements</code></td>
      <td>array</td>
      <td><code>['top', 'right', 'bottom', 'left']</code></td>
      <td>Определите резервные места размещения, предоставив список мест размещения в массиве (в порядке предпочтения). Дополнительную информацию смотрите в <a href="https://popper.js.org/docs/v2/modifiers/flip/#fallbackplacements">документации о поведении</a> Popper.</td>
    </tr>
    <tr>
      <td><code>boundary</code></td>
      <td>string | element</td>
      <td><code>'clippingParents'</code></td>
      <td>Граница ограничения переполнения всплывающего окна (применяется только к модификатору Popper preventOverflow). По умолчанию это <code>'clippingParents'</code> и может принимать ссылку HTMLElement (только через JavaScript). Дополнительную информацию смотрите в <a href="https://popper.js.org/docs/v2/utils/detect-overflow/#boundary">detectOverflow документации Popper</a>.</td>
    </tr>
    <tr>
      <td><code>customClass</code></td>
      <td>string | function</td>
      <td><code>''</code></td>
      <td>
        <p>Добавляйте классы в всплывающее окно, когда оно отображается. Обратите внимание, что эти классы будут добавлены в дополнение к любым классам, указанным в шаблоне. Чтобы добавить несколько классов, разделите их пробелами: <code>'class-1 class-2'</code>.</p>
        <p>Вы также можете передать функцию, которая должна возвращать одну строку, содержащую дополнительные имена классов.</p>
      </td>
    </tr>
    <tr>
      <td><code>sanitize</code></td>
      <td>boolean</td>
      <td><code>true</code></td>
      <td>Включите или отключите дезинфекцию. Если активированы параметры <code>'template'</code>, <code>'content'</code> и <code>'title'</code>, будут очищены. Смотрите раздел <a href="{{< docsref "/getting-started/javascript#чистильщик" >}}">очистки в нашей документации по JavaScript</a>.</td>
    </tr>
    <tr>
      <td><code>allowList</code></td>
      <td>object</td>
      <td><a href="{{< docsref "/getting-started/javascript#чистильщик" >}}">Значение по умолчанию</a></td>
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
        <p>Смещение всплывающего окна относительно его цели. Вы можете передать строку в атрибутах данных со значениями, разделенными запятыми, например: <code>data-bs-offset="10,20"</code></p>
        <p>Когда функция используется для определения смещения, она вызывается с объектом, содержащим размещение popper, ссылку и popper rects в качестве первого аргумента. Узел DOM запускающего элемента передается в качестве второго аргумента. Функция должна возвращать массив с двумя числами: <code>[<a href="https://popper.js.org/docs/v2/modifiers/offset/#skidding-1">skidding</a>, <a href="https://popper.js.org/docs/v2/modifiers/offset/#distance-1">distance</a>]</code>.</p>
        <p>Дополнительную информацию смотрите в <a href="https://popper.js.org/docs/v2/modifiers/offset/#options">offset</a> документации Popper.</p>
      </td>
    </tr>
    <tr>
      <td><code>offset</code></td>
      <td>array | string | function</td>
      <td><code>[0, 8]</code></td>
      <td>
        <p>Смещение всплывающего окна относительно его цели. Вы можете передать строку в атрибутах данных со значениями, разделенными запятыми, например: <code>data-bs-offset="10,20"</code></p>
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
#### Атрибуты данных для отдельных всплывающих окон

В качестве альтернативы параметры для отдельных всплывающих окон можно указать с помощью атрибутов данных, как описано выше.
{{< /callout >}}

#### Использование функции с `popperConfig`

```js
var popover = new bootstrap.Popover(element, {
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

Показывает всплывающее окно элемента. **Возврат к вызывающей стороне до того, как всплывающее окно было показано** (то есть до того, как произойдет событие `shown.bs.popover`). Это считается "ручным" запуском всплывающего окна. Всплывающие окна, заголовок и содержимое которых имеют нулевую длину, никогда не отображаются.

```js
myPopover.show()
```

#### hide

Скрывает всплывающее окно элемента. **Возврат к вызывающей стороне до того, как всплывающее окно было фактически скрыто** (т.е. до того, как произойдет событие `hidden.bs.popover`). Это считается "ручным" запуском всплывающего окна.

```js
myPopover.hide()
```

#### toggle

Переключает всплывающее окно элемента (Удаляет сохраненные данные в элементе DOM). **Возврат к вызывающей стороне до того, как всплывающее окно было фактически показано или скрыто** (то есть до того, как произойдет событие `shown.bs.popover` или `hidden.bs.popover`). Это считается "ручным" запуском всплывающего окна.

```js
myPopover.toggle()
```

#### dispose

Скрывает и уничтожает всплывающее окно элемента. Всплывающие окна, использующие делегирование (которые создаются с использованием [параметр `selector`](#параметры)), не могут быть уничтожены индивидуально для дочерних элементов триггера.

```js
myPopover.dispose()
```

#### enable

Дает возможность отображения всплывающего окна элемента. **По умолчанию всплывающие окна включены.**

```js
myPopover.enable()
```

#### disable

Удаляет возможность отображения всплывающего окна элемента. Всплывающее окно будет отображаться, только если оно будет повторно включено.

```js
myPopover.disable()
```

#### toggleEnabled

Переключает возможность отображения или скрытия всплывающего окна элемента.

```js
myPopover.toggleEnabled()
```

#### update

Обновляет позицию всплывающего окна элемента.

```js
myPopover.update()
```

#### getInstance

*Статический* метод, который позволяет Вам получить экземпляр всплывающего окна, связанный с элементом DOM

```js
var exampleTriggerEl = document.getElementById('example')
var popover = bootstrap.Popover.getInstance(exampleTriggerEl) // Возвращает экземпляр всплывающего окна Bootstrap
```

#### getOrCreateInstance

*Статический* метод, который позволяет вам получить экземпляр всплывающего окна, связанный с элементом DOM, или создать новый, если он не был инициализирован.

```js
var exampleTriggerEl = document.getElementById('example')
var popover = bootstrap.Popover.getOrCreateInstance(exampleTriggerEl) // Возвращает экземпляр всплывающего окна Bootstrap
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
      <td>show.bs.popover</td>
      <td>Это событие запускается немедленно при вызове метода экземпляра <code>show</code>.</td>
    </tr>
    <tr>
      <td>shown.bs.popover</td>
      <td>Это событие запускается, когда всплывающее окно становится видимым для пользователя (будет ожидать завершения переходов CSS).</td>
    </tr>
    <tr>
      <td>hide.bs.popover</td>
      <td>Это событие запускается сразу после вызова метода экземпляра <code>hide</code>.</td>
    </tr>
    <tr>
      <td>hidden.bs.popover</td>
      <td>Это событие запускается, когда всплывающее окно перестало быть скрытым от пользователя (будет ожидать завершения переходов CSS).</td>
    </tr>
    <tr>
      <td>inserted.bs.popover</td>
      <td>Это событие запускается после события <code>show.bs.popover</code>, когда шаблон всплывающего окна добавлен в DOM.</td>
    </tr>
  </tbody>
</table>

```js
var myPopoverTrigger = document.getElementById('myPopover')
myPopoverTrigger.addEventListener('hidden.bs.popover', function () {
  // сделайте что-нибудь...
})
```
