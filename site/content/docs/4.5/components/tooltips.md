---
layout: docs
title: Всплывающие подсказки
description: Документация и примеры для добавления настраиваемых всплывающих подсказок Bootstrap с помощью CSS и JavaScript с использованием CSS3 для анимации и атрибутов данных для локального хранения заголовков.
group: components
toc: true
---

## Обзор

Что нужно знать при использовании плагина всплывающей подсказки:

- Подсказки полагаются на стороннюю библиотеку [Popper](https://popper.js.org/) для позиционирования. Вы должны включить [popper.min.js]({{< param "cdn.popper" >}}) перед bootstrap.js или использовать `bootstrap.bundle.min.js` / `bootstrap.bundle.js`, который содержит Popper чтобы всплывающие подсказки работали!
- Если Вы создаете наш JavaScript из исходного кода, он [требует `util.js`]({{< docsref "/getting-started/javascript#util" >}}).
- Всплывающие подсказки используются по соображениям производительности, поэтому **Вы должны инициализировать их самостоятельно**.
- Всплывающие подсказки с заголовками нулевой длины никогда не отображаются.
- Укажите `container: 'body'`, чтобы избежать проблем с рендерингом в более сложных компонентах (например, в наших группах ввода, группах кнопок и т.д.).
- Всплывающие подсказки для скрытых элементов не работают.
- Всплывающие подсказки для элементов `.disabled` или `disabled` должны запускаться для элемента-оболочки.
- При запуске от гиперссылок, охватывающих несколько строк, всплывающие подсказки будут центрированы. Используйте `white-space: nowrap;` на Ваших `<a>`, чтобы избежать такого поведения.
- Всплывающие подсказки должны быть скрыты до того, как соответствующие им элементы будут удалены из DOM.
- Всплывающие подсказки могут запускаться благодаря элементу внутри теневой модели DOM.

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

Получил все это? Отлично, посмотрим, как они работают, на некоторых примерах.

## Пример: Включить всплывающие подсказки везде

Один из способов инициализировать все всплывающие подсказки на странице - это выбрать их по их атрибуту `data-toggle`:

```js
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
```

## Примеры

Наведите курсор на ссылки ниже, чтобы увидеть всплывающие подсказки:

<div class="bd-example tooltip-demo">
  <p class="muted">Tight pants next level keffiyeh <a href="#" data-toggle="tooltip" title="Default tooltip">you probably</a> haven't heard of them. Photo booth beard raw denim letterpress vegan messenger bag stumptown. Farm-to-table seitan, mcsweeney's fixie sustainable quinoa 8-bit american apparel <a href="#" data-toggle="tooltip" title="Another tooltip">have a</a> terry richardson vinyl chambray. Beard stumptown, cardigans banh mi lomo thundercats. Tofu biodiesel williamsburg marfa, four loko mcsweeney's cleanse vegan chambray. A really ironic artisan <a href="#" data-toggle="tooltip" title="Another one here too">whatever keytar</a>, scenester farm-to-table banksy Austin <a href="#" data-toggle="tooltip" title="The last tip!">twitter handle</a> freegan cred raw denim single-origin coffee viral.
  </p>
</div>

Наведите указатель мыши на кнопки ниже, чтобы увидеть четыре направления подсказок: вверх, вправо, внизу и влево.

<div class="bd-example tooltip-demo">
  <div class="bd-example-tooltips">
    <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="top" title="Подсказка вверху">Подсказка вверху</button>
    <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="right" title="Подсказка справа">Подсказка справа</button>
    <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="bottom" title="Подсказка снизу">Подсказка снизу</button>
    <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="left" title="Подсказка слева">Подсказка слева</button>
    <button type="button" class="btn btn-secondary" data-toggle="tooltip" data-html="true" title="<em>Всплывающая подсказка</em> <u>с</u> <b>HTML</b>">Всплывающая подсказка с HTML</button>
  </div>
</div>

```html
<button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="top" title="Подсказка вверху">
  Подсказка вверху
</button>
<button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="right" title="Подсказка справа">
  Подсказка справа
</button>
<button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="bottom" title="Подсказка снизу">
  Подсказка снизу
</button>
<button type="button" class="btn btn-secondary" data-toggle="tooltip" data-placement="left" title="Подсказка слева">
  Подсказка слева
</button>
```

И с добавленным пользовательским HTML:

```html
<button type="button" class="btn btn-secondary" data-toggle="tooltip" data-html="true" title="<em>Всплывающая подсказка</em> <u>с</u> <b>HTML</b>">
  Всплывающая подсказка с HTML
</button>
```

## Применение

Плагин всплывающих подсказок генерирует контент и разметку по запросу и по умолчанию помещает всплывающие подсказки после их триггерного элемента.

Запуск всплывающей подсказки через JavaScript:

```js
$('#example').tooltip(options)
```

{{< callout warning >}}
##### Переполнение `auto` и `scroll`

Положение всплывающей подсказки пытается автоматически измениться, когда родительский контейнер имеет `overflow: auto` или` overflow: scroll`, как наш `.table-responsive`, но по-прежнему сохраняет исходное положение размещения. Чтобы решить эту проблему, установите для параметра `boundary` значение, отличное от значения по умолчанию, `'scrollParent'`, например, `'window'`:

```js
$('#example').tooltip({ boundary: 'window' })
```
{{< /callout >}}

### Разметка

Требуемая разметка для всплывающей подсказки - это только атрибут `data` и заголовок `title` HTML-элемента, для которого Вы хотите иметь всплывающую подсказку. Сгенерированная разметка всплывающей подсказки довольно проста, хотя для нее требуется позиция (по умолчанию плагином установлено значение `top`).

{{< callout warning >}}
##### Работа с всплывающими подсказками для пользователей клавиатуры и вспомогательных технологий

Вы должны добавлять всплывающие подсказки только к HTML-элементам, которые традиционно ориентированы на клавиатуру и являются интерактивными (например, ссылки или элементы управления формы). Хотя произвольные элементы HTML (такие как `<span>`) можно сделать доступными для фокусировки, добавив атрибут `tabindex =" 0 "`, это добавит потенциально раздражающие и сбивающие с толку позиции табуляции на неинтерактивных элементах для пользователей клавиатуры, и большинство Вспомогательные технологии в настоящее время не объявляют всплывающую подсказку в этой ситуации. Кроме того, не полагайтесь исключительно на `hover` в качестве триггера для Вашей всплывающей подсказки, так как это сделает невозможным запуск Ваших всплывающих подсказок для пользователей клавиатуры.
{{< /callout >}}

```html
<!-- HTML для записи -->
<a href="#" data-toggle="tooltip" title="Текст всплывающей подсказки!">Наведите на меня</a>

<!-- Разметка, созданная плагином -->
<div class="tooltip bs-tooltip-top" role="tooltip">
  <div class="arrow"></div>
  <div class="tooltip-inner">
    Текст всплывающей подсказки!
  </div>
</div>
```

### Отключенные элементы

Элементы с атрибутом `disabled` не являются интерактивными, то есть пользователи не могут сфокусироваться, навести на них курсор или щелкнуть их, чтобы вызвать всплывающую подсказку (или всплывающее окно). В качестве обходного пути Вы захотите вызвать всплывающую подсказку из оболочки `<div>` или `<span>`, в идеале сделанной с фокусировкой на клавиатуре, используя `tabindex="0"`, и переопределить `pointer-events` на отключенный элемент.

<div class="tooltip-demo">
{{< example >}}
<span class="d-inline-block" tabindex="0" data-toggle="tooltip" title="Отключенная подсказка">
  <button class="btn btn-primary" style="pointer-events: none;" type="button" disabled>Отключенная кнопка</button>
</span>
{{< /example >}}
</div>

### Параметры

Параметры могут передаваться через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-`, как в `data-animation=""`.

{{< callout warning >}}
Обратите внимание, что по соображениям безопасности параметры `sanitize`, `sanitizeFn` и `whiteList` не могут быть предоставлены с использованием атрибутов данных.
{{< /callout >}}

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="width: 100px;">Название</th>
      <th style="width: 100px;">Тип</th>
      <th style="width: 50px;">По умолчанию</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>animation</td>
      <td>boolean</td>
      <td>true</td>
      <td>Применить переход CSS fade к всплывающей подсказке</td>
    </tr>
    <tr>
      <td>container</td>
      <td>string | element | false</td>
      <td>false</td>
      <td>
        <p>Добавляет всплывающую подсказку к определенному элементу. Пример: <code>container: 'body'</code>. Этот параметр особенно полезен тем, что позволяет размещать всплывающую подсказку в потоке документа рядом с запускающим элементом, что предотвратит отрыв всплывающей подсказки от запускающего элемента во время изменения размера окна.</p>
      </td>
    </tr>
    <tr>
      <td>delay</td>
      <td>number | object</td>
      <td>0</td>
      <td>
        <p>Задержка отображения и скрытия всплывающей подсказки (мс) - не относится к ручному типу триггера</p>
        <p>Если указан номер, задержка применяется как к скрытию, так и к отображению</p>
        <p>Структура объекта: <code>delay: { "show": 500, "hide": 100 }</code></p>
      </td>
    </tr>
    <tr>
      <td>html</td>
      <td>boolean</td>
      <td>false</td>
      <td>
        <p>Разрешить HTML во всплывающей подсказке.</p>
        <p>Если задано значение true, HTML-теги в <code>title</code> всплывающей подсказки будут отображаться во всплывающей подсказке. Если false, метод jQuery <code>text</code> будет использоваться для вставки содержимого в DOM.</p>
        <p>Используйте текст, если Вас беспокоят XSS-атаки.</p>
      </td>
    </tr>
    <tr>
      <td>placement</td>
      <td>string | function</td>
      <td>'top'</td>
      <td>
        <p>Как разместить всплывающую подсказку - auto | top | bottom | left | right.<br>Если задано <code>auto</code> всплывающая подсказка будет динамически переориентирована.</p>
        <p>Когда функция используется для определения размещения, она вызывается с помощью узла DOM всплывающей подсказки в качестве первого аргумента и узла DOM элемента запуска в качестве второго. Контекст <code>this</code> установлен на экземпляр всплывающей подсказки.</p>
      </td>
    </tr>
    <tr>
      <td>selector</td>
      <td>string | false</td>
      <td>false</td>
      <td>Если предусмотрен селектор, объекты всплывающей подсказки будут делегированы указанным целям. На практике это также используется для применения всплывающих подсказок к динамически добавляемым элементам DOM (поддержка <code>jQuery.on</code>). Смотрите <a href="{{< param repo >}}/issues/4215">это</a> и <a href="https://codepen.io/team/bootstrap/pen/qBNGbYK">информативный пример</a>.</td>
    </tr>
    <tr>
      <td>template</td>
      <td>string</td>
      <td><code>'&lt;div class="tooltip" role="tooltip"&gt;&lt;div class="arrow"&gt;&lt;/div&gt;&lt;div class="tooltip-inner"&gt;&lt;/div&gt;&lt;/div&gt;'</code></td>
      <td>
        <p>Базовый HTML-код для использования при создании всплывающей подсказки.</p>
        <p>Заголовок всплывающей подсказки <code>title</code> будет вставлен в <code>.tooltip-inner</code>.</p>
        <p><code>.arrow</code> станет стрелкой всплывающей подсказки.</p>
        <p>Самый внешний элемент оболочки должен иметь класс <code>.tooltip</code> и <code>role="tooltip"</code>.</p>
      </td>
    </tr>
    <tr>
      <td>title</td>
      <td>string | element | function</td>
      <td>''</td>
      <td>
        <p>Значение заголовка по умолчанию, если атрибут <code>title</code> отсутствует.</p>
        <p>Если задана функция, она будет вызываться со ссылкой <code>this</code>, установленной на элемент, к которому прикреплена всплывающая подсказка.</p>
      </td>
    </tr>
    <tr>
      <td>trigger</td>
      <td>string</td>
      <td>'hover focus'</td>
      <td>
        <p>Как вызывается всплывающая подсказка - click | hover | focus | manual. Вы можете передать несколько триггеров; разделите их пробелом.</p>
        <p><code>'manual'</code> указывает, что всплывающая подсказка будет запускаться программно через <code>.tooltip('show')</code>, <code>.tooltip('hide')</code> и методы <code>.tooltip('toggle')</code>; это значение нельзя комбинировать с другими триггерами.</p>
        <p>Само по себе <code>'hover'</code> приведет к появлению всплывающих подсказок, которые нельзя запускать с клавиатуры, и их следует использовать только при наличии альтернативных методов передачи той же информации пользователям клавиатуры.</p>
      </td>
    </tr>
    <tr>
      <td>offset</td>
      <td>number | string | function</td>
      <td>0</td>
      <td>
        <p>Смещение всплывающей подсказки относительно цели.</p>
        <p>Когда функция используется для определения смещения, она вызывается с объектом, содержащим данные смещения в качестве первого аргумента. Функция должна возвращать объект с такой же структурой. Узел DOM запускающего элемента передается в качестве второго аргумента.</p>
        <p>Дополнительную информацию смотрите Popper <a href="https://popper.js.org/docs/v1/#modifiers..offset.offset">документации по смещению</a>.</p>
      </td>
    </tr>
    <tr>
      <td>fallbackPlacement</td>
      <td>string | array</td>
      <td>'flip'</td>
      <td>Разрешить указать, какую позицию Popper будет использовать при откате. Для получения дополнительной информации смотрите <a href="https://popper.js.org/docs/v1/#modifiers..flip.behavior">документацию о поведении</a> Popper.</td>
    </tr>
    <tr>
      <td>customClass</td>
      <td>string | function</td>
      <td>''</td>
      <td>
        <p>Добавляйте классы во всплывающую подсказку, когда она отображается. Обратите внимание, что эти классы будут добавлены в дополнение к любым классам, указанным в шаблоне. Чтобы добавить несколько классов, разделите их пробелами: <code>'a b'</code>.</p>
        <p>Вы также можете передать функцию, которая должна возвращать одну строку, содержащую дополнительные имена классов.</p>
      </td>
    </tr>
    <tr>
      <td>boundary</td>
      <td>string | element</td>
      <td>'scrollParent'</td>
      <td>Граница ограничения переполнения всплывающей подсказки. Принимает значения <code>'viewport'</code>, <code>'window'</code>, <code>'scrollParent'</code> или ссылку HTMLElement (только JavaScript). Дополнительную информацию смотрите <a href="https://popper.js.org/docs/v1/#modifiers..preventOverflow.boundariesElement">документацию preventOverflow</a> Popper.</td>
    </tr>
    <tr>
      <td>sanitize</td>
      <td>boolean</td>
      <td>true</td>
      <td>Включите или отключите очистку. Если активированы параметры <code>'template'</code> и <code>'title'</code>, будут очищены.</td>
    </tr>
    <tr>
      <td>whiteList</td>
      <td>object</td>
      <td><a href="{{< docsref "/getting-started/javascript#sanitizer" >}}">Значение по умолчанию</a></td>
      <td>Объект, содержащий разрешенные атрибуты и теги</td>
    </tr>
    <tr>
      <td>sanitizeFn</td>
      <td>null | function</td>
      <td>null</td>
      <td>Здесь Вы можете предоставить свою собственную функцию офистки. Это может быть полезно, если Вы предпочитаете использовать специальную библиотеку для выполнения очистки.</td>
    </tr>
    <tr>
      <td>popperConfig</td>
      <td>null | object</td>
      <td>null</td>
      <td>Чтобы изменить конфигурацию Popper по умолчанию для Bootstrap, смотрите <a href="https://popper.js.org/docs/v1/#Popper.Defaults">конфигурацию Popper</a>.</td>
    </tr>
  </tbody>
</table>

{{< callout info >}}
#### Атрибуты данных для отдельных всплывающих подсказок

В качестве альтернативы параметры для отдельных всплывающих подсказок можно указать с помощью атрибутов данных, как описано выше.
{{< /callout >}}

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

#### `$().tooltip(options)`

Присоединяет обработчик всплывающей подсказки к коллекции элементов.

#### `.tooltip('show')`

Показывает всплывающую подсказку элемента. **Возврат к вызывающей стороне до того, как всплывающая подсказка была фактически показана** (то есть до того, как произойдет событие `shown.bs.tooltip`). Это считается "ручным" запуском всплывающей подсказки. Всплывающие подсказки с заголовками нулевой длины никогда не отображаются.

```js
$('#element').tooltip('show')
```

#### `.tooltip('hide')`

Скрывает всплывающую подсказку элемента. **Возврат к вызывающей стороне до того, как всплывающая подсказка была фактически скрыта** (т.е. до того, как произойдет событие `hidden.bs.tooltip`). Это считается "ручным" запуском всплывающей подсказки.

```js
$('#element').tooltip('hide')
```

#### `.tooltip('toggle')`

Переключает всплывающую подсказку элемента. **Возврат к вызывающей стороне до того, как всплывающая подсказка была фактически показана или скрыта** (то есть до того, как произойдет событие `shown.bs.tooltip` или `hidden.bs.tooltip`). Это считается "ручным" запуском всплывающей подсказки.

```js
$('#element').tooltip('toggle')
```

#### `.tooltip('dispose')`

Скрывает и уничтожает всплывающую подсказку элемента. Всплывающие подсказки, использующие делегирование (которые создаются с использованием [параметр `selector`] (#параметры)), не могут быть уничтожены индивидуально для дочерних элементов триггера.

```js
$('#element').tooltip('dispose')
```

#### `.tooltip('enable')`

Дает возможность отображения всплывающей подсказки элемента. **Подсказки включены по умолчанию.**

```js
$('#element').tooltip('enable')
```

#### `.tooltip('disable')`

Удаляет возможность отображения всплывающей подсказки элемента. Всплывающая подсказка будет отображаться, только если она будет повторно включена.

```js
$('#element').tooltip('disable')
```

#### `.tooltip('toggleEnabled')`

Переключает возможность отображения или скрытия всплывающей подсказки элемента.

```js
$('#element').tooltip('toggleEnabled')
```

#### `.tooltip('update')`

Обновляет положение всплывающей подсказки элемента.

```js
$('#element').tooltip('update')
```

### События

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="width: 150px;">Тип события</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>show.bs.tooltip</td>
      <td>Это событие запускается немедленно при вызове метода экземпляра <code>show</code>.</td>
    </tr>
    <tr>
      <td>shown.bs.tooltip</td>
      <td>Это событие запускается, когда всплывающая подсказка становится видимой для пользователя (ожидает завершения переходов CSS).</td>
    </tr>
    <tr>
      <td>hide.bs.tooltip</td>
      <td>Это событие запускается сразу после вызова метода экземпляра <code>hide</code>.</td>
    </tr>
    <tr>
      <td>hidden.bs.tooltip</td>
      <td>Это событие запускается, когда всплывающая подсказка перестала быть скрытой от пользователя (будет ждать завершения переходов CSS).</td>
    </tr>
    <tr>
      <td>inserted.bs.tooltip</td>
      <td>Это событие запускается после события <code>show.bs.tooltip</code>, когда шаблон всплывающей подсказки был добавлен в DOM.</td>
    </tr>
  </tbody>
</table>

```js
$('#myTooltip').on('hidden.bs.tooltip', function () {
  // сделайте что-нибудь...
})
```
