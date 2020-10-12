---
layout: docs
title: Визуальное скрытие
description: Используйте эти помощники, чтобы визуально скрыть элементы, но сделать их доступными для вспомогательных технологий.
group: helpers
aliases: "/docs/5.0/helpers/screen-readers/"
---

Визуально скрыть элемент, оставив при этом доступ к нему вспомогательным технологиям (например, программам чтения с экрана) с помощью `.visually-hidden`. Используйте `.visually-hidden-focusable`, чтобы визуально скрыть элемент по умолчанию, но отображать его, когда он сфокусирован (например, пользователем, использующим только клавиатуру). Также может использоваться как миксины.

{{< example >}}
<h2 class="visually-hidden">Заголовок для программ чтения с экрана</h2>
<a class="visually-hidden-focusable" href="#content">Перейти к основному содержанию</a>
{{< /example >}}

{{< highlight scss >}}
// Использование в качестве миксина

.visually-hidden-title {
  @include visually-hidden;
}

.skip-navigation {
  @include visually-hidden-focusable;
}
{{< /highlight >}}
