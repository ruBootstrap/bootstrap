---
layout: docs
title: Переводы
description: Ссылки на переведенные сообществом сайты документации Bootstrap.
group: about
---

Члены сообщества перевели документацию Bootstrap на разные языки. Ни один из них официально не поддерживается и не всегда актуален.

{{< translations.inline >}}
<ul>
{{ range .Site.Data.translations -}}
  <li><a href="{{ .url }}" hreflang="{{ .code }}">{{ .description }} ({{ .name }})</a></li>
{{ end -}}
</ul>
{{< /translations.inline >}}

**Мы не помогаем организовывать или размещать переводы, мы просто даем ссылки на них.**

Закончили новый или лучший перевод? Откройте pull request, чтобы добавить его в наш список.
