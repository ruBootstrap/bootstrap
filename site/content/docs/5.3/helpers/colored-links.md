---
layout: docs
title: Цветные ссылки
description: Цветные ссылки с состояниями наведения
group: helpers
toc: false
---

Вы можете использовать классы `.link-*` для раскрашивания ссылок. В отличие от [классов `.text-*`]({{< docsref "/utilities/colors" >}}), эти классы имеют состояние `:hover` и `:focus`.

{{< example >}}
{{< colored-links.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<a href="#" class="link-{{ .name }}">{{ .name | title }} ссылка</a>
{{- end -}}
{{< /colored-links.inline >}}
{{< /example >}}

{{< callout info >}}
В некоторых стилях кнопок используется относительно светлый цвет переднего плана, и их следует использовать только на темном фоне, чтобы обеспечить достаточный контраст.
{{< /callout >}}
