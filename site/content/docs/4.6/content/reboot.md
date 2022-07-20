---
layout: docs
title: Перезагрузка
description: Перезагрузка, набор изменений CSS для конкретных элементов в одном файле, запускает Bootstrap, чтобы обеспечить элегантную, последовательную и простую основу для развития.
group: content
aliases: "/docs/4.6/content/"
toc: true
---

## Подход

Reboot основывается на Normalize, предоставляя многие элементы HTML с несколько самоуверенными стилями, используя только селекторы элементов. Дополнительная стилизация выполняется только с классами. Например, мы перезагружаем некоторые стили `<table>` для упрощения базовой линии, а позже предоставляем `.table`, `.table-bordered` и другие.

Вот наши рекомендации и причины выбора того, что следует переопределить в Reboot:

- Обновите некоторые значения браузера по умолчанию, чтобы использовать `rem` вместо `em` для масштабируемого расстояния между компонентами.
- Избегайте `margin-top`. Вертикальные поля могут исчезнуть, что приведет к неожиданным результатам. Что еще более важно, одно направление `margin` - это более простая ментальная модель.
- Для упрощения масштабирования по размеру устройства в элементах блока следует использовать `rem` вместо `margin`.
- Сведите к минимуму объявления свойств, связанных со шрифтом `font`, используя по возможности наследование `inherit`.

## Параметры страницы по умолчанию

Элементы `<html>` и `<body>` обновлены, чтобы обеспечить лучшие значения по умолчанию для всей страницы. Более конкретно:

- The `box-sizing` устанавливается глобально для каждого элемента, включая `*::before` и `*::after` для `border-box`. Это гарантирует, что заявленная ширина элемента никогда не будет превышена из-за заполнения или границы.
- Базовый размер шрифта `font-size` не объявлен в `<html>`, но предполагается `16px` (по умолчанию в браузере). `font-size: 1rem` применяется к элементу `<body>` для быстрого масштабирования типов с помощью медиа-запросов, при этом соблюдая предпочтения пользователя и обеспечивая более доступный подход.
- `<body>` также устанавливает глобально `font-family`, `line-height` и `text-align`. Позже это наследуется некоторыми элементами формы, чтобы предотвратить несоответствие шрифтов.
- Для безопасности `<body>` имеет объявленный цвет фона `background-color`, по умолчанию - `#fff`.

## Стек собственных шрифтов

Веб-шрифты по умолчанию (Helvetica Neue, Helvetica и Arial) были удалены в Bootstrap 4 и заменены «стеком собственных шрифтов» для оптимального рендеринга текста на всех устройствах и ОС. Узнайте больше о [стеках собственных шрифтов в этой статье *Smashing Magazine*](https://www.smashingmagazine.com/2015/11/using-system-ui-fonts-practical-guide/).

```scss
$font-family-sans-serif:
  // Safari для macOS и iOS (Сан-Франциско)
  -apple-system,
  // Chrome <56 для macOS (Сан-Франциско)
  BlinkMacSystemFont,
  // Windows
  "Segoe UI",
  // Android
  Roboto,
  // Базовый резервный веб-сайт
  "Helvetica Neue", Arial,
  // Linux
  "Noto Sans",
  "Liberation Sans",
  // Резервный вариант без засечек
  sans-serif,
  // Emoji шрифты
  "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji" !default;
```

Обратите внимание, что, поскольку стек шрифтов включает шрифты эмодзи, многие распространенные символы Unicode символов/дингбатов будут отображаться как разноцветные пиктограммы. Их внешний вид будет различаться в зависимости от стиля, используемого в собственном шрифте эмодзи браузера/платформы, и на них не будут влиять никакие стили CSS `color`.

Это семейство шрифтов `font-family` применяется к `<body>` и автоматически наследуется во всем Bootstrap. Чтобы переключить глобальное семейство шрифтов `font-family`, обновите `$font-family-base` и перекомпилируйте Bootstrap.

## Заголовки и абзацы

Все элементы заголовка - например, `<h1>` и `<p>` сбрасываются, чтобы удалить их `margin-top`. В заголовки добавлены `margin-bottom: .5rem` и параграфы `margin-bottom: 1rem` для удобного размещения.

<table>
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

Во всех списках `<ul>`, `<ol>` и `<dl>` удалены их `margin-top` и `margin-bottom: 1rem`. Вложенные списки не имеют `margin-bottom`.

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
    <dt>Списки описаний</dt>
    <dd>Список описаний идеально подходит для определения терминов.</dd>
    <dt>Срок</dt>
    <dd>Определение термина.</dd>
    <dd>Второе определение того же термина.</dd>
    <dt>Другой термин</dt>
    <dd>Определение этого другого термина.</dd>
  </dl>
</div>

## Предварительно отформатированный текст

Элемент `<pre>` сбрасывается, чтобы удалить его `margin-top` и использовать единицы `rem` для его `margin-bottom`.

<div class="bd-example">
<pre>
.example-element {
  margin-bottom: 1rem;
}
</pre>
</div>

## Таблицы

Таблицы немного скорректированы для стиля `<caption>`, сворачивания границ и обеспечения единообразия `text-align` повсюду. Дополнительные изменения границ, отступов и прочего связаны с [классом `.table`]({{< docsref "/content/tables" >}}).

<div class="bd-example">
  <table>
    <caption>
      Это пример таблицы, и это ее заголовок для описания содержимого.
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

Для упрощения базовых стилей были перезагружены различные элементы формы. Вот некоторые из наиболее заметных изменений:

- `<fieldset>` не имеют границ, отступов или полей, поэтому их можно легко использовать в качестве оберток для отдельных входов или групп входов.
- `<legend>`, как и наборы полей, также были переработаны, чтобы отображаться как своего рода заголовки.
- Для тегов `<label>` установлено значение `display: inline-block` чтобы можно было применить `margin`.
- `<input>`, `<select>`, `<textarea>` и `<button>` в основном обрабатываются Normalize, но Reboot удаляет их `margin` и устанавливает `line-height: inherit` тоже.
- `<textarea>` изменены так, чтобы их размер можно было изменять только по вертикали, поскольку изменение размера по горизонтали часто "ломает" макет страницы.
- Элементы кнопок `<button>` и `<input>` имеют `cursor: pointer` когда `:not(:disabled)`.

Эти и другие изменения показаны ниже.

<form class="bd-example">
  <fieldset>
    <legend>Пример легенды</legend>
    <p>
      <label for="input">Пример ввода</label>
      <input type="text" id="input" placeholder="Пример ввода">
    </p>
    <p>
      <label for="select">Пример выбрать</label>
      <select id="select">
        <option value="">Выбрать...</option>
        <optgroup label="Option group 1">
          <option value="">Опция 1</option>
          <option value="">Опция 2</option>
          <option value="">Опция 3</option>
        </optgroup>
        <optgroup label="Option group 2">
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
        Вариант первый то и это
      </label>
      <label>
        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
        Второй вариант - это что-то еще, очень длинное, чтобы продемонстрировать упаковку этих причудливых элементов управления формой.
      </label>
      <label>
        <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" disabled>
        Вариант третий отключен
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
      <label for="output">Пример вывода</label>
      <output name="result" id="output">100</output>
    </p>
    <p>
      <button type="submit">Кнопка отправки</button>
      <input type="submit" value="Кнопка отправки">
      <input type="reset" value="Кнопка сброса">
      <input type="button" value="Кнопка ввода">
    </p>
    <p>
      <button type="submit" disabled>Кнопка отправки</button>
      <input type="submit" value="Кнопка отправки" disabled>
      <input type="reset" value="Кнопка сброса" disabled>
      <input type="button" value="Кнопка ввода" disabled>
    </p>
  </fieldset>
</form>

### Указатели на кнопках

Перезагрузка включает усовершенствование для `role="button"`, чтобы изменить курсор по умолчанию на `pointer`. Добавьте этот атрибут к элементам, чтобы указать, что элементы интерактивны. Эта роль не обязательна для элементов `<button>`, которые имеют собственное изменение `cursor`.

{{< example >}}
<span role="button" tabindex="0">Кнопка элемента без кнопки</span>
{{< /example >}}

## Разные элементы

### Адрес

Элемент `<address>` обновлен для сброса стиля шрифта `font-style` браузера по умолчанию с курсивного `italic` на нормальный `normal`. `line-height` теперь унаследован, и был добавлен `margin-bottom: 1rem`. `<address>` предназначены для представления контактной информации ближайшего предка (или всего объема работы). Сохраните форматирование, заканчивая строки символом `<br>`.

<div class="bd-example">
  <address>
    <strong>Twitter, Inc.</strong><br>
    1355 Market St, Suite 900<br>
    San Francisco, CA 94103<br>
    <abbr title="Phone">P:</abbr> (123) 456-7890
  </address>

  <address>
    <strong>ФИО</strong><br>
    <a href="mailto:first.last@example.com">first.last@example.com</a>
  </address>
</div>

### Цитата

По умолчанию `margin` для цитат составляет `1em 40px`, поэтому мы сбрасываем ее на `0 0 1rem` для большей согласованности с другими элементами.

<div class="bd-example">
  <blockquote class="blockquote">
    <p>A well-known quote, contained in a blockquote element.</p>
    <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
  </blockquote>
</div>

### Строковые элементы

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

## Атрибут HTML5 `[hidden]`

HTML5 добавляет [новый глобальный атрибут с именем `[hidden]`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/hidden), который имеет стиль `display: none` по умолчанию. Заимствуя идею из [PureCSS](https://purecss.io/), мы улучшаем это значение по умолчанию, сделав `[hidden] { display: none !important; }`, чтобы предотвратить случайное переопределение его `display`. Хотя IE10 изначально не поддерживает `[hidden]`, явное объявление в нашем CSS решает эту проблему.

```html
<input type="text" hidden>
```

{{< callout warning >}}
##### Несовместимость jQuery

`[hidden]` несовместим с методами jQuery `$(...).hide()` и `$(...).show()`. Поэтому в настоящее время мы не особо поддерживаем `[hidden]` по сравнению с другими методами управления `display` элементов.
{{< /callout >}}

Чтобы просто переключить видимость элемента, то есть его `display` не изменяется, и элемент все еще может влиять на поток документа, используйте [класс `.invisible`]({{< docsref "/utilities/visibility" >}}) вместо этого.
