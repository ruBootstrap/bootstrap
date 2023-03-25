---
layout: docs
title: Reboot
description: Перезагрузка - это набор изменений CSS для конкретных элементов в одном файле, запускает Bootstrap, чтобы обеспечить элегантную, последовательную и простую основу для построения.
group: content
aliases: "/docs/5.3/content/"
toc: true
---

## Подход

Reboot (перезагрузка) основывается на Normalize, предоставляя многие элементы HTML с несколько самоуверенными стилями, используя только селекторы элементов. Дополнительная стилизация выполняется только с классами. Например, мы перезагружаем некоторые стили `<table>` для упрощения базовой линии, а позже предоставляем `.table`, `.table-bordered` и другие.

Вот наши рекомендации и причины выбора того, что следует переопределить в Перезагрузке:

- Обновите некоторые значения браузера по умолчанию, чтобы использовать `rem` вместо `em` для масштабируемого интервала между компонентами.
- Избегайте `margin-top`. Вертикальные поля могут исчезнуть, что приведет к неожиданным результатам. Что еще более важно, одно направление `margin` это более простая ментальная модель.
- Для упрощения масштабирования по размеру устройства в элементах блока следует использовать `rem` для `margin`.
- Сведите к минимуму объявления свойств, связанных с `font`, по возможности используйте `inherit`.

## Переменные CSS

{{< added-in "5.2.0" >}}

В версии 5.1.1 мы стандартизировали обязательные `@import` для всех наших пакетов CSS (включая `bootstrap.css`, `bootstrap-reboot.css` и `bootstrap-grid.css`), чтобы включить `_root.scss`. Это добавляет переменные CSS уровня `:root` ко всем пакетам, независимо от того, сколько из них используется в этом пакете. В конечном счете, в Bootstrap 5 со временем будет добавляться больше [CSS-переменных]({{< docsref "/customize/css-variables" >}}), чтобы обеспечить больше настроек в реальном времени без необходимости постоянно перекомпилировать Sass. Наш подход заключается в том, чтобы взять наши исходные переменные Sass и преобразовать их в переменные CSS. Таким образом, даже если вы не используете переменные CSS, у вас все еще есть все возможности Sass. **Это еще не завершено, и для полной реализации потребуется время.**

Например, рассмотрите эти переменные CSS `:root` для общих стилей `<body>`:

{{< scss-docs name="root-body-variables" file="scss/_root.scss" >}}

На практике эти переменные затем применяются при перезагрузке следующим образом:

{{< scss-docs name="reboot-body-rules" file="scss/_reboot.scss" >}}

Что позволяет вам делать настройки в реальном времени, как вам нравится:

```html
<body style="--bs-body-color: #333;">
  <!-- ... -->
</body>
```

## Параметры страницы по умолчанию

Элементы `<html>` и `<body>` обновлены, чтобы обеспечить лучшие значения по умолчанию для всей страницы. Более конкретно:

- `box-sizing` устанавливается глобально для каждого элемента, включая `*::before` и `*::after`, для `border-box`. Это гарантирует, что заявленная ширина элемента никогда не будет превышена из-за заполнения или границы.
  - Базовый размер `font-size` не объявлен в `<html>`, но предполагается `16px` (по умолчанию в браузере). `font-size: 1rem` применяется к элементу `<body>` для быстрого масштабирования типов с помощью медиа-запросов, при этом соблюдая предпочтения пользователя и обеспечивая более доступный подход. Это значение по умолчанию для браузера можно изменить, изменив переменную `$font-size-root`.
- `<body>` также устанавливает глобальные значения `font-family`, `font-weight`, `line-height` и `color`. Позднее это наследуется некоторыми элементами формы, чтобы предотвратить несоответствие шрифтов.
- Для безопасности `<body>` имеет объявленный `background-color`, по умолчанию `#fff`.

## Стек собственных шрифтов

Bootstrap использует «стек собственных шрифтов» или «стек системных шрифтов» для оптимального рендеринга текста на всех устройствах и ОС. Эти системные шрифты были разработаны специально для современных устройств с улучшенным отображением на экранах, поддержкой переменных шрифтов и многим другим. Узнайте больше о [стеках собственных шрифтов в этой статье *Smashing Magazine*](https://www.smashingmagazine.com/2015/11/using-system-ui-fonts-practical-guide/).

```scss
$font-family-sans-serif:
  // Кросс-платформенное общее семейство шрифтов (шрифт пользовательского интерфейса по умолчанию)
  system-ui,
  // Safari для macOS и iOS (San Francisco)
  -apple-system,
  // Windows
  "Segoe UI",
  // Android
  Roboto,
  // older macOS and iOS
  "Helvetica Neue"
  // Linux
  "Noto Sans",
  "Liberation Sans",
  // Basic web fallback
  Arial,
  // Sans serif fallback
  sans-serif,
  // Emoji шрифты
  "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji" !default;
```

Обратите внимание: поскольку стек шрифтов включает шрифты эмодзи, многие распространенные символы Unicode символов/дингбатов будут отображаться как разноцветные пиктограммы. Их внешний вид будет варьироваться в зависимости от стиля, используемого в собственном шрифте emoji браузера/платформы, и на них не будут влиять никакие `color` стили CSS.

`font-family` применяется к `<body>` и автоматически наследуется глобально через Bootstrap. Чтобы переключить глобально `font-family`, обновите `$font-family-base` и перекомпилируйте Bootstrap.

## Заголовки

У всех элементов заголовков — `<h1>`—`<h6>` удалено `margin-top`, а `margin-bottom: .5rem` установлено, а `line-height` ужесточено. Хотя заголовки наследуют свой `color` по умолчанию, вы также можете переопределить его с помощью дополнительной переменной CSS `--bs-heading-color`.

{{< bs-table "table" >}}
| Heading | Example |
| --- | --- |
| `<h1></h1>` | <span class="h1">h1. Заголовок Bootstrap</span> |
| `<h2></h2>` | <span class="h2">h2. Заголовок Bootstrap</span> |
| `<h3></h3>` | <span class="h3">h3. Заголовок Bootstrap</span> |
| `<h4></h4>` | <span class="h4">h4. Заголовок Bootstrap</span> |
| `<h5></h5>` | <span class="h5">h5. Заголовок Bootstrap</span> |
| `<h6></h6>` | <span class="h6">h6. Заголовок Bootstrap</span> |
{{< /bs-table >}}

## Параграфы

У всех элементов `<p>` их `margin-top` удалено, а `margin-bottom: 1rem` установлено для упрощения интервала.

{{< example >}}
<p>This is an example paragraph.</p>
{{< /example >}}

## Ссылки

Ссылки имеют `color` по умолчанию и подчеркивание. Хотя ссылки изменяются при `:hover`, они не меняются в зависимости от того, посещал ли кто-то ссылку `:visited`. Они также не получают никаких специальных стилей `:focus`.

{{< example >}}
<a href="#">This is an example link</a>
{{< /example >}}

Начиная с версии 5.3.x, `color` ссылки задается с помощью `rgba()` и новых переменных CSS `-rgb`, что позволяет легко настраивать непрозрачность цвета ссылки. Измените непрозрачность цвета ссылки с помощью переменной CSS `--bs-link-opacity`:

{{< example >}}
<a href="#" style="--bs-link-opacity: .5">This is an example link</a>
{{< /example >}}


Ссылки-заполнители — те, у которых нет `href`, — нацелены на более конкретный селектор, а их `color` и `text-decoration` сбрасываются до значений по умолчанию.

{{< example >}}
<a>This is a placeholder link</a>
{{< /example >}}

## Горизонтальные правила

Элемент `<hr>` был упрощен. Подобно настройкам браузера по умолчанию, `<hr>` стилизуются через `border-top`, имеют значение по умолчанию `opacity: .25` и автоматически наследуют `border-color` через `color`, в том числе, когда `color` устанавливается через родителя. Их можно изменить с помощью утилит для текста, границ и непрозрачности.

{{< example >}}
<hr>

<div class="text-success">
  <hr>
</div>

<hr class="border border-danger border-2 opacity-50">
<hr class="border border-primary border-3 opacity-75">
{{< /example >}}

## Списки

Во всех списках `<ul>`, `<ol>` и `<dl>` удалены их `margin-top` и `margin-bottom: 1rem`. Вложенные списки не имеют `margin-bottom`. Мы также сбросили `padding-left` для элементов `<ul>` и `<ol>`.

<div class="bd-example">
{{< markdown >}}
* У всех списков удалены верхние поля
* И их нижнее поле нормализовано
* Вложенные списки не имеют нижнего поля
  * Таким образом, они имеют более ровный вид
  * Особенно, когда за ними следуют другие элементы списка
* Также был сброшен левый отступ

1. Вот упорядоченный список
2. С несколькими элементами списка
3. Он имеет такой же общий вид
4. Как предыдущий неупорядоченный список
{{< /markdown >}}
</div>

Для упрощения стиля, четкой иерархии и лучшего интервала в списках описаний обновлены поля `margin`. `<dd>` сбрасывает `margin-left` в `0` и добавляет `margin-bottom: .5rem`. `<dt>` выделены **жирным шрифтом**.

<div class="bd-example">
  <dl>
    <dt>Description lists</dt>
    <dd>A description list is perfect for defining terms.</dd>
    <dt>Term</dt>
    <dd>Definition for the term.</dd>
    <dd>A second definition for the same term.</dd>
    <dt>Another term</dt>
    <dd>Definition for this other term.</dd>
  </dl>
</div>

## Строчный код

Оберните строчные фрагменты кода в `<code>`. Обязательно избегайте угловых скобок HTML.

{{< example >}}
Например, <code>&lt;раздел&gt;</code> должен быть заключен в оболочку как строчный.
{{< /example >}}

## Блоки кода

Используйте `<pre>` для нескольких строк кода. Еще раз, не забудьте снять угловые скобки в коде для правильного рендеринга. Элемент `<pre>` сбрасывается, чтобы удалить его `margin-top` и использовать единицы `rem` для его `margin-bottom`.

{{< example >}}
<pre><code>&lt;p&gt;Образец текста здесь...&lt;/p&gt;
&lt;p&gt;И еще одна строка образца текста здесь...&lt;/p&gt;
</code></pre>
{{< /example >}}

## Переменные

Для обозначения переменных используйте тег `<var>`.

{{< example >}}
<var>y</var> = <var>m</var><var>x</var> + <var>b</var>
{{< /example >}}

## Пользовательский ввод

Используйте `<kbd>` для обозначения ввода, который обычно вводится с клавиатуры.

{{< example >}}
Чтобы сменить каталог, введите <kbd>cd</kbd>, а затем имя каталога.<br>
Для редактирования настроек нажмите <kbd><kbd>Ctrl</kbd> + <kbd>,</kbd></kbd>
{{< /example >}}

## Пример вывода

Для указания образца вывода из программы используйте тег `<samp>`.

{{< example >}}
<samp>Этот текст следует рассматривать как образец вывода компьютерной программы.</samp>
{{< /example >}}

## Таблицы

Таблицы немного скорректированы для стиля `<caption>`, сворачивания границ и обеспечения единообразия `text-align` повсюду. Дополнительные изменения границ, отступов и прочего связаны с [классом `.table`]({{< docsref "/content/tables" >}}).

{{< example >}}
<table>
  <caption>
    Это пример таблицы, а это ее заголовок для описания содержимого.
  </caption>
  <thead>
    <tr>
      <th>Заголовок таблицы</th>
      <th>Заголовок таблицы</th>
      <th>Заголовок таблицы</th>
      <th>Заголовок таблицы</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Ячейка таблицы</td>
      <td>Ячейка таблицы</td>
      <td>Ячейка таблицы</td>
      <td>Ячейка таблицы</td>
    </tr>
    <tr>
      <td>Ячейка таблицы</td>
      <td>Ячейка таблицы</td>
      <td>Ячейка таблицы</td>
      <td>Ячейка таблицы</td>
    </tr>
    <tr>
      <td>Ячейка таблицы</td>
      <td>Ячейка таблицы</td>
      <td>Ячейка таблицы</td>
      <td>Ячейка таблицы</td>
    </tr>
  </tbody>
</table>
{{< /example >}}

## Формы

Различные элементы формы были перезагружены для упрощения базовых стилей. Вот некоторые из наиболее заметных изменений:

- `<fieldset>` не имеют границ, отступов или полей, поэтому их можно легко использовать в качестве оберток для отдельных полей ввода или групп полей ввода.
- `<legend>` как и наборы полей, также были переработаны, чтобы отображаться как своего рода заголовки.
- `<label>` установлены в `display: inline-block`, чтобы разрешить применение `margin`.
- Элементы `<input>`, `<select>`, `<textarea>` и `<button>` в основном обрабатываются Normalize, но Reboot удаляет их `margin` и устанавливает `line-height: inherit`, тоже.
- `<textarea>` изменены так, чтобы их размер можно было изменять только по вертикали, поскольку изменение размера по горизонтали часто "ломает" макет страницы.
- Элементы кнопки `<button>` и `<input>` имеют `cursor: pointer` когда `:not(:disabled)`.

Эти и другие изменения показаны ниже.

{{< callout warning >}}
{{< partial "callouts/warning-input-support.md" >}}
{{< /callout >}}

<form class="bd-example">
  <fieldset>
    <legend>Пример легенды</legend>
    <p>
      <label for="input">Пример поля ввода</label>
      <input type="text" id="input" placeholder="Пример поля ввода input">
    </p>
    <p>
      <label for="email">Пример эл. почты</label>
      <input type="email" id="email" placeholder="test@example.com">
    </p>
    <p>
      <label for="tel">Пример телефона</label>
      <input type="tel" id="tel" placeholder="+79876543210">
    </p>
    <p>
      <label for="url">Пример адреса</label>
      <input type="url" id="url" placeholder="yandex.ru">
    </p>
    <p>
      <label for="number">Пример поля ввода числа</label>
      <input type="number" id="number" placeholder="100">
    </p>
    <p>
      <label for="search">Пример поиска</label>
      <input type="search" id="search">
    </p>
    <p>
      <label for="range">Пример диапазона</label>
      <input type="range" id="range" min="0" max="10">
    </p>
    <p>
      <label for="file">Пример выбора файла</label>
      <input type="file" id="file">
    </p>
    <p>
      <label for="select">Пример выбора из списка</label>
      <select id="select">
        <option value="">Выберите...</option>
        <optgroup label="Группа опций 1">
          <option value="">Опция 1</option>
          <option value="">Опция 2</option>
          <option value="">Опция 3</option>
        </optgroup>
        <optgroup label="Группа опций 2">
          <option value="">Опция 4</option>
          <option value="">Опция 5</option>
          <option value="">Опция 6</option>
        </optgroup>
      </select>
    </p>
    <p>
      <label>
        <input type="checkbox" value="">
        Установите этот флажок
      </label>
    </p>
    <p>
      <label>
        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
        Вариант первый то и это.
      </label>
      <label>
        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
        Второй вариант - это что-то еще, что также очень длинное, чтобы продемонстрировать упаковку этих причудливых элементов управления формой.
      </label>
      <label>
        <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" disabled>
        Вариант третий отключен.
      </label>
    </p>
    <p>
      <label for="textarea">Пример текстового поля</label>
      <textarea id="textarea" rows="3"></textarea>
    </p>
    <p>
      <label for="date">Пример даты</label>
      <input type="date" id="date">
    </p>
    <p>
      <label for="time">Пример времени</label>
      <input type="time" id="time">
    </p>
    <p>
      <label for="password">Пример пароля</label>
      <input type="password" id="password">
    </p>
    <p>
      <label for="datetime-local">Пример даты-времени</label>
      <input type="datetime-local" id="datetime-local">
    </p>
    <p>
      <label for="week">Пример недели</label>
      <input type="week" id="week">
    </p>
    <p>
      <label for="month">Пример месяца</label>
      <input type="month" id="month">
    </p>
    <p>
      <label for="color">Пример цвета</label>
      <input type="color" id="color">
    </p>
    <p>
      <label for="output">Пример вывода</label>
      <output name="result" id="output">100</output>
    </p>
    <p>
      <button type="submit">Кнопка отправки</button>
      <input type="submit" value="Поле ввода как кнопка отправки">
      <input type="reset" value="Поле ввода как кнопка сброса">
      <input type="button" value="Поле ввода как кнопка">
    </p>
    <p>
      <button type="submit" disabled>Кнопка отправки</button>
      <input type="submit" value="Поле ввода как кнопка отправки" disabled>
      <input type="reset" value="Поле ввода как кнопка сброса" disabled>
      <input type="button" value="Поле ввода как кнопка" disabled>
    </p>
  </fieldset>
</form>

### Указатели на кнопках

Reboot включает усовершенствование для `role="button"` , позволяющее изменить курсор по умолчанию на `pointer`. Добавьте этот атрибут к элементам, чтобы указать, что элементы интерактивны. Эта роль не обязательна для элементов `<button>`, у которых есть собственное изменение `cursor`.

{{< example >}}
<span role="button" tabindex="0">Элемент не кнопка как кнопка</span>
{{< /example >}}

## Разные элементы

### Адрес

Элемент `<address>` обновлен, чтобы сбросить стиль шрифта браузера по умолчанию с `font-style` с `italic` на `normal`. `line-height` теперь унаследован, и был добавлен `margin-bottom: 1rem`. `<address>` служит для представления контактной информации ближайшего предка (или всего объема работы). Сохраните форматирование, заканчивая строки символом `<br>`.

<div class="bd-example">
  <address>
    <strong>ACME Corporation</strong><br>
    1123 Fictional St,<br>
    San Francisco, CA 94103<br>
    <abbr title="Phone">P:</abbr> (123) 456-7890
  </address>

  <address>
    <strong>Full Name</strong><br>
    <a href="mailto:first.last@example.com">first.last@example.com</a>
  </address>
</div>

### Цитата

По умолчанию `margin` для цитат составляет `1em 40px`, поэтому мы сбрасываем ее на `0 0 1rem` для большей согласованности с другими элементами.

<div class="bd-example">
  <blockquote class="blockquote">
    <p>Известная цитата, содержащаяся в элементе blockquote.</p>
  </blockquote>
  <p>Кто-то известный в <cite title="Исходный заголовок">Исходном заголовке</cite></p>
</div>

### Строчные элементы

Элемент `<abbr>` получает базовый стиль, чтобы выделить его среди текста абзаца.

<div class="bd-example">
  Элемент аббревиатуры <abbr title="HyperText Markup Language">HTML</abbr>.
</div>

### Резюме

По умолчанию `cursor` в сводке является `text`, поэтому мы сбрасываем его на `pointer`, чтобы указать, что с элементом можно взаимодействовать, щелкнув по нему.

<div class="bd-example">
  <details>
    <summary>Некоторые детали</summary>
    <p>Подробнее о деталях.</p>
  </details>

  <details open>
    <summary>Еще больше деталей</summary>
    <p>Вот еще более подробная информация о деталях.</p>
  </details>
</div>

## HTML5 атрибут `[hidden]`

HTML5 добавляет [новый глобальный атрибут с именем `[hidden]`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/hidden), который имеет стиль `display: none` по умолчанию. Заимствуя идею из [PureCSS](https://purecss.io/), мы улучшаем это значение по умолчанию, сделав `[hidden] { display: none !important; }`, чтобы предотвратить случайное переопределение его свойства `display`.

```html
<input type="text" hidden>
```

{{< callout info >}}
Поскольку `[hidden]` не совместим с методами jQuery `$(...).hide()` и `$(...).show()`, мы специально не одобряем `[hidden]` другие методы управления `display` элементов.
{{< /callout >}}

Чтобы просто переключить видимость элемента, то есть его `display` не изменяется, и элемент все еще может влиять на поток документа, используйте [класс `.invisible`]({{< docsref "/utilities/visibility" >}}) вместо этого.
