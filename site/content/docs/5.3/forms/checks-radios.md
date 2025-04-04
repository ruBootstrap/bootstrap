---
layout: docs
title: Флажки и радио кнопки
description: Создавайте согласованные кроссбраузерные и кросс-платформенные чекбоксы и радио переключатели с помощью нашего полностью переписанного компонента.
group: forms
aliases: "/docs/5.3/forms/checks/"
toc: true
---

## Подход

Флажки и радио по умолчанию в браузере заменяются с помощью `.form-check`, серии классов для обоих типов ввода, которые улучшают макет и поведение их HTML-элементов, что обеспечивает большую настройку и согласованность между браузерами. Флажки предназначены для выбора одного или нескольких вариантов в списке, в то время как радио - для выбора одного варианта из многих.

Структурно наши `<input>` и `<label>` являются одноуровневыми элементами в отличие от `<input>` внутри `<label>`. Это немного более подробно, так как Вы должны указать атрибуты `id` и `for`, чтобы связать `<input>` и `<label>`. Мы используем родственный селектор (`~`) для всех наших состояний `<input>`, таких как `:checked` или `:disabled`. В сочетании с классом `.form-check-label` мы можем легко стилизовать текст для каждого элемента на основе состояния `<input>`'.

В наших проверках используются пользовательские иконки Bootstrap для обозначения отмеченных или неопределенных состояний.

## Флажки

{{< example >}}
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="checkDefault">
  <label class="form-check-label" for="checkDefault">
    Флажок по умолчанию
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="checkChecked" checked>
  <label class="form-check-label" for="checkChecked">
    Выбранный флажок
  </label>
</div>
{{< /example >}}

### Неопределенный

Чекбоксы могут использовать псевдокласс `:indeterminate` при ручной установке через JavaScript (нет доступного атрибута HTML для его указания).

{{< example class="bd-example-indeterminate" stackblitz_add_js="true" >}}
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="checkIndeterminate">
  <label class="form-check-label" for="checkIndeterminate">
    Неопределенный флажок
  </label>
</div>
{{< /example >}}

### Отключенный

Добавьте атрибут `disabled`, и для связанных тегов `<label>` будет автоматически применен стиль, соответствующий более светлому цвету, чтобы помочь указать состояние ввода.

{{< example class="bd-example-indeterminate" stackblitz_add_js="true" >}}
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="checkIndeterminateDisabled" disabled>
  <label class="form-check-label" for="checkIndeterminateDisabled">
    Отключен неопределенный флажок
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="checkDisabled" disabled>
  <label class="form-check-label" for="checkDisabled">
    Отключенный флажок
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="checkCheckedDisabled" checked disabled>
  <label class="form-check-label" for="checkCheckedDisabled">
    Отключенный выбранный флажок
  </label>
</div>
{{< /example >}}

## Радио

{{< example >}}
<div class="form-check">
  <input class="form-check-input" type="radio" name="radioDefault" id="radioDefault1">
  <label class="form-check-label" for="radioDefault1">
    Радио по умолчанию
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="radioDefault" id="radioDefault2" checked>
  <label class="form-check-label" for="radioDefault2">
    Радио выбранное по умолчанию
  </label>
</div>
{{< /example >}}

### Отключенное

Добавьте атрибут `disabled`, и для связанных тегов `<label>` будет автоматически применен стиль, соответствующий более светлому цвету, чтобы помочь указать состояние ввода.

{{< example >}}
<div class="form-check">
  <input class="form-check-input" type="radio" name="radioDisabled" id="radioDisabled" disabled>
  <label class="form-check-label" for="radioDisabled">
    Отключенное радио
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="radioDisabled" id="radioCheckedDisabled" checked disabled>
  <label class="form-check-label" for="radioCheckedDisabled">
    Отключенное выбранное радио
  </label>
</div>
{{< /example >}}

## Переключатели

Переключатель имеет разметку настраиваемого флажка, но для визуализации переключателя использует класс `.form-switch`. Рассмотрите возможность использования `role="switch"`, чтобы более точно передать характер управления вспомогательным технологиям, которые поддерживают эту роль. В старых вспомогательных технологиях это будет просто объявлено как обычный флажок в качестве запасного варианта. Коммутаторы также поддерживают атрибут `disabled`.

{{< example >}}
<div class="form-check form-switch">
  <input class="form-check-input" type="checkbox" role="switch" id="switchCheckDefault">
  <label class="form-check-label" for="switchCheckDefault">Ввод флажка переключателя по умолчанию</label>
</div>
<div class="form-check form-switch">
  <input class="form-check-input" type="checkbox" role="switch" id="switchCheckChecked" checked>
  <label class="form-check-label" for="switchCheckChecked">Выбран флажок переключателя ввода</label>
</div>
<div class="form-check form-switch">
  <input class="form-check-input" type="checkbox" role="switch" id="switchCheckDisabled" disabled>
  <label class="form-check-label" for="switchCheckDisabled">Отключено переключение флажка ввода</label>
</div>
<div class="form-check form-switch">
  <input class="form-check-input" type="checkbox" role="switch" id="switchCheckCheckedDisabled" checked disabled>
  <label class="form-check-label" for="switchCheckCheckedDisabled">Отключено переключение флажка в поле ввода</label>
</div>
{{< /example >}}

## По умолчанию (сложены)

По умолчанию любое количество флажков и радио, которые являются ближайшими родственниками, будут располагаться вертикально и соответствующим образом разнесены с помощью `.form-check`.

{{< example >}}
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
  <label class="form-check-label" for="defaultCheck1">
    Флажок по умолчанию
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="defaultCheck2" disabled>
  <label class="form-check-label" for="defaultCheck2">
    Отключенный флажок
  </label>
</div>
{{< /example >}}

{{< example >}}
<div class="form-check">
  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
  <label class="form-check-label" for="exampleRadios1">
    Радио по умолчанию
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
  <label class="form-check-label" for="exampleRadios2">
    Второе радио по умолчанию
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3" disabled>
  <label class="form-check-label" for="exampleRadios3">
    Отключенное радио
  </label>
</div>
{{< /example >}}

## Строчные

Сгруппируйте флажки или радио в одном горизонтальном ряду, добавив `.form-check-inline` к любому `.form-check`.

{{< example >}}
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
  <label class="form-check-label" for="inlineCheckbox1">1</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
  <label class="form-check-label" for="inlineCheckbox2">2</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3" disabled>
  <label class="form-check-label" for="inlineCheckbox3">3 (отключенный)</label>
</div>
{{< /example >}}

{{< example >}}
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
  <label class="form-check-label" for="inlineRadio1">1</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
  <label class="form-check-label" for="inlineRadio2">2</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" disabled>
  <label class="form-check-label" for="inlineRadio3">3 (отключенный)</label>
</div>
{{< /example >}}

## Реверс

Поместите флажки, радио и переключатели на противоположную сторону с помощью класса-модификатора `.form-check-reverse`.

{{< example >}}
<div class="form-check form-check-reverse">
  <input class="form-check-input" type="checkbox" value="" id="reverseCheck1">
  <label class="form-check-label" for="reverseCheck1">
    Обратный флажок
  </label>
</div>
<div class="form-check form-check-reverse">
  <input class="form-check-input" type="checkbox" value="" id="reverseCheck2" disabled>
  <label class="form-check-label" for="reverseCheck2">
    Отключен обратный флажок
  </label>
</div>

<div class="form-check form-switch form-check-reverse">
  <input class="form-check-input" type="checkbox" id="switchCheckReverse">
  <label class="form-check-label" for="switchCheckReverse">Вход флажка обратного переключателя</label>
</div>
{{< /example >}}

## Без меток

Не используйте упаковку `.form-check` для флажков и радио, у которых нет текстовой метки. Не забудьте по-прежнему предоставить доступное имя для вспомогательных технологий (например, с помощью `aria-label`). Дополнительные сведения см. в разделе [специальные возможности обзора форм]({{< docsref "/forms/overview#доступность" >}}) .

{{< example >}}
<div>
  <input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
</div>

<div>
  <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="" aria-label="...">
</div>
{{< /example >}}

## Кнопки переключения

Создавайте кнопочные флажки и переключатели, используя стили `.btn` вместо `.form-check-label` в элементах `<label>`. Эти переключатели можно дополнительно сгруппировать в [группу кнопок]({{< docsref "/components/button-group" >}}), если необходимо.

### Кнопки переключения флажков

{{< example >}}
<input type="checkbox" class="btn-check" id="btn-check" autocomplete="off">
<label class="btn btn-primary" for="btn-check">Одиночный переключатель</label>

<input type="checkbox" class="btn-check" id="btn-check-2" checked autocomplete="off">
<label class="btn btn-primary" for="btn-check-2">Выбранный</label>

<input type="checkbox" class="btn-check" id="btn-check-3" autocomplete="off" disabled>
<label class="btn btn-primary" for="btn-check-3">Отключенный</label>
{{< /example >}}

{{< example >}}
<input type="checkbox" class="btn-check" id="btn-check-4" autocomplete="off">
<label class="btn" for="btn-check-4">Одиночный переключатель</label>

<input type="checkbox" class="btn-check" id="btn-check-5" checked autocomplete="off">
<label class="btn" for="btn-check-5">Выбранный</label>

<input type="checkbox" class="btn-check" id="btn-check-6" autocomplete="off" disabled>
<label class="btn" for="btn-check-6">Отключенный</label>
{{< /example >}}

{{< callout info >}}
Визуально эти кнопки переключения флажков идентичны [кнопкам переключения плагинов кнопок]({{< docsref "/components/buttons#button-plugin" >}}).  Однако вспомогательные технологии передают их по-другому: переключатели флажков будут объявлены программами чтения с экрана как "отмеченные"/"не отмеченные" (поскольку, несмотря на их внешний вид, они по сути остаются флажками), тогда как кнопки переключения плагинов кнопок будут объявляется как "кнопка"/"кнопка нажата". Выбор между этими двумя подходами будет зависеть от типа создаваемого вами переключателя, а также от того, будет ли этот переключатель иметь смысл для пользователей, когда он будет объявлен как флажок или как фактическая кнопка.
{{< /callout >}}

### Кнопки переключения радио

{{< example >}}
<input type="radio" class="btn-check" name="options" id="option1" autocomplete="off" checked>
<label class="btn btn-secondary" for="option1">Выбранная</label>

<input type="radio" class="btn-check" name="options" id="option2" autocomplete="off">
<label class="btn btn-secondary" for="option2">Радио</label>

<input type="radio" class="btn-check" name="options" id="option3" autocomplete="off" disabled>
<label class="btn btn-secondary" for="option3">Отключенная</label>

<input type="radio" class="btn-check" name="options" id="option4" autocomplete="off">
<label class="btn btn-secondary" for="option4">Радио</label>
{{< /example >}}

{{< example >}}
<input type="radio" class="btn-check" name="options-base" id="option5" autocomplete="off" checked>
<label class="btn" for="option5">Checked</label>

<input type="radio" class="btn-check" name="options-base" id="option6" autocomplete="off">
<label class="btn" for="option6">Radio</label>

<input type="radio" class="btn-check" name="options-base" id="option7" autocomplete="off" disabled>
<label class="btn" for="option7">Disabled</label>

<input type="radio" class="btn-check" name="options-base" id="option8" autocomplete="off">
<label class="btn" for="option8">Radio</label>
{{< /example >}}

### Контурные стили

Поддерживаются различные варианты `.btn`, такие как различные стили.

{{< example >}}
<input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off">
<label class="btn btn-outline-primary" for="btn-check-outlined">Одиночный переключатель</label><br>

<input type="checkbox" class="btn-check" id="btn-check-2-outlined" checked autocomplete="off">
<label class="btn btn-outline-secondary" for="btn-check-2-outlined">Выбранный</label><br>

<input type="radio" class="btn-check" name="options-outlined" id="success-outlined" autocomplete="off" checked>
<label class="btn btn-outline-success" for="success-outlined">Выбранный радио цвета success</label>

<input type="radio" class="btn-check" name="options-outlined" id="danger-outlined" autocomplete="off">
<label class="btn btn-outline-danger" for="danger-outlined">Радио цвета danger</label>
{{< /example >}}

## CSS

### Sass переменные

Переменные для флажков:

{{< scss-docs name="form-check-variables" file="scss/_variables.scss" >}}

Переменные для свичей:

{{< scss-docs name="form-switch-variables" file="scss/_variables.scss" >}}
