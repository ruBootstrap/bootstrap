---
layout: docs
title: Цветные ссылки
description: Цветные ссылки с состояниями наведения
group: helpers
toc: false
---

Вы можете использовать классы `.link-*` для раскрашивания ссылок. В отличие от [`.text-*` классов]({{< docsref "/utilities/colors#colors" >}}), эти классы имеют состояние `:hover` и `:focus`.

{{< example >}}
{{< colored-links.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<a href="#" class="link-{{ .name }}">{{ .name | title }} ссылка</a>
{{- end -}}
{{< /colored-links.inline >}}
{{< /example >}}
