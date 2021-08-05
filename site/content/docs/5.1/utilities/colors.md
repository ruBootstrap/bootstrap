---
layout: docs
title: Цвета
description: Передайте смысл через `color` с помощью нескольких служебных классов цвета. Также включает поддержку стилизации ссылок с помощью состояний наведения.
group: utilities
toc: true
---

## Цвета

Раскрашивайте текст с помощью цветных утилит. Если Вы хотите раскрасить ссылки, Вы можете использовать [вспомогательные классы `.link-*`]({{< docsref "/helpers/colored-links" >}}), которые имеют состояния `:hover` и `:focus`.

{{< example >}}
{{< colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<p class="text-{{ .name }}{{ with .contrast_color }} bg-{{ . }}{{ end }}">.text-{{ .name }}</p>
{{- end -}}
{{< /colors.inline >}}
<p class="text-body">.text-body</p>
<p class="text-muted">.text-muted</p>
<p class="text-white bg-dark">.text-white</p>
<p class="text-black-50">.text-black-50</p>
<p class="text-white-50 bg-dark">.text-white-50</p>
{{< /example >}}

{{< callout warning >}}
**Устарело:** С добавлением утилит `.text-opacity-*` и переменных CSS для текстовых утилит: `.text-black-50` и `.text-white-50` устарели с версии 5.1.0. Они будут удалены в версии 6.0.0.
{{< /callout >}}

{{< callout info >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Непрозрачность

<small class="d-inline-flex px-2 py-1 font-monospace text-muted border rounded-3">Добавлено в версии 5.1.0</small>

Начиная с версии 5.1.0, утилиты цвета текста создаются с помощью Sass с использованием переменных CSS. Это позволяет изменять цвет в реальном времени без компиляции и динамических изменений альфа-прозрачности.

### Как это работает

Рассмотрим нашу стандартную утилиту `.text-primary`.

```css
.text-primary {
  --bs-text-opacity: 1;
  color: rgba(var(--bs-primary-rgb), var(--bs-text-opacity)) !important;
}
```

Мы используем RGB-версию нашей переменной CSS `--bs-primary` (со значением `13, 110, 253`) и прикрепляем вторую переменную CSS, `--bs-text-opacity`, для альфа-прозрачности. (со значением по умолчанию `1` благодаря локальной переменной CSS). Это означает, что каждый раз, когда вы сейчас используете `.text-primary`, ваше вычисленное значение `color` будет `rgba(13, 110, 253, 1)`. Локальная переменная CSS внутри каждого класса `.text-*` позволяет избежать проблем наследования, поэтому вложенные экземпляры утилит не имеют автоматически измененной альфа-прозрачности.

### Пример

Чтобы изменить эту непрозрачность, переопределите `--bs-text-opacity` с помощью пользовательских стилей или встроенных стилей.

{{< example >}}
<div class="text-primary">Это основной текст по умолчанию</div>
<div class="text-primary" style="--bs-text-opacity: .5;">Это основной текст с непрозрачностью 50%</div>
{{< /example >}}

Или выберите любую из утилит `.text-opacity`:

{{< example >}}
<div class="text-primary">Это основной текст по умолчанию</div>
<div class="text-primary text-opacity-75">Это основной текст с непрозрачностью 75%</div>
<div class="text-primary text-opacity-50">Это основной текст с непрозрачностью 50%</div>
<div class="text-primary text-opacity-25">Это основной текст с непрозрачностью 25%</div>
{{< /example >}}

## Специфика

Иногда контекстные классы не могут быть применены из-за специфики другого селектора. В некоторых случаях достаточным обходным путем является обертывание содержимого Вашего элемента в `<div>` или более семантический элемент с желаемым классом.

## Sass

В дополнение к следующей функциональности Sass, рассмотрите возможность чтения о наших включенных [настраиваемых свойствах CSS]({{< docsref "/customize/css-variables" >}}) (также известных как переменные CSS) для цветов и многого другого.

### Переменные

Большинство утилит `color` генерируются цветами нашей темы, переназначенными из переменных нашей общей цветовой палитры.

{{< scss-docs name="color-variables" file="scss/_variables.scss" >}}

{{< scss-docs name="theme-color-variables" file="scss/_variables.scss" >}}

Также доступны оттенки серого, но для создания утилит используется только подмножество.

{{< scss-docs name="gray-color-variables" file="scss/_variables.scss" >}}

### Карта

Затем цвета темы помещаются в карту Sass, чтобы мы могли перебирать их, чтобы сгенерировать наши утилиты, модификаторы компонентов и многое другое.

{{< scss-docs name="theme-colors-map" file="scss/_variables.scss" >}}

Цвета в градациях серого также доступны в виде карты Sass. **Эта карта не используется для создания каких-либо утилит.**

{{< scss-docs name="gray-colors-map" file="scss/_variables.scss" >}}

Цвета RGB генерируются из отдельной карты Sass:

{{< scss-docs name="theme-colors-rgb" file="scss/_variables.scss" >}}

И цветовая непрозрачность основывается на этой собственной карте, которая используется API утилит:

{{< scss-docs name="utilities-text-colors" file="scss/_variables.scss" >}}

### API утилит

Утилиты цвета объявлены в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать API утилит.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-color" file="scss/_utilities.scss" >}}
