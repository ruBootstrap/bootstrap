---
layout: docs
title: RTL
description: Узнайте, как включить поддержку текста с написанием справа налево в Bootstrap для нашего макета, компонентов и утилит.
group: getting-started
toc: true
---

## Разобраться

Мы рекомендуем сначала познакомиться с Bootstrap, прочитав нашу [страницу введения в начало работы]({{< docsref "/getting-started/introduction" >}}). После того, как вы пройдете через это, продолжайте читать здесь, чтобы узнать, как включить RTL.

Вы также можете прочитать [проект RTLCSS](https://rtlcss.com/), поскольку он поддерживает наш подход к RTL.

{{< callout warning >}}
### Экспериментальная функция

Функция RTL все еще **экспериментальная** и, вероятно, будет развиваться в соответствии с отзывами пользователей. Заметили что-то или хотите предложить улучшение? [Открыть проблему]({{< param repo >}}/issues/new), мы будем рады узнать Ваше мнение.
{{< /callout >}}

## Обязательный HTML

Есть два строгих требования для включения RTL на страницах с поддержкой Bootstrap.

1. Установите `dir="rtl"` в элементе `<html>`.
2. Добавьте соответствующий атрибут `lang`, например `lang="ar"`, в элемент `<html>`.

Оттуда Вам нужно будет включить RTL-версию нашего CSS. Например, вот таблица стилей для нашего скомпилированного и миниатюрного CSS с включенным RTL:

```html
<link rel="stylesheet" href="{{< param "cdn.css_rtl" >}}" integrity="{{< param "cdn.css_rtl_hash" >}}" crossorigin="anonymous">
```

### Стартовый шаблон

Вы можете увидеть приведенные выше требования, отраженные в этом модифицированном стартовом шаблоне RTL.

```html
<!doctype html>
<html lang="ar" dir="rtl">
  <head>
    <!-- Обязательные метатеги -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{< param "cdn.css_rtl" >}}" integrity="{{< param "cdn.css_rtl_hash" >}}" crossorigin="anonymous">

    <title>مرحبا بالعالم!</title>
  </head>
  <body>
    <h1>مرحبا بالعالم!</h1>

    <!-- Дополнительный JavaScript; выберите один из двух! -->

    <!-- Вариант 1: пакет Bootstrap с Popper -->
    <script src="{{< param "cdn.js_bundle" >}}" integrity="{{< param "cdn.js_bundle_hash" >}}" crossorigin="anonymous"></script>

    <!-- Вариант 2: отдельные JS для Popper и Bootstrap -->
    <!--
    <script src="{{< param "cdn.popper" >}}" integrity="{{< param "cdn.popper_hash" >}}" crossorigin="anonymous"></script>
    <script src="{{< param "cdn.js" >}}" integrity="{{< param "cdn.js_hash" >}}" crossorigin="anonymous"></script>
    -->
  </body>
</html>
```

### Примеры RTL

Начните с одного из нескольких [примеров RTL]({{< docsref "/examples/#rtl" >}}).

## Подход

Наш подход к созданию поддержки RTL в Bootstrap включает два важных решения, которые влияют на то, как мы пишем и используем наш CSS:

1. **Во-первых, мы решили создать его с помощью проекта [RTLCSS](https://rtlcss.com/).** Это дает нам несколько мощных функций для управления изменениями и переопределениями при переходе от LTR к RTL. Это также позволяет нам создавать две версии Bootstrap из одной кодовой базы.

2. **Во-вторых, мы переименовали несколько классов направлений, чтобы принять подход логических свойств.** Большинство из Вас уже взаимодействовали с логическими свойствами благодаря нашим гибким утилитам - они заменяют свойства направления, такие как `left` и `right` в пользу `start` и `end`. Это делает имена и значения классов подходящими для LTR и RTL без каких-либо накладных расходов.

  Например, вместо `.ml-3` для `margin-left` используйте `.ms-3`.

Однако работа с RTL через наш исходный Sass или скомпилированный CSS не должна сильно отличаться от нашего LTR по умолчанию.

## Настроить из источника

Когда дело доходит до [настройки]({{< docsref "/customize/sass" >}}), предпочтительным способом является использование переменных, карт и миксинов. Этот подход работает одинаково для RTL, даже если он подвергается постобработке из скомпилированных файлов, благодаря [как работает RTLCSS](https://rtlcss.com/learn/getting-started/why-rtlcss/).

### Пользовательские значения RTL

Используя [директивы значений RTLCSS](https://rtlcss.com/learn/usage-guide/value-directives/), Вы можете заставить переменную выводить другое значение для RTL. Например, чтобы уменьшить вес для `$font-weight-bold` во всей кодовой базе, Вы можете использовать синтаксис `/*rtl: {value}*/`:

```scss
$font-weight-bold: 700 #{/* rtl:600 */} !default;
```

Что будет выводиться следующим образом для ваших CSS по умолчанию и RTL CSS:

```css
/* bootstrap.css */
dt {
  font-weight: 700 /* rtl:600 */;
}

/* bootstrap.rtl.css */
dt {
  font-weight: 600;
}
```

### Альтернативный стек шрифтов

Если Вы используете собственный шрифт, имейте в виду, что не все шрифты поддерживают нелатинский алфавит. Чтобы переключиться с панъевропейского семейства на арабское, Вам может потребоваться использовать `/*rtl:insert: {value}*/` в Вашем стеке шрифтов, чтобы изменить имена семейств шрифтов.

Например, чтобы переключиться с `Helvetica Neue Webfont` для LTR на `Helvetica Neue Arabic`, Ваш код Sass будет выглядеть так:

```scss
$font-family-sans-serif:
  Helvetica Neue #{"/* rtl:insert:Arabic */"},
  // Кросс-платформенное общее семейство шрифтов (шрифт пользовательского интерфейса по умолчанию)
  system-ui,
  // Safari для macOS и iOS (San Francisco)
  -apple-system,
  // Chrome < 56 для macOS (Сан-Франциско)
  BlinkMacSystemFont,
  // Windows
  "Segoe UI",
  // Android
  Roboto,
  // Базовый резервный веб-сайт
  Arial,
  // Linux
  "Noto Sans",
  // Резервный вариант без засечек
  sans-serif,
  // Emoji шрифты
  "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji" !default;
```

## Хлебные крошки

[Разделитель хлебных крошек]({{< docsref "/components/breadcrumb" >}}/#разделители) единственный случай, когда требуется собственная новая переменная, а именно `$breadcrumb-divider-flipped`, по умолчанию `$breadcrumb-divider`.

## Дополнительные ресурсы

- [RTLCSS](https://rtlcss.com/)
- [RTL Styling 101](https://rtlstyling.com/posts/rtl-styling)
