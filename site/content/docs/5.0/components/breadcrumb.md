---
layout: docs
title: Хлебные крошки
description: Укажите местоположение текущей страницы в иерархии навигации, которая автоматически добавляет разделители через CSS.
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

Также можно использовать **встроенную иконку SVG**:

```scss
$breadcrumb-divider: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E");
```

Разделитель можно удалить, установив для `$breadcrumb-divider` значение `none`:

```scss
$breadcrumb-divider: none;
```

## Доступность

Поскольку хлебные крошки обеспечивают навигацию, рекомендуется добавить значимую метку, такую как `aria-label="breadcrumb"`, чтобы описать тип навигации, предоставляемой в элементе `<nav>`, а также применить `aria-current="page"` к последнему элементу набора, чтобы указать, что он представляет текущую страницу.

Для получения дополнительной информации см. [Практика разработки WAI-ARIA для шаблона навигации](https://www.w3.org/TR/wai-aria-practices/#breadcrumb).
