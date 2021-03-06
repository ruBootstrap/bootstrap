---
layout: docs
title: Переход на v5
description: Отслеживайте и просматривайте изменения в исходных файлах, документации и компонентах Bootstrap, чтобы помочь Вам перейти с v4 на v5.
group: migration
aliases: "/migration/"
toc: true
---

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

- Обновленная домашняя страница, макет документов и нижний колонтитул.
- Добавлено [новое руководство по Parcel](https://getbootstrap.su/docs/5.0/getting-started/parcel/).
- Добавлен [новый раздел настройки](https://getbootstrap.su/docs/5.0/customize/overview/), заменяющий [страницу темы v4's](https://getbootstrap.su/docs/4.6/getting-started/theming/), с новыми подробностями о Sass, опциями глобальной конфигурации, цветовыми схемами, переменными CSS и многим другим.
- Реорганизована вся документация по формам в [новый раздел форм](https://getbootstrap.su/docs/5.0/forms/overview/), разделив содержание на более сфокусированные страницы.
- Аналогичным образом обновлен [раздел макетов](https://getbootstrap.su/docs/5.0/layout/breakpoints/), чтобы более четко обозначить содержимое сетки.
- Страница компонента "Навигация" переименована в "Навигация и вкладки".
- Страница "Чекбоксы" переименована в "Чекбоксы и радио".
- Переработана навигационная панель и добавлена новая поднавигация, чтобы упростить просмотр наших сайтов и версий документации.
- Добавлено новое сочетание клавиш для поля поиска: <kbd>Ctrl + /</kbd>.

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
  - Добавлен новый [класс gutter](https://getbootstrap.su/docs/5.0/layout/gutters/) (`.g-*`, `.gx-*` и `.gy-*`) для управления горизонтальным / вертикальные промежутки, горизонтальные промежутки и вертикальные промежутки.
  - <span class="badge bg-danger">Breaking</span> `.no-gutters` переименован в `.g-0`, чтобы соответствовать новым утилитам промежутков.

- К столбцам больше не применяется `position: relative`, поэтому вам, возможно, придется добавить `.position-relative` к некоторым элементам, чтобы восстановить это поведение.

- <span class="badge bg-danger">Breaking</span> Удалили несколько классов `.order-*`, которые часто не использовались. Теперь из коробки мы предоставляем только от `.order-1` до `.order-5`.

- <span class="badge bg-danger">Breaking</span> Отказ от компонента `.media`, так как его можно легко воспроизвести с помощью утилит. [Смотрите #28265](https://github.com/twbs/bootstrap/pull/28265) и [страница гибких утилит для примера]({{< docsref "/utilities/flex#media-object" >}}).

- <span class="badge bg-danger">Breaking</span> `bootstrap-grid.css` теперь применяет к столбцу только `box-sizing: border-box` вместо сброса глобального размера поля. Таким образом, наши стили сетки можно использовать в большем количестве мест без помех.

- `$enable-grid-classes` больше не отключает создание контейнерных классов. [Смотрите #29146.](https://github.com/twbs/bootstrap/pull/29146)

- Обновлен миксин `make-col` по умолчанию для равных столбцов без указанного размера.

## Контент, перезагрузка и т. д.

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

- Сброшен по умолчанию горизонтальный `padding-left` для элементов `<ul>` и `<ol>` с `40px` по умолчанию браузера на `2rem`.

- Добавлен `$enable-smooth-scroll`, который применяет `scroll-behavior: smooth` глобально, за исключением пользователей, запрашивающих уменьшение движения с помощью медиа-запроса `prefers-reduced-motion`. [Смотрите #31877](https://github.com/twbs/bootstrap/pull/31877)

## RTL

- Переменные, утилиты и миксины, зависящие от горизонтального направления, были переименованы для использования логических свойств, подобных тем, которые присутствуют в макетах flexbox, например, `start` и `end` вместо `left` и `right`.

## Формы

- **Добавлены новые плавающие формы!** Мы продвинули пример с плавающими метками до полностью поддерживаемых компонентов формы. [Смотрите новую страницу «Плавающие метки».]({{< docsref "/forms/floating-labels" >}})

- <span class="badge bg-danger">Breaking</span> **Объединенные собственные и настраиваемые элементы формы.** Флажки, радио, выборки и другие входные данные, которые имели собственные и настраиваемые классы в версии 4, были объединены. Теперь почти все наши элементы формы полностью настраиваемые, для большинства из них не требуется настраиваемый HTML.
  - `.custom-check` теперь называется `.form-check`.
  - `.custom-check.custom-switch` теперь называется `.form-check.form-switch`.
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

- <span class="badge bg-danger">Breaking</span> **[Кнопки переключения](https://getbootstrap.com/docs/5.0/forms/checks-radios/#toggle-buttons), с флажками или радио, больше не требуют JavaScript и имеют новую разметку.** Нам больше не нужен элемент-оболочка, добавьте `.btn-check` в `<input>`, и соедините его с любыми классами `.btn` в `<label>`. [Смотрите #30650](https://github.com/twbs/bootstrap/pull/30650). _Документация по этому поводу перемещена со страницы «Кнопки» в новый раздел «Формы»._

- <span class="badge bg-danger">Breaking</span> **Удален `.btn-block` для утилит.** Вместо используйте `.btn-block` в `.btn`, оберните ваши кнопки с `.d-grid` и `.gap-*` утилитами для размещения их по мере необходимости. Переключитесь на отзывчивые классы, чтобы получить еще больший контроль над ними. [Прочтите документацию для некоторых примеров.](https://getbootstrap.com/docs/5.0/components/buttons/#block-buttons)

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

- Выпадающие меню теперь имеют атрибут `data-bs-popper="static"`, установленный, когда положение раскрывающегося списка является статическим, и `data-bs-popper="none"`, когда раскрывающийся список находится на панели навигации. Это добавлено нашим JavaScript и помогает нам использовать настраиваемые стили положения, не мешая позиционированию Popper.

- <span class="badge bg-danger">Breaking</span> Исключена опция `flip` для плагина раскрывающегося списка в пользу собственной конфигурации Popper. Теперь вы можете отключить поведение переворачивания, передав пустой массив для параметра [`fallbackPlacements`](https://popper.js.org/docs/v2/modifiers/flip/#fallbackplacements) в [flip](https://popper.js.org/docs/v2/modifiers/flip/) модификатор.

- На раскрывающиеся меню теперь можно щелкнуть с помощью новой опции `autoClose` для обработки [поведения автоматического закрытия]({{< docsref "/components/dropdowns#auto-close-behavior" >}}). Вы можете использовать этот параметр, чтобы принять щелчок внутри или за пределами раскрывающегося меню, чтобы сделать его интерактивным.

- Выпадающие списки теперь поддерживают `.dropdown-item`, заключенные в `<li>`.

### Джамботрон

- <span class="badge bg-danger">Breaking</span> Убрали компонент jumbotron, так как его можно повторить с помощью утилит. [Смотрите наш новый пример Jumbotron для демонстрации.](https://getbootstrap.su/docs/5.0/examples/jumbotron/)

### Группа списка

- Добавлен новый [модификатор `.list-group-numbered`]({{< docsref "/components/list-group#numbered" >}}) в список групп.

### Навигация и табы

- Добавлены новые переменные `null` для `font-size`, `font-weight`, `color` и `:hover` `color` в класс `.nav-link`.

### Панели навигации

- <span class="badge bg-danger">Breaking</span> Навбарам теперь требуется контейнер внутри (чтобы значительно упростить требования к интервалам и CSS).

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

- <span class="badge bg-danger">Breaking</span> Утилиты `.font-style-*` переименованы в `.fst-*` для краткости и единообразия.

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
  var modal = new bootstrap.Modal('#myModal')
  var dropdown = new bootstrap.Dropdown('[data-bs-toggle="dropdown"]')
  ```

- `popperConfig` может быть передан как функция, которая принимает конфигурацию Popper по умолчанию Bootstrap в качестве аргумента, так что вы можете объединить эту конфигурацию по умолчанию по-своему. **Применяется к раскрывающимся спискам, всплывающим подсказкам и всплывающим подсказкам.**

- Значение по умолчанию для `fallbackPlacements` изменено на `['top', 'right', 'bottom', 'left']` для лучшего размещения элементов Popper. **Применяется к раскрывающимся спискам, всплывающим подсказкам и всплывающим подсказкам.**

- Удалено подчеркивание из общедоступных статических методов, таких как `_getInstance()` → `getInstance()`.
