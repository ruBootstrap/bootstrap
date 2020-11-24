---
layout: docs
title: Формы
description: Примеры и рекомендации по использованию стилей управления формами, параметров макета и настраиваемых компонентов для создания самых разнообразных форм.
group: components
toc: true
---

## Обзор

Элементы управления формой Bootstrap расширяются на [наши стили перезагрузки форм]({{< docsref "/content/reboot#forms" >}}) с помощью классов. Используйте эти классы, чтобы выбрать их настраиваемые отображения для более согласованного отображения в браузерах и на устройствах.

Обязательно используйте соответствующий атрибут `type` для всех входных данных (например, `email` для адреса электронной почты или `number` для числовой информации), чтобы воспользоваться преимуществами новых элементов управления вводом, таких как проверка электронной почты, выбор номера и т.д.

Вот быстрый пример, демонстрирующий стили формы Bootstrap. Продолжайте читать, чтобы узнать о необходимых классах, макете формы и многом другом.

{{< example >}}
<form>
  <div class="form-group">
    <label for="exampleInputEmail1">Адрес электронной почты</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <small id="emailHelp" class="form-text text-muted">Мы никогда никому не передадим Вашу электронную почту.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Пароль</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Проверить меня</label>
  </div>
  <button type="submit" class="btn btn-primary">Отправить</button>
</form>
{{< /example >}}

## Форма управления

Текстовые элементы управления формой, такие как `<input>`, `<select>` и `<textarea>` стилизованы с помощью класса `.form-control`. Включены стили для общего вида, состояния фокуса, размера и т.д.

Обязательно изучите наши [пользовательские формы](#настраиваемые-формы), чтобы узнать больше о стилях `<select>`s.

{{< example >}}
<form>
  <div class="form-group">
    <label for="exampleFormControlInput1">Адрес электронной почты</label>
    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Пример меню выбора</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect2">Пример множественного выбора</label>
    <select multiple class="form-control" id="exampleFormControlSelect2">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Пример текстового поля</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
</form>
{{< /example >}}

Для файлового ввода замените `.form-control` на `.form-control-file`.

{{< example >}}
<form>
  <div class="form-group">
    <label for="exampleFormControlFile1">Пример ввода файла</label>
    <input type="file" class="form-control-file" id="exampleFormControlFile1">
  </div>
</form>
{{< /example >}}

### Размеры

Установите высоту с помощью таких классов, как `.form-control-lg` и `.form-control-sm`.

{{< example >}}
<input class="form-control form-control-lg" type="text" placeholder=".form-control-lg">
<input class="form-control" type="text" placeholder="Ввод по умолчанию">
<input class="form-control form-control-sm" type="text" placeholder=".form-control-sm">
{{< /example >}}

{{< example >}}
<select class="form-control form-control-lg">
  <option>Большое меню выбора</option>
</select>
<select class="form-control">
  <option>Меню выбора по умолчанию</option>
</select>
<select class="form-control form-control-sm">
  <option>Маленькое меню выбора</option>
</select>
{{< /example >}}

### Только чтение

Добавьте логический атрибут `readonly` к полю ввода, чтобы предотвратить изменение входного значения. Поля ввода, доступные только для чтения, выглядят светлее (как и отключенные входы), но сохраняют стандартный курсор.

{{< example >}}
<input class="form-control" type="text" placeholder="Здесь поле ввода только для чтения..." readonly>
{{< /example >}}

### Только для чтения обычный текст

Если Вы хотите, чтобы элементы `<input readonly>` в Вашей форме были стилизованы как простой текст, используйте класс `.form-control-plaintext`, чтобы удалить стиль поля формы по умолчанию и сохранить правильные поля и отступы.

{{< example >}}
<form>
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">Эл. адрес</label>
    <div class="col-sm-10">
      <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="email@example.com">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">Пароль</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword">
    </div>
  </div>
</form>
{{< /example >}}

{{< example >}}
<form class="form-inline">
  <div class="form-group mb-2">
    <label for="staticEmail2" class="sr-only">Эл. адрес</label>
    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="email@example.com">
  </div>
  <div class="form-group mx-sm-3 mb-2">
    <label for="inputPassword2" class="sr-only">Пароль</label>
    <input type="password" class="form-control" id="inputPassword2" placeholder="Password">
  </div>
  <button type="submit" class="btn btn-primary mb-2">Подтвердить личность</button>
</form>
{{< /example >}}

## Ввод диапазона

Установите горизонтально прокручиваемый диапазон входов с помощью `.form-control-range`.

{{< example >}}
<form>
  <div class="form-group">
    <label for="formControlRange">Пример ввода диапазона</label>
    <input type="range" class="form-control-range" id="formControlRange">
  </div>
</form>
{{< /example >}}

## Флажки и радио

Флажки и радио по умолчанию улучшены с помощью `.form-check`, **единственного класса для обоих типов ввода, который улучшает макет и поведение их HTML-элементов**. Флажки предназначены для выбора одного или нескольких вариантов в списке, а радио - для выбора одного варианта из многих.

Поддерживаются отключенные флажки и радио. Атрибут `disabled` применит более светлый цвет для обозначения состояния ввода.

Флажки и переключатели поддерживают проверку формы на основе HTML и предоставляют краткие, доступные метки. Таким образом, наши `<input>` b `<label>` являются родственными элементами в отличие от `<input>` внутри `<label>`. Это немного более подробно, так как Вы должны указать атрибуты `id` и `for` чтобы связать `<input>` и `<label>`.

### По умолчанию (сложены)

По умолчанию любое количество флажков и радио, которые являются ближайшими родственниками, будут располагаться вертикально и соответствующим образом разделены с помощью `.form-check`.

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

### Строковые

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
  <label class="form-check-label" for="inlineCheckbox3">3 (отключен)</label>
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
  <label class="form-check-label" for="inlineRadio3">3 (отключен)</label>
</div>
{{< /example >}}

### Без меток

Добавьте `.position-static` ко входам в `.form-check`, которые не имеют текста метки. Не забудьте по-прежнему предоставить доступное имя для вспомогательных технологий (например, с помощью `aria-label`).

{{< example >}}
<div class="form-check">
  <input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
</div>
<div class="form-check">
  <input class="form-check-input position-static" type="radio" name="blankRadio" id="blankRadio1" value="option1" aria-label="...">
</div>
{{< /example >}}

## Макет

Поскольку Bootstrap применяет `display: block` и `width: 100%` почти ко всем элементам управления формой, формы по умолчанию будут располагаться вертикально. Дополнительные классы могут использоваться для изменения этого макета для каждой формы.

### Группы форм

Класс `.form-group` то самый простой способ добавить некоторую структуру к формам. Он предоставляет гибкий класс, который поощряет правильную группировку меток, элементов управления, необязательного текста справки и сообщений проверки формы. По умолчанию он применяет только `margin-bПетровm`, но при необходимости подбирает дополнительные стили в `.form-inline`. Используйте его с `<fieldset>`, `<div>` или почти любым другим элементом.

{{< example >}}
<form>
  <div class="form-group">
    <label for="formGroupExampleInput">Пример метки</label>
    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Пример заполнителя ввода">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Другая метка</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Другой заполнитель ввода">
  </div>
</form>
{{< /example >}}

### Сетка формы

Более сложные формы могут быть построены с использованием наших классов сетки. Используйте их для макетов форм, требующих нескольких столбцов, разной ширины и дополнительных параметров выравнивания.

{{< example >}}
<form>
  <div class="row">
    <div class="col">
      <input type="text" class="form-control" placeholder="Имя">
    </div>
    <div class="col">
      <input type="text" class="form-control" placeholder="Фамилия">
    </div>
  </div>
</form>
{{< /example >}}

#### Строка формы

Вы также можете заменить `.row` на `.form-row`, разновидность нашей стандартной строки сетки, которая переопределяет отступы столбцов по умолчанию для более плотных и компактных макетов.

{{< example >}}
<form>
  <div class="form-row">
    <div class="col">
      <input type="text" class="form-control" placeholder="Имя">
    </div>
    <div class="col">
      <input type="text" class="form-control" placeholder="Фамилия">
    </div>
  </div>
</form>
{{< /example >}}

С помощью системы сеток также можно создавать более сложные макеты.

{{< example >}}
<form>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Эл. адрес</label>
      <input type="email" class="form-control" id="inputEmail4">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Пароль</label>
      <input type="password" class="form-control" id="inputPassword4">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Адрес</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="проспект, улица">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Адрес 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Квартира, студия или этаж">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputГород">Город</label>
      <input type="text" class="form-control" id="inputГород">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">Область</label>
      <select id="inputState" class="form-control">
        <option selected>Выбрать...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Индекс</label>
      <input type="text" class="form-control" id="inputZip">
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Проверить меня
      </label>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Войти в систему</button>
</form>
{{< /example >}}

#### Горизонтальная форма

Создавайте горизонтальные формы с сеткой, добавляя класс `.row` для формирования групп и используя классы `.col-*-*` для определения ширины Ваших меток и элементов управления. Не забудьте добавить `.col-form-label` к Вашим `<label>`, чтобы они были выровнены по центру по вертикали с соответствующими элементами управления формой.

Иногда Вам может потребоваться использовать утилиты `margin` или `padding` для создания идеального выравнивания, которое Вам нужно. Например, мы удалили `padding-top` на нашей метке сгруппированных радио, чтобы лучше выровнять базовую линию текста.

{{< example >}}
<form>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Эл. адрес</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Пароль</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3">
    </div>
  </div>
  <fieldset class="form-group row">
    <legend class="col-form-label col-sm-2 float-sm-left pt-0">Радио</legend>
    <div class="col-sm-10">
      <div class="form-check">
        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
        <label class="form-check-label" for="gridRadios1">
          Первое радио
        </label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
        <label class="form-check-label" for="gridRadios2">
          Второе радио
        </label>
      </div>
      <div class="form-check disabled">
        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3" disabled>
        <label class="form-check-label" for="gridRadios3">
          Третье отключенное радио
        </label>
      </div>
    </div>
  </fieldset>
  <div class="form-group row">
    <div class="col-sm-10 offset-sm-2">
      <div class="form-check">
        <input class="form-check-input" type="checkbox" id="gridCheck1">
        <label class="form-check-label" for="gridCheck1">
          Пример чекбокса
        </label>
      </div>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">
      <button type="submit" class="btn btn-primary">Войти</button>
    </div>
  </div>
</form>
{{< /example >}}

##### Размер меток горизонтальной формы

Обязательно используйте `.col-form-label-sm` или `.col-form-label-lg` к Вашим `<label>` или `<legend>`, чтобы правильно следовать размеру `.form-control-lg` и `.form-control-sm`.

{{< example >}}
<form>
  <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Эл. адрес</label>
    <div class="col-sm-10">
      <input type="email" class="form-control form-control-sm" id="colFormLabelSm" placeholder="col-form-label-sm">
    </div>
  </div>
  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">Эл. адрес</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="colFormLabel" placeholder="col-form-label">
    </div>
  </div>
  <div class="form-group row">
    <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Эл. адрес</label>
    <div class="col-sm-10">
      <input type="email" class="form-control form-control-lg" id="colFormLabelLg" placeholder="col-form-label-lg">
    </div>
  </div>
</form>
{{< /example >}}

#### Размер колонки

Как показано в предыдущих примерах, наша сеточная система позволяет Вам размещать любое количество `.col` в `.row` или `.form-row`. Они разделят доступную ширину между собой поровну. Вы также можете выбрать подмножество Ваших столбцов, чтобы они занимали больше или меньше места, в то время как оставшиеся `.col` поровну разделяют остальные с определенными классами столбцов, такими как `.col-7`.

{{< example >}}
<form>
  <div class="form-row">
    <div class="col-7">
      <input type="text" class="form-control" placeholder="Город">
    </div>
    <div class="col">
      <input type="text" class="form-control" placeholder="Область">
    </div>
    <div class="col">
      <input type="text" class="form-control" placeholder="Индекс">
    </div>
  </div>
</form>
{{< /example >}}

#### Автоматический размер

В приведенном ниже примере используется утилита flexbox для вертикального центрирования содержимого и изменение `.col` на `.col-auto`, чтобы Ваши столбцы занимали ровно столько места, сколько необходимо. Другими словами, размер столбца зависит от содержимого.

{{< example >}}
<form>
  <div class="form-row align-items-center">
    <div class="col-auto">
      <label class="sr-only" for="inlineFormInput">Имя</label>
      <input type="text" class="form-control mb-2" id="inlineFormInput" placeholder="Иванова Анна">
    </div>
    <div class="col-auto">
      <label class="sr-only" for="inlineFormInputGroup">Имя пользователя</label>
      <div class="input-group mb-2">
        <div class="input-group-prepend">
          <div class="input-group-text">@</div>
        </div>
        <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Имя пользователя">
      </div>
    </div>
    <div class="col-auto">
      <div class="form-check mb-2">
        <input class="form-check-input" type="checkbox" id="autoSizingCheck">
        <label class="form-check-label" for="autoSizingCheck">
          Запомните меня
        </label>
      </div>
    </div>
    <div class="col-auto">
      <button type="submit" class="btn btn-primary mb-2">Отправить</button>
    </div>
  </div>
</form>
{{< /example >}}

Затем Вы можете снова смешать это с классами столбцов, зависящими от размера.

{{< example >}}
<form>
  <div class="form-row align-items-center">
    <div class="col-sm-3 my-1">
      <label class="sr-only" for="inlineFormInputName">Имя</label>
      <input type="text" class="form-control" id="inlineFormInputName" placeholder="Иванова Анна">
    </div>
    <div class="col-sm-3 my-1">
      <label class="sr-only" for="inlineFormInputGroupUsername">Имя пользователя</label>
      <div class="input-group">
        <div class="input-group-prepend">
          <div class="input-group-text">@</div>
        </div>
        <input type="text" class="form-control" id="inlineFormInputGroupUsername" placeholder="Имя пользователя">
      </div>
    </div>
    <div class="col-auto my-1">
      <div class="form-check">
        <input class="form-check-input" type="checkbox" id="autoSizingCheck2">
        <label class="form-check-label" for="autoSizingCheck2">
          Запомните меня
        </label>
      </div>
    </div>
    <div class="col-auto my-1">
      <button type="submit" class="btn btn-primary">Отправить</button>
    </div>
  </div>
</form>
{{< /example >}}

И, конечно же, поддерживаются [элементы управления настраиваемой формы](#настраиваемые-формы).

{{< example >}}
<form>
  <div class="form-row align-items-center">
    <div class="col-auto my-1">
      <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Предпочтение</label>
      <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
        <option selected>Выбрать...</option>
        <option value="1">Один</option>
        <option value="2">Два</option>
        <option value="3">три</option>
      </select>
    </div>
    <div class="col-auto my-1">
      <div class="custom-control custom-checkbox mr-sm-2">
        <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
        <label class="custom-control-label" for="customControlAutosizing">Помните мои предпочтения</label>
      </div>
    </div>
    <div class="col-auto my-1">
      <button type="submit" class="btn btn-primary">Отправить</button>
    </div>
  </div>
</form>
{{< /example >}}

### Строковые формы

Используйте класс `.form-inline` для отображения серии меток, элементов управления формы и кнопок в одной горизонтальной строке. Элементы управления формами внутри встроенных форм немного отличаются от состояний по умолчанию.

- Элементы управления - это `display: flex`, сворачивающее любое пустое пространство HTML и позволяющее вам обеспечить контроль выравнивания с помощью утилит [интервалов]({{< docsref "/utilities/spacing" >}}) и [flexbox]({{< docsref "/utilities/flex" >}}).
- Элементы управления и группы ввода получают ширину `width: auto`, чтобы переопределить ширину по умолчанию Bootstrap `width: 100%`.
- Элементы управления **отображаются встроенными только в области просмотра, ширина которых составляет не менее 576px**, чтобы учесть узкие области просмотра на мобильных устройствах.

Возможно, Вам придется вручную задать ширину и выравнивание отдельных элементов управления формой с помощью [утилит интервалов]({{< docsref "/utilities/spacing" >}}) (как показано ниже). Наконец, не забудьте всегда включать `<label>` в каждый элемент управления формой, даже если Вам нужно скрыть его от посетителей, не читающих с экрана, с помощью `.sr-only`.

{{< example >}}
<form class="form-inline">
  <label class="sr-only" for="inlineFormInputName2">Имя</label>
  <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Jane Doe">

  <label class="sr-only" for="inlineFormInputGroupUsername2">Имя пользователя</label>
  <div class="input-group mb-2 mr-sm-2">
    <div class="input-group-prepend">
      <div class="input-group-text">@</div>
    </div>
    <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="Username">
  </div>

  <div class="form-check mb-2 mr-sm-2">
    <input class="form-check-input" type="checkbox" id="inlineFormCheck">
    <label class="form-check-label" for="inlineFormCheck">
      Запомните меня
    </label>
  </div>

  <button type="submit" class="btn btn-primary mb-2">Отправить</button>
</form>
{{< /example >}}

Также поддерживаются настраиваемые элементы управления и выбор формы.

{{< example >}}
<form class="form-inline">
  <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Предпочтения</label>
  <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
    <option selected>Выбрать...</option>
    <option value="1">Один</option>
    <option value="2">Два</option>
    <option value="3">Три</option>
  </select>

  <div class="custom-control custom-checkbox my-1 mr-sm-2">
    <input type="checkbox" class="custom-control-input" id="customControlInline">
    <label class="custom-control-label" for="customControlInline">Запомнить мои предпочтения</label>
  </div>

  <button type="submit" class="btn btn-primary my-1">Отправить</button>
</form>
{{< /example >}}

{{< callout warning >}}
##### Альтернативы скрытым ярлыкам
Вспомогательные технологии, такие как программы чтения с экрана, будут иметь проблемы с вашими формами, если Вы не добавите метку для каждого ввода. Для этих встроенных форм Вы можете скрыть метки с помощью класса `.sr-only`. Существуют и другие альтернативные методы предоставления метки для вспомогательных технологий, такие как атрибут `aria-label`, `aria-labelledby` или `title`. Если ни один из них не присутствует, вспомогательные технологии могут прибегать к использованию атрибута `placeholder`, если он присутствует, но учтите, что использование `placeholder` в качестве замены для других методов маркировки не рекомендуется.
{{< /callout >}}

## Текст помощи

Текст справки на уровне блока в формах может быть создан с помощью `.form-text` (ранее известный как `.help-block` в версии v3). Встроенный текст справки может быть гибко реализован с использованием любого встроенного элемента HTML и служебных классов, таких как `.text-muted`.

{{< callout warning >}}
##### Связывание текста помощи с элементами управления формой

Текст справки должен быть явно связан с элементом управления формы, к которому он относится, с помощью атрибута `aria-describedby`. Это гарантирует, что вспомогательные технологии, такие как программы чтения с экрана, будут озвучивать этот текст справки, когда пользователь фокусируется или входит в элемент управления.
{{< /callout >}}

Текст справки под полями можно оформить с помощью `.form-text`. Этот класс включает в себя `display: block` и добавляет верхнее поле для удобного разделения полей ввода выше.

{{< example >}}
<label for="inputPassword5">Пароль</label>
<input type="password" id="inputPassword5" class="form-control" aria-describedby="passwordHelpBlock">
<small id="passwordHelpBlock" class="form-text text-muted">
  Ваш пароль должен состоять из 8–20 символов, содержать буквы и цифры и не должен содержать пробелов, специальных символов или эмодзи.
</small>
{{< /example >}}

Встроенный текст может использовать любой типичный встроенный элемент HTML (будь то `<small>`, `<span>` или что-то еще) с не более чем служебным классом.

{{< example >}}
<form class="form-inline">
  <div class="form-group">
    <label for="inputPassword6">Пароль</label>
    <input type="password" id="inputPassword6" class="form-control mx-sm-3" aria-describedby="passwordHelpInline">
    <small id="passwordHelpInline" class="text-muted">
      Должен быть 8-20 символов.
    </small>
  </div>
</form>
{{< /example >}}

## Отключенные формы

Добавьте логический атрибут `disabled` для ввода, чтобы предотвратить взаимодействие с пользователем и сделать его более светлым.

```html
<input class="form-control" id="disabledInput" type="text" placeholder="Здесь отключен ввод..." disabled>
```

Добавьте атрибут `disabled` r `<fieldset>`, чтобы отключить все элементы управления внутри.

{{< example >}}
<form>
  <fieldset disabled>
    <legend>Пример отключенного набора полей</legend>
    <div class="form-group">
      <label for="disabledTextInput">Отключенное поле ввода</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="Отключенное поле ввода">
    </div>
    <div class="form-group">
      <label for="disabledSelect">Отключенное меню выбора</label>
      <select id="disabledSelect" class="form-control">
        <option>Отключенное меню выбора</option>
      </select>
    </div>
    <div class="form-group">
      <div class="form-check">
        <input class="form-check-input" type="checkbox" id="disabledFieldsetCheck" disabled>
        <label class="form-check-label" for="disabledFieldsetCheck">
          Не могу это проверить
        </label>
      </div>
    </div>
    <button type="submit" class="btn btn-primary">Отправить</button>
  </fieldset>
</form>
{{< /example >}}

{{< callout warning >}}
##### Предупреждение с якорями

Браузеры обрабатывают все элементы управления собственными формами (элементы `<input>`, `<select>` и `<button>`) внутри `<fieldset disabled>` как отключенными, предотвращая взаимодействие с ними как с клавиатуры, так и с помощью мыши.

Однако, если Ваша форма также включает в себя пользовательские элементы, похожие на кнопки, такие как `<a ... class="btn btn-*">`, им будет присвоен только стиль `pointer-events: none`. Как отмечено в разделе о [отключенном состоянии для кнопок]({{< docsref "/components/buttons#disabled-state" >}}) (и особенно в подразделе для элементов привязки), это свойство CSS еще не стандартизированы и не полностью поддерживаются в Internet Explorer 10. Элементы управления на основе привязки также будут доступны для фокусировки и работать с ними с клавиатуры. Вы должны вручную изменить эти элементы управления, добавив `tabindex="-1"`, чтобы они не получали фокус, и `aria-disabled="disabled"`, чтобы сигнализировать о своем состоянии вспомогательным технологиям.
{{< /callout >}}

{{< callout danger >}}
#### Кроссбраузерная совместимость

Хотя Bootstrap будет применять эти стили во всех браузерах, Internet Explorer 11 и ниже не полностью поддерживает атрибут `disabled` в `<fieldset>`. Используйте собственный JavaScript, чтобы отключить набор полей в этих браузерах.
{{< /callout >}}

## Проверка

Предоставьте пользователям ценные и полезные отзывы с помощью проверки формы HTML5 - [доступно во всех поддерживаемых нами браузерах](https://caniuse.com/form-validation). Выберите из обратной связи проверки браузера по умолчанию или реализуйте собственные сообщения с помощью наших встроенных классов и стартового JavaScript.

{{< callout warning >}}
Нам известно, что в настоящее время пользовательские стили проверки и всплывающие подсказки на стороне клиента недоступны, поскольку они не доступны для вспомогательных технологий. Пока мы работаем над решением, мы рекомендуем либо использовать вариант на стороне сервера, либо метод проверки браузера по умолчанию.
{{< /callout >}}

### Как это работает

Вот как проверка формы работает с Bootstrap:

- Проверка формы HTML применяется через два псевдокласса CSS, `:invalid` и `:valid`. Он применяется к элементам `<input>`, `<select>` и `<textarea>`.
- Bootstrap применяет стили `:invalid` и `:valid` к родительскому классу `.was-validated`, обычно применяемому к `<form>`. В противном случае любое обязательное поле без значения будет отображаться как недопустимое при загрузке страницы. Таким образом, Вы можете выбрать, когда их активировать (обычно после попытки отправки формы).
- Чтобы сбросить внешний вид формы (например, в случае отправки динамической формы с использованием AJAX), удалите класс `.was-validated` из `<form>` снова после отправки.
- В качестве запасного варианта могут использоваться классы `.is-invalid` и `.is-valid` вместо псевдоклассов для [проверки на стороне сервера [проверки на стороне сервера](#на-стороне-сервера). Им не нужен родительский класс `.was-validated`.
- Из-за ограничений в том, как работает CSS, мы не можем (в настоящее время) применять стили к `<label>`, который стоит перед элементом управления формой в DOM, без помощи пользовательского JavaScript.
- Все современные браузеры поддерживают [API проверки ограничений](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#the-constraint-validation-api), серию методов JavaScript для проверки формы управления.
- В сообщениях обратной связи могут использоваться [настройки браузера по умолчанию](#настройки-браузера-по-умолчанию) (разные для каждого браузера и не стилизованные с помощью CSS) или наши пользовательские стили обратной связи с дополнительным HTML и CSS.
- Вы можете предоставлять настраиваемые сообщения о действительности с помощью `setCustomValidity` в JavaScript.

Имея это в виду, рассмотрим следующие демонстрации наших пользовательских стилей проверки формы, дополнительных классов на стороне сервера и настроек браузера по умолчанию.

### Пользовательские стили

Для пользовательских сообщений проверки формы Bootstrap Вам необходимо добавить логический атрибут `novalidate` к Вашему тегу `<form>`. Это отключает всплывающие подсказки обратной связи браузера по умолчанию, но по-прежнему обеспечивает доступ к API проверки формы в JavaScript. Попробуйте заполнить форму ниже; наш JavaScript перехватит кнопку отправки и передаст Вам отзыв. При попытке отправить Вы увидите стили `:invalid` и `:valid`, примененные к элементам управления Вашей формы.

В пользовательских стилях обратной связи применяются пользовательские цвета, границы, стили фокуса и фоновые значки, чтобы лучше передавать отзывы. Фоновые иконки для `<select>` доступны только с `.custom-select`, но не с `.form-control`.

{{< example >}}
<form class="needs-validation" novalidate>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationCustom01">Имя</label>
      <input type="text" class="form-control" id="validationCustom01" value="Иван" required>
      <div class="valid-feedback">
        Выглядит хорошо!
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationCustom02">Фамилия</label>
      <input type="text" class="form-control" id="validationCustom02" value="Петров" required>
      <div class="valid-feedback">
        Выглядит хорошо!
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationCustom03">Город</label>
      <input type="text" class="form-control" id="validationCustom03" required>
      <div class="invalid-feedback">
        Укажите действующий город.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationCustom04">Область</label>
      <select class="custom-select" id="validationCustom04" required>
        <option selected disabled value="">Выбрать...</option>
        <option>...</option>
      </select>
      <div class="invalid-feedback">
        Пожалуйста, выберите допустимую область.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationCustom05">Индекс</label>
      <input type="text" class="form-control" id="validationCustom05" required>
      <div class="invalid-feedback">
        Пожалуйста, предоставьте действующий почтовый индекс.
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
      <label class="form-check-label" for="invalidCheck">
        Согласитесь с условиями
      </label>
      <div class="invalid-feedback">
        Вы должны согласиться перед отправкой.
      </div>
    </div>
  </div>
  <button class="btn btn-primary" type="submit">Отправить форму</button>
</form>

<script>
// Пример стартового JavaScript для отключения отправки форм при наличии недопустимых полей
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Получите все формы, к которым мы хотим применить пользовательские стили проверки Bootstrap
    var forms = document.getElementsByClassName('needs-validation');
    // Зацикливайтесь на них и предотвращайте подчинение
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
{{< /example >}}

### Настройки браузера по умолчанию

Не заинтересованы в пользовательских сообщениях обратной связи для проверки или написании JavaScript для изменения поведения формы? Все хорошо, Вы можете использовать настройки браузера по умолчанию. Попробуйте заполнить форму ниже. В зависимости от Вашего браузера и ОС Вы увидите немного другой стиль обратной связи.

Хотя эти стили обратной связи нельзя стилизовать с помощью CSS, Вы все равно можете настроить текст отзыва с помощью JavaScript.

{{< example >}}
<form>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault01">Имя</label>
      <input type="text" class="form-control" id="validationDefault01" value="Иван" required>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationDefault02">Фамилия</label>
      <input type="text" class="form-control" id="validationDefault02" value="Петров" required>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault03">Город</label>
      <input type="text" class="form-control" id="validationDefault03" required>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationDefault04">Область</label>
      <select class="custom-select" id="validationDefault04" required>
        <option selected disabled value="">Выбрать...</option>
        <option>...</option>
      </select>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationDefault05">Индекс</label>
      <input type="text" class="form-control" id="validationDefault05" required>
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
      <label class="form-check-label" for="invalidCheck2">
        Согласитесь с условиями
      </label>
    </div>
  </div>
  <button class="btn btn-primary" type="submit">Отправить форму</button>
</form>
{{< /example >}}

### На стороне сервера

Мы рекомендуем использовать проверку на стороне клиента, но если Вам требуется проверка на стороне сервера, Вы можете указать недопустимые и допустимые поля формы с помощью `.is-invalid` и `.is-valid`. Обратите внимание, что эти классы также поддерживают `.invalid-feedback`.

Для недопустимых полей убедитесь, что недопустимый отзыв/сообщение об ошибке связано с соответствующим полем формы с помощью `aria-describedby`. Этот атрибут позволяет ссылаться на более чем один `id`, если поле уже указывает на дополнительный текст формы.

{{< example >}}
<form>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationServer01">Имя</label>
      <input type="text" class="form-control is-valid" id="validationServer01" value="Иван" required>
      <div class="valid-feedback">
        Выглядит хорошо!
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationServer02">Фамилия</label>
      <input type="text" class="form-control is-valid" id="validationServer02" value="Петров" required>
      <div class="valid-feedback">
        Выглядит хорошо!
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationServer03">Город</label>
      <input type="text" class="form-control is-invalid" id="validationServer03" aria-describedby="validationServer03Feedback" required>
      <div id="validationServer03Feedback" class="invalid-feedback">
        Укажите действующий город.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationServer04">Область</label>
      <select class="custom-select is-invalid" id="validationServer04" aria-describedby="validationServer04Feedback" required>
        <option selected disabled value="">Выбрать...</option>
        <option>...</option>
      </select>
      <div id="validationServer04Feedback" class="invalid-feedback">
        Пожалуйста, выберите допустимую область.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationServer05">Индекс</label>
      <input type="text" class="form-control is-invalid" id="validationServer05" aria-describedby="validationServer05Feedback" required>
      <div id="validationServer05Feedback" class="invalid-feedback">
        Пожалуйста, предоставьте действующий почтовый индекс.
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" aria-describedby="invalidCheck3Feedback" required>
      <label class="form-check-label" for="invalidCheck3">
        Согласитесь с условиями
      </label>
      <div  id="invalidCheck3Feedback" class="invalid-feedback">
        Вы должны согласиться перед отправкой.
      </div>
    </div>
  </div>
  <button class="btn btn-primary" type="submit">Отправить форму</button>
</form>
{{< /example >}}

### Поддерживаемые элементы

Стили проверки доступны для следующих элементов управления и компонентов формы:

- `<input>` и `<textarea>` с `.form-control`
- `<select>` с `.form-control` или `.custom-select`
- `.form-check`
- `.custom-checkbox` и `.custom-radio`
- `.custom-file`

{{< example >}}
<form class="was-validated">
  <div class="mb-3">
    <label for="validationTextarea">Текстовая область</label>
    <textarea class="form-control is-invalid" id="validationTextarea" placeholder="Пример обязательного текстового поля" required></textarea>
    <div class="invalid-feedback">
      Пожалуйста, введите сообщение в текстовое поле.
    </div>
  </div>

  <div class="custom-control custom-checkbox mb-3">
    <input type="checkbox" class="custom-control-input" id="customControlValidation1" required>
    <label class="custom-control-label" for="customControlValidation1">Установите этот настраиваемый флажок</label>
    <div class="invalid-feedback">Пример неверного текста отзыва</div>
  </div>

  <div class="custom-control custom-radio">
    <input type="radio" class="custom-control-input" id="customControlValidation2" name="radio-stacked" required>
    <label class="custom-control-label" for="customControlValidation2">Переключить это настраиваемое радио</label>
  </div>
  <div class="custom-control custom-radio mb-3">
    <input type="radio" class="custom-control-input" id="customControlValidation3" name="radio-stacked" required>
    <label class="custom-control-label" for="customControlValidation3">Или переключите это другое настраиваемое радио</label>
    <div class="invalid-feedback">Еще пример недопустимого текста отзыва</div>
  </div>

  <div class="mb-3">
    <select class="custom-select" required>
      <option value="">Выбрать...</option>
      <option value="1">Один</option>
      <option value="2">Два</option>
      <option value="3">Три</option>
    </select>
    <div class="invalid-feedback">Пример неверного отзыва о пользовательском выборе</div>
  </div>

  <div class="custom-file mb-3">
    <input type="file" class="custom-file-input" id="validatedCustomFile" required>
    <label class="custom-file-label" for="validatedCustomFile">Выбрать файл...</label>
    <div class="invalid-feedback">Пример неверного отзыва о пользовательском файле</div>
  </div>

  <div class="mb-3">
    <div class="input-group is-invalid">
      <div class="input-group-prepend">
        <span class="input-group-text" id="validatedInputGroupPrepend">@</span>
      </div>
      <input type="text" class="form-control is-invalid" aria-describedby="validatedInputGroupPrepend" required>
    </div>
    <div class="invalid-feedback">
      Пример неверной обратной связи группы ввода
    </div>
  </div>

  <div class="mb-3">
    <div class="input-group is-invalid">
      <div class="input-group-prepend">
        <label class="input-group-text" for="validatedInputGroupSelect">Параметры</label>
      </div>
      <select class="custom-select" id="validatedInputGroupSelect" required>
        <option value="">Выбрать...</option>
        <option value="1">Один</option>
        <option value="2">Два</option>
        <option value="3">Три</option>
      </select>
    </div>
    <div class="invalid-feedback">
      Пример неверной обратной связи группы ввода
    </div>
  </div>

  <div class="input-group is-invalid">
    <div class="custom-file">
      <input type="file" class="custom-file-input" id="validatedInputGroupCustomFile" required>
      <label class="custom-file-label" for="validatedInputGroupCustomFile">Выбрать файл...</label>
    </div>
    <div class="input-group-append">
       <button class="btn btn-outline-secondary" type="button">Кнопка</button>
    </div>
  </div>
  <div class="invalid-feedback">
    Пример неверной обратной связи группы ввода
  </div>
</form>
{{< /example >}}

### Всплывающие подсказки

Если Ваш макет формы позволяет это, Вы можете заменить классы `.{valid|invalid}-feedback` на классы `.{valid|invalid}-tooltip`, чтобы отображать отзывы о проверке в стилизованной всплывающей подсказке. Убедитесь, что у Вас есть родительский элемент с `position: relative` для позиционирования всплывающей подсказки. В приведенном ниже примере у наших классов столбцов это уже есть, но Вашему проекту может потребоваться альтернативная настройка.

{{< example >}}
<form class="needs-validation" novalidate>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationTooltip01">Имя</label>
      <input type="text" class="form-control" id="validationTooltip01" value="Иван" required>
      <div class="valid-tooltip">
        Выглядит хорошо!
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationTooltip02">Фамилия</label>
      <input type="text" class="form-control" id="validationTooltip02" value="Петров" required>
      <div class="valid-tooltip">
        Выглядит хорошо!
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationTooltip03">Город</label>
      <input type="text" class="form-control" id="validationTooltip03" required>
      <div class="invalid-tooltip">
        Укажите действующий город.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationTooltip04">Область</label>
      <select class="custom-select" id="validationTooltip04" required>
        <option selected disabled value="">Выбрать...</option>
        <option>...</option>
      </select>
      <div class="invalid-tooltip">
        Пожалуйста, выберите допустимую область.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationTooltip05">Индекс</label>
      <input type="text" class="form-control" id="validationTooltip05" required>
      <div class="invalid-tooltip">
        Пожалуйста, предоставьте действующий почтовый индекс.
      </div>
    </div>
  </div>
  <button class="btn btn-primary" type="submit">Отправить форму</button>
</form>
{{< /example >}}

### Кастомизация

Состояния проверки можно настроить через Sass с помощью карты `$form-validation-states`. Эта карта Sass, расположенная в нашем файле `_variables.scss`, зацикливается для генерации состояний валидации по умолчанию `valid`/`invalid`. Включена вложенная карта для настройки цвета и значка каждого состояния. Хотя браузеры не поддерживают никакие другие состояния, те, кто использует собственные стили, могут легко добавить более сложную обратную связь с формой.

Обратите внимание, что мы не рекомендуем настраивать эти значения без изменения миксина `form-validation-state`.

```scss
// Карта Sass из `_variables.scss`
// Переопределите это и перекомпилируйте свой Sass для генерации разных состояний
$form-validation-states: map-merge(
  (
    "valid": (
      "color": $form-feedback-valid-color,
      "icon": $form-feedback-icon-valid
    ),
    "invalid": (
      "color": $form-feedback-invalid-color,
      "icon": $form-feedback-icon-invalid
    )
  ),
  $form-validation-states
);

// Цикл из `_forms.scss`
// Любые изменения в приведенной выше карте Sass будут отражены в вашей скомпилированной
// CSS через этот цикл.
@each $state, $data in $form-validation-states {
  @include form-validation-state($state, map-get($data, color), map-get($data, icon));
}
```

### Проверка группы ввода

Чтобы определить, какие элементы нуждаются в скругленных углах внутри группы ввода с проверкой, группе ввода требуется дополнительный класс `.has-validation`.

```html
<div class="input-group has-validation">
  <div class="input-group-prepend">
    <span class="input-group-text">@</span>
  </div>
  <input type="text" class="form-control" required>
  <div class="invalid-feedback">
    Пожалуйста, выберите имя пользователя.
  </div>
</div>
```

<div class="bd-example bd-example-forms-input-group-workaround">
  <div class="input-group has-validation">
    <div class="input-group-prepend">
      <span class="input-group-text">@</span>
    </div>
    <input type="text" class="form-control is-invalid" required>
    <div class="invalid-feedback">
      Пожалуйста, выберите имя пользователя.
    </div>
  </div>
</div>

## Пользовательские формы

Для еще большей настройки и согласованности между браузерами используйте наши полностью настраиваемые элементы формы, чтобы заменить настройки браузера по умолчанию. Они созданы на основе семантической и доступной разметки, поэтому являются надежной заменой любого элемента управления формы по умолчанию.

### Флажки и радио

Каждая пара флажка и переключателя `<input>` и `<label>` обернута в `<div>` для создания нашего настраиваемого элемента управления. По структуре это тот же подход, что и наш стандартный файл `.form-check`.

Мы используем родственный селектор (`~`) для всех наших состояний `<input>`, например, `:checked` - чтобы правильно стилизовать наш индикатор настраиваемой формы. В сочетании с классом `.custom-control-label` мы также можем стилизовать текст для каждого элемента на основе состояния `<input>`.

Мы скрываем значение по умолчанию `<input>` с помощью `opacity` и используем `.custom-control-label` для создания на его месте нового индикатора настраиваемой формы с помощью `::before` и `::after`. К сожалению, мы не можем создать собственный, используя только `<input>`, потому что CSS-содержимое `content` не работает с этим элементом.

В отмеченных состояниях мы используем **встроенные SVG иконки в base64** из [Open Iconic](https://github.com/iconic/open-iconic). Это дает нам лучший контроль над стилем и позиционированием в браузерах и на разных устройствах.

#### Флажки

{{< example >}}
<div class="custom-control custom-checkbox">
  <input type="checkbox" class="custom-control-input" id="customCheck1">
  <label class="custom-control-label" for="customCheck1">Установите этот настраиваемый флажок</label>
</div>
{{< /example >}}

Пользовательские флажки также могут использовать псевдокласс `:indeterminate` при ручной установке с помощью JavaScript (нет доступного атрибута HTML для его указания).

<div class="bd-example bd-example-indeterminate">
  <div class="custom-control custom-checkbox">
    <input type="checkbox" class="custom-control-input" id="customCheck2">
    <label class="custom-control-label" for="customCheck2">Установите этот настраиваемый флажок</label>
  </div>
</div>

Если вы используете jQuery, этого должно быть достаточно:

```js
$('.your-checkbox').prop('indeterminate', true)
```

#### Радио

{{< example >}}
<div class="custom-control custom-radio">
  <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
  <label class="custom-control-label" for="customRadio1">Переключить это настраиваемое радио</label>
</div>
<div class="custom-control custom-radio">
  <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
  <label class="custom-control-label" for="customRadio2">Или переключите это другое настраиваемое радио</label>
</div>
{{< /example >}}

#### Строковые

{{< example >}}
<div class="custom-control custom-radio custom-control-inline">
  <input type="radio" id="customRadioInline1" name="customRadioInline" class="custom-control-input">
  <label class="custom-control-label" for="customRadioInline1">Переключить это настраиваемое радио</label>
</div>
<div class="custom-control custom-radio custom-control-inline">
  <input type="radio" id="customRadioInline2" name="customRadioInline" class="custom-control-input">
  <label class="custom-control-label" for="customRadioInline2">Или переключите это другое настраиваемое радио</label>
</div>
{{< /example >}}

#### Отключенные

Пользовательские флажки и радио также можно отключить. Добавьте логический атрибут `disabled` к `<input>`, и пользовательский индикатор и описание метки будут автоматически стилизованы.

{{< example >}}
<div class="custom-control custom-checkbox">
  <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" disabled>
  <label class="custom-control-label" for="customCheckDisabled1">Установите этот настраиваемый флажок</label>
</div>

<div class="custom-control custom-radio">
  <input type="radio" name="radioDisabled" id="customRadioDisabled2" class="custom-control-input" disabled>
  <label class="custom-control-label" for="customRadioDisabled2">Переключить это настраиваемое радио</label>
</div>
{{< /example >}}

### Переключатели

Переключатель имеет разметку настраиваемого флажка, но использует класс `.custom-switch` для визуализации переключателя. Коммутаторы также поддерживают атрибут `disabled`.

{{< example >}}
<div class="custom-control custom-switch">
  <input type="checkbox" class="custom-control-input" id="customSwitch1">
  <label class="custom-control-label" for="customSwitch1">Переключить этот элемент переключателя</label>
</div>
<div class="custom-control custom-switch">
  <input type="checkbox" class="custom-control-input" disabled id="customSwitch2">
  <label class="custom-control-label" for="customSwitch2">Отключенный переключающий элемент</label>
</div>
{{< /example >}}

### Меню выбора

Для пользовательских меню `<select>` нужен только пользовательский класс `.custom-select` для запуска пользовательских стилей. Пользовательские стили ограничены начальным внешним видом `<select>` и не могут изменять `<option>` из-за ограничений браузера.

{{< example >}}
<select class="custom-select">
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>
{{< /example >}}

Вы также можете выбрать один из маленьких или больших пользовательских элементов, чтобы они соответствовали нашим текстовым полям аналогичного размера.

{{< example >}}
<select class="custom-select custom-select-lg mb-3">
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>

<select class="custom-select custom-select-sm">
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>
{{< /example >}}

Также поддерживается атрибут `multiple`:

{{< example >}}
<select class="custom-select" multiple>
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>
{{< /example >}}

Как и атрибут `size`:

{{< example >}}
<select class="custom-select" size="3">
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>
{{< /example >}}

### Диапазон

Создайте пользовательские элементы управления `<input type="range">` с помощью `.custom-range`. Дорожка (фон) и ползунок (значение) имеют одинаковый стиль во всех браузерах. Поскольку только IE и Firefox поддерживают «заполнение» своей дорожки слева или справа от большого пальца как средство визуальной индикации прогресса, в настоящее время мы не поддерживаем это.

{{< example >}}
<label for="customRange1">Пример диапазона</label>
<input type="range" class="custom-range" id="customRange1">
{{< /example >}}

Входные данные диапазона имеют неявные значения для `min` и `max` — `0` и `100` соответственно. Вы можете указать новые значения для тех, кто использует атрибуты `min` и `max`.

{{< example >}}
<label for="customRange2">Пример диапазона</label>
<input type="range" class="custom-range" min="0" max="5" id="customRange2">
{{< /example >}}

По умолчанию входные данные диапазона «привязываются» к целочисленным значениям. Чтобы изменить это, Вы можете указать значение шага `step`. В приведенном ниже примере мы удваиваем количество шагов, используя `step="0.5"`.

{{< example >}}
<label for="customRange3">Пример диапазона</label>
<input type="range" class="custom-range" min="0" max="5" step="0.5" id="customRange3">
{{< /example >}}

### Файловый браузер

{{< callout info >}}
Рекомендуемый плагин для анимации пользовательского ввода файла: [bs-custom-file-input](https://www.npmjs.com/package/bs-custom-file-input), это то, что мы сейчас используем в наших документах.
{{< /callout >}}

Файловый ввод является самым сложным из всех и требует дополнительного JavaScript, если вы хотите подключить их к функциональному *Выбрать файл...* и выбранному тексту имени файла.

{{< example >}}
<div class="custom-file">
  <input type="file" class="custom-file-input" id="customFile">
  <label class="custom-file-label" for="customFile">Выбрать файл</label>
</div>
{{< /example >}}

Мы скрываем файл по умолчанию `<input>` через `opacity` и вместо этого стилизуем `<label>`. Кнопка создается и позиционируется с помощью `::after`. Наконец, мы объявляем ширину `width` и высоту `height` в `<input>` для правильного размещения окружающего контента.

#### Перевод или настройка строк с помощью SCSS

Псевдо-класс [`:lang()` pseudo-class](https://developer.mozilla.org/en-US/docs/Web/CSS/:lang) используется для перевода текста "Обзор" в другой языков. Замените или добавьте записи в переменную Sass `$custom-file-text` с помощью соответствующего [языкового тега](https://en.wikipedia.org/wiki/IETF_language_tag) и локализованных строк. Точно так же можно настроить английские строки. Например, вот как можно добавить русский перевод (код русского языка `ru`):

```scss
$custom-file-text: (
  en: "Browse",
  es: "Elegir",
  ru: "Обзор"
);
```

Вот `lang(ru)` в действии над пользовательским вводом файла для русского перевода:

{{< example >}}
<div class="custom-file">
  <input type="file" class="custom-file-input" id="customFileLang" lang="ru">
  <label class="custom-file-label" for="customFileLang">Выберите файл</label>
</div>
{{< /example >}}

Вам нужно будет правильно установить язык Вашего документа (или его поддерева), чтобы отображался правильный текст. Это можно сделать с помощью [атрибута `lang`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/lang) в элементе `<html>` или [`Content-Language` HTTP header](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.12) среди других методов.

#### Перевод или настройка строк с помощью HTML

Bootstrap также предоставляет способ перевести текст «Обзор» в HTML с помощью атрибута `data-browse`, который можно добавить к настраиваемой метке ввода (пример на русском языке):

{{< example >}}
<div class="custom-file">
  <input type="file" class="custom-file-input" id="customFileLangHTML">
  <label class="custom-file-label" for="customFileLangHTML" data-browse="Выбрать файл">Добавьте свой документ</label>
</div>
{{< /example >}}
