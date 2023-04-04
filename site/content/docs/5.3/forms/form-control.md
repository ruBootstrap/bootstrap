---
layout: docs
title: Управление формой
description: Обновите элементы управления текстовой формой, такие как `<input>` и `<textarea>`, с помощью настраиваемых стилей, размеров, состояний фокуса и т.д.
group: forms
toc: true
---

## Пример

Элементы управления формы оформлены с использованием сочетания переменных Sass и CSS, что позволяет им адаптироваться к цветовым режимам и поддерживать любой метод настройки.

{{< example >}}
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Адрес электронной почты</label>
  <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Пример текстового поля</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
</div>
{{< /example >}}

## Размеры

Установите высоту с помощью таких классов, как `.form-control-lg` и `.form-control-sm`.

{{< example >}}
<input class="form-control form-control-lg" type="text" placeholder=".form-control-lg" aria-label="Пример .form-control-lg">
<input class="form-control" type="text" placeholder="Поле ввода по умолчанию" aria-label="пример ввода по умолчанию">
<input class="form-control form-control-sm" type="text" placeholder=".form-control-sm" aria-label="Пример .form-control-sm">
{{< /example >}}

## Текст формы

Текст формы блочного или встроенного уровня может быть создан с помощью `.form-text`.

{{< callout warning >}}
Текст формы должен быть явно связан с элементом управления формой, к которому он относится, с использованием атрибута `aria-labelledby` (для обязательной информации, такой как формат данных) или `aria-describedby` (для дополнительной информации). Это гарантирует, что вспомогательные технологии, такие как программы чтения с экрана, будут объявлять этот текст формы, когда пользователь фокусируется или вводит элемент управления.
{{< /callout >}}

Текст формы ниже полей ввода может быть оформлен с помощью `.form-text`. Если будет использоваться элемент блочного уровня, добавляется верхнее поле для легкого отступа от входных данных выше.

{{< example >}}
<label for="inputPassword5" class="form-label">Пароль</label>
<input type="password" id="inputPassword5" class="form-control" aria-labelledby="passwordHelpBlock">
<div id="passwordHelpBlock" class="form-text">
  Ваш пароль должен состоять из 8-20 символов, содержать буквы и цифры и не должен содержать пробелов, специальных символов или эмодзи.
</div>
{{< /example >}}

Встроенный текст может использовать любой типичный встроенный элемент HTML (будь то `<span>`, `<small>` или что-то еще) только с классом `.form-text`.

{{< example >}}
<div class="row g-3 align-items-center">
  <div class="col-auto">
    <label for="inputPassword6" class="col-form-label">Пароль</label>
  </div>
  <div class="col-auto">
    <input type="password" id="inputPassword6" class="form-control" aria-labelledby="passwordHelpInline">
  </div>
  <div class="col-auto">
    <span id="passwordHelpInline" class="form-text">
      Должно быть 8-20 символов.
    </span>
  </div>
</div>
{{< /example >}}

## Отключенный

Добавьте логический атрибут `disabled` для ввода, чтобы придать ему серый вид, удалить события указателя и предотвратить фокусировку.

{{< example >}}
<input class="form-control" type="text" placeholder="Отключенный ввод" aria-label="Пример отключенного входа" disabled>
<input class="form-control" type="text" value="Отключенный ввод, только для чтения" aria-label="Пример отключенного входа" disabled readonly>
{{< /example >}}

## Только для чтения

Добавьте логический атрибут `readonly` для ввода, чтобы предотвратить изменение значения ввода. Вводы `readonly` по-прежнему могут быть сфокусированы и выбраны, а вводы `disabled` - нет.

{{< example >}}
<input class="form-control" type="text" value="Ввод здесь только для чтения..." aria-label="привер ввода только для чтения" readonly>
{{< /example >}}

## Обычный текст только для чтения

Если вы хотите, чтобы элементы `<input readonly>` в вашей форме были оформлены как обычный текст, замените `.form-control` на `.form-control-plaintext`, чтобы удалить стиль поля формы по умолчанию и сохранить правильное поле `margin` и `padding`.

{{< example >}}
  <div class="mb-3 row">
    <label for="staticEmail" class="col-sm-2 col-form-label">Эл. адрес</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="email@example.com">
    </div>
  </div>
  <div class="mb-3 row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Пароль</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword">
    </div>
  </div>
{{< /example >}}

{{< example >}}
<form class="row g-3">
  <div class="col-auto">
    <label for="staticEmail2" class="visually-hidden">Эл. адрес</label>
    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="email@example.com">
  </div>
  <div class="col-auto">
    <label for="inputPassword2" class="visually-hidden">Пароль</label>
    <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
  </div>
  <div class="col-auto">
    <button type="submit" class="btn btn-primary mb-3">Подтвердить личность</button>
  </div>
</form>
{{< /example >}}

## Выбор файла

{{< example >}}
<div class="mb-3">
  <label for="formFile" class="form-label">Пример ввода файла по умолчанию</label>
  <input class="form-control" type="file" id="formFile">
</div>
<div class="mb-3">
  <label for="formFileMultiple" class="form-label">Пример ввода нескольких файлов</label>
  <input class="form-control" type="file" id="formFileMultiple" multiple>
</div>
<div class="mb-3">
  <label for="formFileDisabled" class="form-label">Пример отключенного ввода файла</label>
  <input class="form-control" type="file" id="formFileDisabled" disabled>
</div>
<div class="mb-3">
  <label for="formFileSm" class="form-label">Пример небольшого ввода файла</label>
  <input class="form-control form-control-sm" id="formFileSm" type="file">
</div>
<div>
  <label for="formFileLg" class="form-label">Пример большого ввода файла</label>
  <input class="form-control form-control-lg" id="formFileLg" type="file">
</div>
{{< /example >}}

## Цвет

Установите `type="color"` и добавьте `.form-control-color` к `<input>`. Мы используем класс модификатора, чтобы установить фиксированную высоту `height` и переопределить некоторые несоответствия между браузерами.

{{< example >}}
<label for="exampleColorInput" class="form-label">Палитра цветов</label>
<input type="color" class="form-control form-control-color" id="exampleColorInput" value="#563d7c" title="Выбери свой цвет">
{{< /example >}}

## Списки данных

Списки данных позволяют Вам создать группу `<option>`, к которой можно получить доступ (и автозаполнение) из `<input>`. Они похожи на элементы `<select>`, но имеют больше ограничений и различий в стиле меню. Хотя большинство браузеров и операционных систем включают некоторую поддержку элементов `<datalist>` , их стиль в лучшем случае противоречивый.

Подробнее о [поддержке элементов списка данных](https://caniuse.com/datalist).

{{< example >}}
<label for="exampleDataList" class="form-label">Пример списка данных</label>
<input class="form-control" list="datalistOptions" id="exampleDataList" placeholder="Введите для поиска...">
<datalist id="datalistOptions">
  <option value="Москва">
  <option value="Санкт-Петербург">
  <option value="Брянск">
  <option value="Екатеринбург">
  <option value="Волгоград">
</datalist>
{{< /example >}}

## CSS

### Sass переменные

`$input-*` используется в большинстве наших элементов управления формой (но не в кнопках).

{{< scss-docs name="form-input-variables" file="scss/_variables.scss" >}}

`$form-label-*` и `$form-text-*` предназначены для наших компонентов `<label>` и `.form-text`.

{{< scss-docs name="form-label-variables" file="scss/_variables.scss" >}}

{{< scss-docs name="form-text-variables" file="scss/_variables.scss" >}}

`$form-file-*` предназначены для ввода файла.

{{< scss-docs name="form-file-variables" file="scss/_variables.scss" >}}
