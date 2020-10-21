---
layout: docs
title: Значки
description: Документация и примеры для значков, нашего небольшого счетчика и меток компонента.
group: components
toc: true
---

## Пример

Значки масштабируются, чтобы соответствовать размеру непосредственного родительского элемента, используя относительный размер шрифта и единицы измерения `em`. Начиная с версии 5, значки больше не имеют стилей фокуса или наведения для ссылок.

{{< example >}}
<h1>Пример заголовока <span class="badge bg-secondary">Новый</span></h1>
<h2>Пример заголовока <span class="badge bg-secondary">Новый</span></h2>
<h3>Пример заголовока <span class="badge bg-secondary">Новый</span></h3>
<h4>Пример заголовока <span class="badge bg-secondary">Новый</span></h4>
<h5>Пример заголовока <span class="badge bg-secondary">Новый</span></h5>
<h6>Пример заголовока <span class="badge bg-secondary">Новый</span></h6>
{{< /example >}}

Значки можно использовать как часть ссылок или кнопок для счетчика.

{{< example >}}
<button type="button" class="btn btn-primary">
  Оповещения <span class="badge bg-secondary">4</span>
</button>
{{< /example >}}

Обратите внимание, что в зависимости от того, как они используются, значки могут сбивать с толку пользователей программ чтения с экрана и аналогичных вспомогательных технологий. Хотя стиль значков дает визуальную подсказку об их назначении, этим пользователям просто будет представлено содержимое значка. В зависимости от конкретной ситуации эти значки могут выглядеть как случайные дополнительные слова или числа в конце предложения, ссылки или кнопки.

Если контекст не ясен (как в примере «Оповещения», где подразумевается, что «4» - это количество оповещений), рассмотрите возможность включения дополнительного контекста с визуально скрытым фрагментом дополнительного текста.

{{< example >}}
<button type="button" class="btn btn-primary">
  Профиль <span class="badge bg-secondary">9</span>
  <span class="visually-hidden">непрочитанные сообщения</span>
</button>
{{< /example >}}

## Цвет фона

Используйте наши служебные классы фона, чтобы быстро изменить внешний вид значка. Обратите внимание, что при использовании файла Bootstrap по умолчанию `.bg-light` Вам, вероятно, понадобится утилита для настройки цвета текста, такая как `.text-dark` для правильного оформления. Это потому, что фоновые утилиты не устанавливают ничего, кроме `background-color`.

{{< example >}}
{{< badge.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<span class="badge bg-{{ .name }}{{ if or (eq .name "light") (eq .name "warning") (eq .name "info") }} text-dark{{ end }}">{{ .name | title }}</span>{{- end -}}
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
<span class="badge rounded-pill bg-{{ .name }}{{ if or (eq .name "light") (eq .name "warning") (eq .name "info") }} text-dark{{ end }}">{{ .name | title }}</span>{{- end -}}
{{< /badge.inline >}}
{{< /example >}}
