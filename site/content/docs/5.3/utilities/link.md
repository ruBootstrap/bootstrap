---
layout: docs
title: Ссылка
description: Утилиты ссылок используются для стилизации ваших якорей, чтобы настроить их цвет, непрозрачность, смещение подчеркивания, цвет подчеркивания и многое другое.
group: utilities
toc: true
added: 5.3
---

## Непрозрачность ссылки

Измените альфа-прозрачность значения цвета ссылки `rgba()` с помощью утилит. Имейте в виду, что изменения непрозрачности цвета могут привести к ссылкам с [*недостаточной* контрастностью]({{< docsref "getting-started/accessibility#color-contrast" >}}).

{{< example >}}
<p><a class="link-opacity-10" href="#">Link opacity 10</a></p>
<p><a class="link-opacity-25" href="#">Link opacity 25</a></p>
<p><a class="link-opacity-50" href="#">Link opacity 50</a></p>
<p><a class="link-opacity-75" href="#">Link opacity 75</a></p>
<p><a class="link-opacity-100" href="#">Link opacity 100</a></p>
{{< /example >}}

Вы даже можете изменить уровень непрозрачности при наведении.

{{< example >}}
<p><a class="link-opacity-10-hover" href="#">Непрозрачность при наведении ссылки 10</a></p>
<p><a class="link-opacity-25-hover" href="#">Непрозрачность при наведении ссылки 25</a></p>
<p><a class="link-opacity-50-hover" href="#">Непрозрачность при наведении ссылки 50</a></p>
<p><a class="link-opacity-75-hover" href="#">Непрозрачность при наведении ссылки 75</a></p>
<p><a class="link-opacity-100-hover" href="#">Непрозрачность при наведении ссылки 100</a></p>
{{< /example >}}

## Подчеркивание ссылки

### Цвет подчеркивания

Измените цвет подчеркивания независимо от цвета текста ссылки.

{{< example >}}
{{< link-underline-colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<p><a href="#" class="link-underline-{{ .name }}">{{ .name | title }} underline</a></p>
{{- end -}}
{{< /link-underline-colors.inline >}}
{{< /example >}}

### Смещение подчеркивания

Измените расстояние подчеркивания от вашего текста. Смещение задается в единицах `em` для автоматического масштабирования с текущим размером шрифта элемента `font-size`.

{{< example >}}
<p><a href="#">Ссылка по умолчанию</a></p>
<p><a class="link-offset-1" href="#">Смещение 1 ссылки</a></p>
<p><a class="link-offset-2" href="#">Смещение 2 ссылки</a></p>
<p><a class="link-offset-3" href="#">Смещение 3 ссылки</a></p>
{{< /example >}}

### Непрозрачность подчеркивания

Измените непрозрачность подчеркивания. Требуется добавить `.link-underline`, чтобы сначала установить цвет `rgba()`, который мы используем, чтобы затем изменить непрозрачность альфа-канала.

{{< example >}}
<p><a class="link-offset-2 link-underline link-underline-opacity-0" href="#">Непрозрачность подчеркивания 0</a></p>
<p><a class="link-offset-2 link-underline link-underline-opacity-10" href="#">Непрозрачность подчеркивания 10</a></p>
<p><a class="link-offset-2 link-underline link-underline-opacity-25" href="#">Непрозрачность подчеркивания 25</a></p>
<p><a class="link-offset-2 link-underline link-underline-opacity-50" href="#">Непрозрачность подчеркивания 50</a></p>
<p><a class="link-offset-2 link-underline link-underline-opacity-75" href="#">Непрозрачность подчеркивания 75</a></p>
<p><a class="link-offset-2 link-underline link-underline-opacity-100" href="#">Непрозрачность подчеркивания 100</a></p>
{{< /example >}}

### Варианты наведения

Как и утилиты `.link-opacity-*-hover`, утилиты `.link-offset` и `.link-underline-opacity` по умолчанию включают варианты `:hover`. Смешивайте и сочетайте, чтобы создавать уникальные стили ссылок.

{{< example >}}
<a class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="#">
  Непрозрачность подчеркивания 0
</a>
{{< /example >}}

## Цветные ссылки

[Вспомогательные функции для цветных ссылок]({{< docsref "/helpers/colored-links/" >}}) были обновлены для работы с нашими утилитами для работы со ссылками. Используйте новые утилиты для изменения непрозрачности ссылки, непрозрачности подчеркивания и смещения подчеркивания.

{{< example >}}
{{< colored-links.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<p><a href="#" class="link-{{ .name }} link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">{{ .name | title }} link</a></p>
{{- end -}}
{{< /colored-links.inline >}}
<p><a href="#" class="link-body-emphasis link-offset-2 link-underline-opacity-25 link-underline-opacity-75-hover">Emphasis link</a></p>
{{< /example >}}

{{< callout info >}}
{{< partial "callouts/warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Sass

В дополнение к следующим функциям Sass, рассмотрите возможность прочитать о наших включенных [пользовательских свойствах CSS]({{< docsref "/customize/css-variables" >}}) (также известных как переменные CSS) для цветов и многого другого.

### Утилиты API

Утилиты ссылок объявлены в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать API утилит.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-links" file="scss/_utilities.scss" >}}
