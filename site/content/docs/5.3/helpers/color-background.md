---
layout: docs
title: Цвет и фон
description: Установите цвет фона с контрастным цветом переднего плана.
group: helpers
toc: true
added:
  version: "5.2"
---

## Обзор

Помощники по цвету и фону сочетают в себе мощь наших [утилит `.text-*`]({{< docsref "/utilities/colors" >}}) и [утилит `.bg-*`]({{< docsref "/utilities/background" >}}) в одном классе. Используя нашу функцию Sass `color-contrast()`, мы автоматически определяем контрастный `color` для определенного `background-color`.

{{< callout warning >}}
**Внимание!** В настоящее время нет поддержки нативной CSS-функции `color-contrast`, поэтому мы используем нашу собственную через Sass. Это означает, что настройка цветов нашей темы с помощью переменных CSS может вызвать проблемы с цветовым контрастом в этих утилитах.
{{< /callout >}}

{{< example >}}
{{< text-bg.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="text-bg-{{ .name }} p-3">{{ .name | title }} с контрастным цветом</div>
{{- end -}}
{{< /text-bg.inline >}}
{{< /example >}}

{{< callout info >}}
{{< partial "callouts/warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## С компонентами

Используйте их вместо комбинированных классов `.text-*` и `.bg-*`, как в [баджах]({{< docsref "/components/badge#background-colors" >}}):

{{< example >}}
<span class="badge text-bg-primary">Primary</span>
<span class="badge text-bg-info">Info</span>
{{< /example >}}

Или на [карточках]({{< docsref "/components/card#background-and-color" >}}):

{{< example >}}
<div class="card text-bg-primary mb-3" style="max-width: 18rem;">
  <div class="card-header">Заголовок</div>
  <div class="card-body">
    <p class="card-text">Небольшой пример текста, который будет основываться на заголовке карты и составлять основную часть содержимого карточки.</p>
  </div>
</div>
<div class="card text-bg-info mb-3" style="max-width: 18rem;">
  <div class="card-header">Заголовок</div>
  <div class="card-body">
    <p class="card-text">Небольшой пример текста, который будет основываться на заголовке карты и составлять основную часть содержимого карточки.</p>
  </div>
</div>
{{< /example >}}
