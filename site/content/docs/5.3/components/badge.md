---
layout: docs
title: Значки
description: Документация и примеры для значков, нашего небольшого счетчика и меток компонента.
group: components
toc: true
---

## Примеры

Значки масштабируются, чтобы соответствовать размеру непосредственного родительского элемента, используя относительный размер шрифта и единицы измерения `em`. Начиная с версии 5, значки больше не имеют стилей фокуса или наведения для ссылок.

### Заголовки

{{< example >}}
<h1>Пример заголовка <span class="badge text-bg-secondary">Новый</span></h1>
<h2>Пример заголовка <span class="badge text-bg-secondary">Новый</span></h2>
<h3>Пример заголовка <span class="badge text-bg-secondary">Новый</span></h3>
<h4>Пример заголовка <span class="badge text-bg-secondary">Новый</span></h4>
<h5>Пример заголовка <span class="badge text-bg-secondary">Новый</span></h5>
<h6>Пример заголовка <span class="badge text-bg-secondary">Новый</span></h6>
{{< /example >}}

### Кнопки

Значки можно использовать как часть ссылок или кнопок для счетчика.

{{< example >}}
<button type="button" class="btn btn-primary">
  Оповещения <span class="badge text-bg-secondary">4</span>
</button>
{{< /example >}}

Обратите внимание, что в зависимости от того, как они используются, значки могут сбивать с толку пользователей программ чтения с экрана и аналогичных вспомогательных технологий. Хотя стиль значков дает визуальную подсказку об их назначении, этим пользователям просто будет представлено содержимое значка. В зависимости от конкретной ситуации эти значки могут выглядеть как случайные дополнительные слова или числа в конце предложения, ссылки или кнопки.

Если контекст не ясен (как в примере «Оповещения», где подразумевается, что «4» - это количество оповещений), рассмотрите возможность включения дополнительного контекста с визуально скрытым фрагментом дополнительного текста.

### Расположение

Используйте утилиты, чтобы изменить `.badge` и разместить его в углу ссылки или кнопки.

{{< example >}}
<button type="button" class="btn btn-primary position-relative">
  Входящие
  <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
    99+
    <span class="visually-hidden">непрочитанные сообщения</span>
  </span>
</button>
{{< /example >}}

Вы также можете заменить класс `.badge` на несколько дополнительных утилит без подсчета для более общего индикатора.

{{< example >}}
<button type="button" class="btn btn-primary position-relative">
  Профиль
  <span class="position-absolute top-0 start-100 translate-middle p-2 bg-danger border border-light rounded-circle">
    <span class="visually-hidden">Новые уведомления</span>
  </span>
</button>
{{< /example >}}

## Цвет фона

{{< added-in "5.2.0" >}}

Установите `background-color` с контрастным `color` переднего плана с помощью [наших помощников `.text-bg-{color}`]({{< docsref "helpers/color-background" >}}). Раньше требовалось вручную сопоставлять выбранные вами [`.text-{color}`]({{< docsref "/utilities/colors" >}}) и [`.bg-{color}`]({{< docsref "/utilities/background" >}}) утилиты для оформления, которые вы по-прежнему можете использовать, если хотите.

{{< example >}}
{{< badge.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<span class="badge text-bg-{{ .name }}">{{ .name | title }}</span>{{- end -}}
{{< /badge.inline >}}
{{< /example >}}

{{< callout info >}}
{{< partial "callouts/warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Значки таблеток

Используйте служебный класс `.rounded-pill`, чтобы сделать значки более округлыми с большим `border-radius`.

{{< example >}}
{{< badge.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<span class="badge rounded-pill text-bg-{{ .name }}">{{ .name | title }}</span>{{- end -}}
{{< /badge.inline >}}
{{< /example >}}

## CSS

### Переменные

{{< added-in "5.2.0" >}}

В рамках развивающегося подхода Bootstrap к переменным CSS значки теперь используют локальные переменные CSS в `.badge` для расширенной настройки в реальном времени. Значения переменных CSS задаются через Sass, поэтому настройка Sass по-прежнему поддерживается.

{{< scss-docs name="badge-css-vars" file="scss/_badge.scss" >}}

### Sass переменные

{{< scss-docs name="badge-variables" file="scss/_variables.scss" >}}
