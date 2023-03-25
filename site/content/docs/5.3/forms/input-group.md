---
layout: docs
title: Группа полей ввода
description: Легко расширяйте элементы управления формы, добавляя текст, кнопки или группы кнопок по обе стороны от текстовых полей ввода, настраиваемого выбора и ввода настраиваемых файлов.
group: forms
toc: true
---

## Базовый пример

Поместите одну надстройку или кнопку с обеих сторон от ввода. Вы также можете разместить его по обе стороны от ввода. Не забудьте разместить теги `<label>` вне группы ввода.

{{< example >}}
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">@</span>
  <input type="text" class="form-control" placeholder="Имя пользователя" aria-label="Имя пользователя" aria-describedby="basic-addon1">
</div>

<div class="input-group mb-3">
  <input type="text" class="form-control" placeholder="Имя пользователя получателя" aria-label="Имя пользователя получателя" aria-describedby="basic-addon2">
  <span class="input-group-text" id="basic-addon2">@example.com</span>
</div>

<div class="mb-3">
  <label for="basic-url" class="form-label">Ваш URL-адрес</label>
  <div class="input-group">
    <span class="input-group-text" id="basic-addon3">https://example.com/users/</span>
    <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3 basic-addon4">
  </div>
  <div class="form-text" id="basic-addon4">Пример текста справки выходит за пределы группы ввода.</div>
</div>

<div class="input-group mb-3">
  <span class="input-group-text">$</span>
  <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
  <span class="input-group-text">.00</span>
</div>

<div class="input-group mb-3">
  <input type="text" class="form-control" placeholder="Имя пользователя"  aria-label="Имя пользователя">
  <span class="input-group-text">@</span>
  <input type="text" class="form-control" placeholder="Сервер" aria-label="Сервер">
</div>

<div class="input-group">
  <span class="input-group-text">С текстовым полем</span>
  <textarea class="form-control" aria-label="С текстовым полем"></textarea>
</div>
{{< /example >}}

## Обертка

Группы ввода по умолчанию переносятся через `flex-wrap: wrap`, чтобы обеспечить валидацию настраиваемого поля формы внутри группы ввода. Вы можете отключить это с помощью `.flex-nowrap`.

{{< example >}}
<div class="input-group flex-nowrap">
  <span class="input-group-text" id="addon-wrapping">@</span>
  <input type="text" class="form-control" placeholder="Имя пользователя" aria-label="Имя пользователя" aria-describedby="addon-wrapping">
</div>
{{< /example >}}

## Размеры

Добавьте классы относительного изменения размера формы в саму `.input-group`, и содержимое внутри автоматически изменит размер - нет необходимости повторять классы размеров элемента управления формы для каждого элемента.

**Изменение размеров отдельных элементов группы ввода не поддерживается.**

{{< example >}}
<div class="input-group input-group-sm mb-3">
  <span class="input-group-text" id="inputGroup-sizing-sm">Маленький</span>
  <input type="text" class="form-control" aria-label="Пример размера поля ввода" aria-describedby="inputGroup-sizing-sm">
</div>

<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default">По умолчанию</span>
  <input type="text" class="form-control" aria-label="Пример размера поля ввода" aria-describedby="inputGroup-sizing-default">
</div>

<div class="input-group input-group-lg">
  <span class="input-group-text" id="inputGroup-sizing-lg">Большой</span>
  <input type="text" class="form-control" aria-label="Пример размера поля ввода" aria-describedby="inputGroup-sizing-lg">
</div>
{{< /example >}}

## Флажки и радио

Поместите любой флажок или переключатель в надстройку группы ввода вместо текста. Мы рекомендуем добавлять `.mt-0` к `.form-check-input`, когда рядом с полем ввода нет видимого текста.

{{< example >}}
<div class="input-group mb-3">
  <div class="input-group-text">
    <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Флажок для следующего ввода текста">
  </div>
  <input type="text" class="form-control" aria-label="Ввод текста с флажком">
</div>

<div class="input-group">
  <div class="input-group-text">
    <input class="form-check-input mt-0" type="radio" value="" aria-label="Радиокнопка для следующего ввода текста">
  </div>
  <input type="text" class="form-control" aria-label="Ввод текста с переключателем">
</div>
{{< /example >}}

## Множественные поля ввода

Хотя визуально поддерживаются несколько `<input>`, стили проверки доступны только для групп ввода с одним `<input>`.

{{< example >}}
<div class="input-group">
  <span class="input-group-text">Имя и фамилия</span>
  <input type="text" aria-label="Имя" class="form-control">
  <input type="text" aria-label="Фамилия" class="form-control">
</div>
{{< /example >}}

## Множественные дополнения

Поддерживаются несколько надстроек, которые можно использовать вместе с версиями флажков и радио.

{{< example >}}
<div class="input-group mb-3">
  <span class="input-group-text">₽</span>
  <span class="input-group-text">0.00</span>
  <input type="text" class="form-control" aria-label="Сумма в рублях (с точкой и двумя десятичными знаками)">
</div>

<div class="input-group">
  <input type="text" class="form-control" aria-label="Сумма в рублях (с точкой и двумя десятичными знаками)">
  <span class="input-group-text">₽</span>
  <span class="input-group-text">0.00</span>
</div>
{{< /example >}}

## Кнопки дополнения

{{< example >}}
<div class="input-group mb-3">
  <button class="btn btn-outline-secondary" type="button" id="button-addon1">Кнопка</button>
  <input type="text" class="form-control" placeholder="" aria-label="Пример текста с надстройкой кнопкой" aria-describedby="button-addon1">
</div>

<div class="input-group mb-3">
  <input type="text" class="form-control" placeholder="Имя пользователя получателя" aria-label="Имя пользователя получателя" aria-describedby="button-addon2">
  <button class="btn btn-outline-secondary" type="button" id="button-addon2">Кнопка</button>
</div>

<div class="input-group mb-3">
  <button class="btn btn-outline-secondary" type="button">Кнопка</button>
  <button class="btn btn-outline-secondary" type="button">Кнопка</button>
  <input type="text" class="form-control" placeholder="" aria-label="Пример текста с двумя кнопками">
</div>

<div class="input-group">
  <input type="text" class="form-control" placeholder="Имя пользователя получателя" aria-label="Имя пользователя получателя with two button addons">
  <button class="btn btn-outline-secondary" type="button">Кнопка</button>
  <button class="btn btn-outline-secondary" type="button">Кнопка</button>
</div>
{{< /example >}}

## Кнопки с выпадающими списками

{{< example >}}
<div class="input-group mb-3">
  <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">Выпадающий список</button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Отдельная ссылка</a></li>
  </ul>
  <input type="text" class="form-control" aria-label="Ввод текста с помощью раскрывающейся кнопки">
</div>

<div class="input-group mb-3">
  <input type="text" class="form-control" aria-label="Ввод текста с помощью раскрывающейся кнопки">
  <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">Выпадающий список</button>
  <ul class="dropdown-menu dropdown-menu-end">
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Отдельная ссылка</a></li>
  </ul>
</div>

<div class="input-group">
  <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">Выпадающий список</button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Действия до</a></li>
    <li><a class="dropdown-item" href="#">Другое действие до</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Отдельная ссылка</a></li>
  </ul>
  <input type="text" class="form-control" aria-label="Ввод текста с помощью 2-х раскрывающихся кнопок">
  <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">Выпадающий список</button>
  <ul class="dropdown-menu dropdown-menu-end">
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Отдельная ссылка</a></li>
  </ul>
</div>
{{< /example >}}

## Сегментированные кнопки

{{< example >}}
<div class="input-group mb-3">
  <button type="button" class="btn btn-outline-secondary">Действия</button>
  <button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Переключатель выпадающий список</span>
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Действия</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Отдельная ссылка</a></li>
  </ul>
  <input type="text" class="form-control" aria-label="Ввод текста с помощью кнопки сегментированного раскрывающегося списка">
</div>

<div class="input-group">
  <input type="text" class="form-control" aria-label="Ввод текста с помощью кнопки сегментированного раскрывающегося списка">
  <button type="button" class="btn btn-outline-secondary">Действия</button>
  <button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Переключатель выпадающий список</span>
  </button>
  <ul class="dropdown-menu dropdown-menu-end">
    <li><a class="dropdown-item" href="#">Действия</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Отдельная ссылка</a></li>
  </ul>
</div>
{{< /example >}}

## Пользовательские формы

Группы ввода включают поддержку пользовательского выбора и пользовательского ввода файлов. Версии браузера по умолчанию для них не поддерживаются.

### Пользовательский элемент выбора

{{< example >}}
<div class="input-group mb-3">
  <label class="input-group-text" for="inputGroupSelect01">Параметры</label>
  <select class="form-select" id="inputGroupSelect01">
    <option selected>Выберите...</option>
    <option value="1">Один</option>
    <option value="2">Два</option>
    <option value="3">Три</option>
  </select>
</div>

<div class="input-group mb-3">
  <select class="form-select" id="inputGroupSelect02">
    <option selected>Выберите...</option>
    <option value="1">Один</option>
    <option value="2">Два</option>
    <option value="3">Три</option>
  </select>
  <label class="input-group-text" for="inputGroupSelect02">Параметры</label>
</div>

<div class="input-group mb-3">
  <button class="btn btn-outline-secondary" type="button">Кнопка</button>
  <select class="form-select" id="inputGroupSelect03" aria-label="Пример элемента выбора с помощью надстройки кнопки">
    <option selected>Выберите...</option>
    <option value="1">Один</option>
    <option value="2">Два</option>
    <option value="3">Три</option>
  </select>
</div>

<div class="input-group">
  <select class="form-select" id="inputGroupSelect04" aria-label="Пример элемента выбора с помощью надстройки кнопки">
    <option selected>Выберите...</option>
    <option value="1">Один</option>
    <option value="2">Два</option>
    <option value="3">Три</option>
  </select>
  <button class="btn btn-outline-secondary" type="button">Кнопка</button>
</div>
{{< /example >}}

### Пользовательский выбор файла

{{< example >}}
<div class="input-group mb-3">
  <label class="input-group-text" for="inputGroupFile01">Загрузка</label>
  <input type="file" class="form-control" id="inputGroupFile01">
</div>

<div class="input-group mb-3">
  <input type="file" class="form-control" id="inputGroupFile02">
  <label class="input-group-text" for="inputGroupFile02">Загрузка</label>
</div>

<div class="input-group mb-3">
  <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon03">Кнопка</button>
  <input type="file" class="form-control" id="inputGroupFile03" aria-describedby="inputGroupFileAddon03" aria-label="Загрузка">
</div>

<div class="input-group">
  <input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Загрузка">
  <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">Кнопка</button>
</div>
{{< /example >}}

## CSS

### Sass переменные

{{< scss-docs name="input-group-variables" file="scss/_variables.scss" >}}
