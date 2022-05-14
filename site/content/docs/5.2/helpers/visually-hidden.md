---
layout: docs
title: Визуальное скрытие
description: Используйте эти помощники, чтобы визуально скрыть элементы, но сделать их доступными для вспомогательных технологий.
group: helpers
aliases: "/docs/5.2/helpers/screen-readers/"
---

Визуально скрыть элемент, оставив при этом доступ к вспомогательным технологиям (например, программам чтения с экрана) с помощью `.visually-hidden`. Используйте `.visually-hidden-focusable`, чтобы визуально скрыть элемент по умолчанию, но отображать его, когда он сфокусирован (например, пользователем, использующим только клавиатуру). `.visually-hidden-focusable` также может применяться к контейнеру - благодаря `:focus-within` контейнер будет отображаться, когда любой дочерний элемент контейнера получает фокус.

{{< example >}}
<h2 class="visually-hidden">Заголовок для программ чтения с экрана</h2>
<a class="visually-hidden-focusable" href="#content">Перейти к основному содержанию</a>
<div class="visually-hidden-focusable">Контейнер с <a href="#">фокусируемым элементом</a>.</div>
{{< /example >}}

И `visually-hidden` и `visually-hidden-focusable` также могут использоваться в качестве миксинов.

```scss
// Использование в качестве миксина

.visually-hidden-title {
  @include visually-hidden;
}

.skip-navigation {
  @include visually-hidden-focusable;
}
```
