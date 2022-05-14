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

Вы даже можете изменить свой собственный размер с помощью переменных CSS:

{{< example >}}
<button type="button" class="btn btn-primary"
        style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
  Пользовательская кнопка
</button>
{{< /example >}}

## Отключенное состояние

- `<a>` не поддерживают атрибут `disabled`, поэтому Вы должны добавить класс `.disabled`, чтобы он визуально выглядел отключенным.
- Включены некоторые удобные для будущего стили для отключения всех `pointer-events` на кнопках привязки.
- Отключенные кнопки должны включать атрибут `aria-disabled="true"`, чтобы указать состояние элемента для вспомогательных технологий.

{{< example >}}
<button type="button" class="btn btn-primary" disabled>Основная кнопка</button>
<button type="button" class="btn btn-secondary" disabled>Кнопка</button>
<button type="button" class="btn btn-outline-primary" disabled>Основная кнопка</button>
<button type="button" class="btn btn-outline-secondary" disabled>Кнопка</button>
{{< /example >}}

{{< callout warning >}}

##### Предупреждение о функциональности ссылок

Класс `.disabled` использует `pointer-events: none`, чтобы попытаться отключить функциональность ссылок для `<a>`, но это свойство CSS еще не стандартизировано. Кроме того, даже в браузерах, которые поддерживают `pointer-events: none`, навигация с помощью клавиатуры остается неизменной, а это означает, что зрячие пользователи клавиатуры и пользователи вспомогательных технологий по-прежнему смогут активировать эти ссылки. Чтобы быть в безопасности, в дополнение к `aria-disabled="true"`, также добавьте атрибут `tabindex="-1"` в эти ссылки, чтобы они не получали фокус клавиатуры, и используйте собственный JavaScript, чтобы полностью отключить их функциональность .
{{< /callout >}}

- `<a>` не поддерживают атрибут `disabled`, поэтому вы должны добавить класс `.disabled`, чтобы он визуально выглядел отключенным.
- Включены некоторые удобные для будущего стили для отключения всех `pointer-events` на кнопках привязки.
- Отключенные кнопки с использованием `<a>` должны включать атрибут `aria-disabled="true"`, чтобы указать состояние элемента для вспомогательных технологий.
- Отключенные кнопки с использованием `<a>` *не должны* включать атрибут `href`.

{{< example >}}
<a class="btn btn-primary disabled" role="button" aria-disabled="true">Первичная ссылка</a>
<a class="btn btn-secondary disabled" role="button" aria-disabled="true">Ссылка</a>
{{< /example >}}

### Предупреждение о функциональности ссылок

Чтобы охватить случаи, когда вам нужно сохранить атрибут `href` в отключенной ссылке, класс `.disabled` использует `pointer-events: none`, чтобы попытаться отключить функциональность ссылки для `<a>`. Обратите внимание, что это свойство CSS еще не стандартизировано для HTML, но все современные браузеры его поддерживают. Кроме того, даже в браузерах, которые поддерживают `pointer-events: none`, навигация с помощью клавиатуры остается неизменной, а это означает, что зрячие пользователи клавиатуры и пользователи вспомогательных технологий по-прежнему смогут активировать эти ссылки. Чтобы быть в безопасности, в дополнение к `aria-disabled="true"` также включите атрибут `tabindex="-1"` в эти ссылки, чтобы они не получали фокус клавиатуры, и используйте собственный JavaScript, чтобы полностью отключить их функциональность.

{{< example >}}
<a href="#" class="btn btn-primary disabled" tabindex="-1" role="button" aria-disabled="true">Первичная ссылка</a>
<a href="#" class="btn btn-secondary disabled" tabindex="-1" role="button" aria-disabled="true">Ссылка</a>
{{< /example >}}

## Блочные кнопки

Создавайте гибкие стопки полноразмерных «блочных кнопок», как в Bootstrap 4, с помощью наших утилит display и gap. Используя утилиты вместо классов, специфичных для кнопок, мы получаем гораздо больший контроль над интервалом, выравниванием и поведением.

{{< example >}}
<div class="d-grid gap-2">
  <button class="btn btn-primary" type="button">Кнопка</button>
  <button class="btn btn-primary" type="button">Кнопка</button>
</div>
{{< /example >}}

Здесь мы создаем адаптивный вариант, начиная с вертикально расположенных кнопок до контрольной точки `md`, где `.d-md-block` заменяет класс `.d-grid`, тем самым сводя на нет утилиту `gap-2`. Измените размер браузера, чтобы увидеть, как они меняются.

{{< example >}}
<div class="d-grid gap-2 d-md-block">
  <button class="btn btn-primary" type="button">Кнопка</button>
  <button class="btn btn-primary" type="button">Кнопка</button>
</div>
{{< /example >}}

Вы можете настроить ширину кнопок блока с помощью классов ширины столбцов сетки. Например, для «блочной кнопки» половинной ширины используйте `.col-6`. Отцентрируйте его также по горизонтали с помощью `.mx-auto`.

{{< example >}}
<div class="d-grid gap-2 col-6 mx-auto">
  <button class="btn btn-primary" type="button">Кнопка</button>
  <button class="btn btn-primary" type="button">Кнопка</button>
</div>
{{< /example >}}

Дополнительные утилиты можно использовать для регулировки выравнивания кнопок по горизонтали. Здесь мы взяли наш предыдущий отзывчивый пример и добавили несколько утилит гибкости и утилиту поля для кнопки, чтобы выровнять кнопки по правому краю, когда они больше не сложены.

{{< example >}}
<div class="d-grid gap-2 d-md-flex justify-content-md-end">
  <button class="btn btn-primary me-md-2" type="button">Кнопка</button>
  <button class="btn btn-primary" type="button">Кнопка</button>
</div>
{{< /example >}}

## Плагин кнопки

Плагин кнопок позволяет создавать простые кнопки включения/выключения.

{{< callout info >}}
Визуально эти кнопки переключения идентичны [кнопкам переключения флажков]({{< docsref "/forms/checks-radios#кнопки-переключения-флажков" >}}). Однако вспомогательные технологии передают их по-другому: переключатели флажков будут объявлены программами чтения с экрана как «отмечено»/«не отмечено» (поскольку, несмотря на их внешний вид, они по сути остаются флажками), тогда как эти переключатели будут объявлены как "кнопка"/"кнопка нажата". Выбор между этими двумя подходами будет зависеть от типа создаваемого Вами переключателя и от того, будет ли этот переключатель иметь смысл для пользователей, когда он объявлен как флажок или как фактическая кнопка.
{{< /callout >}}

### Переключение состояния

Добавьте `data-bs-toggle="button"` для переключения состояния `active`. Если Вы предварительно переключаете кнопку, Вы должны вручную добавить класс `.active` **и** `aria-pressed="true"` чтобы гарантировать, что это будет правильно передано вспомогательным технологиям.

{{< example >}}
<button type="button" class="btn btn-primary" data-bs-toggle="button">Кнопка-переключатель</button>
<button type="button" class="btn btn-primary active" data-bs-toggle="button" aria-pressed="true">Активная кнопка-переключатель</button>
<button type="button" class="btn btn-primary" disabled data-bs-toggle="button">Отключенная кнопка-переключатель</button>
{{< /example >}}

{{< example >}}
<a href="#" class="btn btn-primary" role="button" data-bs-toggle="button">Ссылка-переключатель</a>
<a href="#" class="btn btn-primary active" role="button" data-bs-toggle="button" aria-pressed="true">Активная ссылка-переключатель</a>
<a class="btn btn-primary disabled" aria-disabled="true" role="button" data-bs-toggle="button">Отключенная ссылка-переключатель</a>
{{< /example >}}

### Методы

Вы можете создать экземпляр кнопки с помощью конструктора кнопки, например:

```js
const bsButton = new bootstrap.Button('#myButton')
```

{{< bs-table "table" >}}
| Метод | Описание |
| --- | --- |
| `toggle` | Переключает состояние нажатия. Дает кнопке вид, что она была активирована. |
| `dispose` | Уничтожает кнопку элемента. (Удаляет сохраненные данные в элементе DOM) |
| `getInstance` | Статический метод, который позволяет вам получить экземпляр кнопки, связанный с элементом DOM, вы можете использовать его следующим образом: `bootstrap.Button.getInstance(element)`|
| `getOrCreateInstance` | Статический метод, который возвращает экземпляр кнопки, связанный с элементом DOM, или создает новый, если он не был инициализирован. Вы можете использовать его следующим образом: `bootstrap.Button.getOrCreateInstance(element)` |
{{< /bs-table >}}

Например, чтобы переключить все кнопки

```js
document.querySelectorAll('.btn').forEach(buttonElement => {
  const button = bootstrap.Button.getOrCreateInstance(buttonElement)
  button.toggle()
})
```

## CSS

### Переменные

{{< added-in "5.2.0" >}}

В рамках развивающегося подхода Bootstrap к переменным CSS кнопки теперь используют локальные переменные CSS в `.btn` для расширенной настройки в реальном времени. Значения переменных CSS задаются через Sass, поэтому настройка Sass по-прежнему поддерживается.

{{< scss-docs name="btn-css-vars" file="scss/_buttons.scss" >}}

Каждый класс модификатора `.btn-*` обновляет соответствующие переменные CSS, чтобы свести к минимуму дополнительные правила CSS с нашими миксинами `button-variant()`, `button-outline-variant()` и `button-size()`.

Вот пример создания пользовательского класса модификатора `.btn-*`, как мы делаем для кнопок, уникальных для наших документов, путем переназначения переменных CSS Bootstrap с помощью смеси наших собственных переменных CSS и Sass.

<div class="bd-example">
  <button type="button" class="btn btn-bd-primary">Пользовательская кнопка</button>
</div>

{{< scss-docs name="btn-css-vars-example" file="site/assets/scss/_buttons.scss" >}}

### Переменные Sass

{{< scss-docs name="btn-variables" file="scss/_variables.scss" >}}

### Миксины Sass

Есть три миксина для кнопок: миксины для кнопок и вариантов контура кнопки (оба основаны на `$theme-colors`), плюс миксин размера кнопки.

{{< scss-docs name="btn-variant-mixin" file="scss/mixins/_buttons.scss" >}}

{{< scss-docs name="btn-outline-variant-mixin" file="scss/mixins/_buttons.scss" >}}

{{< scss-docs name="btn-size-mixin" file="scss/mixins/_buttons.scss" >}}

### Циклы Sass

Варианты кнопок (для обычных и контурных кнопок) используют соответствующие миксины с нашей картой `$theme-colors` для генерации классов модификаторов в `scss/_buttons.scss`.

{{< scss-docs name="btn-variant-loops" file="scss/_buttons.scss" >}}
