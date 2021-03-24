---
layout: docs
title: Фон
description: Передайте смысл с помощью `background-color` и добавьте украшения с помощью градиентов.
group: utilities
toc: true
---

## Фоновый цвет

Подобно классам цвета контекстного текста, установите фон элемента для любого контекстного класса. Фоновые утилиты **не устанавливают `color`**, поэтому в некоторых случаях Вы захотите использовать `.text-*` [утилиты цвета]({{< docsref "/utilities/colors" >}}).

{{< example >}}
{{< colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="p-3 mb-2 bg-{{ .name }}{{ if .contrast_color }} text-{{ .contrast_color }}{{ else }} text-white{{ end }}">.bg-{{ .name }}</div>
{{- end -}}
{{< /colors.inline >}}
<div class="p-3 mb-2 bg-body text-dark">.bg-body</div>
<div class="p-3 mb-2 bg-white text-dark">.bg-white</div>
<div class="p-3 mb-2 bg-transparent text-dark">.bg-transparent</div>
{{< /example >}}

## Фоновый градиент

При добавлении класса `.bg-gradient`, линейный градиент добавляется как фоновое изображение к фону. Этот градиент начинается с полупрозрачного белого цвета, который постепенно исчезает к низу.

Вам нужен градиент в вашем собственном CSS? Просто добавьте `background-image: var(--bs-gradient);`.

{{< markdown >}}
{{< colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="p-3 mb-2 bg-{{ .name }} bg-gradient{{ with .contrast_color }} text-{{ . }}{{ else }} text-white{{ end }}">.bg-{{ .name }}.bg-gradient</div>
{{- end -}}
{{< /colors.inline >}}
{{< /markdown >}}

## Sass

В дополнение к следующей функциональности Sass, рассмотрите возможность чтения о наших включенных [настраиваемых свойствах CSS]({{< docsref "/customize/css-variables" >}}) (также известных как переменные CSS) для цветов и многого другого.

### Переменные

Большинство утилит `background-color` генерируются цветами нашей темы, переназначенными из переменных нашей общей цветовой палитры.

{{< scss-docs name="color-variables" file="scss/_variables.scss" >}}

{{< scss-docs name="theme-color-variables" file="scss/_variables.scss" >}}

{{< scss-docs name="variable-gradient" file="scss/_variables.scss" >}}

Также доступны оттенки серого, но для создания каких-либо утилит используется только подмножество.

{{< scss-docs name="gray-color-variables" file="scss/_variables.scss" >}}

### Карта

Затем цвета темы помещаются в карту Sass, чтобы мы могли перебирать их, чтобы сгенерировать наши утилиты, модификаторы компонентов и многое другое.

{{< scss-docs name="theme-colors-map" file="scss/_variables.scss" >}}

Цвета в градациях серого также доступны в виде карты Sass. **Эта карта не используется для создания каких-либо утилит.**

{{< scss-docs name="gray-colors-map" file="scss/_variables.scss" >}}

### Миксины

**Никакие миксины не используются для создания наших фоновых утилит**, но у нас есть некоторые дополнительные миксины для других ситуаций, когда Вы хотите создать свои собственные градиенты.

{{< scss-docs name="gradient-bg-mixin" file="scss/mixins/_gradients.scss" >}}

{{< scss-docs name="gradient-mixins" file="scss/mixins/_gradients.scss" >}}

### Утилиты API

Фоновые утилиты объявлены в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать утилиты API.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-bg-color" file="scss/_utilities.scss" >}}
