---
layout: docs
title: Кнопки
description: Используйте настраиваемые стили кнопок Bootstrap для действий в формах, диалоговых окнах и т.д. с поддержкой нескольких размеров, состояний и т.д.
group: components
toc: true
---

## Примеры

Bootstrap включает в себя несколько предопределенных стилей кнопок, каждый из которых служит своей семантической цели, с добавлением нескольких дополнительных функций для большего контроля.

{{< example >}}
{{< buttons.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<button type="button" class="btn btn-{{ .name }}">{{ .name | title }}</button>
{{- end -}}
{{< /buttons.inline >}}

<button type="button" class="btn btn-link">Ссылка</button>
{{< /example >}}

{{< callout warning >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Отключить перенос текста

Если Вы не хотите, чтобы текст кнопки переносился, Вы можете добавить к кнопке класс `.text-nowrap`. В Sass Вы можете установить `$btn-white-space: nowrap`, чтобы отключить перенос текста для каждой кнопки.

## Кнопки-теги

Классы `.btn` предназначены для использования с элементом `<button>`. Однако Вы также можете использовать эти классы для элементов `<a>` или `<input>` (хотя некоторые браузеры могут применять несколько иной рендеринг).

При использовании классов кнопок в элементах `<a>`, которые используются для запуска функциональности на странице (например, сворачивания содержимого), вместо того, чтобы ссылаться на новые страницы или разделы на текущей странице, этим ссылкам следует присвоить кнопку `role="button"`, чтобы должным образом донести свою цель до вспомогательных технологий, таких как программы чтения с экрана.

{{< example >}}
<a class="btn btn-primary" href="#" role="button">Ссылка</a>
<button class="btn btn-primary" type="submit">Кнопка</button>
<input class="btn btn-primary" type="button" value="Ввод">
<input class="btn btn-primary" type="submit" value="Отправить">
<input class="btn btn-primary" type="reset" value="Сбросить">
{{< /example >}}

## Контурная кнопка

Нужна кнопка, но не богатые цвета фона, которые они приносят? Замените классы модификаторов по умолчанию на классы `.btn-outline-*`, чтобы удалить все фоновые изображения и цвета на любой кнопке.

{{< example >}}
{{< buttons.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<button type="button" class="btn btn-outline-{{ .name }}">{{ .name | title }}</button>
{{- end -}}
{{< /buttons.inline >}}
{{< /example >}}

{{< callout info >}}
В некоторых стилях кнопок используется относительно светлый цвет переднего плана, и их следует использовать только на темном фоне, чтобы обеспечить достаточный контраст.
{{< /callout >}}

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

Создайте кнопки уровня блока - те, которые охватывают всю ширину родительского элемента - путем добавления `.btn-block`.

{{< example >}}
<button type="button" class="btn btn-primary btn-lg btn-block">Кнопка блочного уровня</button>
<button type="button" class="btn btn-secondary btn-lg btn-block">Кнопка блочного уровня</button>
{{< /example >}}

## Активное состояние

Когда они активны, кнопки будут казаться нажатыми (с более темным фоном, более темной рамкой и вставкой тени). **Нет необходимости добавлять класс в `<button>`, поскольку они используют псевдокласс**. Тем не менее, Вы все равно можете принудительно использовать тот же активный внешний вид с помощью `.active` (и включить атрибут <code>aria-pressed="true"</code>) если Вам потребуется программно воспроизвести состояние.

{{< example >}}
<a href="#" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Первичная ссылка</a>
<a href="#" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">Ссылка</a>
{{< /example >}}

## Отключенное состояние

Сделайте кнопки неактивными, добавив логический атрибут `disabled` к любому элементу `<button>`.

{{< example >}}
<button type="button" class="btn btn-lg btn-primary" disabled>Первичная кнопка</button>
<button type="button" class="btn btn-secondary btn-lg" disabled>Кнопка</button>
{{< /example >}}

Отключенные кнопки, использующие элемент `<a>`, ведут себя немного иначе:

- `<a>` не поддерживают атрибут `disabled`, поэтому Вы должны добавить класс `.disabled`, чтобы он визуально выглядел отключенным.
- Включены некоторые ориентированные на будущее стили для отключения всех `pointer-events` на кнопках привязки. В браузерах, которые поддерживают это свойство, Вы вообще не увидите отключенный курсор.
- Отключенные кнопки должны включать атрибут `aria-disabled="true"`, чтобы указать состояние элемента для вспомогательных технологий.

{{< example >}}
<a href="#" class="btn btn-primary btn-lg disabled" tabindex="-1" role="button" aria-disabled="true">Первичная ссылка</a>
<a href="#" class="btn btn-secondary btn-lg disabled" tabindex="-1" role="button" aria-disabled="true">Ссылка</a>
{{< /example >}}

{{< callout warning >}}
##### Предупреждение о функциональности ссылок

Класс `.disabled` использует `pointer-events: none`, чтобы попытаться отключить функциональность ссылок для `<a>`, но это свойство CSS еще не стандартизировано. Кроме того, даже в браузерах, которые поддерживают `pointer-events: none`, навигация с помощью клавиатуры остается неизменной, а это означает, что зрячие пользователи клавиатуры и пользователи вспомогательных технологий по-прежнему смогут активировать эти ссылки. Чтобы быть в безопасности, добавьте к этим ссылкам атрибут `tabindex="-1"` (чтобы они не получали фокус клавиатуры) и используйте специальный JavaScript, чтобы отключить их функциональность.
{{< /callout >}}

## Плагин кнопки

Делайте больше с помощью кнопок. Управляйте состояниями кнопок или создавайте группы кнопок для дополнительных компонентов, таких как панели инструментов.

### Переключатель состояния

Добавьте `data-toggle="button"` для переключения состояния кнопки `active`. Если Вы предварительно переключаете кнопку, Вы должны вручную добавить класс `.active` **и** `aria-pressed="true"` к `<button>`.

{{< example >}}
<button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false">
  Одиночный переключатель
</button>
{{< /example >}}

### Кнопки флажки и переключатели

Стили Bootstrap `.button` могут применяться к другим элементам, таким как `<label>`, для обеспечения переключения флажков или переключателей стилей. Добавьте `data-toggle="buttons"` к `.btn-group`, содержащий эти измененные кнопки, чтобы включить их поведение переключения через JavaScript, и добавьте `.btn-group-toggle` для стилизации `<input>` внутри Вашей кнопки. **Обратите внимание, что Вы можете создавать кнопки с питанием от одного входа или их группы.**

Проверенное состояние для этих кнопок **обновляется только через событие `click`** на кнопке. Если Вы используете другой метод для обновления ввода - например, с помощью `<input type="reset">` или вручную применяя свойство ввода `checked`, Вам нужно переключить `.active` на `<label>` вручную.

Обратите внимание, что предварительно отмеченные кнопки требуют, чтобы вы вручную добавили класс `.active` к ввводу `<label>`.

{{< example >}}
<div class="btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="checkbox" checked> Выбрано
  </label>
</div>
{{< /example >}}

{{< example >}}
<div class="btn-group btn-group-toggle" data-toggle="buttons">
  <label class="btn btn-secondary active">
    <input type="radio" name="options" id="option1" checked> Активная
  </label>
  <label class="btn btn-secondary">
    <input type="radio" name="options" id="option2"> Переключатель
  </label>
  <label class="btn btn-secondary">
    <input type="radio" name="options" id="option3"> Переключатель
  </label>
</div>
{{< /example >}}

### Методы

| Метод | Описание |
| --- | --- |
| `$().button('toggle')` | Переключает состояние push. Придает кнопке вид, что она была активирована. |
| `$().button('dispose')` | Уничтожает кнопку элемента. |
