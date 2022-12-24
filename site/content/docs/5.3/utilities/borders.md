---
layout: docs
title: Границы
description: Используйте утилиты для создания границ, чтобы быстро настроить границу и радиус границы элемента. Отлично подходит для изображений, кнопок или любого другого элемента.
group: utilities
toc: true
---

## Граница

Используйте служебные программы для создания границ, чтобы добавить или удалить границы элемента. Выбирайте из всех границ или по одной.

### Добавка

Добавьте границы к пользовательским элементам:

{{< example class="bd-example-border-utils" >}}
<span class="border"></span>
<span class="border-top"></span>
<span class="border-end"></span>
<span class="border-bottom"></span>
<span class="border-start"></span>
{{< /example >}}

### Вычитание

Или удалить границы:

{{< example class="bd-example-border-utils" >}}
<span class="border border-0"></span>
<span class="border border-top-0"></span>
<span class="border border-end-0"></span>
<span class="border border-bottom-0"></span>
<span class="border border-start-0"></span>
{{< /example >}}

## Цвет

Измените цвет границы с помощью утилит, созданных на основе цветов нашей темы.

{{< example class="bd-example-border-utils" >}}
{{< border.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<span class="border border-{{ .name }}"></span>
<span class="border border-{{ .name }}-subtle"></span>
{{- end -}}
{{< /border.inline >}}
<span class="border border-white"></span>
{{< /example >}}

Или измените `border-color` компонента по умолчанию:

{{< example >}}
<div class="mb-4">
  <label for="exampleFormControlInput1" class="form-label">Адрес электронной почты</label>
  <input type="email" class="form-control border-success" id="exampleFormControlInput1" placeholder="name@example.com">
</div>

<div class="h4 pb-2 mb-4 text-danger border-bottom border-danger">
  Опасный заголовок
</div>

<div class="p-3 bg-info bg-opacity-10 border border-info border-start-0 rounded-end">
  Изменение цвета и ширины границы
</div>
{{< /example >}}

## Непрозрачность

{{< added-in "5.2.0" >}}

Утилиты Bootstrap `border-{color}` генерируются с помощью Sass с использованием переменных CSS. Это позволяет изменять цвет в реальном времени без компиляции и динамических изменений альфа-прозрачности.

### Как это устроено

Рассмотрим нашу стандартную утилиту `.border-success`.

```css
.border-success {
  --bs-border-opacity: 1;
  border-color: rgba(var(--bs-success-rgb), var(--bs-border-opacity)) !important;
}
```

Мы используем RGB-версию нашей переменной CSS `--bs-success` (со значением `25, 135, 84`) и присоединяем вторую переменную CSS, `--bs-border-opacity`, для альфа-прозрачности. (со значением по умолчанию `1` благодаря локальной переменной CSS). Это означает, что каждый раз, когда вы сейчас используете `.border-success`, ваше вычисленное значение `color` равно `rgba(25, 135, 84, 1)`. Локальная переменная CSS внутри каждого класса `.border-*` позволяет избежать проблем с наследованием, поэтому вложенные экземпляры утилит не имеют измененной альфа-прозрачности автоматически.

### Пример

Чтобы изменить эту непрозрачность, переопределите `--bs-border-opacity` с помощью пользовательских стилей или встроенных стилей.

{{< example >}}
<div class="border border-success p-2 mb-2">Это граница успеха по умолчанию</div>
<div class="border border-success p-2" style="--bs-border-opacity: .5;">Это граница успеха с непрозрачностью 50%</div>
{{< /example >}}

Или выберите любую из утилит `.border-opacity`:

{{< example >}}
<div class="border border-success p-2 mb-2">Это граница успеха по умолчанию</div>
<div class="border border-success p-2 mb-2 border-opacity-75">Это граница успеха с непрозрачностью 75%</div>
<div class="border border-success p-2 mb-2 border-opacity-50">Это граница успеха с непрозрачностью 50%</div>
<div class="border border-success p-2 mb-2 border-opacity-25">Это граница успеха с непрозрачностью 25%</div>
<div class="border border-success p-2 border-opacity-10">Это граница успеха с непрозрачностью 10%</div>
{{< /example >}}

## Ширина

{{< example class="bd-example-border-utils" >}}
<span class="border border-1"></span>
<span class="border border-2"></span>
<span class="border border-3"></span>
<span class="border border-4"></span>
<span class="border border-5"></span>
{{< /example >}}

## Радиус

Добавьте классы к элементу, чтобы легко скруглить его углы.

{{< example class="bd-example-rounded-utils" >}}
{{< placeholder width="75" height="75" class="rounded" title="Пример закругленного изображения" >}}
{{< placeholder width="75" height="75" class="rounded-top" title="Пример закругленного изображения сверху" >}}
{{< placeholder width="75" height="75" class="rounded-end" title="Пример закругленного изображения справа" >}}
{{< placeholder width="75" height="75" class="rounded-bottom" title="Пример закругленного изображения снизу" >}}
{{< placeholder width="75" height="75" class="rounded-start" title="Пример закругленного изображения слева" >}}
{{< placeholder width="75" height="75" class="rounded-circle" title="Полностью круглое изображение" >}}
{{< placeholder width="150" height="75" class="rounded-pill" title="Закругленное изображение таблетки" >}}
{{< /example >}}

### Размеры

Используйте классы масштабирования для больших или меньших закругленных углов. Размеры варьируются от `0` до `5` и могут быть настроены путем изменения API утилит.

{{< example class="bd-example-rounded-utils" >}}
{{< placeholder width="75" height="75" class="rounded-0" title="Пример изображения без закруглений" >}}
{{< placeholder width="75" height="75" class="rounded-1" title="Пример маленького закругленного изображения" >}}
{{< placeholder width="75" height="75" class="rounded-2" title="Пример закругленного изображения по умолчанию" >}}
{{< placeholder width="75" height="75" class="rounded-3" title="Пример большого закругленного изображения" >}}
{{< placeholder width="75" height="75" class="rounded-4" title="Пример увеличенного округлого изображения" >}}
{{< placeholder width="75" height="75" class="rounded-5" title="Пример очень большого округлого изображения" >}}
{{< /example >}}

{{< example class="bd-example-rounded-utils" >}}
{{< placeholder width="75" height="75" class="rounded-bottom-1" title="Example small rounded image" >}}
{{< placeholder width="75" height="75" class="rounded-start-2" title="Example default left rounded image" >}}
{{< placeholder width="75" height="75" class="rounded-end-circle" title="Example right completely round image" >}}
{{< placeholder width="75" height="75" class="rounded-start-pill" title="Example left rounded pill image" >}}
{{< placeholder width="75" height="75" class="rounded-5 rounded-top-0" title="Example extra large bottom rounded image" >}}
{{< /example >}}

## CSS

### Переменные

{{< added-in "5.2.0" >}}

{{< scss-docs name="root-border-var" file="scss/_root.scss" >}}

### Sass Переменные

{{< scss-docs name="border-variables" file="scss/_variables.scss" >}}

{{< scss-docs name="border-radius-variables" file="scss/_variables.scss" >}}

### Sass Миксины

{{< scss-docs name="border-radius-mixins" file="scss/mixins/_border-radius.scss" >}}

### API утилит

Пограничные утилиты объявлены в нашем API утилит в `scss/_utilities.scss`. [Узнайте, как использовать API утилит.]({{< docsref "/utilities/api#использование-api" >}})

{{< scss-docs name="utils-borders" file="scss/_utilities.scss" >}}

{{< scss-docs name="utils-border-radius" file="scss/_utilities.scss" >}}
