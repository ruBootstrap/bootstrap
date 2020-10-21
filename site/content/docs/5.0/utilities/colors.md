---
layout: docs
title: Цвета
description: Передайте смысл через цвет с помощью нескольких полезных классов цвета. Также включает поддержку стилизации ссылок с помощью состояний наведения.
group: utilities
toc: true
---

{{< callout info >}}
##### Работа со спецификой

Иногда контекстные классы не могут быть применены из-за специфики другого селектора. В некоторых случаях достаточным обходным путем является обертывание содержимого Вашего элемента в `<div>` с классом.
{{< /callout >}}

{{< callout info >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Цвет

Раскрашивайте текст с помощью цветных утилит. Если Вы хотите раскрасить ссылки, Вы можете использовать [вспомогательные классы `.link-*`]({{< docsref "/helpers/colored-links" >}}), которые имеют состояния `:hover` и `:focus`.

{{< example >}}
{{< colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<p class="text-{{ .name }}{{ if or (eq .name "light") (eq .name "warning") (eq .name "info") }} bg-dark{{ end }}">.text-{{ .name }}</p>
{{- end -}}
{{< /colors.inline >}}
<p class="text-body">.text-body</p>
<p class="text-muted">.text-muted</p>
<p class="text-white bg-dark">.text-white</p>
<p class="text-black-50">.text-black-50</p>
<p class="text-white-50 bg-dark">.text-white-50</p>
{{< /example >}}

## Цвет фона

Подобно классам цвета контекстного текста, легко установить фон элемента для любого контекстного класса. Фоновые утилиты **не устанавливают `color`**, поэтому в некоторых случаях Вы захотите использовать утилиты `.text-*`.

{{< example >}}
{{< colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="p-3 mb-2 bg-{{ .name }} {{ if or (eq .name "light") (eq .name "warning") (eq .name "info") }}text-dark{{ else if (eq .name "info") }}text-body{{ else }}text-white{{ end }}">.bg-{{ .name }}</div>
{{- end -}}
{{< /colors.inline >}}
<div class="p-3 mb-2 bg-white text-dark">.bg-white</div>
<div class="p-3 mb-2 bg-transparent text-dark">.bg-transparent</div>
{{< /example >}}

## Градиент фона

При добавлении класса `.bg-gradient` линейный градиент добавляется в качестве фонового изображения к фону. Этот градиент начинается с полупрозрачного белого цвета, который постепенно исчезает к низу.

Вам нужен градиент в Вашем собственном CSS? Просто добавьте `background-image: var(--bs-gradient);`.

{{< markdown >}}
{{< colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="p-3 mb-2 bg-{{ .name }} bg-gradient {{ if or (eq .name "light") (eq .name "warning") (eq .name "info") }}text-dark{{ else }}text-white{{ end }}">.bg-{{ .name }}.bg-gradient</div>
{{- end -}}
{{< /colors.inline >}}
{{< /markdown >}}
