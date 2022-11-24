---
layout: docs
title: Плавающие метки
description: Создавайте красиво простые метки форм, которые плавают над полями ввода.
group: forms
toc: true
---

## Пример

Оберните пару элементов `<input class="form-control">` и `<label>` в `.form-floating`, чтобы включить плавающие метки с полями текстовой формы Bootstrap. `placeholder` требуется для каждого `<input>`, поскольку наш метод плавающих меток только для CSS использует псевдоэлемент `:placeholder-shown`. Также обратите внимание, что `<input>` должен идти первым, чтобы мы могли использовать селектор-брат (например, `~`).

{{< example >}}
<div class="form-floating mb-3">
  <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
  <label for="floatingInput">Адрес электронной почты</label>
</div>
<div class="form-floating">
  <input type="password" class="form-control" id="floatingPassword" placeholder="Пароль">
  <label for="floatingPassword">Пароль</label>
</div>
{{< /example >}}

Когда уже определено значение `value`, `<label>` автоматически подстраиваются под свое плавающее положение.

{{< example >}}
<form class="form-floating">
  <input type="email" class="form-control" id="floatingInputValue" placeholder="name@example.com" value="test@example.com">
  <label for="floatingInputValue">Ввод со значением</label>
</form>
{{< /example >}}

Стили проверки формы также работают должным образом.

{{< example >}}
<form class="form-floating">
  <input type="email" class="form-control is-invalid" id="floatingInputInvalid" placeholder="name@example.com" value="test@example.com">
  <label for="floatingInputInvalid">Неверный Ввод</label>
</form>
{{< /example >}}

## Текстовые области

По умолчанию, `<textarea>` с `.form-control` будет той же высоты, что и `<input>`.

{{< example >}}
<div class="form-floating">
  <textarea class="form-control" placeholder="Оставьте комментарий здесь" id="floatingTextarea"></textarea>
  <label for="floatingTextarea">Комментарии</label>
</div>
{{< /example >}}

Чтобы установить произвольную высоту для Вашего `<textarea>`, не используйте атрибут `rows`. Вместо этого установите явную `height` (встроенную или через собственный CSS).

{{< example >}}
<div class="form-floating">
  <textarea class="form-control" placeholder="Оставьте комментарий здесь" id="floatingTextarea2" style="height: 100px"></textarea>
  <label for="floatingTextarea2">Комментарии</label>
</div>
{{< /example >}}

## Элемент выбора

За исключением `.form-control`, плавающие метки доступны только для `.form-select`. Они работают таким же образом, но в отличие от `<input>`, они всегда будут показывать `<label>` в плавающем состоянии. **Выборки с `size` и `multiple` не поддерживаются.**

{{< example >}}
<div class="form-floating">
  <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
    <option selected>Откройте это меню выбора</option>
    <option value="1">Один</option>
    <option value="2">Два</option>
    <option value="3">Три</option>
  </select>
  <label for="floatingSelect">Работает с элементом выбора</label>
</div>
{{< /example >}}

## Отключенные

Добавьте логический атрибут `disabled` для ввода, текстовой области или выбора, чтобы придать ему серый вид, удалить события указателя и предотвратить фокусировку.

{{< example >}}
<div class="form-floating mb-3">
  <input type="email" class="form-control" id="floatingInputDisabled" placeholder="name@example.com" disabled>
  <label for="floatingInputDisabled">Адрес эл. почты</label>
</div>
<div class="form-floating mb-3">
  <textarea class="form-control" placeholder="Оставьте комментарий здесь" id="floatingTextareaDisabled" disabled></textarea>
  <label for="floatingTextareaDisabled">Комментарии</label>
</div>
<div class="form-floating mb-3">
  <textarea class="form-control" placeholder="Оставьте комментарий здесь" id="floatingTextarea2Disabled" style="height: 100px" disabled></textarea>
  <label for="floatingTextarea2Disabled">Комментарии</label>
</div>
<div class="form-floating">
  <select class="form-select" id="floatingSelectDisabled" aria-label="Плавающая метка отключена, выберите пример" disabled>
    <option selected>Откройте это меню выбора</option>
    <option value="1">Один</option>
    <option value="2">Два</option>
    <option value="3">Три</option>
  </select>
  <label for="floatingSelectDisabled">Работает с меню выбора</label>
</div>
{{< /example >}}

## Обычный текст, доступный для чтения

Плавающие метки также поддерживают `.form-control-plaintext`, который может быть полезен для переключения с редактируемого `<input>` на значение открытого текста, не влияя на макет страницы.

{{< example >}}
<div class="form-floating mb-3">
  <input type="email" readonly class="form-control-plaintext" id="floatingEmptyPlaintextInput" placeholder="name@example.com">
  <label for="floatingEmptyPlaintextInput">Пустой ввод</label>
</div>
<div class="form-floating mb-3">
  <input type="email" readonly class="form-control-plaintext" id="floatingPlaintextInput" placeholder="name@example.com" value="name@example.com">
  <label for="floatingPlaintextInput">Ввод со значением</label>
</div>
{{< /example >}}

## Группы ввода

Плавающие метки также поддерживают `.input-group`.

{{< example >}}
<div class="input-group mb-3">
  <span class="input-group-text">@</span>
  <div class="form-floating">
    <input type="text" class="form-control" id="floatingInputGroup1" placeholder="Имя пользователя">
    <label for="floatingInputGroup1">Имя пользователя</label>
  </div>
</div>
{{< /example >}}

При использовании `.input-group` и `.form-floating` вместе с проверкой формы, `-feedback` должен быть размещен вне `.form-floating`, но внутри `.input-group`. Это означает, что обратную связь нужно будет отображать с помощью javascript.

{{< example >}}
<div class="input-group has-validation">
  <span class="input-group-text">@</span>
  <div class="form-floating is-invalid">
    <input type="text" class="form-control is-invalid" id="floatingInputGroup2" placeholder="Имя пользователя" required>
    <label for="floatingInputGroup2">Имя пользователя</label>
  </div>
  <div class="invalid-feedback">
    Пожалуйста, выберите имя пользователя.
  </div>
</div>
{{< /example >}}

## Макет

При работе с сеткой Bootstrap обязательно размещайте элементы формы в классах столбцов.

{{< example >}}
<div class="row g-2">
  <div class="col-md">
    <div class="form-floating">
      <input type="email" class="form-control" id="floatingInputGrid" placeholder="name@example.com" value="mdo@example.com">
      <label for="floatingInputGrid">Адрес электронной почты</label>
    </div>
  </div>
  <div class="col-md">
    <div class="form-floating">
      <select class="form-select" id="floatingSelectGrid">
        <option selected>Откройте это меню выбора</option>
        <option value="1">Один</option>
        <option value="2">Два</option>
        <option value="3">Три</option>
      </select>
      <label for="floatingSelect">Работает с элементом выбора</label>
    </div>
  </div>
</div>
{{< /example >}}

## Sass

### Переменные

{{< scss-docs name="form-floating-variables" file="scss/_variables.scss" >}}
