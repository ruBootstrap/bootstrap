---
layout: docs
title: Навигация и вкладки
description: Документация и примеры использования включенных навигационных компонентов Bootstrap.
group: components
aliases: "/docs/5.3/components/navs/"
toc: true
---

## Простая навигация

Навигация, доступная в Bootstrap, имеет общую разметку и стили, от базового класса `.nav` до активного и отключенного состояний. Поменяйте местами классы модификаторов, чтобы переключаться между каждым стилем.

Базовый компонент `.nav` построен на основе `flexbox` и обеспечивает прочную основу для создания всех типов компонентов навигации. Он включает в себя некоторые переопределения стиля (для работы со списками), некоторые отступы для ссылок для больших областей попадания и базовый отключенный стиль.

{{< callout info >}}
Базовый компонент `.nav` не включает никакого состояния` .active`. Следующие примеры включают класс, главным образом, чтобы продемонстрировать, что этот конкретный класс не запускает никакого специального стиля.

Чтобы передать активное состояние вспомогательным технологиям, используйте атрибут `aria-current` - используя значение `page` для текущей страницы или` true` для текущего элемента в наборе.
{{< /callout >}}

{{< example >}}
<ul class="nav">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Активная</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

Классы используются повсюду, поэтому Ваша разметка может быть очень гибкой. Используйте `<ul>`, как указано выше, `<ol>`, если порядок Ваших элементов важен, или сверните свой собственный с элементом `<nav>`. Поскольку в файле `.nav` используется `display: flex`, навигационные ссылки ведут себя так же, как элементы навигации, но без дополнительной разметки.

{{< example >}}
<nav class="nav">
  <a class="nav-link active" aria-current="page" href="#">Активная</a>
  <a class="nav-link" href="#">Ссылка</a>
  <a class="nav-link" href="#">Ссылка</a>
  <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
</nav>
{{< /example >}}

## Доступные стили

Измените стиль компонента `.nav` с помощью модификаторов и утилит. Смешивайте и сочетайте по мере необходимости или создавайте свои собственные.

### Горизонтальное выравнивание

Измените горизонтальное выравнивание вашей навигации с помощью [утилит flexbox]({{< docsref "/utilities/flex#justify-content" >}}). По умолчанию навигация выровнена по левому краю, но вы можете легко изменить ее на центральную или правую.

Выравнивание по центру с помощью `.justify-content-center`:

{{< example >}}
<ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Активная</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

Выравнивание по правому краю с помощью `.justify-content-end`:

{{< example >}}
<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Активная</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

### Вертикальное

Сгруппируйте Вашу навигацию, изменив направление гибкого элемента с помощью утилиты `.flex-column`. Нужно наложить их на одни окна просмотра, но не на другие? Используйте адаптивные версии (например, `.flex-sm-column`).

{{< example >}}
<ul class="nav flex-column">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Активная</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

Как всегда, вертикальная навигация возможна и без `<ul>`.

{{< example >}}
<nav class="nav flex-column">
  <a class="nav-link active" aria-current="page" href="#">Активная</a>
  <a class="nav-link" href="#">Ссылка</a>
  <a class="nav-link" href="#">Ссылка</a>
  <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
</nav>
{{< /example >}}

### Вкладки

Берет базовую навигацию сверху и добавляет класс `.nav-tabs` для создания интерфейса с вкладками. Используйте их для создания областей с вкладками с помощью нашего [подключаемого модуля JavaScript](#поведение-javascript).

{{< example >}}
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Активная</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

### Таблетки

Возьмите тот же HTML, но используйте вместо него `.nav-pills`:

{{< example >}}
<ul class="nav nav-pills">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Активная</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

### Подчеркивание

Возьмите тот же HTML, но вместо этого используйте `.nav-underline`:

{{< example >}}
<ul class="nav nav-underline">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Активная</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

### Заполнение и выравнивание

Принудительно расширяйте содержимое `.nav` на всю доступную ширину с помощью одного из двух классов модификаторов. Чтобы пропорционально заполнить все доступное пространство файлами `.nav-item`, используйте `.nav-fill`. Обратите внимание, что все горизонтальное пространство занято, но не все элементы навигации имеют одинаковую ширину.

{{< example >}}
<ul class="nav nav-pills nav-fill">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Активная</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">На много длиннее ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

При использовании навигации на основе `<nav>` Вы можете смело опускать `.nav-item`, поскольку для стилизации элементов `<a>` требуется только `.nav-link`.

{{< example >}}
<nav class="nav nav-pills nav-fill">
  <a class="nav-link active" aria-current="page" href="#">Активная</a>
  <a class="nav-link" href="#">На много длиннее ссылка</a>
  <a class="nav-link" href="#">Ссылка</a>
  <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
</nav>
{{< /example >}}

Для элементов одинаковой ширины используйте `.nav-justified`. Все горизонтальное пространство будет занято навигационными ссылками, но в отличие от `.nav-fill` выше, каждый элемент навигации будет одинаковой ширины.

{{< example >}}
<ul class="nav nav-pills nav-justified">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Активная</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">На много длиннее ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

Подобно примеру `.nav-fill` с использованием навигации на основе `<nav>`.

{{< example >}}
<nav class="nav nav-pills nav-justified">
  <a class="nav-link active" aria-current="page" href="#">Активная</a>
  <a class="nav-link" href="#">На много длиннее ссылка</a>
  <a class="nav-link" href="#">Ссылка</a>
  <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
</nav>

{{< /example >}}

## Работа с `flex` утилитами

Если Вам нужны адаптивные варианты навигации, рассмотрите возможность использования ряда [утилит flexbox]({{< docsref "/utilities/flex" >}}). Хотя эти утилиты более подробны, они предлагают более широкие возможности настройки для реагирующих контрольных точек. В приведенном ниже примере наша навигация будет размещена на самой нижней контрольной точке, а затем адаптирована к горизонтальной компоновке, которая заполняет доступную ширину, начиная с небольшой контрольной точки.

{{< example >}}
<nav class="nav nav-pills flex-column flex-sm-row">
  <a class="flex-sm-fill text-sm-center nav-link active" aria-current="page" href="#">Активная</a>
  <a class="flex-sm-fill text-sm-center nav-link" href="#">Длинная ссылка навигации</a>
  <a class="flex-sm-fill text-sm-center nav-link" href="#">Ссылка</a>
  <a class="flex-sm-fill text-sm-center nav-link disabled" aria-disabled="true">Отключенная</a>
</nav>
{{< /example >}}

## Что касается доступности

Если Вы используете навигацию для предоставления панели навигации, обязательно добавьте `role="navigation"` к наиболее логичному родительскому контейнеру `<ul>`, или оберните элемент `<nav>` вокруг всего навигация. Не добавляйте роль к самому `<ul>`, так как это помешает вспомогательным технологиям объявить ее реальным списком.

Обратите внимание, что панели навигации, даже если они визуально стилизованы как вкладки с классом `.nav-tabs`, **не** должны иметь значение `role="tablist"`, `role="tab"` или `role="tabpanel"` атрибуты. Они подходят только для интерфейсов с динамическими вкладками, как описано в [Шаблон вкладок ARIA Authoring Practices Guide](https://www.w3.org/WAI/ARIA/apg/patterns/tabpanel/). Смотрите [поведение JavaScript](#javascript-behavior) для динамических интерфейсов с вкладками в этом разделе в качестве примера. Атрибут `aria-current` не требуется в интерфейсах с динамическими вкладками, поскольку наш JavaScript обрабатывает выбранное состояние, добавляя `aria-selected="true"` на активной вкладке.

## Использование выпадающих списков

Добавьте раскрывающиеся меню с небольшим дополнительным HTML и [подключаемый модуль раскрывающегося списка JavaScript]({{< docsref "/components/dropdowns#usage" >}}).

### Вкладки с выпадающими списками

{{< example >}}
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Активная</a>
  </li>
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Выпадающий список</a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

### Таблетки с выпадающими списками

{{< example >}}
<ul class="nav nav-pills">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Активная</a>
  </li>
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Выпадающий список</a>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Ссылка</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

## CSS

### Переменные

{{< added-in "5.2.0" >}}

Как часть развивающегося подхода Bootstrap к переменным CSS, навигаторы теперь используют локальные переменные CSS в `.nav`, `.nav-tabs` и `.nav-pills` для расширенной настройки в реальном времени. Значения переменных CSS задаются через Sass, поэтому настройка Sass по-прежнему поддерживается.

В базовом классе `.nav`:

{{< scss-docs name="nav-css-vars" file="scss/_nav.scss" >}}

В классе модификатора `.nav-tabs`:

{{< scss-docs name="nav-tabs-css-vars" file="scss/_nav.scss" >}}

В классе модификатора `.nav-pills`:

{{< scss-docs name="nav-pills-css-vars" file="scss/_nav.scss" >}}

{{< added-in "5.3.0" >}}

В классе модификатора `.nav-underline`:

{{< scss-docs name="nav-underline-css-vars" file="scss/_nav.scss" >}}

### Sass переменные

{{< scss-docs name="nav-variables" file="scss/_variables.scss" >}}

## Поведение JavaScript

Используйте плагин JavaScript вкладок - включите его индивидуально или через скомпилированный файл `bootstrap.js` - чтобы расширить наши навигационные вкладки и таблетки для создания вкладок локального контента.

<div class="bd-example">
  <ul class="nav nav-tabs mb-3" id="myTab" role="tablist">
    <li class="nav-item" role="presentation">
      <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">Главная</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">Профиль</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">Контакт</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="disabled-tab" data-bs-toggle="tab" data-bs-target="#disabled-tab-pane" type="button" role="tab" aria-controls="disabled-tab-pane" aria-selected="false" disabled>Отключен</button>
    </li>
  </ul>
  <div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
      <p>Это замещающий контент, связанный с содержимым <strong>вкладки Главная</strong>. Нажатие на другую вкладку изменит видимость этой вкладки на следующую. Вкладка JavaScript меняет классы для управления видимостью и стилем содержимого. Вы можете использовать его с вкладками, табличками и любой другой навигацией на основе <code>.nav</code>.</p>
    </div>
    <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
      <p>Это замещающий контент, связанный с содержимым <strong>вкладки Профиль</strong>. Нажатие на другую вкладку изменит видимость этой вкладки на следующую. Вкладка JavaScript меняет классы для управления видимостью и стилем содержимого. Вы можете использовать его с вкладками, табличками и любой другой навигацией на основе <code>.nav</code>.</p>
    </div>
    <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
      <p>Это замещающий контент, связанный с содержимым <strong>вкладки Контакт</strong>. Нажатие на другую вкладку изменит видимость этой вкладки на следующую. Вкладка JavaScript меняет классы для управления видимостью и стилем содержимого. Вы можете использовать его с вкладками, табличками и любой другой навигацией на основе <code>.nav</code>.</p>
    </div>
    <div class="tab-pane fade" id="disabled-tab-pane" role="tabpanel" aria-labelledby="disabled-tab" tabindex="0">
      <p>Это замещающий контент, связанный с содержимым <strong>Отключенной вкладки</strong>.</p>
    </div>
  </div>
</div>

```html
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">Главная</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">Профиль</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">Контакт</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="disabled-tab" data-bs-toggle="tab" data-bs-target="#disabled-tab-pane" type="button" role="tab" aria-controls="disabled-tab-pane" aria-selected="false" disabled>Отключен</button>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="disabled-tab-pane" role="tabpanel" aria-labelledby="disabled-tab" tabindex="0">...</div>
</div>
```

Чтобы помочь Вам удовлетворить Ваши потребности, это работает с разметкой на основе `<ul>`, как показано выше, или с любой произвольной разметкой "сверните свою". Обратите внимание, что если Вы используете `<nav>`, Вам не следует добавлять `role="tablist"` непосредственно к нему, так как это переопределит собственную роль элемента как ориентира навигации. Вместо этого переключитесь на альтернативный элемент (в примере ниже простой `<div>`) и оберните его в `<nav>`.

<div class="bd-example">
  <nav>
    <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
      <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Главная</button>
      <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Профиль</button>
      <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Контакт</button>
      <button class="nav-link" id="nav-disabled-tab" data-bs-toggle="tab" data-bs-target="#nav-disabled" type="button" role="tab" aria-controls="nav-disabled" aria-selected="false" disabled>Отключен</button>
    </div>
  </nav>
  <div class="tab-content" id="nav-tabContent">
    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
      <p>Это замещающий контент, связанный с содержимым <strong>вкладки Главная</strong>. Нажатие на другую вкладку изменит видимость этой вкладки на следующую. Вкладка JavaScript меняет классы для управления видимостью и стилем содержимого. Вы можете использовать его с вкладками, табличками и любой другой навигацией на основе <code>.nav</code>.</p>
    </div>
    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0">
      <p>Это замещающий контент, связанный с содержимым <strong>вкладки Профиль</strong>. Нажатие на другую вкладку изменит видимость этой вкладки на следующую. Вкладка JavaScript меняет классы для управления видимостью и стилем содержимого. Вы можете использовать его с вкладками, табличками и любой другой навигацией на основе <code>.nav</code>.</p>
    </div>
    <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab" tabindex="0">
      <p>Это замещающий контент, связанный с содержимым <strong>вкладки Контакт</strong>. Нажатие на другую вкладку изменит видимость этой вкладки на следующую. Вкладка JavaScript меняет классы для управления видимостью и стилем содержимого. Вы можете использовать его с вкладками, табличками и любой другой навигацией на основе <code>.nav</code>.</p>
    </div>
    <div class="tab-pane fade" id="nav-disabled" role="tabpanel" aria-labelledby="nav-disabled-tab" tabindex="0">
      <p>Это замещающий контент, связанный с содержимым <strong>Отключенной вкладки</strong>.</p>
    </div>
  </div>
</div>

```html
<nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Главная</button>
    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Профиль</button>
    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Контакт</button>
    <button class="nav-link" id="nav-disabled-tab" data-bs-toggle="tab" data-bs-target="#nav-disabled" type="button" role="tab" aria-controls="nav-disabled" aria-selected="false" disabled>Отключен</button>
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="nav-disabled" role="tabpanel" aria-labelledby="nav-disabled-tab" tabindex="0">...</div>
</div>
```

Плагин вкладок также работает с таблетками.

<div class="bd-example">
  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
    <li class="nav-item" role="presentation">
      <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Главная</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Профиль</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Контакт</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="pills-disabled-tab" data-bs-toggle="pill" data-bs-target="#pills-disabled" type="button" role="tab" aria-controls="pills-disabled" aria-selected="false" disabled>Отключен</button>
    </li>
  </ul>
  <div class="tab-content" id="pills-tabContent">
    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
      <p>Это замещающий контент, связанный с содержимым <strong>вкладки Главная</strong>. Нажатие на другую вкладку изменит видимость этой вкладки на следующую. Вкладка JavaScript меняет классы для управления видимостью и стилем содержимого. Вы можете использовать его с вкладками, табличками и любой другой навигацией на основе <code>.nav</code>.</p>
    </div>
    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
      <p>Это замещающий контент, связанный с содержимым <strong>вкладки Профиль</strong>. Нажатие на другую вкладку изменит видимость этой вкладки на следующую. Вкладка JavaScript меняет классы для управления видимостью и стилем содержимого. Вы можете использовать его с вкладками, табличками и любой другой навигацией на основе <code>.nav</code>.</p>
    </div>
    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab" tabindex="0">
      <p>Это замещающий контент, связанный с содержимым <strong>вкладки Контакт</strong>. Нажатие на другую вкладку изменит видимость этой вкладки на следующую. Вкладка JavaScript меняет классы для управления видимостью и стилем содержимого. Вы можете использовать его с вкладками, табличками и любой другой навигацией на основе <code>.nav</code>.</p>
    </div>
    <div class="tab-pane fade" id="pills-disabled" role="tabpanel" aria-labelledby="pills-disabled-tab" tabindex="0">
      <p>Это замещающий контент, связанный с содержимым <strong>Отключенной вкладки</strong>.</p>
    </div>
  </div>
</div>

```html
<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Главная</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Профиль</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Контакт</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="pills-disabled-tab" data-bs-toggle="pill" data-bs-target="#pills-disabled" type="button" role="tab" aria-controls="pills-disabled" aria-selected="false" disabled>Отключен</button>
  </li>
</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="pills-disabled" role="tabpanel" aria-labelledby="pills-disabled-tab" tabindex="0">...</div>
</div>
```

И с вертикальными таблетками. В идеале для вертикальных вкладок вы также должны добавить `aria-orientation="vertical"` в контейнер списка вкладок.

<div class="bd-example">
  <div class="d-flex align-items-start">
    <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Главная</button>
      <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Профиль</button>
      <button class="nav-link" id="v-pills-disabled-tab" data-bs-toggle="pill" data-bs-target="#v-pills-disabled" type="button" role="tab" aria-controls="v-pills-disabled" aria-selected="false" disabled>Отключен</button>
      <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Сообщения</button>
      <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Настройки</button>
    </div>
    <div class="tab-content" id="v-pills-tabContent">
      <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab" tabindex="0">
        <p>Это замещающий контент, связанный с содержимым <strong>вкладки Главная</strong>. Нажатие на другую вкладку изменит видимость этой вкладки на следующую. Вкладка JavaScript меняет классы для управления видимостью и стилем содержимого. Вы можете использовать его с вкладками, табличками и любой другой навигацией на основе <code>.nav</code>.</p>
      </div>
      <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab" tabindex="0">
        <p>Это замещающий контент, связанный с содержимым <strong>вкладки Профиль</strong>. Нажатие на другую вкладку изменит видимость этой вкладки на следующую. Вкладка JavaScript меняет классы для управления видимостью и стилем содержимого. Вы можете использовать его с вкладками, табличками и любой другой навигацией на основе <code>.nav</code>.</p>
      </div>
      <div class="tab-pane fade" id="v-pills-disabled" role="tabpanel" aria-labelledby="v-pills-disabled-tab" tabindex="0">
        <p>Это замещающий контент, связанный с содержимым <strong>Отключенной вкладки</strong>.</p>
      </div>
      <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab" tabindex="0">
        <p>Это замещающий контент, связанный с содержимым <strong>вкладки Сообщения</strong>. Нажатие на другую вкладку изменит видимость этой вкладки на следующую. Вкладка JavaScript меняет классы для управления видимостью и стилем содержимого. Вы можете использовать его с вкладками, табличками и любой другой навигацией на основе <code>.nav</code>.</p>
      </div>
      <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab" tabindex="0">
        <p>Это замещающий контент, связанный с содержимым <strong>вкладки Настройки</strong>. Нажатие на другую вкладку изменит видимость этой вкладки на следующую. Вкладка JavaScript меняет классы для управления видимостью и стилем содержимого. Вы можете использовать его с вкладками, табличками и любой другой навигацией на основе <code>.nav</code>.</p>
      </div>
    </div>
  </div>
</div>

```html
<div class="d-flex align-items-start">
  <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
    <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Главная</button>
    <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Профиль</button>
    <button class="nav-link" id="v-pills-disabled-tab" data-bs-toggle="pill" data-bs-target="#v-pills-disabled" type="button" role="tab" aria-controls="v-pills-disabled" aria-selected="false" disabled>Отключен</button>
    <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Сообщения</button>
    <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Настройки</button>
  </div>
  <div class="tab-content" id="v-pills-tabContent">
    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab" tabindex="0">...</div>
    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab" tabindex="0">...</div>
    <div class="tab-pane fade" id="v-pills-disabled" role="tabpanel" aria-labelledby="v-pills-disabled-tab" tabindex="0">...</div>
    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab" tabindex="0">...</div>
    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab" tabindex="0">...</div>
  </div>
</div>
```

### Доступность

Динамические интерфейсы с вкладками, как описано в [Шаблон вкладок ARIA Authoring Practices Guide](https://www.w3.org/WAI/ARIA/apg/patterns/tabpanel/), требуют `role="tablist"`, `role="tab"`, `role="tabpanel"` и дополнительные `aria-` атрибуты, чтобы передать их структуру, функциональность и текущее состояние пользователям вспомогательных технологий (таких как программы чтения с экрана). Мы рекомендуем использовать элементы `<button>` для вкладок, так как это элементы управления, которые запускают динамическое изменение, а не ссылки, ведущие на новую страницу или место.

В соответствии с шаблоном ARIA Authoring Practices, только текущая активная вкладка получает фокус клавиатуры. Когда подключаемый модуль JavaScript инициализируется, он устанавливает `tabindex="-1"` для всех неактивных элементов управления вкладками. Как только текущая активная вкладка получает фокус, клавиши управления курсором активируют предыдущую/следующую вкладку. Клавиши <kbd>Home</kbd> и <kbd>End</kbd> активируют первую и последнюю вкладки соответственно. Плагин соответствующим образом изменит [перемещающийся `tabindex`](https://www.w3.org/WAI/ARIA/apg/practices/keyboard-interface/). Однако обратите внимание, что подключаемый модуль JavaScript не делает различий между горизонтальными и вертикальными списками вкладок, когда дело доходит до взаимодействия с клавишами курсора: независимо от ориентации списка вкладок, оба курсора, направленные вверх *и* влево, переходят на предыдущую вкладку, а курсор вниз *и* правый курсор перейти на следующую вкладку.

{{< callout warning >}}
В целом, чтобы упростить навигацию с помощью клавиатуры, рекомендуется также делать фокусируемыми сами панели вкладок, если только первый элемент, содержащий значимое содержимое внутри панели вкладок, уже не находится в фокусе. Плагин JavaScript не пытается справиться с этим аспектом — там, где это уместно, вам нужно будет явно сделать ваши панели вкладок доступными для фокуса, добавив `tabindex="0"` в вашу разметку.
{{< /callout >}}

{{< callout danger >}}
Подключаемый модуль JavaScript для вкладок **не** поддерживает интерфейсы с вкладками, которые содержат раскрывающиеся меню, поскольку они вызывают проблемы как с удобством использования, так и с доступностью. С точки зрения удобства использования тот факт, что элемент триггера текущей отображаемой вкладки не виден сразу (поскольку он находится внутри закрытого раскрывающегося меню), может вызвать путаницу. С точки зрения доступности в настоящее время нет разумного способа сопоставить такую конструкцию со стандартным шаблоном WAI ARIA, а это означает, что ее нелегко сделать понятной для пользователей вспомогательных технологий.
{{< /callout >}}

### Использование атрибутов данных

Вы можете активировать навигацию по вкладкам или таблеткам без написания кода JavaScript, просто указав для элемента `data-bs-toggle="tab"` или `data-bs-toggle="pill"`. Используйте эти атрибуты данных в `.nav-tabs` или `.nav-pills`.

```html
<!-- Nav tabs -->
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Главная</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Профиль</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="messages-tab" data-bs-toggle="tab" data-bs-target="#messages" type="button" role="tab" aria-controls="messages" aria-selected="false">Сообщения</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="settings-tab" data-bs-toggle="tab" data-bs-target="#settings" type="button" role="tab" aria-controls="settings" aria-selected="false">Настройки</button>
  </li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
  <div class="tab-pane active" id="home" role="tabpanel" aria-labelledby="home-tab" tabindex="0">...</div>
  <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">...</div>
  <div class="tab-pane" id="messages" role="tabpanel" aria-labelledby="messages-tab" tabindex="0">...</div>
  <div class="tab-pane" id="settings" role="tabpanel" aria-labelledby="settings-tab" tabindex="0">...</div>
</div>
```

### Через JavaScript

Включите вкладки с вкладками через JavaScript (каждую вкладку нужно активировать отдельно):

```js
const triggerTabList = document.querySelectorAll('#myTab button')
triggerTabList.forEach(triggerEl => {
  const tabTrigger = new bootstrap.Tab(triggerEl)

  triggerEl.addEventListener('click', event => {
    event.preventDefault()
    tabTrigger.show()
  })
})
```

Вы можете активировать отдельные вкладки несколькими способами:

```js
const triggerEl = document.querySelector('#myTab button[data-bs-target="#profile"]')
bootstrap.Tab.getInstance(triggerEl).show() // Select tab by name

const triggerFirstTabEl = document.querySelector('#myTab li:first-child button')
bootstrap.Tab.getInstance(triggerFirstTabEl).show() // Select first tab
```

### Эффект затухания

Чтобы вкладки постепенно появлялись, добавьте `.fade` к каждому` .tab-pane`. На первой панели вкладок также должен быть `.show`, чтобы исходное содержимое было видимым.

```html
<div class="tab-content">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="messages" role="tabpanel" aria-labelledby="messages-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="settings" role="tabpanel" aria-labelledby="settings-tab" tabindex="0">...</div>
</div>
```

### Методы

{{< callout danger >}}
{{< partial "callouts/danger-async-methods.md" >}}
{{< /callout >}}

Активирует ваш контент как элемент вкладки.

Вы можете создать экземпляр вкладки с помощью конструктора, например:

```js
const bsTab = new bootstrap.Tab('#myTab')
```

{{< bs-table >}}
| Метод | Описание |
| --- | --- |
| `dispose` | Уничтожает вкладку элемента. |
| `getInstance` | Статический метод, который позволяет вам получить экземпляр вкладки, связанный с элементом DOM, вы можете использовать его следующим образом: `bootstrap.Tab.getInstance(element)`. |
| `getOrCreateInstance` | Статический метод, который возвращает экземпляр вкладки, связанный с элементом DOM, или создает новый, если он не был инициализирован. Вы можете использовать его так: `bootstrap.Tab.getOrCreateInstance(element)`. |
| `show` | Выбирает данную вкладку и показывает связанную с ней панель. Любая другая ранее выбранная вкладка становится невыбранной, а связанная с ней панель скрывается. **Возвращается к вызывающей стороне до фактического отображения панели вкладок** (т. е. до возникновения события `shown.bs.tab`). |
{{< /bs-table >}}

### События

При отображении новой вкладки события запускаются в следующем порядке:

1. `hide.bs.tab` (на текущей активной вкладке)
2. `show.bs.tab` (на вкладке для показа)
3. `hidden.bs.tab` (на предыдущей активной вкладке такая же, как для события `hide.bs.tab`)
4. `shown.bs.tab` (на только что активированной вкладке, такой же, как для события `show.bs.tab`)

Если ни одна вкладка еще не была активной, то события `hide.bs.tab` и `hidden.bs.tab` не запускаются.

{{< bs-table >}}
| Тип события | Описание |
| --- | --- |
| `hide.bs.tab` | Это событие срабатывает, когда должна быть показана новая вкладка (и, следовательно, предыдущая активная вкладка должна быть скрыта). Используйте `event.target` и `event.relatedTarget`, чтобы настроить таргетинг на текущую активную вкладку и новую вкладку, которая скоро станет активной, соответственно. |
| `hidden.bs.tab` | Это событие срабатывает после отображения новой вкладки (и, таким образом, предыдущая активная вкладка скрыта). Используйте `event.target` и `event.relatedTarget`, чтобы выбрать предыдущую активную вкладку и новую активную вкладку соответственно. |
| `show.bs.tab` | Это событие срабатывает при показе вкладки, но до того, как будет показана новая вкладка. Используйте `event.target` и `event.relatedTarget`, чтобы настроить таргетинг на активную вкладку и предыдущую активную вкладку (если она доступна) соответственно. |
| `shown.bs.tab` | Это событие срабатывает при показе вкладки после того, как вкладка была показана. Используйте `event.target` и `event.relatedTarget`, чтобы настроить таргетинг на активную вкладку и предыдущую активную вкладку (если она доступна) соответственно. |
{{< /bs-table >}}

```js
const tabEl = document.querySelector('button[data-bs-toggle="tab"]')
tabEl.addEventListener('shown.bs.tab', event => {
  event.target // newly activated tab
  event.relatedTarget // previous active tab
})
```
