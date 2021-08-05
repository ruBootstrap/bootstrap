---
layout: docs
title: Браузеры и устройства
description: Узнайте о браузерах и устройствах, от современных до старых, которые поддерживаются Bootstrap, включая известные особенности и ошибки для каждого из них.
group: getting-started
toc: true
---

## Поддерживаемые браузеры

Bootstrap поддерживает **последние стабильные выпуски** всех основных браузеров и платформ.

Альтернативные браузеры, которые используют последнюю версию WebKit, Blink или Gecko, напрямую или через API веб-представления платформы, явно не поддерживаются. Однако Bootstrap должен (в большинстве случаев) правильно отображаться и работать в этих браузерах. Более конкретная информация о поддержке представлена ниже.

Вы можете найти список поддерживаемых нами браузеров и их версии [в нашем файле `.browserslistrc`]({{< param repo >}}/blob/v{{< param current_version >}}/.browserslistrc):

```text
{{< rf.inline >}}
{{- readFile ".browserslistrc" | chomp | htmlEscape -}}
{{< /rf.inline >}}
```

Мы используем [Autoprefixer](https://github.com/postcss/autoprefixer) для обработки предполагаемой поддержки браузера через префиксы CSS, который использует [Browserslist](https://github.com/browserslist/browserslist) для управления этими версиями браузеров. Обратитесь к их документации, чтобы узнать, как интегрировать эти инструменты в свои проекты.

### Мобильные устройства

Вообще говоря, Bootstrap поддерживает последние версии браузеров по умолчанию для каждой основной платформы. Обратите внимание, что прокси-браузеры (такие как Opera Mini, Opera Mobile's Turbo mode, UC Browser Mini, Amazon Silk) не поддерживаются.

<table class="table">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col">Chrome</th>
      <th scope="col">Firefox</th>
      <th scope="col">Safari</th>
      <th scope="col">Android Browser &amp; WebView</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Android</th>
      <td><span class="badge bg-success">Поддерживается</span></td>
      <td><span class="badge bg-success">Поддерживается</span></td>
      <td class="text-muted">&mdash;</td>
      <td>v6.0+</td>
    </tr>
    <tr>
      <th scope="row">iOS</th>
      <td><span class="badge bg-success">Поддерживается</span></td>
      <td><span class="badge bg-success">Поддерживается</span></td>
      <td><span class="badge bg-success">Поддерживается</span></td>
      <td class="text-muted">&mdash;</td>
    </tr>
  </tbody>
</table>

### Настольные браузеры

Точно так же поддерживаются последние версии большинства настольных браузеров.

<table class="table">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col">Chrome</th>
      <th scope="col">Firefox</th>
      <th scope="col">Microsoft Edge</th>
      <th scope="col">Opera</th>
      <th scope="col">Safari</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Mac</th>
      <td><span class="badge bg-success">Поддерживается</span></td>
      <td><span class="badge bg-success">Поддерживается</span></td>
      <td><span class="badge bg-success">Поддерживается</span></td>
      <td><span class="badge bg-success">Поддерживается</span></td>
      <td><span class="badge bg-success">Поддерживается</span></td>
    </tr>
    <tr>
      <th scope="row">Windows</th>
      <td><span class="badge bg-success">Поддерживается</span></td>
      <td><span class="badge bg-success">Поддерживается</span></td>
      <td><span class="badge bg-success">Поддерживается</span></td>
      <td><span class="badge bg-success">Поддерживается</span></td>
      <td class="text-muted">&mdash;</td>
    </tr>
  </tbody>
</table>

Для Firefox, помимо последней нормальной стабильной версии, мы также поддерживаем последнюю версию Firefox [Extended Support Release (ESR)](https://www.mozilla.org/en-US/firefox/enterprise/) version of Firefox.

Неофициально Bootstrap должен выглядеть и вести себя достаточно хорошо в Chromium и Chrome для Linux и Firefox для Linux, хотя официально они не поддерживаются.

## Internet Explorer

Internet Explorer не поддерживается. **Если вам требуется поддержка Internet Explorer, используйте Bootstrap v4.**

## Модальные окна и выпадающие списки на мобильных устройствах

### Переполнение и прокрутка

Поддержка для `overflow: hidden;` в элементе `<body>` весьма ограничена в iOS и Android. С этой целью, когда Вы прокручиваете верхнюю или нижнюю часть модального окна в браузере любого из этих устройств, содержимое `<body>` начинает прокручиваться. См. [Chrome bug #175502](https://bugs.chromium.org/p/chromium/issues/detail?id=175502) (исправлено в Chrome v40) и [WebKit bug #153852](https://bugs.webkit.org/show_bug.cgi?id=153852).

### Текстовые поля iOS и прокрутка

Начиная с iOS 9.2, пока модальное окно открыто, если начальное прикосновение жеста прокрутки находится в пределах текстового `<input>` или `<textarea>`, содержимое `<body>` под модальным окном будет будет прокручиваться вместо самого модального окна. См. [WebKit bug #153856](https://bugs.webkit.org/show_bug.cgi?id=153856).

### Выпадающие меню навигационной панели

Элемент `.dropdown-backdrop` не используется в навигационной панели iOS из-за сложности z-индекса. Таким образом, чтобы закрыть раскрывающиеся списки на панели навигации, Вы должны непосредственно щелкнуть элемент раскрывающегося списка (или [любой другой элемент, который вызовет событие щелчка в iOS](https://developer.mozilla.org/en-US/docs/Web/API/Element/click_event#Safari_Mobile)).

## Масштабирование в браузере

При масштабировании страницы неизбежно появляются артефакты рендеринга в некоторых компонентах как в Bootstrap, так и в остальной части Интернета. В зависимости от проблемы мы можем ее исправить (сначала выполните поиск, а затем при необходимости откройте проблему). Однако мы склонны игнорировать их, поскольку они часто не имеют прямого решения, кроме хитрых обходных путей.

## Валидаторы

Чтобы обеспечить максимальное удобство работы старых браузеров и браузеров с ошибками, Bootstrap использует [хаки браузера CSS](http://browserhacks.com/) в нескольких местах для нацеливания специального CSS на определенные версии браузера, чтобы обойти ошибки в сами браузеры. Эти хаки по понятным причинам заставляют валидаторов CSS жаловаться на их недействительность. В некоторых случаях мы также используем передовые функции CSS, которые еще не полностью стандартизированы, но используются исключительно для прогрессивного улучшения.

Эти предупреждения о проверке не имеют значения на практике, поскольку не-хакерская часть нашего CSS действительно полностью проверяет, а хакерские части не мешают правильному функционированию не-хакерской части, поэтому мы сознательно игнорируем эти конкретные предупреждения.

В наших HTML-документах также есть несколько тривиальных и несущественных предупреждений проверки HTML из-за того, что мы включили обходной путь для [a certain Firefox bug](https://bugzilla.mozilla.org/show_bug.cgi?id=654072).
