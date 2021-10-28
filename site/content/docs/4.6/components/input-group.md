---
layout: docs
title: Группа полей ввода
description: Легко расширяйте элементы управления формой, добавляя текст, кнопки или группы кнопок по обе стороны от текстовых полей ввода, настраиваемых меню выбора и ввода настраиваемых файлов.
group: components
toc: true
---

## Простой пример

Поместите одну надстройку или кнопку с обеих сторон от входа. Вы также можете разместить его по обе стороны от входа. Не забудьте разместить теги `<label>` вне группы ввода.

{{< example >}}
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">@</span>
  </div>
  <input type="text" class="form-control" placeholder="Имя пользователя" aria-label="Имя пользователя" aria-describedby="basic-addon1">
</div>

<div class="input-group mb-3">
  <input type="text" class="form-control" placeholder="Имя пользователя получателя" aria-label="Имя пользователя получателя" aria-describedby="basic-addon2">
  <div class="input-group-append">
    <span class="input-group-text" id="basic-addon2">@example.com</span>
  </div>
</div>

<label for="basic-url">Ваш тщеславный URL</label>
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon3">https://example.com/users/</span>
  </div>
  <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text">$</span>
  </div>
  <input type="text" class="form-control" aria-label="Сумма (с точностью до доллара)">
  <div class="input-group-append">
    <span class="input-group-text">.00</span>
  </div>
</div>

<div class="input-group">
  <div class="input-group-prepend">
    <span class="input-group-text">С текстовым полем</span>
  </div>
  <textarea class="form-control" aria-label="С текстовым полем"></textarea>
</div>
{{< /example >}}

## Обертка

Группы ввода по умолчанию переносятся через `flex-wrap: wrap`, чтобы обеспечить валидацию настраиваемого поля формы внутри группы ввода. Вы можете отключить это с помощью `.flex-nowrap`.

{{< example >}}
<div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text" id="addon-wrapping">@</span>
  </div>
  <input type="text" class="form-control" placeholder="Имя пользователя" aria-label="Имя пользователя" aria-describedby="addon-wrapping">
</div>
{{< /example >}}

## Размеры

Добавьте классы относительного изменения размеров формы к `.input-group`, и содержимое внутри автоматически изменит размер - нет необходимости повторять классы размеров элемента управления формы для каждого элемента.

**Изменение размеров отдельных элементов группы полей ввода не поддерживается.**

{{< example >}}
<div class="input-group input-group-sm mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-sm">Маленький</span>
  </div>
  <input type="text" class="form-control" aria-label="Пример размера поля ввода" aria-describedby="inputGroup-sizing-sm">
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-default">По умолчанию</span>
  </div>
  <input type="text" class="form-control" aria-label="Пример размера поля ввода" aria-describedby="inputGroup-sizing-default">
</div>

<div class="input-group input-group-lg">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-lg">Большой</span>
  </div>
  <input type="text" class="form-control" aria-label="Пример размера поля ввода" aria-describedby="inputGroup-sizing-lg">
</div>
{{< /example >}}

## Флажки и радио

Поместите любой флажок или переключатель в надстройку группы ввода вместо текста.

{{< example >}}
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <div class="input-group-text">
      <input type="checkbox" aria-label="Флажок для следующего ввода текста">
    </div>
  </div>
  <input type="text" class="form-control" aria-label="Ввод текста с флажком">
</div>

<div class="input-group">
  <div class="input-group-prepend">
    <div class="input-group-text">
      <input type="radio" aria-label="Радиокнопка для следующего ввода текста">
    </div>
  </div>
  <input type="text" class="form-control" aria-label="Ввод текста с переключателем">
</div>
{{< /example >}}

## Множественные поля ввода

Хотя визуально поддерживаются несколько `<input>`, стили проверки доступны только для групп ввода с одним `<input>`.

{{< example >}}
<div class="input-group">
  <div class="input-group-prepend">
    <span class="input-group-text">Имя и фамилия</span>
  </div>
  <input type="text" aria-label="Имя" class="form-control">
  <input type="text" aria-label="Фамилия" class="form-control">
</div>
{{< /example >}}

## Множественные дополнения

Поддерживаются несколько надстроек, которые можно использовать вместе с версиями флажков и радио.

{{< example >}}
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text">$</span>
    <span class="input-group-text">0.00</span>
  </div>
  <input type="text" class="form-control" aria-label="Сумма в долларах (с точкой и двумя десятичными знаками)">
</div>

<div class="input-group">
  <input type="text" class="form-control" aria-label="Сумма в долларах (с точкой и двумя десятичными знаками)">
  <div class="input-group-append">
    <span class="input-group-text">$</span>
    <span class="input-group-text">0.00</span>
  </div>
</div>
{{< /example >}}

## Дополнения к кнопкам

{{< example >}}
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <button class="btn btn-outline-secondary" type="button" id="button-addon1">Кнопка</button>
  </div>
  <input type="text" class="form-control" placeholder="" aria-label="Пример текста с надстройкой кнопки" aria-describedby="button-addon1">
</div>

<div class="input-group mb-3">
  <input type="text" class="form-control" placeholder="Имя пользователя получателя" aria-label="Имя пользователя получателя" aria-describedby="button-addon2">
  <div class="input-group-append">
    <button class="btn btn-outline-secondary" type="button" id="button-addon2">Кнопка</button>
  </div>
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend" id="button-addon3">
    <button class="btn btn-outline-secondary" type="button">Кнопка</button>
    <button class="btn btn-outline-secondary" type="button">Кнопка</button>
  </div>
  <input type="text" class="form-control" placeholder="" aria-label="Пример текста с двумя кнопками" aria-describedby="button-addon3">
</div>

<div class="input-group">
  <input type="text" class="form-control" placeholder="Имя пользователя получателя" aria-label="Имя пользователя получателя с двумя кнопками дополнения" aria-describedby="button-addon4">
  <div class="input-group-append" id="button-addon4">
    <button class="btn btn-outline-secondary" type="button">Кнопка</button>
    <button class="btn btn-outline-secondary" type="button">Кнопка</button>
  </div>
</div>
{{< /example >}}

## Кнопки с выпадающими списками

{{< example >}}
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">Выпадающий список</button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отделенная ссылка</a>
    </div>
  </div>
  <input type="text" class="form-control" aria-label="Ввод текста с помощью раскрывающейся кнопки">
</div>

<div class="input-group">
  <input type="text" class="form-control" aria-label="Ввод текста с помощью раскрывающейся кнопки">
  <div class="input-group-append">
    <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">Выпадающий список</button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отделенная ссылка</a>
    </div>
  </div>
</div>
{{< /example >}}

## Сегментированные кнопки

{{< example >}}
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <button type="button" class="btn btn-outline-secondary">Действие</button>
    <button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
      <span class="sr-only">Переключатель раскрывающегося списка</span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отделенная ссылка</a>
    </div>
  </div>
  <input type="text" class="form-control" aria-label="Ввод текста с помощью кнопки сегментированного раскрывающегося списка">
</div>

<div class="input-group">
  <input type="text" class="form-control" aria-label="Ввод текста с помощью кнопки сегментированного раскрывающегося списка">
  <div class="input-group-append">
    <button type="button" class="btn btn-outline-secondary">Действие</button>
    <button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
      <span class="sr-only">Переключатель раскрывающегося списка</span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div role="separator" class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отделенная ссылка</a>
    </div>
  </div>
</div>
{{< /example >}}

## Пользовательские формы

Группы ввода включают поддержку пользовательского выбора и пользовательского ввода файлов. Версии браузера по умолчанию для них не поддерживаются.

### Пользовательское меню выбора

{{< example >}}
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">Параметры</label>
  </div>
  <select class="custom-select" id="inputGroupSelect01">
    <option selected>Выбрать...</option>
    <option value="1">Один</option>
    <option value="2">Два</option>
    <option value="3">Три</option>
  </select>
</div>

<div class="input-group mb-3">
  <select class="custom-select" id="inputGroupSelect02">
    <option selected>Выбрать...</option>
    <option value="1">Один</option>
    <option value="2">Два</option>
    <option value="3">Три</option>
  </select>
  <div class="input-group-append">
    <label class="input-group-text" for="inputGroupSelect02">Параметры</label>
  </div>
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <button class="btn btn-outline-secondary" type="button">Кнопка</button>
  </div>
  <select class="custom-select" id="inputGroupSelect03" aria-label="Пример выбора с помощью надстройки кнопки">
    <option selected>Выбрать...</option>
    <option value="1">Один</option>
    <option value="2">Два</option>
    <option value="3">Три</option>
  </select>
</div>

<div class="input-group">
  <select class="custom-select" id="inputGroupSelect04" aria-label="Пример выбора с помощью надстройки кнопки">
    <option selected>Выбрать...</option>
    <option value="1">Один</option>
    <option value="2">Два</option>
    <option value="3">Три</option>
  </select>
  <div class="input-group-append">
    <button class="btn btn-outline-secondary" type="button">Кнопка</button>
  </div>
</div>
{{< /example >}}

### Пользовательский ввод файла

{{< callout info >}}
This example uses the [custom file browser]({{< docsref "/components/forms#file-browser" >}}) component, which relies on the separate [bs-custom-file-input](https://www.npmjs.com/package/bs-custom-file-input) plugin.
{{< /callout >}}

{{< example >}}
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroupFileAddon01">Загрузка</span>
  </div>
  <div class="custom-file">
    <input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
    <label class="custom-file-label" for="inputGroupFile01">Выбрать файл</label>
  </div>
</div>

<div class="input-group mb-3">
  <div class="custom-file">
    <input type="file" class="custom-file-input" id="inputGroupFile02">
    <label class="custom-file-label" for="inputGroupFile02" aria-describedby="inputGroupFileAddon02">Выбрать файл</label>
  </div>
  <div class="input-group-append">
    <span class="input-group-text" id="inputGroupFileAddon02">Загрузка</span>
  </div>
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon03">Кнопка</button>
  </div>
  <div class="custom-file">
    <input type="file" class="custom-file-input" id="inputGroupFile03" aria-describedby="inputGroupFileAddon03">
    <label class="custom-file-label" for="inputGroupFile03">Выбрать файл</label>
  </div>
</div>

<div class="input-group">
  <div class="custom-file">
    <input type="file" class="custom-file-input" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04">
    <label class="custom-file-label" for="inputGroupFile04">Выбрать файл</label>
  </div>
  <div class="input-group-append">
    <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">Кнопка</button>
  </div>
</div>
{{< /example >}}

## Доступность

Убедитесь, что у всех элементов управления формы есть подходящие доступные имена, чтобы их назначение можно было донести до пользователей вспомогательных технологий. Самый простой способ добиться этого - использовать элемент `<label>` или - в случае кнопок - включить достаточно описательный текст как часть содержимого `<button>...</button>`.

В ситуациях, когда невозможно включить видимую метку `<label>` или соответствующее текстовое содержимое, есть альтернативные способы предоставления доступного имени, например:

- Элементы `<label>` скрыты с использованием класса `.sr-only`
- Указание на существующий элемент, который может действовать как метка, используя `aria-labelledby`
- Предоставление атрибута `title`
- Явная установка доступного имени для элемента с помощью `aria-label`

Если ни один из них не присутствует, вспомогательные технологии могут прибегнуть к использованию атрибута `placeholder` в качестве запасного варианта для доступного имени в элементах `<input>` и `<textarea>`. Примеры в этом разделе представляют несколько предлагаемых подходов для конкретных случаев.

Хотя использование визуально скрытого содержимого (`.sr-only`, `aria-label` и даже содержимого `placeholder`, которое исчезает, когда в поле формы появляется содержимое) принесет пользу пользователям вспомогательных технологий, отсутствие видимого текста метки может по-прежнему проблематично для некоторых пользователей. Как правило, лучше всего подходят видимые метки в той или иной форме как с точки зрения доступности, так и удобства использования.
