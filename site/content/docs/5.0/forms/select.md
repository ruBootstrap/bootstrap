---
layout: docs
title: Элемент выбора (select)
description: Настройте собственные `<select>` с помощью настраиваемого CSS, который изменяет первоначальный вид элемента.
group: forms
aliases:
  - "/docs/5.0/forms/select/"
toc: true
---

## По умолчанию

Для пользовательских меню `<select>` нужен только пользовательский класс `.form-select`, чтобы запускать пользовательские стили. Пользовательские стили ограничены начальным внешним видом `<select>` и не могут изменять `<option>` из-за ограничений браузера.

{{< example >}}
<select class="form-select" aria-label="Пример выбора по умолчанию">
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>
{{< /example >}}

## Размер

Вы также можете выбрать маленький или большой пользовательский элемент выбора, чтобы соответствовать нашим текстовым полям аналогичного размера.

{{< example >}}
<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg пример">
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>

<select class="form-select form-select-sm" aria-label=".form-select-sm пример">
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>
{{< /example >}}

Также поддерживается атрибут `multiple`:

{{< example >}}
<select class="form-select" multiple aria-label="пример множественного выбора">
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>
{{< /example >}}

Как и атрибут `size`:

{{< example >}}
<select class="form-select" size="3" aria-label="пример элемента выбора размером равному 3">
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>
{{< /example >}}

## Отключенный

Добавьте логический атрибут `disabled` для выбора, чтобы придать ему серый вид и удалить события указателя.

{{< example >}}
<select class="form-select" aria-label="Disabled select example" disabled>
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>
{{< /example >}}
