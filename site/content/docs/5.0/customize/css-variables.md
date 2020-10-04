---
layout: docs
title: CSS переменные
description: Используйте настраиваемые свойства CSS Bootstrap для быстрого и перспективного проектирования и разработки.
group: customize
toc: true
---

Bootstrap включает около двух десятков [настраиваемых свойств (переменных) CSS](https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties) в своем скомпилированном CSS, и еще десятки будут добавлены для улучшенной настройки на покомпонентной основе. Они обеспечивают легкий доступ к часто используемым значениям, таким как цвета нашей темы, контрольные точки и стеки основных шрифтов, при работе в инспекторе Вашего браузера, в изолированной программной среде или при общем прототипировании.

**Все наши настраиваемые свойства имеют префикс `bs-`**, чтобы избежать конфликтов со сторонним CSS.

## Корневые переменные

Вот переменные, которые мы включаем (обратите внимание, что требуется `:root`), к которым можно получить доступ везде, где загружен CSS Bootstrap. Они находятся в нашем файле `_root.scss` и включены в наши скомпилированные файлы dist.

{{< highlight css >}}
{{< root.inline >}}
{{- $css := readFile "dist/css/bootstrap.css" -}}
{{- $match := findRE ":root {([^}]*)}" $css 1 -}}

{{- if (eq (len $match) 0) -}}
{{- errorf "Got no matches for :root in %q!" $.Page.Path -}}
{{- end -}}

{{- index $match 0 -}}

{{< /root.inline >}}
{{< /highlight >}}

## Компонентные переменные

Мы также начинаем использовать настраиваемые свойства в качестве локальных переменных для различных компонентов. Таким образом мы можем уменьшить наш скомпилированный CSS, гарантировать, что стили не наследуются в таких местах, как вложенные таблицы, и разрешить некоторый базовый рестайлинг и расширение компонентов Bootstrap после компиляции Sass.

Взгляните на нашу документацию по таблицам, чтобы [понять, как мы используем переменные CSS]({{< docsref "/content/tables#how-do-the-variants-and-accented-tables-work" >}}).

Мы также используем переменные CSS в наших сетках - в первую очередь для промежутков - с более широким использованием компонентов в будущем.

## Примеры

Переменные CSS предлагают такую же гибкость, что и переменные Sass, но без необходимости компиляции перед отправкой в браузер. Например, здесь мы сбрасываем шрифт нашей страницы и стили ссылок с помощью переменных CSS.

{{< highlight css >}}
body {
  font: 1rem/1.5 var(--bs-font-sans-serif);
}
a {
  color: var(--bs-blue);
}
{{< /highlight >}}