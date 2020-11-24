---
layout: docs
title: Значки
description: Документация и примеры значков, нашего небольшого количества и компонента маркировки.
group: components
toc: true
---

## Пример

Значки масштабируются, чтобы соответствовать размеру непосредственного родительского элемента, используя относительный размер шрифта и единицы измерения `em`.

{{< example >}}
<h1>Пример заголовка <span class="badge badge-secondary">Новый</span></h1>
<h2>Пример заголовка <span class="badge badge-secondary">Новый</span></h2>
<h3>Пример заголовка <span class="badge badge-secondary">Новый</span></h3>
<h4>Пример заголовка <span class="badge badge-secondary">Новый</span></h4>
<h5>Пример заголовка <span class="badge badge-secondary">Новый</span></h5>
<h6>Пример заголовка <span class="badge badge-secondary">Новый</span></h6>
{{< /example >}}

Значки можно использовать как часть ссылок или кнопок для счетчика.

{{< example >}}
<button type="button" class="btn btn-primary">
  Уведомления <span class="badge badge-light">4</span>
</button>
{{< /example >}}

Обратите внимание, что в зависимости от того, как они используются, значки могут сбивать с толку пользователей программ чтения с экрана и аналогичных вспомогательных технологий. Хотя стиль значков дает визуальную подсказку об их назначении, этим пользователям просто будет представлено содержимое значка. В зависимости от конкретной ситуации эти значки могут выглядеть как случайные дополнительные слова или числа в конце предложения, ссылки или кнопки.

Если контекст не ясен (как в примере «Уведомления», где подразумевается, что «4» - это количество уведомлений), рассмотрите возможность включения дополнительного контекста с визуально скрытым фрагментом дополнительного текста.

{{< example >}}
<button type="button" class="btn btn-primary">
  Профиль <span class="badge badge-light">9</span>
  <span class="sr-only">непрочитанные сообщения</span>
</button>
{{< /example >}}

## Контекстные вариации

Добавьте любой из указанных ниже классов модификаторов, чтобы изменить внешний вид значка.

{{< example >}}
{{< badge.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<span class="badge badge-{{ .name }}">{{ .name | title }}</span>{{- end -}}
{{< /badge.inline >}}
{{< /example >}}

{{< callout warning >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

## Значки таблетки

Используйте класс-модификатор `.badge-pill` , чтобы сделать значки более округлыми (с большим радиусом границы `border-radius` и дополнительным горизонтальным заполнением `padding`). Полезно, если Вы пропустите значки из v3.

{{< example >}}
{{< badge.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<span class="badge badge-pill badge-{{ .name }}">{{ .name | title }}</span>{{- end -}}
{{< /badge.inline >}}
{{< /example >}}

## Ссылки

Использование контекстных классов `.badge-*` в элементе `<a>` быстро предоставляет значки _действенные_ с состояниями наведения и фокуса.

{{< example >}}
{{< badge.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<a href="#" class="badge badge-{{ .name }}">{{ .name | title }}</a>{{- end -}}
{{< /badge.inline >}}
{{< /example >}}
