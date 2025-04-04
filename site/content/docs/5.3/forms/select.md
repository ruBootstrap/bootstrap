---
layout: docs
title: Элемент выбора (select)
description: Настройте собственные `<select>` с помощью настраиваемого CSS, который изменяет первоначальный вид элемента.
group: forms
aliases:
  - "/docs/5.2/forms/select/"
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
<select class="form-select form-select-lg mb-3" aria-label="Пример большого выбора">
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>

<select class="form-select form-select-sm" aria-label="Пример небольшого выбора">
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>
{{< /example >}}

Также поддерживается атрибут `multiple`:

{{< example >}}
<select class="form-select" multiple aria-label="Пример множественного выбора">
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>
{{< /example >}}

Как и атрибут `size`:

{{< example >}}
<select class="form-select" size="3" aria-label="Размер 3 выберите пример">
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>
{{< /example >}}

## Отключенный

Добавьте логический атрибут `disabled` для выбора, чтобы придать ему серый вид и удалить события указателя.

{{< example >}}
<select class="form-select" aria-label="Отключенный пример выбора" disabled>
  <option selected>Откройте это меню выбора</option>
  <option value="1">Один</option>
  <option value="2">Два</option>
  <option value="3">Три</option>
</select>
{{< /example >}}

## CSS

### Sass переменные

{{< scss-docs name="form-select-variables" file="scss/_variables.scss" >}}
