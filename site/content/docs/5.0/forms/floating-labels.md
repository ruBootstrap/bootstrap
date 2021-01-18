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
  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
  <label for="floatingTextarea">Комментарии</label>
</div>
{{< /example >}}

Чтобы установить произвольную высоту для Вашего `<textarea>`, не используйте атрибут `rows`. Вместо этого установите явную `height` (встроенную или через собственный CSS).

{{< example >}}
<div class="form-floating">
  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
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
      <select class="form-select" id="floatingSelectGrid" aria-label="Floating label select example">
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
