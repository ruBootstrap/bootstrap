---
layout: docs
title: Хлебные крошки
description: Укажите местоположение текущей страницы в навигационной иерархии, которая автоматически добавляет разделители через CSS.
group: components
---

## Пример

{{< example >}}
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item active" aria-current="page">Главная</li>
  </ol>
</nav>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Главная</a></li>
    <li class="breadcrumb-item active" aria-current="page">Библиотека</li>
  </ol>
</nav>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Главная</a></li>
    <li class="breadcrumb-item"><a href="#">Библиотека</a></li>
    <li class="breadcrumb-item active" aria-current="page">Данные</li>
  </ol>
</nav>
{{< /example >}}

## Замена разделителя

Разделители автоматически добавляются в CSS через [`::before`](https://developer.mozilla.org/en-US/docs/Web/CSS/::before) и [`content`](https://developer.mozilla.org/en-US/docs/Web/CSS/content). Их можно изменить, изменив `$breadcrumb-divider`. Функция [quote](https://sass-lang.com/documentation/modules/string#quote) необходима для создания кавычек вокруг строки, поэтому, если Вы хотите `>` в качестве разделителя, Вы можете использовать это:

```scss
$breadcrumb-divider: quote(">");
```

Также можно использовать **встроенную иконку SVG base64**:

```scss
$breadcrumb-divider: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4IiBoZWlnaHQ9IjgiPjxwYXRoIGQ9Ik0yLjUgMEwxIDEuNSAzLjUgNCAxIDYuNSAyLjUgOGw0LTQtNC00eiIgZmlsbD0iY3VycmVudENvbG9yIi8+PC9zdmc+);
```

Разделитель можно удалить, установив для `$breadcrumb-divider` значение `none`:

```scss
$breadcrumb-divider: none;
```

## Доступность

Поскольку хлебные крошки обеспечивают навигацию, рекомендуется добавить значимую метку, такую как `aria-label="breadcrumb"`, для описания типа навигации, предоставляемой в элементе `<nav>`, а также применить `aria-current="page"` к последнему элементу набора, чтобы указать, что он представляет текущую страницу.

Для получения дополнительной информации смотрите [Практика разработки WAI-ARIA для шаблона навигации](https://www.w3.org/TR/wai-aria-practices/#breadcrumb).
