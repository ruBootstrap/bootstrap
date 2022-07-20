---
layout: docs
title: Хлебные крошки
description: Укажите местоположение текущей страницы в иерархии навигации, которая автоматически добавляет разделители через CSS.
group: components
toc: true
---

## Пример

Используйте упорядоченный или неупорядоченный список с элементами связанного списка, чтобы создать навигационную крошку с минимальным стилем. Используйте наши утилиты для добавления дополнительных стилей по желанию.

{{< example >}}
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item active" aria-current="page">Главная</li>
  </ol>
</nav>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Главная</a></li>
    <li class="breadcrumb-item active" aria-current="page">Библиотека</li>
  </ol>
</nav>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Главная</a></li>
    <li class="breadcrumb-item"><a href="#">Библиотека</a></li>
    <li class="breadcrumb-item active" aria-current="page">Данные</li>
  </ol>
</nav>
{{< /example >}}

## Разделители

Разделители автоматически добавляются в CSS через [`::before`](https://developer.mozilla.org/en-US/docs/Web/CSS/::before) и [`content`](https://developer.mozilla.org/en-US/docs/Web/CSS/content). Их можно изменить, изменив локальное настраиваемое свойство CSS `--bs-breadcrumb-divider` или с помощью переменной Sass `$breadcrumb-divider` и `$breadcrumb-divider-flipped` для его RTL-аналога, если необходимо. По умолчанию мы используем нашу переменную Sass, которая устанавливается в качестве альтернативы настраиваемому свойству. Таким образом, Вы получаете глобальный разделитель, который можно в любой момент изменить без перекомпиляции CSS.

{{< example >}}
<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Главная</a></li>
    <li class="breadcrumb-item active" aria-current="page">Библиотека</li>
  </ol>
</nav>
{{< /example >}}

При изменении через Sass функция [quote](https://sass-lang.com/documentation/modules/string#quote) требуется для генерации кавычек вокруг строки. Например, используя `>` в качестве разделителя, Вы можете использовать это:

```scss
$breadcrumb-divider: quote(">");
```

Также можно использовать **встроенную иконку SVG**. Примените его через наше настраиваемое свойство CSS или используйте переменную Sass.

{{< callout info >}}

### Использование встроенного SVG

Встраивание SVG в качестве URI данных требует, чтобы URL-адрес экранировал несколько символов, в первую очередь `<`, `>` и `#`. Вот почему переменная `$breadcrumb-divider` передается через нашу [Sass функцию `escape-svg()`]({{< docsref "/customize/sass#escape-svg" >}}). При использовании пользовательского свойства CSS вам необходимо самостоятельно экранировать URL-адрес вашего SVG. Прочтите [объяснения Кевина Вебера на CodePen](https://codepen.io/kevinweber/pen/dXWoRw ) для получения подробной информации о том, что следует избегать.
{{< /callout >}}

{{< example >}}
<nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Главная</a></li>
    <li class="breadcrumb-item active" aria-current="page">Библиотека</li>
  </ol>
</nav>
{{< /example >}}

```scss
$breadcrumb-divider: url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' width='8' height='8'><path d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='#{$breadcrumb-divider-color}'/></svg>");
```

Вы также можете удалить параметр разделителя `--bs-breadcrumb-divider: '';` (пустые строки в настраиваемых свойствах CSS считаются как значение) или установить для переменной Sass значение `$breadcrumb-divider: none;`.

{{< example >}}
<nav style="--bs-breadcrumb-divider: '';" aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">Главная</a></li>
    <li class="breadcrumb-item active" aria-current="page">Библиотека</li>
  </ol>
</nav>
{{< /example >}}


```scss
$breadcrumb-divider: none;
```

## Доступность

Поскольку хлебные крошки обеспечивают навигацию, рекомендуется добавить значимую метку, такую как `aria-label="breadcrumb"`, чтобы описать тип навигации, предоставляемой в элементе `<nav>`, а также применить `aria-current="page"` к последнему элементу набора, чтобы указать, что он представляет текущую страницу.

Для получения дополнительной информации см. [Шаблон навигационной цепочки Руководства по авторскому праву ARIA](https://www.w3.org/WAI/ARIA/apg/patterns/breadcrumb/).

## CSS

### Переменные

{{< added-in "5.2.0" >}}

Как часть развивающегося подхода Bootstrap к переменным CSS, хлебные крошки теперь используют локальные переменные CSS в `.breadcrumb` для расширенной настройки в реальном времени. Значения переменных CSS задаются через Sass, поэтому настройка Sass по-прежнему поддерживается.

{{< scss-docs name="breadcrumb-css-vars" file="scss/_breadcrumb.scss" >}}

### Переменные Sass

{{< scss-docs name="breadcrumb-variables" file="scss/_variables.scss" >}}
