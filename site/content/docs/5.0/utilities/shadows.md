---
layout: docs
title: Тени
description: Добавляйте или удаляйте тени к элементам с помощью утилит box-shadow.
group: utilities
toc: true
---

## Примеры

Хотя тени на компонентах по умолчанию отключены в Bootstrap и могут быть включены через `$enable-shadows`, Вы также можете быстро добавить или удалить тень с помощью наших служебных классов `box-shadow`. Включает поддержку `.shadow-none` и трех размеров по умолчанию (с соответствующими переменными для сопоставления).

{{< example >}}
<div class="shadow-none p-3 mb-5 bg-light rounded">Нет тени</div>
<div class="shadow-sm p-3 mb-5 bg-body rounded">Маленькая тень</div>
<div class="shadow p-3 mb-5 bg-body rounded">Обычная тень</div>
<div class="shadow-lg p-3 mb-5 bg-body rounded">Большая тень</div>
{{< /example >}}

## Sass

### Variables

{{< scss-docs name="box-shadow-variables" file="scss/_variables.scss" >}}

### Utilities API

Shadow utilities are declared in our utilities API in `scss/_utilities.scss`. [Learn how to use the utilities API.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-shadow" file="scss/_utilities.scss" >}}
