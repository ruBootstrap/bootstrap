---
layout: docs
title: Цвета
description: Передайте смысл через цвет с помощью нескольких вспомогательных классов цвета. Также включает поддержку стилизации ссылок с помощью состояний наведения.
group: utilities
toc: true
---

{{< callout info >}}
#### Работа со спецификой

Иногда контекстные классы не могут быть применены из-за специфики другого селектора. В некоторых случаях достаточным обходным путем является обертывание содержимого Вашего элемента в `<div>` с классом.
{{< /callout >}}

{{< callout warning >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Цвет

{{< example >}}
{{< colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<p class="text-{{ .name }}{{ if eq .name "light" }} bg-dark{{ end }}">.text-{{ .name }}</p>
{{- end -}}
{{< /colors.inline >}}
<p class="text-body">.text-body</p>
<p class="text-muted">.text-muted</p>
<p class="text-white bg-dark">.text-white</p>
<p class="text-black-50">.text-black-50</p>
<p class="text-white-50 bg-dark">.text-white-50</p>
{{< /example >}}

Классы контекстного текста также хорошо работают с привязками с предоставленными состояниями наведения и фокуса. **Обратите внимание, что классы `.text-white` и `.text-muted` не имеют дополнительных стилей ссылок, кроме подчеркивания.**

{{< example >}}
{{< colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<p><a href="#" class="text-{{ .name }}{{ if eq .name "light" }} bg-dark{{ end }}">{{ .name | title }} ссылка</a></p>
{{- end -}}
{{< /colors.inline >}}
<p><a href="#" class="text-muted">Приглушенная ссылка</a></p>
<p><a href="#" class="text-white bg-dark">Белая ссылка</a></p>
{{< /example >}}

## Цвет фона

Подобно классам цвета контекстного текста, легко установить фон элемента для любого контекстного класса. Компоненты привязки будут темнеть при наведении курсора, как и классы текста. Фоновые утилиты **не устанавливают `цвет`**, поэтому в некоторых случаях Вы захотите использовать утилиты `.text-*`.

{{< example >}}
{{< colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="p-3 mb-2 bg-{{ .name }} {{ if or (eq .name "light") (eq .name "warning") }}text-dark{{ else }}text-white{{ end }}">.bg-{{ .name }}</div>
{{- end -}}
{{< /colors.inline >}}
<div class="p-3 mb-2 bg-white text-dark">.bg-white</div>
<div class="p-3 mb-2 bg-transparent text-dark">.bg-transparent</div>
{{< /example >}}

## Градиент фона

Когда для параметра `$enable-gradients` установлено значение `true` (по умолчанию `false`), вы можете использовать классы утилит `.bg-gradient-`. [Узнайте о наших параметрах Sass]({{< docsref "/getting-started/theming#параметры-sass" >}}), чтобы включить эти и другие классы.

{{< markdown >}}
{{< colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
- `.bg-gradient-{{ .name }}`
{{- end -}}
{{< /colors.inline >}}
{{< /markdown >}}
