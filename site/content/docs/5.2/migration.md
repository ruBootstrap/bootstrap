---
layout: docs
title: Переход на v5
description: Отслеживайте и просматривайте изменения в исходных файлах, документации и компонентах Bootstrap, чтобы помочь Вам перейти с v4 на v5.
group: migration
aliases: "/migration/"
toc: true
---

## v5.3.0

<hr class="mb-4">

### Color modes!

Learn more by reading the new [color modes documentation]({{< docsref "/customize/color-modes" >}}).

- **Global support for light (default) and dark color modes.** Set color mode globally on the `:root` element, on groups of elements and components with a wrapper class, or directly on components, with `data-bs-theme="light|dark"`. Also included is a new `color-mode()` mixin that can output a ruleset with the `data-bs-theme` selector or a media query, depending on your preference.

  <span class="badge text-warning-emphasis bg-warning-subtle">Deprecated</span>  Color modes replace dark variants for components, so  `.btn-close-white`, `.carousel-dark`, `.dropdown-menu-dark`, and `.navbar-dark` are deprecated.

- **New extended color system.** We've added new theme colors (but not in `$theme-colors)`) for a more nuanced, system-wide color palette with new secondary, tertiary, and emphasis colors for `color` and `background-color`. These new colors are available as Sass variables, CSS variables, and utilities.

- We've also expanded our theme color Sass variables, CSS variables, and utilities to include text emphasis, subtle background colors, and subtle border colors. These are available as Sass variables, CSS variables, and utilities.

- Adds new `_variables-dark.scss` stylesheet to house dark-mode specific overrides. This stylesheet should be imported immediately after the existing `_variables.scss` file in your import stack.

  ```diff
  diff --git a/scss/bootstrap.scss b/scss/bootstrap.scss
  index 8f8296def..449d70487 100644
  --- a/scss/bootstrap.scss
  +++ b/scss/bootstrap.scss
  @@ -6,6 +6,7 @@
   // Configuration
   @import "functions";
   @import "variables";
  +@import "variables-dark";
   @import "maps";
   @import "mixins";
   @import "utilities";
  ```

### CSS variables

- Restores CSS variables for breakpoints, though we don't use them in our media queries as they're not supported. However, these can be useful in JS-specific contexts.

- Per the color modes update, we've added new utilities for new Sass CSS variables `secondary` and `tertiary` text and background colors, plus `{color}-bg-subtle`, `{color}-border-subtle`, and `{color}-text` for our theme colors. These new colors are available through Sass and CSS variables (but not our color maps) with the express goal of making it easier to customize across multiple colors modes like light and dark.

- Adds additional variables for alerts, `.btn-close`, and `.offcanvas`.

- The `--bs-heading-color` variable is back with an update and dark mode support. First, we now check for a `null` value on the associated Sass variable, `$headings-color`, before trying to output the CSS variable, so by default it's not present in our compiled CSS. Second, we use the CSS variable with a fallback value, `inherit`, allowing the original behavior to persist, but also allowing for overrides.

- Converts links to use CSS variables for styling `color`, but not `text-decoration`. Colors are now set with `--bs-link-color-rgb` and `--bs-link-opacity` as `rgba()` color, allowing you to customize the translucency with ease. The `a:hover` pseudo-class now overrides `--bs-link-color-rgb` instead of explicitly setting the `color` property.

- `--bs-border-width` is now being used in more components for greater control over default global styling.

- Adds new root CSS variables for our `box-shadow`s, including `--bs-box-shadow`, `--bs-box-shadow-sm`, `--bs-box-shadow-lg`, and `--bs-box-shadow-inset`.

### Components

#### Alert

- Alert variants are now styled via CSS variables.

- <span class="badge text-warning-emphasis bg-warning-subtle">Deprecated</span> The `.alert-variant()` mixin is now deprecated. We now [use the Sass loop]({{< docsref "/components/alerts#sass-loop" >}}) directly to modify the component's default CSS variables for each variant.

#### List group

- List group item variants are now styled via CSS variables.

- <span class="badge text-warning-emphasis bg-warning-subtle">Deprecated</span> The `.list-group-variant()` mixin is now deprecated. We now [use the Sass loop]({{< docsref "/components/list-group#sass-loop" >}}) directly to modify the component's default CSS variables for each variant.

#### Close button

- <span class="badge text-warning-emphasis bg-warning-subtle">Deprecated</span> The `.btn-close-white` class has been deprecated and replaced with `data-bs-theme="dark"` on the close button or any parent element. [See the docs for an example.]({{< docsref "/components/close-button#dark-variant" >}})

#### Navbar

- <span class="badge text-warning-emphasis bg-warning-subtle">Deprecated</span> The `.navbar-dark` class has been deprecated and replaced with `data-bs-theme="dark"` on the navbar or any parent element. [See the docs for updated examples.]({{< docsref "/components/navbar#color-schemes" >}})

### Progress bars

The markup for [progress bars]({{< docsref "/components/progress" >}}) has been updated in v5.3.0. Due to the placement of `role` and various `aria-` attributes on the inner `.progress-bar` element, **some screen readers were not announcing zero value progress bars**. Now, `role="progressbar"` and the relevant `aria-*` attributes are on the outer `.progress` element, leaving the `.progress-bar` purely for the visual presentation of the bar and optional label.

While we recommend adopting the new markup for improved compatibility with all screen readers, note that the legacy progress bar structure will continue to work as before.

```html
<!-- Previous markup -->
<div class="progress">
  <div class="progress-bar" role="progressbar" aria-label="Basic example" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>

<!-- New markup -->
<div class="progress" role="progressbar" aria-label="Basic example" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
  <div class="progress-bar" style="width: 25%"></div>
</div>
```

We've also introduced a new `.progress-stacked` class to more logically wrap [multiple progress bars]({{< docsref "/components/progress#multiple-bars" >}}) into a single stacked progress bar.

```html
<!-- Previous markup -->
<div class="progress">
  <div class="progress-bar" role="progressbar" aria-label="Segment one" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
  <div class="progress-bar bg-success" role="progressbar" aria-label="Segment two" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
  <div class="progress-bar bg-info" role="progressbar" aria-label="Segment three" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
</div>

<!-- New markup -->
<div class="progress-stacked">
  <div class="progress" role="progressbar" aria-label="Segment one" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" style="width: 15%">
    <div class="progress-bar"></div>
  </div>
  <div class="progress" role="progressbar" aria-label="Segment two" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
    <div class="progress-bar bg-success"></div>
  </div>
  <div class="progress" role="progressbar" aria-label="Segment three" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
    <div class="progress-bar bg-info"></div>
  </div>
</div>
```

### Forms

- `.form-control` is now styled with CSS variables to support color modes. This includes the addition of two new root CSS variables for the default and disabled form control backgrounds.

- `.form-check` and `.form-switch` components are now built with CSS variables for setting the `background-image`. The usage here differs from other components in that the various focus, active, etc states for each component aren't set on the base class. Instead, the states override one variable (e.g., `--bs-form-switch-bg`).

- Floating form labels now have a `background-color` to fix support for `<textarea>` elements. Additional changes have been made to also support disabled states and more.

- Fixed display of date and time inputs in WebKit based browsers.

### Utilities

- <span class="badge text-warning-emphasis bg-warning-subtle">Deprecated</span> `.text-muted` will be be replaced by `.text-body-secondary` in v6.

  With the addition of the expanded theme colors and variables, the `.text-muted` variables and utility have been deprecated with v5.3.0. Its default value has also has been reassigned to the new `--bs-secondary-color` CSS variable to better support color modes. It will be removed in v6.0.0.

- Adds new `.overflow-x`, `.overflow-y`, and several `.object-fit-*` utilities. _The object-fit property is used to specify how an `<img>` or `<video>` should be resized to fit its container, giving us a responsive alternative to using `background-image` for a resizable fill/fit image._

- Adds new `.fw-medium` utility.

- Added new [`.z-*` utilities]({{< docsref "/utilities/z-index" >}}) for `z-index`.

- [Box shadow utilities]({{< docsref "/utilities/shadows" >}}) (and Sass variables) have been updated for dark mode. They now use `--bs-body-color-rgb` to generate the `rgba()` color values, allowing them to easily adapt to color modes based on the specified foreground color.

For a complete list of changes, [see the v5.3.0 project on GitHub](https://github.com/twbs/bootstrap/projects/).

## v5.2.0

<hr class="mb-4">

### Обновленный дизайн

В Bootstrap версии 5.2.0 представлено тонкое обновление дизайна для нескольких компонентов и свойств по всему проекту, **в первую очередь за счет уточненных значений `border-radius` на кнопках и элементах управления формы**. Наша документация также была обновлена за счет новой домашней страницы, более простого макета документов, который больше не сворачивает разделы боковой панели, и более заметных примеров [Иконок Bootstrap](https://icons.getbootstrap.su).

### Дополнительные переменные CSS

**Мы обновили все наши компоненты, чтобы использовать переменные CSS.** Хотя Sass по-прежнему лежит в основе всего, каждый компонент был обновлен, чтобы включить переменные CSS в базовые классы компонентов (например, `.btn`), что позволяет более реально временная настройка Bootstrap. В последующих выпусках мы продолжим расширять использование переменных CSS в нашем макете, формах, помощниках и утилитах. Узнайте больше о переменных CSS в каждом компоненте на соответствующих страницах документации.

Наше использование переменных CSS будет несколько неполным до Bootstrap 6. Хотя мы хотели бы полностью реализовать их по всем направлениям, они рискуют вызвать критические изменения. Например, установка `$alert-border-width: var(--bs-border-width)` в нашем исходном коде нарушает потенциал Sass в вашем собственном коде, если вы делали `$alert-border-width * 2` для некоторых причин.

Таким образом, везде, где это возможно, мы продолжим продвигать больше переменных CSS, но, пожалуйста, имейте в виду, что наша реализация может быть немного ограничена в v5.

### Новый `_maps.scss`

**Bootstrap v5.2.0 представил новый файл Sass с `_maps.scss`.** Он извлекает несколько карт Sass из `_variables.scss`, чтобы исправить проблему, из-за которой обновления исходной карты не применялись к вторичным картам, которые расширяют их. Например, обновления для `$theme-colors` не применялись к другим картам тем, которые основывались на `$theme-colors`, что нарушало основные рабочие процессы настройки. Короче говоря, у Sass есть ограничение: после того, как переменная или карта по умолчанию были _использованы_, их нельзя обновить. _Есть аналогичный недостаток с переменными CSS, когда они используются для составления других переменных CSS._

Вот почему настройки переменных в Bootstrap должны идти после `@import "functions"`, но перед `@import "variables"` и остальной частью нашего стека импорта. То же самое относится и к картам Sass — вы должны переопределить значения по умолчанию, прежде чем они будут использоваться. Следующие карты были перемещены в новый `_maps.scss`:

- `$theme-colors-rgb`
- `$utilities-colors`
- `$utilities-text`
- `$utilities-text-colors`
- `$utilities-bg`
- `$utilities-bg-colors`
- `$negative-spacers`
- `$gutters`

Ваши пользовательские сборки Bootstrap CSS теперь должны выглядеть примерно так с отдельным импортом карт.

```diff
  // Functions come first
  @import "functions";
  // Optional variable overrides here
+ $custom-color: #df711b;
+ $custom-theme-colors: (
+   "custom": $custom-color
+ );
  // Variables come next
  @import "variables";
+ // Optional Sass map overrides here
+ $theme-colors: map-merge($theme-colors, $custom-theme-colors);
+
+ // Followed by our default maps
+ @import "maps";
+
  // Rest of our imports
  @import "mixins";
  @import "utilities";
  @import "root";
  @import "reboot";
  // etc
```

### Новые утилиты

- Расширены [`font-weight` utilities]({{< docsref "/utilities/text#font-weight-and-italics" >}}) для включения `.fw-semibold` для полужирных шрифтов.
- Расширены [`border-radius` utilities]({{< docsref "/utilities/borders#sizes" >}}), чтобы включить два новых размера, `.rounded-4` и `.rounded-5`, для большего количества опций.

### Дополнительные изменения

- **Введена новая опция `$enable-container-classes`. —** Теперь при выборе экспериментального макета CSS Grid классы, `.container-*` по-прежнему будут скомпилированы, если для этого параметра не установлено значение `false`. Контейнеры также теперь сохраняют свои значения промежутков.

- **Компонент Offcanvas теперь имеет [отзывчивые варианты]({{< docsref "/components/offcanvas#responsive" >}}).** Исходный класс `.offcanvas` остается неизменным — он скрывает содержимое во всех окнах просмотра. Чтобы сделать его отзывчивым, измените этот класс `.offcanvas` на любой класс `.offcanvas-{sm|md|lg|xl|xxl}`.

- **Более толстые разделители столов теперь доступны по желанию. —** Мы удалили более толстую и трудную для переопределения границу между группами таблиц и переместили ее в необязательный класс, который вы можете применить, `.table-group-divider`. [Смотрите пример документации таблицы.]({{< docsref "/content/tables#table-group-dividers" >}})

- **[Scrollspy был переписан](https://github.com/twbs/bootstrap/pull/33421) для использования Intersection Observer API**, что означает, что вам больше не нужны относительные родительские оболочки, устарела конфигурация `offset` и другие. Обратите внимание на то, чтобы ваши реализации Scrollspy были более точными и последовательными в подсветке навигации.

- **Всплывающие окна и Всплывающие подсказки теперь используют переменные CSS.** Некоторые переменные CSS были обновлены по сравнению с их аналогами Sass, чтобы уменьшить количество переменных. В результате в этом выпуске устарели три переменные: `$popover-arrow-color`, `$popover-arrow-outer-color` и `$tooltip-arrow-color`.

- **Добавлены новые помощники `.text-bg-{color}`.** Вместо того, чтобы устанавливать отдельные утилиты `.text-*` и `.bg-*`, теперь вы можете использовать [хелперы `.text-bg-*`]({{< docsref "helpers/color-background" >}}), чтобы установить `background-color` с контрастным `color` переднего плана.

- Добавлен модификатор `.form-check-reverse` для изменения порядка меток и связанных с ними флажков/радио.

- Добавлена поддержка [полосатых столбцов]({{< docsref "/content/tables#striped-columns" >}}) для таблиц через новый класс `.table-striped-columns`.

Полный список изменений [смотрите в проекте версии 5.2.0 на GitHub](https://github.com/twbs/bootstrap/projects/32).

## v5.1.0

<hr class="mb-4">

- **Добавлена ​​экспериментальная поддержка [макета CSS Grid]({{< docsref "/layout/css-grid" >}}). —** Это находится в стадии разработки и еще не готово к использованию в производственной среде, но вы можете включить новую функцию через Sass. Чтобы включить его, отключите сетку по умолчанию, установив `$enable-grid-classes: false`, и включите сетку CSS, установив `$enable-cssgrid: true`.

- **Обновлены панели навигации для поддержки offcanvas. —** Добавьте [offcanvas drawers в любую панель навигации]({{< docsref "/components/navbar#offcanvas" >}}) с адаптивными классами `.navbar-expand-*` и некоторой разметкой offcanvas.

- **Добавлен новый [компонент-заполнитель]({{< docsref "/components/placeholders/" >}}). —** Наш новейший компонент, способ предоставления временных блоков вместо реального контента, чтобы показать, что что-то все еще загружается на вашем сайте или в приложении.

- **Плагин Collapse теперь поддерживает [горизонтальное сворачивание]({{< docsref "/components/collapse#horizontal" >}}). —** Добавьте `.collapse-horizontal` к вашему `.collapse`, чтобы свернуть `width` вместо `height`. Избегайте перерисовки браузера, устанавливая `min-height` или `height`.

- **Добавлены новые помощники стека и вертикального правила. —** Быстро применяйте несколько свойств flexbox для быстрого создания пользовательских макетов с помощью [стеков]({{< docsref "/helpers/stacks/" >}}). Выберите один из горизонтальных (`.hstack`) и вертикальных (`.vstack`) стеков. Добавьте вертикальные разделители, похожие на элементы `<hr>`, с помощью [новых помощников `.vr`]({{< docsref "/helpers/vertical-rule/" >}}).

- **Добавлены новые глобальные CSS-переменные `:root`. —** Добавлено несколько новых переменных CSS на уровень `:root` для управления стилями `<body>`. В разработке находится больше, в том числе в отношении наших утилит и компонентов, но пока прочитайте [CSS-переменные в разделе «Кастомизация»]({{< docsref "/customize/css-variables/" >}}).

- **Переработаны утилиты цвета и фона для использования переменных CSS, а также добавлены новые утилиты [непрозрачность текста]({{< docsref "/utilities/text#opacity" >}}) и [непрозрачность фона]({{< docsref "/utilities/background#opacity" >}}). —** Утилиты `.text-*` и `.bg-*` теперь создаются с переменными CSS и значениями цвета `rgba()`, что позволяет легко настраивать любую утилиту с помощью новых утилит непрозрачности.

- **Добавлены новые примеры фрагментов, демонстрирующие, как настраивать наши компоненты. —** Получите готовые к использованию настраиваемые компоненты и другие распространенные шаблоны проектирования с нашими новыми [примерами фрагментов]({{< docsref "/examples#snippets" >}}). Включает [футеры]({{< docsref "/examples/footers/" >}}), [выпадающие списки]({{< docsref "/examples/dropdowns/" >}}), [группы списков]({{< docsref "/examples/list-groups/" >}}), и [модальные окна]({{< docsref "/examples/modals/" >}}).

- **Удалены неиспользуемые стили позиционирования из всплывающих окон и всплывающих подсказок**, так как они обрабатываются исключительно Popper. `$tooltip-margin` устарел и установлен в `null` в процессе.

Хотите больше информации? [Прочитайте сообщение в блоге о версии 5.1.0.](https://blog.getbootstrap.com/2021/08/04/bootstrap-5-1-0/)

<hr class="my-5">

{{< callout info >}}
**Привет!** Ниже задокументированы изменения в нашем первом крупном выпуске Bootstrap 5 v5.0.0. Они не отражают дополнительные изменения, показанные выше.
{{< /callout >}}

## Зависимости

- Удален jQuery.
- Обновлен с Popper v1.x до Popper v2.x.
- Заменен Libsass на Dart Sass в качестве нашего компилятора Sass, учитывая, что Libsass устарел.
- Мигрировал с Jekyll на Hugo для создания нашей документации.

## Поддержка браузера

- Удален Internet Explorer 10 и 11
- Удален Microsoft Edge < 16 (Legacy Edge)
- Удален Firefox < 60
- Удален Safari < 10
- Удален iOS Safari < 10
- Удален Chrome < 60

<hr class="my-5">

## Изменения в документации

- Обновленная домашняя страница, макет документации и нижний колонтитул.
- Добавлено [новое руководство по Parcel]({{< docsref "/getting-started/parcel" >}}).
- Добавлен [новый раздел настройки]({{< docsref "/customize/overview" >}}), заменяющий [страницу темы v4's](https://getbootstrap.su/docs/4.6/getting-started/theming/), с новыми подробностями о Sass, опциями глобальной конфигурации, цветовыми схемами, переменными CSS и многим другим.
- Реорганизована вся документация по формам в [новый раздел форм]({{< docsref "/forms/overview" >}}), разделив содержание на более сфокусированные страницы.
- Аналогичным образом обновлен [раздел макетов]({{< docsref "/layout/breakpoints" >}}), чтобы более четко обозначить содержимое сетки.
- Страница компонента "Навигация" переименована в "Навигация и вкладки".
- Страница "Чекбоксы" переименована в "Чекбоксы и радио".
- Переработана навигационная панель и добавлена новая поднавигация, чтобы упростить просмотр наших сайтов и версий документации.
- Добавлено новое сочетание клавиш для поля поиска: <kbd><kbd>Ctrl</kbd> + <kbd>/</kbd></kbd>.

## Sass

- Мы отказались от слияния карт Sass по умолчанию, чтобы упростить удаление избыточных значений. Имейте в виду, что теперь вам нужно определить все значения в картах Sass, например `$theme-colors`. Узнайте, как работать с [картами Sass]({{< docsref "/customize/sass#maps-and-loops" >}}).

- <span class="badge bg-danger">Breaking</span> Переименована функция `color-yiq()` и связанные переменные переименованы в `color-contrast()`, поскольку она больше не связана с цветовым пространством YIQ. [Смотрите #30168.](https://github.com/twbs/bootstrap/pull/30168/)
  - `$yiq-contrasted-threshold` переименован в `$min-contrast-ratio`.
  - `$yiq-text-dark` и `$yiq-text-light` соответственно переименованы в `$color-contrast-dark` и `$color-contrast-light`.

- <span class="badge bg-danger">Breaking</span> Параметры миксинов медиа-запросов изменены для более логичного подхода.
  - `media-breakpoint-down()` использует саму контрольную точку вместо следующей контрольной точки (например, `media-breakpoint-down(lg)` вместо `media-breakpoint-down(md)` цели области просмотра меньше, чем `lg`).
  - Точно так же второй параметр в `media-breakpoint-between()` также использует саму контрольную точку вместо следующей контрольной точки (например, `media-between(sm, lg)` вместо `media-breakpoint-between(sm, md)` цели области просмотра между `sm` и `lg`).

- <span class="badge bg-danger">Breaking</span> Удалены стили печати и переменная `$enable-print-styles`. Классы отображения печати все еще существуют. [Смотрите #28339](https://github.com/twbs/bootstrap/pull/28339).

- <span class="badge bg-danger">Breaking</span> Отказ от функций `color()`, `theme-color()` и `gray()` в пользу переменных. [Смотрите #29083](https://github.com/twbs/bootstrap/pull/29083).

- <span class="badge bg-danger">Breaking</span> Функция `theme-color-level()` переименована в `color-level()` и теперь принимает любой цвет, который вы хотите, вместо только `$theme-color` цвета. [Смотрите #29083](https://github.com/twbs/bootstrap/pull/29083) **Остерегайтесь:** `color-level()` позже был удален в `v5.0.0-alpha3`.

- <span class="badge bg-danger">Breaking</span> Переименованы `$enable-prefers-reduced-motion-media-query` и `$enable-pointer-cursor-for-buttons` в `$enable-reduced-motion` и `$enable-button-pointers` для краткости.

- <span class="badge bg-danger">Breaking</span> Удален миксин `bg-gradient-variant()`. Используйте класс `.bg-gradient` для добавления градиентов к элементам вместо сгенерированных классов `.bg-gradient-*`.

- <span class="badge bg-danger">Breaking</span> **Удалены ранее устаревшие миксины:**
  - `hover`, `hover-focus`, `plain-hover-focus` и `hover-focus-active`
  - `float()`
  - `form-control-mixin()`
  - `nav-divider()`
  - `retina-img()`
  - `text-hide()` (также удален связанный класс утилит, `.text-hide`)
  - `visibility()`
  - `form-control-focus()`

- <span class="badge bg-danger">Breaking</span> Функция `scale-color()` переименована в `shift-color()`, чтобы избежать столкновения с собственной функцией масштабирования цвета Sass.

- Примеси `box-shadow` теперь допускают `null` значения и отбрасывают `none` из нескольких аргументов. [Смотрите #30394](https://github.com/twbs/bootstrap/pull/30394).

- Примесь `border-radius()` теперь имеет значение по умолчанию.

## Цветовая система

- Цветовая система, которая работала с `color-level()` и `$theme-color-interval`, была удалена в пользу новой цветовой системы. Все функции `lighten()` и `darken()` в нашей кодовой базе заменены на `tint-color()` и `shade-color()`. Эти функции будут смешивать цвет с белым или черным вместо изменения его яркости на фиксированную величину. `shift-color()` будет либо подкрашивать, либо затенять цвет в зависимости от того, является ли его параметр веса положительным или отрицательным. [Смотрите #30622](https://github.com/twbs/bootstrap/pull/30622) для получения дополнительных сведений.

- Добавлены новые оттенки и оттенки для каждого цвета, предоставляя девять отдельных цветов для каждого основного цвета в качестве новых переменных Sass.

- Улучшен цветовой контраст. Коэффициент цветовой контрастности увеличен с 3:1 до 4.5:1 и обновлены синий, зеленый, голубой и розовый цвета, чтобы обеспечить контраст WCAG 2.1 AA. Также изменен цвет нашего цветового контраста с `$gray-900` на `$black`.

- Для поддержки нашей цветовой системы мы добавили новые пользовательские функции `tint-color()` и `shade-color()` для правильного смешивания цвето.

## Обновления сетки

- **Новая контрольная точка!** Добавлена новая контрольная точка `xxl` для `1400px` и выше. Никаких изменений для всех остальных контрольных точек.

- **Улучшенные промежутки.** Промежутки теперь устанавливаются в ремах, и они уже, чем v4 (`1.5rem`, или примерно `24px`, по сравнению с `30px`). Это выравнивает промежутки нашей сеточной системы с нашими утилитами интервала.
  - Добавлен новый [класс gutter]({{< docsref "/layout/gutters" >}}) (`.g-*`, `.gx-*` и `.gy-*`) для управления горизонтальным / вертикальные промежутки, горизонтальные промежутки и вертикальные промежутки.
  - <span class="badge bg-danger">Breaking</span> `.no-gutters` переименован в `.g-0`, чтобы соответствовать новым утилитам промежутков.

- К столбцам больше не применяется `position: relative`, поэтому вам, возможно, придется добавить `.position-relative` к некоторым элементам, чтобы восстановить это поведение.

- <span class="badge bg-danger">Breaking</span> Удалили несколько классов `.order-*`, которые часто не использовались. Теперь из коробки мы предоставляем только от `.order-1` до `.order-5`.

- <span class="badge bg-danger">Breaking</span> Отказ от компонента `.media`, так как его можно легко воспроизвести с помощью утилит. [Смотрите #28265](https://github.com/twbs/bootstrap/pull/28265) и [страница гибких утилит для примера]({{< docsref "/utilities/flex#media-object" >}}).

- <span class="badge bg-danger">Breaking</span> `bootstrap-grid.css` теперь применяет к столбцу только `box-sizing: border-box` вместо сброса глобального размера поля. Таким образом, наши стили сетки можно использовать в большем количестве мест без помех.

- `$enable-grid-classes` больше не отключает создание контейнерных классов. [Смотрите #29146.](https://github.com/twbs/bootstrap/pull/29146)

- Обновлен миксин `make-col` по умолчанию для равных столбцов без указанного размера.

## Контент, перезагрузка и т. д

- **[RFS]({{< docsref "/getting-started/rfs" >}}) теперь включен по умолчанию.** Заголовки, использующие миксин `font-size()`, автоматически изменят свой `font-size` масштабировать вместе с окном просмотра. _Эта функция ранее была включена в v4._

- <span class="badge bg-danger">Breaking</span> Переработана типография дисплея, заменив переменные `$display-*` на карту Sass `$display-font-sizes`. Также удалены отдельные переменные `$display-*-weight` для одного `$display-font-weight` и скорректированы `font-size`s.

- Добавлены два новых размера заголовков `.display-*`, `.display-5` и `.display-6`.

- **Ссылки по умолчанию подчеркнуты** (не только при наведении курсора), если они не являются частью определенных компонентов.

- **Переработанные таблицы**, чтобы обновить их стили и перестроить их с помощью переменных CSS для большего контроля над стилями.

- <span class="badge bg-danger">Breaking</span> Вложенные таблицы больше не наследуют стили.

- <span class="badge bg-danger">Breaking</span> `.thead-light` и `.thead-dark` удаляются в пользу классов-вариантов `.table-*`, которые могут использоваться для всех элементов таблицы (`thead`, `tbody`, `tfoot`, `tr`, `th` и `td`).

- <span class="badge bg-danger">Breaking</span> Примесь `table-row-variant()` переименована в `table-variant()` и принимает только 2 параметра: `$color` (название цвета) и `$value` (цветовой код). Цвет границы и цвета акцента вычисляются автоматически на основе переменных фактора таблицы.

- Разделены переменные заполнения ячеек таблицы на `-y` и `-x`.

- <span class="badge bg-danger">Breaking</span> Удален класс `.pre-scrollable`. [Смотрите #29135](https://github.com/twbs/bootstrap/pull/29135)

- <span class="badge bg-danger">Breaking</span> Утилиты `.text-*` больше не добавляют к ссылкам состояния наведения и фокуса. Вместо этого можно использовать вспомогательные классы `.link-*`. [Смотрите #29267](https://github.com/twbs/bootstrap/pull/29267)

- <span class="badge bg-danger">Breaking</span> Удален класс `.text-justify`. [Смотрите #29793](https://github.com/twbs/bootstrap/pull/29793)

- <span class="badge bg-danger">Breaking</span> элементы ~~`<hr>` теперь используют `height` вместо `border`, чтобы лучше поддерживать атрибут `size`. Это также позволяет использовать утилиты заполнения для создания более толстых разделителей (например, `<hr class="py-1">`).~~

- Сбросить по умолчанию горизонтальный `padding-left` для элементов `<ul>` и `<ol>` с `40px` по умолчанию браузера на `2rem`.

- Добавлен `$enable-smooth-scroll`, который применяет `scroll-behavior: smooth` глобально, за исключением пользователей, запрашивающих уменьшение движения с помощью медиа-запроса `prefers-reduced-motion`. [Смотрите #31877](https://github.com/twbs/bootstrap/pull/31877)

## RTL

- Переменные, утилиты и миксины, зависящие от горизонтального направления, были переименованы для использования логических свойств, подобных тем, которые присутствуют в макетах flexbox, например, `start` и `end` вместо `left` и `right`.

## Формы

- **Добавлены новые плавающие формы!** Мы продвинули пример с плавающими метками до полностью поддерживаемых компонентов формы. [Смотрите новую страницу «Плавающие метки».]({{< docsref "/forms/floating-labels" >}})

- <span class="badge bg-danger">Breaking</span> **Объединенные собственные и настраиваемые элементы формы.** Флажки, радио, выборки и другие входные данные, которые имели собственные и настраиваемые классы в версии 4, были объединены. Теперь почти все наши элементы формы полностью настраиваемые, для большинства из них не требуется настраиваемый HTML.
  - `.custom-control.custom-checkbox` теперь называется `.form-check`.
  - `.custom-control.custom-custom-radio` теперь называется `.form-check`.
  - `.custom-control.custom-switch` теперь называется `.form-check.form-switch`.
  - `.custom-select` теперь называется `.form-select`.
  - `.custom-file` и `.form-file` были заменены пользовательскими стилями поверх `.form-control`.
  - `.custom-range` теперь называется `.form-range`.
  - Удалены нативные `.form-control-file` и `.form-control-range`.

- <span class="badge bg-danger">Breaking</span> Удалены `.input-group-append` и `.input-group-prepend`. Теперь вы можете просто добавить кнопки и `.input-group-text` в качестве прямых потомков групп ввода.

- Давний [Отсутствующий радиус границы в группе ввода с ошибкой обратной связи с проверкой](https://github.com/twbs/bootstrap/issues/25110), наконец, исправлен путем добавления дополнительного класса `.has-validation` во входные группы с проверкой.

- <span class="badge bg-danger">Breaking</span> **Исключены классы макета, специфичные для формы, для нашей системы сеток.** Используйте нашу сетку и утилиты вместо `.form-group`, `.form-row` или `.form-inline`.

- <span class="badge bg-danger">Breaking</span> Метки форм теперь требуют `.form-label`.

- <span class="badge bg-danger">Breaking</span> `.form-text` больше не устанавливает `display`, позволяя вам создавать встроенный или блокировать текст справки по вашему желанию, просто изменяя элемент HTML.

- Иконки валидации больше не применяются к элементам `<select>` с параметром `multiple`.

- Элементы управления формой больше не использовали фиксированную `height` когда это было возможно, вместо этого откладывали `min-height` для улучшения настройки и совместимости с другими компонентами.

- Переставлены исходные файлы Sass в `scss/forms/`, включая стили группы ввода.

<hr class="my-5">

## Компоненты

- Унифицированные значения `padding` для предупреждений, хлебных крошек, карточек, раскрывающихся списков, групп списков, модальных окон, всплывающих окон и всплывающих подсказок должны основываться на нашей переменной `$spacer`. [Смотрите #30564](https://github.com/twbs/bootstrap/pull/30564).

### Аккордеон

- Добавлен [новый компонент аккордеона]({{< docsref "/components/accordion" >}}!

### Оповещения

- В оповещениях теперь есть [примеры с иконками]({{< docsref "/components/alerts#icons" >}}).

- Удалены пользовательские стили для `<hr>` в каждом оповещении, поскольку они уже используют `currentColor`.

### Значки

- <span class="badge bg-danger">Breaking</span> Удалены все классы цвета `.badge-*` для фоновых утилит (например, используйте `.bg-primary` вместо `.badge-primary`).

- <span class="badge bg-danger">Breaking</span> Удалено `.badge-pill`используйте вместо нее утилиту `.rounded-pill`.

- <span class="badge bg-danger">Breaking</span> Удалены стили наведения и фокуса для элементов `<a>` и `<button>`.

- Увеличено заполнение по умолчанию для значков с `.25em`/`.5em` до `.35em`/`.65em`.

### Хлебные крошки

- Упрощен внешний вид хлебных крошек по умолчанию, удалив `padding`, `background-color` и `border-radius`.

- Добавлено новое настраиваемое свойство CSS `--bs-breadcrumb-divider` для легкой настройки без перекомпиляции CSS.

### Кнопки

- <span class="badge bg-danger">Breaking</span> **[Кнопки переключения]({{< docsref "/forms/checks-radios#toggle-buttons" >}}), с флажками или радио, больше не требуют JavaScript и имеют новую разметку.** Нам больше не нужен элемент-оболочка, добавьте `.btn-check` в `<input>`, и соедините его с любыми классами `.btn` в `<label>`. [Смотрите #30650](https://github.com/twbs/bootstrap/pull/30650). _Документация по этому поводу перемещена со страницы «Кнопки» в новый раздел «Формы»._

- <span class="badge bg-danger">Breaking</span> **Удален `.btn-block` для утилит.** Вместо используйте `.btn-block` в `.btn`, оберните ваши кнопки с `.d-grid` и `.gap-*` утилитами для размещения их по мере необходимости. Переключитесь на отзывчивые классы, чтобы получить еще больший контроль над ними. [Прочтите документацию для некоторых примеров.]({{< docsref "/components/buttons#block-buttons" >}})

- Обновлены миксины `button-variant()` и `button-outline-variant()` для поддержки дополнительных параметров.

- Обновлены кнопки для увеличения контраста при наведении и активном состоянии.

- Отключенные кнопки теперь имеют `pointer-events: none;`.

### Карточка

- <span class="badge bg-danger">Breaking</span> Отказались от `.card-deck` в пользу нашей сетки. Оберните ваши карты в классы колонок и добавьте родительский контейнер `.row-cols-*`, чтобы воссоздать колоды карт (но с большим контролем над выравниванием).

- <span class="badge bg-danger">Breaking</span> Отказались от `.card-columns` в пользу Masonry. [Смотрите #28922](https://github.com/twbs/bootstrap/pull/28922).

- <span class="badge bg-danger">Breaking</span> Заменен аккордеон на основе `.card` на [новый компонент Accordion]({{< docsref "/components/accordion" >}}).

### Карусель

- Добавлен новый [вариант `.carousel-dark`]({{< docsref "/components/carousel#dark-variant" >}}) для темного текста, элементов управления и индикаторов (отлично подходит для более светлого фона).

- Шевронные иконки для элементов управления каруселью заменены новыми SVG из [Bootstrap Icons]({{< param "icons" >}}).

### Кнопка закрытия

- <span class="badge bg-danger">Breaking</span> `.close` переименован в `.btn-close` для менее общего названия.

- Кнопки закрытия теперь используют `background-image` (встроенный SVG) вместо `&times;` в HTML, что позволяет упростить настройку без необходимости касаться вашей разметки.

- Добавлен новый вариант `.btn-close-white`, который использует `filter: invert(1)` для включения более контрастных иконок удаления на более темном фоне.

### Сворачиваемое

- Убрана привязка скролла для аккордеонов.

### Выпадающие списки

- Добавлен новый вариант `.dropdown-menu-dark` и связанные переменные для темных выпадающих списков по запросу.

- Добавлена новая переменная для `$dropdown-padding-x`.

- Затемнен разделитель раскрывающегося списка для улучшения контраста.

- <span class="badge bg-danger">Breaking</span> Все события для раскрывающегося списка теперь запускаются на кнопке-переключателе раскрывающегося списка, а затем всплывают до родительского элемента.

- Выпадающие меню теперь имеют атрибут `data-bs-popper="static"`, установленный, когда положение раскрывающегося списка является статическим или раскрывающийся список находится на панели навигации. Это добавлено нашим JavaScript и помогает нам использовать настраиваемые стили положения, не мешая позиционированию Popper.

- <span class="badge bg-danger">Breaking</span> Исключена опция `flip` для плагина раскрывающегося списка в пользу собственной конфигурации Popper. Теперь вы можете отключить поведение переворачивания, передав пустой массив для параметра [`fallbackPlacements`](https://popper.js.org/docs/v2/modifiers/flip/#fallbackplacements) в [flip](https://popper.js.org/docs/v2/modifiers/flip/) модификатор.

- На раскрывающиеся меню теперь можно щелкнуть с помощью новой опции `autoClose` для обработки [поведения автоматического закрытия]({{< docsref "/components/dropdowns#auto-close-behavior" >}}). Вы можете использовать этот параметр, чтобы принять щелчок внутри или за пределами раскрывающегося меню, чтобы сделать его интерактивным.

- Выпадающие списки теперь поддерживают `.dropdown-item`, заключенные в `<li>`.

### Джамботрон

- <span class="badge bg-danger">Breaking</span> Убрали компонент jumbotron, так как его можно повторить с помощью утилит. [Смотрите наш новый пример Jumbotron для демонстрации.]({{< docsref "/examples/jumbotron" >}})

### Группа списка

- Добавлен новый [модификатор `.list-group-numbered`]({{< docsref "/components/list-group#numbered" >}}) в список групп.

### Навигация и табы

- Добавлены новые переменные `null` для `font-size`, `font-weight`, `color` и `:hover` `color` в класс `.nav-link`.

### Панели навигации

- <span class="badge bg-danger">Breaking</span> Навбарам теперь требуется контейнер внутри (чтобы значительно упростить требования к интервалам и CSS).
- <span class="badge bg-danger">Breaking</span> Класс `.active` больше нельзя применять к элементам `.nav-item`, его необходимо применять непосредственно к элементам `.nav-link`.

### Offcanvas

- Добавлен новый [компонент offcanvas]({{< docsref "/components/offcanvas" >}}).

### Пагинация

- Ссылки на страницы теперь имеют настраиваемое поле `margin-left`, которое динамически округляется по всем углам, когда они отделены друг от друга.

- Добавлен переход `transition` по ссылкам для пагинации.

### Поповеры

- <span class="badge bg-danger">Breaking</span> В нашем шаблоне всплывающего окна по умолчанию `.arrow` переименован в `.popover-arrow`.

- Параметр `whiteList` переименован в `allowList`.

### Спиннеры

- Спиннеры теперь учитывают `prefers-reduced-motion: reduce`, замедляя анимацию. [Смотрите #31882](https://github.com/twbs/bootstrap/pull/31882).

- Улучшено вертикальное выравнивание спиннера.

### Тосты

- Теперь тосты можно [позиционировать]({{< docsref "/components/toasts#placement" >}}) в `.toast-container` с помощью [утилит позиционирования]({{< docsref "/utilities/position" >}}).

- Изменена длительность тоста по умолчанию на 5 секунд.

- Удалено `overflow: hidden` из тостов и заменено правильным `border-radius` с функциями `calc()`.

### Тултипы

- <span class="badge bg-danger">Breaking</span> В нашем шаблоне всплывающей подсказки по умолчанию `.arrow` переименован в `.tooltip-arrow`.

- <span class="badge bg-danger">Breaking</span> Значение по умолчанию для `fallbackPlacements` изменено на `['top', 'right', 'bottom', 'left']` для лучшего размещения элементов.

- <span class="badge bg-danger">Breaking</span> Параметр `whiteList` переименован в `allowList`.

## Утилиты

- <span class="badge bg-danger">Breaking</span> Переименовано несколько утилит для использования логических имен свойств вместо прямых имен с добавлением поддержки RTL:
  - Переименованы `.left-*` и `.right-*` в `.start-*` и `.end-*`.
  - Переименованы `.float-left` и `.float-right` в `.float-start` и `.float-end`.
  - Переименованы `.border-left` и `.border-right` в `.border-start` и `.border-end`.
  - Переименованы `.rounded-left` и `.rounded-right` в `.rounded-start` и `.rounded-end`.
  - Переименованы `.ml-*` и `.mr-*` в `.ms-*` и `.me-*`.
  - Переименованы `.pl-*` и `.pr-*` в `.ps-*` и `.pe-*`.
  - Переименованы `.text-left` и `.text-right` в `.text-start` и `.text-end`.

- <span class="badge bg-danger">Breaking</span> По умолчанию отрицательные поля отключены.

- Добавлен новый класс `.bg-body` для быстрой установки фона `<body>` для дополнительных элементов.

- Добавлены новые [утилиты позиционирования]({{< docsref "/utilities/position#arrange-elements" >}}) для `top`, `right`, `bottom` и `left`. Значения для каждого свойства включают `0`, `50%` и `100%`.

- Добавлены новые утилиты `.translate-middle-x` и `.translate-middle-y` для горизонтального или вертикального центрирования абсолютных / фиксированных элементов.

- Добавлены новые [утилиты `border-width`]({{< docsref "/utilities/borders#border-width" >}}).

- <span class="badge bg-danger">Breaking</span> `.text-monospace` переименован в `.font-monospace`.

- <span class="badge bg-danger">Breaking</span> Удален `.text-hide`, так как это устаревший метод скрытия текста, который больше не следует использовать.

- Добавлены утилиты `.fs-*` для утилит `font-size` (с включенным RFS). Они используют тот же масштаб, что и заголовки HTML по умолчанию (1-6, от большого к маленькому), и могут быть изменены с помощью карты Sass.

- <span class="badge bg-danger">Breaking</span> Утилиты `.font-weight-*` переименованы в `.fw-*` для краткости и единообразия.

- <span class="badge bg-danger">Breaking</span> Утилита `.font-italic` переименована в `.fst-italic` для краткости и согласованности с новой утилитой `.fst-normal`.

- Добавлен `.d-grid` для отображения утилит и новые утилиты `gap` (`.gap`) для макетов CSS Grid и flexbox.

- <span class="badge bg-danger">Breaking</span> Удалены `.rounded-sm` и `rounded-lg`, а также введена новая шкала классов от `.rounded-0` до `.rounded-3`. [Смотрите #31687](https://github.com/twbs/bootstrap/pull/31687).

- Добавлены новые утилиты `line-height`: `.lh-1`, `.lh-sm`, `.lh-base` и `.lh-lg`. Смотреть [здесь]({{< docsref "/utilities/text#line-height" >}}).

- Утилита `.d-none` в нашем CSS перемещена, чтобы придать ей больший вес по сравнению с другими утилитами отображения.

- Расширен помощник `.visually-hidden-focusable`, чтобы он также работал с контейнерами, используя `:focus-within`.

## Помощники

- <span class="badge bg-danger">Breaking</span> **Адаптивные помощники по внедрению были переименованы в [ratio helpers]({{< docsref "/helpers/ratio" >}})** с новыми именами классов и улучшенным поведением, а также полезной переменной CSS.
  - Классы были переименованы, чтобы изменить соотношение сторон `by` на `x`. Например, `.ratio-16by9` теперь `.ratio-16x9`.
  - Мы отказались от селектора `.embed-responsive-item` и группы элементов в пользу более простого селектора `.ratio > *`. Класс больше не нужен, и помощник по соотношению теперь работает с любым элементом HTML.
  - Карта Sass `$embed-responsive-aspect-ratios` была переименована в `$aspect-ratios`, а ее значения были упрощены и теперь включают имя класса и процентное соотношение в качестве пары `key: value`.
  - Переменные CSS теперь генерируются и включаются для каждого значения в карте Sass. Измените переменную `--bs-aspect-ratio` в `.ratio`, чтобы создать любое [настраиваемое соотношение сторон]({{< docsref "/helpers/ratio#custom-ratios" >}}).

- <span class="badge bg-danger">Breaking</span> **Классы программ чтения с экрана теперь [классы "визуально скрытые"]({{< docsref "/helpers/visually-hidden" >}}).**
  - Изменен файл Sass с `scss/helpers/_screenreaders.scss` на `scss/helpers/_visually-hidden.scss`
  - `.sr-only` и `.sr-only-focusable` переименованы в `.visually-hidden` и `.visually-hidden-focusable`
  - Переименованы миксины `sr-only()` и `sr-only-focusable()` в `visually-hidden()` и `visually-hidden-focusable()`.

- `bootstrap-utilities.css` теперь также включает наших помощников. Помощников больше не нужно импортировать в пользовательские сборки.

## JavaScript

- **Отказ от зависимости jQuery** и переписаны плагины на обычный JavaScript.

- <span class="badge bg-danger">Breaking</span> Атрибуты данных для всех плагинов JavaScript теперь имеют пространство имен, чтобы помочь отличить функциональность Bootstrap от стороннего кода и вашего собственного кода. Например, мы используем `data-bs-toggle` вместо `data-toggle`.

- **Все плагины теперь могут принимать селектор CSS в качестве первого аргумента.** Вы можете передать элемент DOM или любой допустимый селектор CSS, чтобы создать новый экземпляр плагина:

  ```js
  const modal = new bootstrap.Modal('#myModal')
  const dropdown = new bootstrap.Dropdown('[data-bs-toggle="dropdown"]')
  ```

- `popperConfig` может быть передан как функция, которая принимает конфигурацию Popper по умолчанию Bootstrap в качестве аргумента, так что вы можете объединить эту конфигурацию по умолчанию по-своему. **Применяется к раскрывающимся спискам, всплывающим подсказкам и всплывающим подсказкам.**

- Значение по умолчанию для `fallbackPlacements` изменено на `['top', 'right', 'bottom', 'left']` для лучшего размещения элементов Popper. **Применяется к раскрывающимся спискам, всплывающим подсказкам и всплывающим подсказкам.**

- Удалено подчеркивание из общедоступных статических методов, таких как `_getInstance()` → `getInstance()`.
