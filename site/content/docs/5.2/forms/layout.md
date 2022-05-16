---
layout: docs
title: Макет
description: Придайте Вашим формам некоторую структуру - от встроенных до горизонтальных и пользовательских реализаций сетки - с помощью наших параметров макета формы.
group: forms
toc: true
---

## Формы

Каждая группа полей формы должна находиться в элементе `<form>`. Bootstrap не предоставляет стили по умолчанию для элемента `<form>`, но есть несколько мощных функций браузера, которые предоставляются по умолчанию.

- Новичок в формах браузера? Рассмотрите возможность просмотра [документов формы MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form) для обзора и полного списка доступных атрибутов.
- `<button>` внутри `<form>` по умолчанию `type="submit"`, поэтому старайтесь быть конкретным и всегда включайте `type`.

Поскольку Bootstrap применяет `display: block` и `width: 100%` почти ко всем элементам управления формой, формы по умолчанию будут располагаться вертикально. Дополнительные классы могут использоваться для изменения этого макета для каждой формы.

## Утилиты

[Утилиты полей]({{< docsref "/utilities/spacing" >}}) - самый простой способ добавить некоторую структуру в формы. Они обеспечивают базовую группировку меток, элементов управления, необязательный текст формы и сообщения проверки формы. Мы рекомендуем придерживаться служебных программ `margin-bottom` и использовать одно направление во всей форме для единообразия.

Не стесняйтесь создавать свои формы, как Вам нравится, с помощью `<fieldset>`, `<div>` или почти любого другого элемента.

{{< example >}}
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Пример метки</label>
  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Пример подсказки поля ввода">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Другая метка</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Другая подсказка поля ввода">
</div>
{{< /example >}}

## Сетка формы

Более сложные формы могут быть построены с использованием наших классов сетки. Используйте их для макетов форм, требующих нескольких столбцов, разной ширины и дополнительных параметров выравнивания. **Требует включения переменной Sass `$enable-grid-classes`** (по умолчанию включено).

{{< example >}}
<div class="row">
  <div class="col">
    <input type="text" class="form-control" placeholder="Имя" aria-label="Имя">
  </div>
  <div class="col">
    <input type="text" class="form-control" placeholder="Фамилия" aria-label="Фамилия">
  </div>
</div>
{{< /example >}}

## Промежутки

Добавляя [классы модификаторов промежутков]({{< docsref "/layout/gutters" >}}), Вы можете контролировать ширину промежутков как в строчном, так и в блочном направлении. **Также требуется, чтобы переменная Sass `$enable-grid-classes`** (по умолчанию включена).

{{< example >}}
<div class="row g-3">
  <div class="col">
    <input type="text" class="form-control" placeholder="Имя" aria-label="Имя">
  </div>
  <div class="col">
    <input type="text" class="form-control" placeholder="Фамилия" aria-label="Фамилия">
  </div>
</div>
{{< /example >}}

С помощью системы сеток также можно создавать более сложные макеты.

{{< example >}}
<form class="row g-3">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Эл. адрес</label>
    <input type="email" class="form-control" id="inputEmail4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Пароль</label>
    <input type="password" class="form-control" id="inputPassword4">
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Адрес</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Проспект Ленина">
  </div>
  <div class="col-12">
    <label for="inputAddress2" class="form-label">Адрес 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Квартира">
  </div>
  <div class="col-md-6">
    <label for="inputCity" class="form-label">Город</label>
    <input type="text" class="form-control" id="inputCity" placeholder="Брянск">
  </div>
  <div class="col-md-4">
    <label for="inputState" class="form-label">Область</label>
    <select id="inputState" class="form-select">
      <option selected>Выберите...</option>
      <option>...</option>
    </select>
  </div>
  <div class="col-md-2">
    <label for="inputZip" class="form-label">Индекс</label>
    <input type="text" class="form-control" id="inputZip">
  </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Проверить меня
      </label>
    </div>
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Войти в систему</button>
  </div>
</form>
{{< /example >}}

## Горизонтальная форма

Создавайте горизонтальные формы с сеткой, добавляя класс `.row` для формирования групп и используя классы `.col-*-*` для определения ширины Ваших меток и элементов управления. Не забудьте добавить `.col-form-label` к Вашим `<label>` чтобы они были выровнены по центру по вертикали с соответствующими элементами управления формой.

Иногда Вам может потребоваться использовать утилиты `margin` или `padding` для создания идеального выравнивания, которое Вам нужно. Например, мы удалили `padding-top` на нашей метке сгруппированных радио, чтобы лучше выровнять базовую линию текста.

{{< example >}}
<form>
  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Эл. почта</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3">
    </div>
  </div>
  <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Пароль</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3">
    </div>
  </div>
  <fieldset class="row mb-3">
    <legend class="col-form-label col-sm-2 pt-0">Радио кнопки</legend>
    <div class="col-sm-10">
      <div class="form-check">
        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
        <label class="form-check-label" for="gridRadios1">
          Первая радио кнопка
        </label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
        <label class="form-check-label" for="gridRadios2">
          Вторая радио кнопка
        </label>
      </div>
      <div class="form-check disabled">
        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3" disabled>
        <label class="form-check-label" for="gridRadios3">
          Третья отключенная радио кнопка
        </label>
      </div>
    </div>
  </fieldset>
  <div class="row mb-3">
    <div class="col-sm-10 offset-sm-2">
      <div class="form-check">
        <input class="form-check-input" type="checkbox" id="gridCheck1">
        <label class="form-check-label" for="gridCheck1">
          Пример флажка
        </label>
      </div>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Войти</button>
</form>
{{< /example >}}

### Размер метки горизонтальной формы

Обязательно используйте `.col-form-label-sm` или `.col-form-label-lg` к Вашим `<label>` или `<legend>`, чтобы правильно следовать размеру `.form-control-lg` и `.form-control-sm`.

{{< example >}}
<div class="row mb-3">
  <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Эл. адрес</label>
  <div class="col-sm-10">
    <input type="email" class="form-control form-control-sm" id="colFormLabelSm" placeholder="col-form-label-sm">
  </div>
</div>
<div class="row mb-3">
  <label for="colFormLabel" class="col-sm-2 col-form-label">Эл. адрес</label>
  <div class="col-sm-10">
    <input type="email" class="form-control" id="colFormLabel" placeholder="col-form-label">
  </div>
</div>
<div class="row">
  <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Эл. адрес</label>
  <div class="col-sm-10">
    <input type="email" class="form-control form-control-lg" id="colFormLabelLg" placeholder="col-form-label-lg">
  </div>
</div>
{{< /example >}}

## Размер колонок

Как показано в предыдущих примерах, наша сеточная система позволяет Вам размещать любое количество `.col` внутри `.row`. Они разделят доступную ширину между собой поровну. Вы также можете выбрать подмножество Ваших столбцов, чтобы они занимали больше или меньше места, в то время как оставшиеся `.col` поровну разделяют остальные, с определенными классами столбцов, такими как `.col-sm-7`.

{{< example >}}
<div class="row g-3">
  <div class="col-sm-7">
    <input type="text" class="form-control" placeholder="Город" aria-label="Город">
  </div>
  <div class="col-sm">
    <input type="text" class="form-control" placeholder="Область" aria-label="Область">
  </div>
  <div class="col-sm">
    <input type="text" class="form-control" placeholder="Индекс" aria-label="Индекс">
  </div>
</div>
{{< /example >}}

## Автоматический размер

В приведенном ниже примере используется утилита flexbox для вертикального центрирования содержимого и изменение `.col` на `.col-auto`, чтобы Ваши столбцы занимали ровно столько места, сколько необходимо. Другими словами, размер столбца зависит от содержимого.

{{< example >}}
<form class="row gy-2 gx-3 align-items-center">
  <div class="col-auto">
    <label class="visually-hidden" for="autoSizingInput">Имя</label>
    <input type="text" class="form-control" id="autoSizingInput" placeholder="Иван Иванов">
  </div>
  <div class="col-auto">
    <label class="visually-hidden" for="autoSizingInputGroup">Имя пользователя</label>
    <div class="input-group">
      <div class="input-group-text">@</div>
      <input type="text" class="form-control" id="autoSizingInputGroup" placeholder="Имя пользователя">
    </div>
  </div>
  <div class="col-auto">
    <label class="visually-hidden" for="autoSizingSelect">Предпочтение</label>
    <select class="form-select" id="autoSizingSelect">
      <option selected>Выберите...</option>
      <option value="1">Один</option>
      <option value="2">Два</option>
      <option value="3">Три</option>
    </select>
  </div>
  <div class="col-auto">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="autoSizingCheck">
      <label class="form-check-label" for="autoSizingCheck">
        Запомнить меня
      </label>
    </div>
  </div>
  <div class="col-auto">
    <button type="submit" class="btn btn-primary">Отправить</button>
  </div>
</form>
{{< /example >}}

Затем Вы можете снова смешать это с классами столбцов, зависящими от размера.

{{< example >}}
<form class="row gx-3 gy-2 align-items-center">
  <div class="col-sm-3">
    <label class="visually-hidden" for="specificSizeInputName">Имя</label>
    <input type="text" class="form-control" id="specificSizeInputName" placeholder="Иван Иванов">
  </div>
  <div class="col-sm-3">
    <label class="visually-hidden" for="specificSizeInputGroupUsername">Имя пользователя</label>
    <div class="input-group">
      <div class="input-group-text">@</div>
      <input type="text" class="form-control" id="specificSizeInputGroupUsername" placeholder="Имя пользователя">
    </div>
  </div>
  <div class="col-sm-3">
    <label class="visually-hidden" for="specificSizeSelect">Предпочтение</label>
    <select class="form-select" id="specificSizeSelect">
      <option selected>Выберите...</option>
      <option value="1">Один</option>
      <option value="2">Два</option>
      <option value="3">Три</option>
    </select>
  </div>
  <div class="col-auto">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="autoSizingCheck2">
      <label class="form-check-label" for="autoSizingCheck2">
        Запомнить меня
      </label>
    </div>
  </div>
  <div class="col-auto">
    <button type="submit" class="btn btn-primary">Отправить</button>
  </div>
</form>
{{< /example >}}

## Строчная форма

Используйте классы `.row-cols-*` для создания адаптивных горизонтальных макетов. Добавив [классы модификаторов промежутков]({{< docsref "/layout/gutters" >}}), мы получим промежутки в горизонтальном и вертикальном направлениях. В узких мобильных окнах просмотра `.col-12` помогает складывать элементы управления формы и многое другое. `.align-items-center` выравнивает элементы формы по центру, обеспечивая правильное выравнивание `.form-checkbox`.

{{< example >}}
<form class="row row-cols-lg-auto g-3 align-items-center">
  <div class="col-12">
    <label class="visually-hidden" for="inlineFormInputGroupUsername">Имя пользователя</label>
    <div class="input-group">
      <div class="input-group-text">@</div>
      <input type="text" class="form-control" id="inlineFormInputGroupUsername" placeholder="Имя пользователя">
    </div>
  </div>

  <div class="col-12">
    <label class="visually-hidden" for="inlineFormSelectPref">Предпочтение</label>
    <select class="form-select" id="inlineFormSelectPref">
      <option selected>Выберите...</option>
      <option value="1">Один</option>
      <option value="2">Два</option>
      <option value="3">Три</option>
    </select>
  </div>

  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="inlineFormCheck">
      <label class="form-check-label" for="inlineFormCheck">
        Запомнить меня
      </label>
    </div>
  </div>

  <div class="col-12">
    <button type="submit" class="btn btn-primary">Отправить</button>
  </div>
</form>
{{< /example >}}
