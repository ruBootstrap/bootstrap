---
layout: docs
title: Кнопки
description: Используйте настраиваемые стили кнопок Bootstrap для действий в формах, диалоговых окнах и т.д. С поддержкой нескольких размеров, состояний и т.д.
group: components
toc: true
---

## Примеры

Bootstrap включает несколько предопределенных стилей кнопок, каждый из которых служит своей семантической цели, с добавлением нескольких дополнительных элементов для большего контроля.

{{< example >}}
{{< buttons.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<button type="button" class="btn btn-{{ .name }}">{{ .name | title }}</button>
{{- end -}}
{{< /buttons.inline >}}

<button type="button" class="btn btn-link">Link</button>
{{< /example >}}

{{< callout info >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Отключение переноса текста

Если Вы не хотите, чтобы текст кнопки переносился, Вы можете добавить к кнопке класс `.text-nowrap`. В Sass Вы можете установить `$btn-white-space: nowrap`, чтобы отключить перенос текста для каждой кнопки.

## Теги кнопок

Классы `.btn` предназначены для использования с элементом `<button>`. Однако Вы также можете использовать эти классы для элементов `<a>` или `<input>` (хотя некоторые браузеры могут применять несколько иной рендеринг).

При использовании классов кнопок в элементах `<a>`, которые используются для запуска функциональности на странице (например, сворачивания содержимого), вместо того, чтобы ссылаться на новые страницы или разделы на текущей странице, этим ссылкам следует присвоить кнопку `role="button"`, чтобы должным образом донести свою цель до вспомогательных технологий, таких как программы чтения с экрана.

{{< example >}}
<a class="btn btn-primary" href="#" role="button">Ссылка</a>
<button class="btn btn-primary" type="submit">Кнопка</button>
<input class="btn btn-primary" type="button" value="Поле ввода">
<input class="btn btn-primary" type="submit" value="Поле Отправить">
<input class="btn btn-primary" type="reset" value="Поле Сбросить">
{{< /example >}}

## Контурные кнопки

Нужна кнопка, но не богаты цвета фона, которые они приносят? Замените классы модификаторов по умолчанию на классы `.btn-outline-*`, чтобы удалить все фоновые изображения и цвета на любой кнопке.

{{< example >}}
{{< buttons.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<button type="button" class="btn btn-outline-{{ .name }}">{{ .name | title }}</button>
{{- end -}}
{{< /buttons.inline >}}
{{< /example >}}

## Размеры

Хотите кнопки большего или меньшего размера? Добавьте `.btn-lg` или `.btn-sm` для дополнительных размеров.

{{< example >}}
<button type="button" class="btn btn-primary btn-lg">Большая кнопка</button>
<button type="button" class="btn btn-secondary btn-lg">Большая кнопка</button>
{{< /example >}}

{{< example >}}
<button type="button" class="btn btn-primary btn-sm">Маленькая кнопка</button>
<button type="button" class="btn btn-secondary btn-sm">Маленькая кнопка</button>
{{< /example >}}

Создайте блочные кнопки, которые охватывают всю ширину родительского элемента - путем добавления `.btn-block`.

{{< example >}}
<button type="button" class="btn btn-primary btn-lg btn-block">Кнопка блочного уровня</button>
<button type="button" class="btn btn-secondary btn-lg btn-block">Кнопка блочного уровня</button>
{{< /example >}}

## Отключенное состояние

Сделайте кнопки неактивными, добавив логический атрибут `disabled` к любому элементу `<button>`. Отключенные кнопки имеют действие `pointer-events: none` предотвращающее срабатывание состояния наведения и активного состояния.

{{< example >}}
<button type="button" class="btn btn-lg btn-primary" disabled>Основная кнопка</button>
<button type="button" class="btn btn-secondary btn-lg" disabled>Кнопка</button>
{{< /example >}}

Отключенные кнопки, использующие элемент `<a>`, ведут себя немного иначе:

- `<a>` не поддерживают атрибут `disabled`, поэтому Вы должны добавить класс `.disabled`, чтобы он визуально выглядел отключенным.
- Включены некоторые удобные для будущего стили для отключения всех `pointer-events` на кнопках привязки.
- Отключенные кнопки должны включать атрибут `aria-disabled="true"`, чтобы указать состояние элемента для вспомогательных технологий.

{{< example >}}
<a href="#" class="btn btn-primary btn-lg disabled" tabindex="-1" role="button" aria-disabled="true">Основная ссылка</a>
<a href="#" class="btn btn-secondary btn-lg disabled" tabindex="-1" role="button" aria-disabled="true">Ссылка</a>
{{< /example >}}

{{< callout warning >}}
##### Предупреждение о функциональности ссылок

Класс `.disabled` использует `pointer-events: none`, чтобы попытаться отключить функциональность ссылок для `<a>`, но это свойство CSS еще не стандартизировано. Кроме того, даже в браузерах, которые поддерживают `pointer-events: none`, навигация с помощью клавиатуры остается неизменной, а это означает, что зрячие пользователи клавиатуры и пользователи вспомогательных технологий по-прежнему смогут активировать эти ссылки. Чтобы быть в безопасности, в дополнение к `aria-disabled="true"`, также добавьте атрибут `tabindex="-1"` в эти ссылки, чтобы они не получали фокус клавиатуры, и используйте собственный JavaScript, чтобы полностью отключить их функциональность .
{{< /callout >}}

## Плагин кнопки

Плагин кнопок позволяет создавать простые кнопки включения/выключения.

{{< callout info >}}
Визуально эти кнопки переключения идентичны [кнопкам переключения флажков]({{< docsref "/forms/checks-radios#кнопки-переключения-флажков" >}}). Однако вспомогательные технологии передают их по-другому: переключатели флажков будут объявлены программами чтения с экрана как «отмечено»/«не отмечено» (поскольку, несмотря на их внешний вид, они по сути остаются флажками), тогда как эти переключатели будут объявлены как "кнопка"/"кнопка нажата". Выбор между этими двумя подходами будет зависеть от типа создаваемого Вами переключателя и от того, будет ли этот переключатель иметь смысл для пользователей, когда он объявлен как флажок или как фактическая кнопка.
{{< /callout >}}

### Переключение состояния

Добавьте `data-toggle="button"` для переключения состояния `active`. Если Вы предварительно переключаете кнопку, Вы должны вручную добавить класс `.active` **и** `aria-pressed="true"` чтобы гарантировать, что это будет правильно передано вспомогательным технологиям.

{{< example >}}
<button type="button" class="btn btn-primary" data-toggle="button" autocomplete="off">Кнопка-переключатель</button>
<button type="button" class="btn btn-primary active" data-toggle="button" autocomplete="off" aria-pressed="true">Активная кнопка-переключатель</button>
<button type="button" class="btn btn-primary" disabled data-toggle="button" autocomplete="off">Отключенная кнопка-переключатель</button>
{{< /example >}}

{{< example >}}
<a href="#" class="btn btn-primary" role="button" data-toggle="button">Ссылка-переключатель</a>
<a href="#" class="btn btn-primary active" role="button" data-toggle="button" aria-pressed="true">Активная ссылка-переключатель</a>
<a href="#" class="btn btn-primary disabled" tabindex="-1" aria-disabled="true" role="button" data-toggle="button">Отключенная ссылка-переключатель</a>
{{< /example >}}

### Методы

Вы можете создать экземпляр кнопки с помощью конструктора кнопки, например:

```js
var button = document.getElementById('myButton')
var bsButton = new bootstrap.Button(button)
```

<table class="table">
  <thead>
    <tr>
      <th>Метод</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
        <code>toggle</code>
      </td>
      <td>
        Переключает состояние нажатия. Придает кнопке вид, что она была активирована.
      </td>
    </tr>
    <tr>
      <td>
        <code>dispose</code>
      </td>
      <td>
        Уничтожает элемент кнопку. (Удаляет сохраненные данные в элементе DOM)
      </td>
    </tr>
  </tbody>
</table>

Например, чтобы переключить все кнопки

```js
var buttons = document.querySelectorAll('.btn')
buttons.forEach(function (button) {
  var button = new bootstrap.Button(button)
  button.toggle()
})
```
