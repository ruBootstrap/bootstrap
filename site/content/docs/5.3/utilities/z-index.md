---
layout: docs
title: Z-индекс
description: Используйте наши низкоуровневые утилиты `z-index`, чтобы быстро изменить уровень стека элемента или компонента.
group: utilities
toc: true
added: "5.3"
---

## Пример

Используйте утилиты `z-index`, чтобы размещать элементы друг над другом. Требуется значение `position`, отличное от `static`, которое можно установить с помощью пользовательских стилей или с помощью наших [утилит позиционирования]({{< docsref "/utilities/position/" >}}).

{{< callout >}}
Мы называем эти «низкоуровневые» утилиты `z-index` из-за их значений по умолчанию от `-1` до `3`, которые мы используем для компоновки перекрывающихся компонентов. Значения `z-index` высокого уровня используются для компонентов наложения, таких как модальные окна и всплывающие подсказки.
{{< /callout >}}

{{< example class="bd-example-zindex-levels position-relative" >}}
<div class="z-3 position-absolute p-5 rounded-3"><span>z-3</span></div>
<div class="z-2 position-absolute p-5 rounded-3"><span>z-2</span></div>
<div class="z-1 position-absolute p-5 rounded-3"><span>z-1</span></div>
<div class="z-0 position-absolute p-5 rounded-3"><span>z-0</span></div>
<div class="z-n1 position-absolute p-5 rounded-3"><span>z-n1</span></div>
{{< /example >}}

## Наложения

Компоненты оверлея Bootstrap — раскрывающийся список, модальное окно, вне холста, всплывающее окно, всплывающее окно и всплывающая подсказка — все имеют свои собственные значения `z-index`, чтобы обеспечить удобство использования с конкурирующими «слоями» интерфейса.

Читайте о них на [странице макета `z-index`]({{< docsref "/layout/z-index" >}}).

## Компонентный подход

В некоторых компонентах мы используем низкоуровневые значения `z-index` для управления повторяющимися элементами, которые перекрывают друг друга (например, кнопки в группе кнопок или элементы в группе списка).

Узнайте о нашем [подходе `z-index`]({{< docsref "/extend/approach#z-index-scales" >}}).

## CSS

### Sass карта

Настройте эту карту Sass, чтобы изменить доступные значения и сгенерированные утилиты.

{{< scss-docs name="zindex-levels-map" file="scss/_variables.scss" >}}

### Utilities API

Position utilities are declared in our utilities API in `scss/_utilities.scss`. [Learn how to use the utilities API.]({{< docsref "/utilities/api#using-the-api" >}})

{{< scss-docs name="utils-zindex" file="scss/_utilities.scss" >}}
