---
layout: docs
title: Флажки и радио кнопки
description: Создавайте согласованные кроссбраузерные и кросс-платформенные чекбоксы и радио переключатели с помощью нашего полностью переписанного компонента.
group: forms
aliases: "/docs/5.2/forms/checks/"
toc: true
---

## Подход

Флажки и радио по умолчанию в браузере заменяются с помощью `.form-check`, серии классов для обоих типов ввода, которые улучшают макет и поведение их HTML-элементов, что обеспечивает большую настройку и согласованность между браузерами. Флажки предназначены для выбора одного или нескольких вариантов в списке, в то время как радио - для выбора одного варианта из многих.

Структурно наши `<input>` и `<label>` являются одноуровневыми элементами в отличие от `<input>` внутри `<label>`. Это немного более подробно, так как Вы должны указать атрибуты `id` и `for`, чтобы связать `<input>` и `<label>`. Мы используем родственный селектор (`~`) для всех наших состояний `<input>`, таких как `:checked` или `:disabled`. В сочетании с классом `.form-check-label` мы можем легко стилизовать текст для каждого элемента на основе состояния `<input>`'.

В наших проверках используются пользовательские иконки Bootstrap для обозначения отмеченных или неопределенных состояний.

## Флажки

{{< example >}}
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  <label class="form-check-label" for="flexCheckDefault">
    Флажок по умолчанию
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
  <label class="form-check-label" for="flexCheckChecked">
    Выбранный флажок
  </label>
</div>
{{< /example >}}

### Неопределенный

Чекбоксы могут использовать псевдокласс `:indeterminate` при ручной установке через JavaScript (нет доступного атрибута HTML для его указания).

{{< example class="bd-example-indeterminate">}}
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate">
  <label class="form-check-label" for="flexCheckIndeterminate">
    Неопределенный флажок
  </label>
</div>
{{< /example >}}

### Отключенный

Добавьте атрибут `disabled`, и для связанных тегов `<label>` будет автоматически применен стиль, соответствующий более светлому цвету, чтобы помочь указать состояние ввода.

{{< example >}}
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckDisabled" disabled>
  <label class="form-check-label" for="flexCheckDisabled">
    Отключенный флажок
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="flexCheckCheckedDisabled" checked disabled>
  <label class="form-check-label" for="flexCheckCheckedDisabled">
    Отключенный выбранный флажок
  </label>
</div>
{{< /example >}}

## Радио

{{< example >}}
<div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
  <label class="form-check-label" for="flexRadioDefault1">
    Радио по умолчанию
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
  <label class="form-check-label" for="flexRadioDefault2">
    Радио выбранное по умолчанию
  </label>
</div>
{{< /example >}}

### Отключенное

Добавьте атрибут `disabled`, и для связанных тегов `<label>` будет автоматически применен стиль, соответствующий более светлому цвету, чтобы помочь указать состояние ввода.

{{< example >}}
<div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioDisabled" disabled>
  <label class="form-check-label" for="flexRadioDisabled">
    Отключенное радио
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioCheckedDisabled" checked disabled>
  <label class="form-check-label" for="flexRadioCheckedDisabled">
    Отключенное выбранное радио
  </label>
</div>
{{< /example >}}

## Переключатели

Переключатель имеет разметку настраиваемого флажка, но для визуализации переключателя использует класс `.form-switch`. Рассмотрите возможность использования `role="switch"`, чтобы более точно передать характер управления вспомогательным технологиям, которые поддерживают эту роль. В старых вспомогательных технологиях это будет просто объявлено как обычный флажок в качестве запасного варианта. Коммутаторы также поддерживают атрибут `disabled`.

{{< example >}}
<div class="form-check form-switch">
  <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
  <label class="form-check-label" for="flexSwitchCheckDefault">Ввод флажка переключателя по умолчанию</label>
</div>
<div class="form-check form-switch">
  <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
  <label class="form-check-label" for="flexSwitchCheckChecked">Выбран флажок переключателя ввода</label>
</div>
<div class="form-check form-switch">
  <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDisabled" disabled>
  <label class="form-check-label" for="flexSwitchCheckDisabled">Отключено переключение флажка ввода</label>
</div>
<div class="form-check form-switch">
  <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckCheckedDisabled" checked disabled>
  <label class="form-check-label" for="flexSwitchCheckCheckedDisabled">Отключено переключение флажка в поле ввода</label>
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
  <input class="form-check-input" type="checkbox" id="flexSwitchCheckReverse">
  <label class="form-check-label" for="flexSwitchCheckReverse">Вход флажка обратного переключателя</label>
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
{{< /example >}}

{{< example >}}
<input type="checkbox" class="btn-check" id="btn-check-2" checked autocomplete="off">
<label class="btn btn-primary" for="btn-check-2">Выбранный</label>
{{< /example >}}

{{< example >}}
<input type="checkbox" class="btn-check" id="btn-check-3" autocomplete="off" disabled>
<label class="btn btn-primary" for="btn-check-3">Отключенный</label>
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

### Стиль контура

Поддерживаются различные варианты `.btn`, например, в различных выделенных стилях.

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

## Sass

### Переменные

{{< scss-docs name="form-check-variables" file="scss/_variables.scss" >}}
