---
layout: docs
title: Reboot
description: Перезагрузка - это набор изменений CSS для конкретных элементов в одном файле, запускает Bootstrap, чтобы обеспечить элегантную, последовательную и простую основу для построения.
group: content
aliases: "/docs/5.1/content/"
toc: true
---

## Подход

Reboot (перезагрузка) основывается на Normalize, предоставляя многие элементы HTML с несколько самоуверенными стилями, используя только селекторы элементов. Дополнительная стилизация выполняется только с классами. Например, мы перезагружаем некоторые стили `<table>` для упрощения базовой линии, а позже предоставляем `.table`, `.table-bordered` и другие.

Вот наши рекомендации и причины выбора того, что следует переопределить в Перезагрузке:

- Обновите некоторые значения браузера по умолчанию, чтобы использовать `rem` вместо `em` для масштабируемого интервала между компонентами.
- Избегайте `margin-top`. Вертикальные поля могут исчезнуть, что приведет к неожиданным результатам. Что еще более важно, одно направление `margin` это более простая ментальная модель.
- Для упрощения масштабирования по размеру устройства в элементах блока следует использовать `rem` для `margin`.
- Сведите к минимуму объявления свойств, связанных с `font`, по возможности используйте `inherit`.

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
  // Простой веб резерв
  "Helvetica Neue", Arial,
  // Linux
  "Noto Sans",
  "Liberation Sans",
  // Резервный вариант без засечек
  sans-serif,
  // Emoji шрифты
  "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji" !default;
```

Обратите внимание: поскольку стек шрифтов включает шрифты эмодзи, многие распространенные символы Unicode символов/дингбатов будут отображаться как разноцветные пиктограммы. Их внешний вид будет варьироваться в зависимости от стиля, используемого в собственном шрифте emoji браузера/платформы, и на них не будут влиять никакие `color` стили CSS.

`font-family` применяется к `<body>` и автоматически наследуется глобально через Bootstrap. Чтобы переключить глобально `font-family`, обновите `$font-family-base` и перекомпилируйте Bootstrap.

## Переменные CSS

По мере того, как Bootstrap 5 продолжает развиваться, все больше и больше стилей будет создаваться с использованием [переменных CSS]({{< docsref "/customize/css-variables" >}}) в качестве средства для обеспечения большей настройки в реальном времени без необходимости всегда перекомпилируйте Sass. Наш подход состоит в том, чтобы взять исходные переменные Sass и преобразовать их в переменные CSS. Таким образом, даже если вы не используете переменные CSS, у вас по-прежнему есть все возможности Sass. **Это все еще выполняется, и для полной реализации потребуется время.**

Например, рассмотрите эти переменные CSS `:root` для общих стилей `<body>`:

{{< scss-docs name="root-body-variables" file="scss/_root.scss" >}}

На практике эти переменные затем применяются в Reboot следующим образом:

{{< scss-docs name="reboot-body-rules" file="scss/_reboot.scss" >}}

Что позволяет вам делать настройки в реальном времени, как вам нравится:

```html
<body style="--bs-body-color: #333;">
  <!-- ... -->
</body>
```

## Заголовки и абзацы

Все элементы заголовка - например, `<h1>` и `<p>` сбрасываются, чтобы удалить их `margin-top`. В заголовки добавлены `margin-bottom: .5rem` и параграфы `margin-bottom: 1rem` для удобного размещения.

<table class="table">
  <thead>
    <tr>
      <th>Заголовок</th>
      <th>Пример</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
        {{< markdown >}}`<h1></h1>`{{< /markdown >}}
      </td>
      <td><span class="h1">h1. Заголовок Bootstrap</span></td>
    </tr>
    <tr>
      <td>
        {{< markdown >}}`<h2></h2>`{{< /markdown >}}
      </td>
      <td><span class="h2">h2. Заголовок Bootstrap</span></td>
    </tr>
    <tr>
      <td>
        {{< markdown >}}`<h3></h3>`{{< /markdown >}}
      </td>
      <td><span class="h3">h3. Заголовок Bootstrap</span></td>
    </tr>
    <tr>
      <td>
        {{< markdown >}}`<h4></h4>`{{< /markdown >}}
      </td>
      <td><span class="h4">h4. Заголовок Bootstrap</span></td>
    </tr>
    <tr>
      <td>
        {{< markdown >}}`<h5></h5>`{{< /markdown >}}
      </td>
      <td><span class="h5">h5. Заголовок Bootstrap</span></td>
    </tr>
    <tr>
      <td>
        {{< markdown >}}`<h6></h6>`{{< /markdown >}}
      </td>
      <td><span class="h6">h6. Заголовок Bootstrap</span></td>
    </tr>
  </tbody>
</table>

## Списки

Во всех списках `<ul>`, `<ol>` и `<dl>` удалены их `margin-top` и `margin-bottom: 1rem`. Вложенные списки не имеют `margin-bottom`. Мы также сбросили `padding-left` для элементов `<ul>` и `<ol>`.

<div class="bd-example">
{{< markdown >}}
* All lists have their top margin removed
* And their bottom margin normalized
* Nested lists have no bottom margin
  * This way they have a more even appearance
  * Particularly when followed by more list items
* The left padding has also been reset

1. Here's an ordered list
2. With a few list items
3. It has the same overall look
4. As the previous unordered list
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
Для редактирования настроек нажмите <kbd><kbd>ctrl</kbd> + <kbd>,</kbd></kbd>
{{< /example >}}

## Пример вывода

Для указания образца вывода из программы используйте тег `<samp>`.

{{< example >}}
<samp>Этот текст следует рассматривать как образец вывода компьютерной программы.</samp>
{{< /example >}}

## Таблицы

Таблицы немного скорректированы для стиля `<caption>`, сворачивания границ и обеспечения единообразия `text-align` повсюду. Дополнительные изменения границ, отступов и прочего связаны с [классом `.table`]({{< docsref "/content/tables" >}}).

<div class="bd-example">
  <table>
    <caption>
      Это примерная таблица, и это ее заголовок для описания содержимого.
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
</div>

## Формы

Различные элементы формы были перезагружены для упрощения базовых стилей. Вот некоторые из наиболее заметных изменений:

- `<fieldset>` не имеют границ, отступов или полей, поэтому их можно легко использовать в качестве оберток для отдельных полей ввода или групп полей ввода.
- `<legend>` как и наборы полей, также были переработаны, чтобы отображаться как своего рода заголовки.
- `<label>` установлены в `display: inline-block`, чтобы разрешить применение `margin`.
- Элементы `<input>`, `<select>`, `<textarea>` и `<button>` в основном обрабатываются Normalize, но Reboot удаляет их `margin` и устанавливает `line-height: inherit`, тоже.
- `<textarea>` изменены так, чтобы их размер можно было изменять только по вертикали, поскольку изменение размера по горизонтали часто "ломает" макет страницы.
- Элементы кнопки `<button>` и `<input>` имеют `cursor: pointer` когда `:not(:disabled)`.

Эти и другие изменения показаны ниже.

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

{{< callout warning >}}
{{< partial "callout-warning-input-support.md" >}}
{{< /callout >}}

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
    <strong>Twitter, Inc.</strong><br>
    1355 Market St, Suite 900<br>
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
    <p>A well-known quote, contained in a blockquote element.</p>
  </blockquote>
  <p>Someone famous in <cite title="Source Title">Source Title</cite></p>
</div>

### Строчные элементы

Элемент `<abbr>` получает базовый стиль, чтобы выделить его среди текста абзаца.

<div class="bd-example">
  Nulla <abbr title="attribute">attr</abbr> vitae elit libero, a pharetra augue.
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

{{< callout warning >}}
##### Несовместимость jQuery

`[hidden]` несовместим с методами jQuery `$(...).hide()` и `$(...).show()`. Поэтому в настоящее время мы не особо поддерживаем `[hidden]` по сравнению с другими методами управления элементами `display`.
{{< /callout >}}

Чтобы просто переключить видимость элемента, то есть его `display` не изменяется, и элемент все еще может влиять на поток документа, используйте [класс `.invisible`]({{< docsref "/utilities/visibility" >}}) вместо этого.
