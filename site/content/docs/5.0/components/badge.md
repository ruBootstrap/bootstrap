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
<h1>Пример заголовока <span class="badge bg-secondary">Новый</span></h1>
<h2>Пример заголовока <span class="badge bg-secondary">Новый</span></h2>
<h3>Пример заголовока <span class="badge bg-secondary">Новый</span></h3>
<h4>Пример заголовока <span class="badge bg-secondary">Новый</span></h4>
<h5>Пример заголовока <span class="badge bg-secondary">Новый</span></h5>
<h6>Пример заголовока <span class="badge bg-secondary">Новый</span></h6>
{{< /example >}}

### Кнопки

Значки можно использовать как часть ссылок или кнопок для счетчика.

{{< example >}}
<button type="button" class="btn btn-primary">
  Оповещения <span class="badge bg-secondary">4</span>
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

Используйте наши служебные классы фона, чтобы быстро изменить внешний вид значка. Обратите внимание, что при использовании файла Bootstrap по умолчанию `.bg-light` Вам, вероятно, понадобится утилита для настройки цвета текста, такая как `.text-dark` для правильного оформления. Это потому, что фоновые утилиты не устанавливают ничего, кроме `background-color`.

{{< example >}}
{{< badge.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<span class="badge bg-{{ .name }}{{ with .contrast_color }} text-{{ . }}{{ end }}">{{ .name | title }}</span>{{- end -}}
{{< /badge.inline >}}
{{< /example >}}

{{< callout info >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Значки таблеток

Используйте служебный класс `.rounded-pill`, чтобы сделать значки более округлыми с большим `border-radius`.

{{< example >}}
{{< badge.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<span class="badge rounded-pill bg-{{ .name }}{{ with .contrast_color }} text-{{ . }}{{ end }}">{{ .name | title }}</span>{{- end -}}
{{< /badge.inline >}}
{{< /example >}}

## Sass

### Переменные

{{< scss-docs name="badge-variables" file="scss/_variables.scss" >}}
