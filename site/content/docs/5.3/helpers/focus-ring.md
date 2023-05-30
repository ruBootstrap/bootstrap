---
layout: docs
title: Кольцо фокусировки
description: Вспомогательные классы, позволяющие добавлять и изменять пользовательские стили кольца фокусировки для элементов и компонентов.
group: helpers
toc: true
added: "5.3"
---

Помощник `.focus-ring` удаляет `outline` по умолчанию для `:focus`, заменяя его `box-shadow`, который можно настроить более широко. Новая тень состоит из ряда переменных CSS, унаследованных от уровня `:root`, которые можно изменить для любого элемента или компонента.

## Пример

Нажмите непосредственно на ссылку ниже, чтобы увидеть кольцо фокусировки в действии, или в примере ниже, а затем нажмите <kbd>Tab</kbd>.

{{< example >}}
<a href="#" class="d-inline-flex focus-ring py-1 px-2 text-decoration-none border rounded-2">
  Специальное кольцо фокусировки
</a>
{{< /example >}}

## Кастомизация

Измените стиль кольца фокусировки с помощью наших переменных CSS, переменных Sass, утилит или пользовательских стилей.

### CSS переменные

При необходимости измените переменные CSS `--bs-focus-ring-*`, чтобы изменить внешний вид по умолчанию.

{{< example >}}
<a href="#" class="d-inline-flex focus-ring py-1 px-2 text-decoration-none border rounded-2" style="--bs-focus-ring-color: rgba(var(--bs-success-rgb), .25)">
  Зеленое кольцо фокусировки
</a>
{{< /example >}}

`.focus-ring` устанавливает стили через глобальные переменные CSS, которые можно переопределить для любого родительского элемента, как показано выше. Эти переменные генерируются из их аналогов переменных Sass.

{{< scss-docs name="root-focus-variables" file="scss/_root.scss" >}}

По умолчанию нет `--bs-focus-ring-x`, `--bs-focus-ring-y` или `--bs-focus-ring-blur`, но мы предоставляем переменные CSS с запасными вариантами. к начальным значениям `0`. Измените их, чтобы изменить внешний вид по умолчанию.

{{< example >}}
<a href="#" class="d-inline-flex focus-ring py-1 px-2 text-decoration-none border rounded-2" style="--bs-focus-ring-x: 10px; --bs-focus-ring-y: 10px; --bs-focus-ring-blur: 4px">
  Размытое смещенное кольцо фокусировки
</a>
{{< /example >}}

### Sass переменные

Настройте переменные кольца фокусировки Sass, чтобы изменить все использование стилей кольца фокусировки в вашем проекте на базе Bootstrap.

{{< scss-docs name="focus-ring-variables" file="scss/_variables.scss" >}}

### Sass API утилиты

Помимо `.focus-ring`, у нас есть несколько утилит `.focus-ring-*` для изменения значений по умолчанию вспомогательного класса. Измените цвет с помощью любого из наших [цветов темы]({{< docsref "/customize/color#theme-colors" >}}). Обратите внимание, что светлые и темные варианты могут быть видны не на всех цветах фона, учитывая текущую поддержку цветового режима.

{{< example >}}
{{< focus-ring.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<p><a href="#" class="d-inline-flex focus-ring focus-ring-{{ .name }} py-1 px-2 text-decoration-none border rounded-2">{{ title .name }} фокус</a></p>
{{- end -}}
{{< /focus-ring.inline >}}
{{< /example >}}

Утилиты кольца фокусировки объявлены в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать API утилит.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-focus-ring" file="scss/_utilities.scss" >}}
