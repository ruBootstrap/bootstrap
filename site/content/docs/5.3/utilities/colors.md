---
layout: docs
title: Цвета
description: Передайте смысл через `color` с помощью нескольких служебных классов цвета. Также включает поддержку стилизации ссылок с помощью состояний наведения.
group: utilities
toc: true
---

{{< callout info >}}
{{< partial "callouts/warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Цвета

Раскрашивайте текст с помощью цветных утилит. Если Вы хотите раскрасить ссылки, Вы можете использовать [вспомогательные классы `.link-*`]({{< docsref "/helpers/colored-links" >}}), которые имеют состояния `:hover` и `:focus`.

{{< callout info >}}
Color utilities like `.text-*` that generated from our original `$theme-colors` Sass map don't yet respond to color modes, however, any `.text-*-emphasis` utility will. This will be resolved in v6.
{{< /callout >}}

{{< example >}}
{{< colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<p class="text-{{ .name }}{{ with .contrast_color }} bg-{{ . }}{{ end }}">.text-{{ .name }}</p>
<p class="text-{{ .name }}-emphasis">.text-{{ .name }}-emphasis</p>
{{- end -}}
{{< /colors.inline >}}

<p class="text-body">.text-body</p>
<p class="text-body-emphasis">.text-body-emphasis</p>
<p class="text-body-secondary">.text-body-secondary</p>
<p class="text-body-tertiary">.text-body-tertiary</p>

<p class="text-black bg-white">.text-black</p>
<p class="text-white bg-dark">.text-white</p>
<p class="text-black-50 bg-white">.text-black-50</p>
<p class="text-white-50 bg-dark">.text-white-50</p>
{{< /example >}}

{{< callout warning >}}
**Устарело:** С добавлением утилит `.text-opacity-*` и переменных CSS для текстовых утилит: `.text-black-50` и `.text-white-50` устарели с версии 5.1.0. Они будут удалены в версии 6.0.0.
{{< /callout >}}

{{< callout warning >}}
**Deprecation:** With the addition of the expanded theme colors and variables, the `.text-muted` utility has been deprecated as of v5.3.0. Its default value has also been reassigned to the new `--bs-secondary-color` CSS variable to better support color modes. It will be removed in v6.0.0.
{{< /callout >}}

## Непрозрачность

{{< added-in "5.1.0" >}}

Начиная с версии 5.1.0, утилиты цвета текста создаются с помощью Sass с использованием переменных CSS. Это позволяет изменять цвет в реальном времени без компиляции и динамических изменений альфа-прозрачности.

### Как это устроено

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

## CSS

В дополнение к следующей функциональности Sass, рассмотрите возможность чтения о наших включенных [настраиваемых свойствах CSS]({{< docsref "/customize/css-variables" >}}) (также известных как переменные CSS) для цветов и многого другого.

### Sass переменные

Большинство утилит `color` генерируются цветами нашей темы, переназначенными из переменных нашей общей цветовой палитры.

{{< scss-docs name="color-variables" file="scss/_variables.scss" >}}

{{< scss-docs name="theme-color-variables" file="scss/_variables.scss" >}}

Также доступны оттенки серого, но для создания утилит используется только подмножество.

{{< scss-docs name="gray-color-variables" file="scss/_variables.scss" >}}

{{< scss-docs name="theme-text-map" file="scss/_maps.scss" >}}

Переменные для установки цветов в утилитах `.text-*-emphasis` в светлом и темном режимах:

{{< scss-docs name="theme-text-variables" file="scss/_variables.scss" >}}

{{< scss-docs name="theme-text-dark-variables" file="scss/_variables-dark.scss" >}}

### Sass карта

Затем цвета темы помещаются в карту Sass, чтобы мы могли перебирать их, чтобы сгенерировать наши утилиты, модификаторы компонентов и многое другое.

{{< scss-docs name="theme-colors-map" file="scss/_variables.scss" >}}

Цвета в градациях серого также доступны в виде карты Sass. **Эта карта не используется для создания каких-либо утилит.**

{{< scss-docs name="gray-colors-map" file="scss/_variables.scss" >}}

Цвета RGB генерируются из отдельной карты Sass:

{{< scss-docs name="theme-colors-rgb" file="scss/_maps.scss" >}}

Непрозрачность цвета основана на собственной карте, которая используется API-интерфейсом утилит:

{{< scss-docs name="utilities-text-colors" file="scss/_maps.scss" >}}

Адаптивные цвета текста цветового режима также доступны в виде карты Sass:

{{< scss-docs name="theme-text-map" file="scss/_maps.scss" >}}

{{< scss-docs name="theme-text-dark-map" file="scss/_maps.scss" >}}

### Утилиты API

Утилиты цвета объявлены в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать API утилит.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-color" file="scss/_utilities.scss" >}}
