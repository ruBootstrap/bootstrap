---
layout: docs
title: RFS
description: Механизм изменения размера Bootstrap адаптивно масштабирует общие свойства CSS, чтобы лучше использовать доступное пространство между окнами просмотра и устройствами.
group: getting-started
toc: true
---

## Что такое RFS?

Дополнительный проект Bootstrap [RFS](https://github.com/twbs/rfs/tree/{{< param "rfs_version" >}}) - это модуль изменения размера, который изначально был разработан для изменения размера шрифта (отсюда его аббревиатура для Размер адаптивного шрифта). В настоящее время RFS может изменять масштаб большинства свойств CSS с помощью таких единиц измерения, как `margin`, `padding`, `border-radius` или даже `box-shadow`.

Механизм автоматически вычисляет соответствующие значения на основе размеров области просмотра браузера. Он будет скомпилирован в функции `calc()` со смесью `rem` и единиц просмотра, чтобы обеспечить гибкое масштабирование.

## Использование RFS

Примеси включены в Bootstrap и доступны после того, как вы включите `scss` из Bootstrap. RFS также может быть [установлен отдельно](https://github.com/twbs/rfs/tree/{{< param "rfs_version" >}}#installation) при необходимости.

### Использование миксинов

В миксине `rfs()` есть сокращения для `font-size`, `margin`, `margin-top`, `margin-right`, `margin-bottom`, `margin-left`, `padding`, `padding-top`, `padding-right`, `padding-bottom` и `padding-left`. См. пример ниже для исходного кода Sass и скомпилированного CSS.

```scss
.title {
  @include font-size(4rem);
}
```

```css
.title {
  font-size: calc(1.525rem + 3.3vw);
}

@media (min-width: 1200px) {
  .title {
    font-size: 4rem;
  }
}
```

Любое другое свойство можно передать миксину `rfs()` следующим образом:

```scss
.selector {
  @include rfs(4rem, border-radius);
}
```

`!important` также можно просто добавить к любому значению, которое Вы хотите:

```scss
.selector {
  @include padding(2.5rem !important);
}
```

### Использование функций

Если Вы не хотите использовать include, есть еще две функции:

- `rfs-value()` преобразует значение в `rem`, если передается значение `px`, в других случаях возвращает тот же результат.
- `rfs-fluid-value()` возвращает гибкую версию значения, если свойство требует изменения масштаба.

В этом примере мы используем одну из встроенных в Bootstrap [responsive breakpoint mixins]({{< docsref "/layout/breakpoints" >}}) для применения стиля только ниже точки остановки `lg`.

```scss
.selector {
  @include media-breakpoint-down(lg) {
    padding: rfs-fluid-value(2rem);
    font-size: rfs-fluid-value(1.125rem);
  }
}
```

```css
@media (max-width: 991.98px) {
  .selector {
    padding: calc(1.325rem + 0.9vw);
    font-size: 1.125rem; /* 1.125rem достаточно мал, поэтому RFS не масштабирует это */
  }
}
```

## Расширенная документация

RFS - это отдельный проект в рамках организации Bootstrap. Подробнее о RFS и его конфигурации можно найти в его [репозитории GitHub](https://github.com/twbs/rfs/tree/{{< param "rfs_version" >}}).
