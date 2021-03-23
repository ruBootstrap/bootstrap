---
layout: docs
title: Диапазон
description: Используйте наши входы настраиваемого диапазона для согласованного кросс-браузерного стиля и встроенной настройки.
group: forms
toc: true
---

## Обзор

Создайте пользовательские элементы управления `<input type="range">` с помощью `.form-range`. Дорожка (фон) и ползунок (значение) имеют одинаковый стиль во всех браузерах. Поскольку только Edge Legacy и Firefox поддерживают «заполнение» своего трека слева или справа от большого пальца как средство визуального обозначения прогресса, мы в настоящее время не поддерживаем его.

{{< example >}}
<label for="customRange1" class="form-label">Пример диапазона</label>
<input type="range" class="form-range" id="customRange1">
{{< /example >}}

## Отключенный

Добавьте логический атрибут `disabled` к полю ввода, чтобы он выглядел серым, и удалил события указателя.

{{< example >}}
<label for="disabledRange" class="form-label">Отключенный диапазон</label>
<input type="range" class="form-range" id="disabledRange" disabled>
{{< /example >}}

## Минимум и максимум

Входные данные диапазона имеют неявные значения для `min` и `max`—`0` и `100` соответственно. Вы можете указать новые значения для тех, кто использует атрибуты `min` и `max`.

{{< example >}}
<label for="customRange2" class="form-label">Пример диапазона</label>
<input type="range" class="form-range" min="0" max="5" id="customRange2">
{{< /example >}}

## Шаги

По умолчанию входные данные диапазона «привязываются» к целочисленным значениям. Чтобы изменить это, Вы можете указать значение `step`. В приведенном ниже примере мы удваиваем количество шагов, используя `step="0.5"`.

{{< example >}}
<label for="customRange3" class="form-label">Пример диапазона</label>
<input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3">
{{< /example >}}

## Sass

### Variables

{{< scss-docs name="form-range-variables" file="scss/_variables.scss" >}}
