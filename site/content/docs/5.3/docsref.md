---
layout: docs
title: Справочник документации
description: Примеры компонентов и стилей, используемых специально для документации Bootstrap.
aliases: "/docsref/"
toc: true
robots: noindex,follow
sitemap:
  disable: true
---

## Кнопки

<button class="btn btn-bd-primary">Основная кнопка</button>
<button class="btn btn-bd-accent">Акцентная кнопка</button>
<button class="btn btn-bd-light">Светлая кнопка</button>

## Вызовы (Callouts)

{{< callout >}}
  Обычный callout
{{< /callout >}}

{{< callout warning >}}
  Предупреждающий callout
{{< /callout >}}

{{< callout danger >}}
  Опасный callout
{{< /callout >}}

## Пример кода

```scss
.test {
  --color: blue;
}
```

<div class="bd-example">
  Элемент <abbr title="HyperText Markup Language">HTML</abbr> — элемент аббревиатуры.
</div>

{{< example >}}
<div class="test">Это тест.</div>
{{< /example >}}

{{< scss-docs name="variable-gradient" file="scss/_variables.scss" >}}

{{< js-docs name="live-toast" file="site/assets/js/partials/snippets.js" >}}
