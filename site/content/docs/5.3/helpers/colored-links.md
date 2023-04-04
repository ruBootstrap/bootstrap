---
layout: docs
title: Цветные ссылки
description: Цветные ссылки с состояниями наведения
group: helpers
toc: true
---

## Цвета ссылок

Вы можете использовать классы `.link-*` для раскрашивания ссылок. В отличие от [классов `.text-*`]({{< docsref "/utilities/colors" >}}), эти классы имеют состояния `:hover` и `:focus`. В некоторых стилях ссылок используется относительно светлый цвет переднего плана, и их следует использовать только на темном фоне, чтобы обеспечить достаточную контрастность.

{{< callout info >}}
**Внимание!** `.link-body-emphasis` в настоящее время является единственной цветной ссылкой, которая адаптируется к цветовым режимам. Это рассматривается как особый случай, пока не появится v6, и мы не сможем более тщательно перестроить цвета нашей темы для цветовых режимов. До тех пор это уникальный высококонтрастный цвет ссылки с пользовательскими стилями `:hover` и `:focus`. Тем не менее, он по-прежнему реагирует на новые утилиты ссылок.
{{< /callout >}}

{{< example >}}
{{< colored-links.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<p><a href="#" class="link-{{ .name }}">{{ .name | title }} ссылка</a></p>
{{- end -}}
{{< /colored-links.inline >}}
<p><a href="#" class="link-body-emphasis">Акцентная ссылка</a></p>
{{< /example >}}

{{< callout info >}}
{{< partial "callouts/warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Утилиты ссылки

{{< added-in "5.3.0" >}}

Цветные ссылки также можно изменить с помощью наших [утилит ссылок]({{< docsref "/utilities/link/" >}}).

{{< example >}}
{{< colored-links.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<p><a href="#" class="link-{{ .name }} link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">{{ .name | title }} ссылка</a></p>
{{- end -}}
{{< /colored-links.inline >}}
<p><a href="#" class="link-body-emphasis link-offset-2 link-underline-opacity-25 link-underline-opacity-75-hover">Акцентная ссылка</a></p>
{{< /example >}}
