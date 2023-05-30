---
layout: docs
title: Фон
description: Передайте смысл с помощью `background-color` и добавьте украшения с помощью градиентов.
group: utilities
toc: true
---

{{< callout info >}}
{{< partial "callouts/warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Фоновый цвет

Подобно классам цвета контекстного текста, установите фон элемента для любого контекстного класса. Фоновые утилиты **не устанавливают `color`**, поэтому в некоторых случаях Вы захотите использовать `.text-*` [утилиты цвета]({{< docsref "/utilities/colors" >}}).

{{< callout info >}}
Фоновые утилиты, такие как `.bg-*`, сгенерированные из нашей исходной карты Sass `$theme-colors`, еще не реагируют на цветовые режимы, однако любая утилита `.bg-*-subtle` будет. Это будет решено в 6 версии.
{{< /callout >}}

{{< example >}}
{{< colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="p-3 mb-2 bg-{{ .name }}{{ if .contrast_color }} text-{{ .contrast_color }}{{ else }} text-white{{ end }}">.bg-{{ .name }}</div>
<div class="p-3 mb-2 bg-{{ .name }}-subtle text-emphasis-{{ .name }}">.bg-{{ .name }}-subtle</div>
{{- end -}}
{{< /colors.inline >}}
<p class="p-3 mb-2 bg-body-secondary">.bg-body-secondary</p>
<p class="p-3 mb-2 bg-body-tertiary">.bg-body-tertiary</p>

<div class="p-3 mb-2 bg-body text-body">.bg-body</div>
<div class="p-3 mb-2 bg-black text-white">.bg-black</div>
<div class="p-3 mb-2 bg-white text-dark">.bg-white</div>
<div class="p-3 mb-2 bg-transparent text-body">.bg-transparent</div>
{{< /example >}}

## Фоновый градиент

При добавлении класса `.bg-gradient`, линейный градиент добавляется как фоновое изображение к фону. Этот градиент начинается с полупрозрачного белого цвета, который постепенно исчезает к низу.

Вам нужен градиент в вашем собственном CSS? Просто добавьте `background-image: var(--bs-gradient);`.

{{< markdown >}}
{{< colors.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="p-3 mb-2 bg-{{ .name }} bg-gradient{{ with .contrast_color }} text-{{ . }}{{ else }} text-white{{ end }}">.bg-{{ .name }}.bg-gradient</div>
{{- end -}}
{{< /colors.inline >}}
<div class="p-3 mb-2 bg-black bg-gradient text-white">.bg-black.bg-gradient</div>
{{< /markdown >}}

## Непрозрачность

{{< added-in "5.1.0" >}}

Начиная с версии 5.1.0, утилиты `background-color` генерируются с помощью Sass с использованием переменных CSS. Это позволяет изменять цвет в реальном времени без компиляции и динамических изменений альфа-прозрачности.

### Как это устроено

Рассмотрим нашу стандартную утилиту `.bg-success`.

```css
.bg-success {
  --bs-bg-opacity: 1;
  background-color: rgba(var(--bs-success-rgb), var(--bs-bg-opacity)) !important;
}
```

Мы используем RGB-версию нашей переменной CSS `--bs-success` (со значением `25, 135, 84`) и добавляем вторую переменную CSS, `--bs-bg-opacity`, для альфа-прозрачности. (со значением по умолчанию `1` благодаря локальной переменной CSS). Это означает, что каждый раз, когда вы сейчас используете `.bg-success`, вашим вычисленным значением `color` будет `rgba(25, 135, 84, 1)`. Локальная переменная CSS внутри каждого класса `.bg-*` позволяет избежать проблем с наследованием, поэтому вложенные экземпляры утилит не имеют автоматически измененной альфа-прозрачности.

### Пример

Чтобы изменить эту непрозрачность, переопределите `--bs-bg-opacity` с помощью пользовательских стилей или встроенных стилей.

{{< example >}}
<div class="bg-success p-2 text-white">Это фон успеха по умолчанию</div>
<div class="bg-success p-2" style="--bs-bg-opacity: .5;">Это успешный фон с непрозрачностью 50%</div>
{{< /example >}}

Или выберите любую из утилит `.bg-opacity`:

{{< example >}}
<div class="bg-success p-2 text-white">Это фон успеха по умолчанию</div>
<div class="bg-success p-2 text-white bg-opacity-75">Это успешный фон с непрозрачностью 75%</div>
<div class="bg-success p-2 text-dark bg-opacity-50">Это успешный фон с непрозрачностью 50%</div>
<div class="bg-success p-2 text-dark bg-opacity-25">Это успешный фон с непрозрачностью 25%</div>
<div class="bg-success p-2 text-dark bg-opacity-10">Это успешный фон с непрозрачностью 10%</div>
{{< /example >}}

## CSS

В дополнение к следующей функциональности Sass, рассмотрите возможность чтения о наших включенных [настраиваемых свойствах CSS]({{< docsref "/customize/css-variables" >}}) (также известных как переменные CSS) для цветов и многого другого.

### Sass переменные

Большинство утилит `background-color` генерируются цветами нашей темы, переназначенными из переменных нашей общей цветовой палитры.

{{< scss-docs name="color-variables" file="scss/_variables.scss" >}}

{{< scss-docs name="theme-color-variables" file="scss/_variables.scss" >}}

{{< scss-docs name="variable-gradient" file="scss/_variables.scss" >}}

Также доступны оттенки серого, но для создания каких-либо утилит используется только подмножество.

{{< scss-docs name="gray-color-variables" file="scss/_variables.scss" >}}

Переменные для установки `background-color` в утилитах `.bg-*-subtle` в светлом и темном режимах:

{{< scss-docs name="theme-bg-subtle-variables" file="scss/_variables.scss" >}}

{{< scss-docs name="theme-bg-subtle-dark-variables" file="scss/_variables-dark.scss" >}}

### Sass карта

Затем цвета темы помещаются в карту Sass, чтобы мы могли перебирать их, чтобы сгенерировать наши утилиты, модификаторы компонентов и многое другое.

{{< scss-docs name="theme-colors-map" file="scss/_variables.scss" >}}

Цвета в градациях серого также доступны в виде карты Sass. **Эта карта не используется для создания каких-либо утилит.**

{{< scss-docs name="gray-colors-map" file="scss/_variables.scss" >}}

Цвета RGB генерируются из отдельной карты Sass:

{{< scss-docs name="theme-colors-rgb" file="scss/_maps.scss" >}}

Непрозрачность цвета фона основана на собственной карте, которая используется API-интерфейсом утилит:

{{< scss-docs name="utilities-bg-colors" file="scss/_maps.scss" >}}

Цвета фона цветового режима также доступны в виде карты Sass:

{{< scss-docs name="theme-bg-subtle-map" file="scss/_maps.scss" >}}

{{< scss-docs name="theme-bg-subtle-dark-map" file="scss/_maps.scss" >}}

### Sass миксины

**Никакие миксины не используются для создания наших фоновых утилит**, но у нас есть некоторые дополнительные миксины для других ситуаций, когда Вы хотите создать свои собственные градиенты.

{{< scss-docs name="gradient-bg-mixin" file="scss/mixins/_gradients.scss" >}}

{{< scss-docs name="gradient-mixins" file="scss/mixins/_gradients.scss" >}}

### Sass API утилиты

Фоновые утилиты объявлены в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать утилиты API.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-bg-color" file="scss/_utilities.scss" >}}
