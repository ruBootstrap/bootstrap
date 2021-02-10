---
layout: docs
title: Навигация и вкладки
description: Документация и примеры использования включенных навигационных компонентов Bootstrap.
group: components
aliases: "/docs/5.0/components/navs/"
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
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

Классы используются повсюду, поэтому Ваша разметка может быть очень гибкой. Используйте `<ul>`, как указано выше, `<ol>`, если порядок Ваших элементов важен, или сверните свой собственный с элементом `<nav>`. Поскольку в файле `.nav` используется `display: flex`, навигационные ссылки ведут себя так же, как элементы навигации, но без дополнительной разметки.

{{< example >}}
<nav class="nav">
  <a class="nav-link active" aria-current="page" href="#">Активная</a>
  <a class="nav-link" href="#">Ссылка</a>
  <a class="nav-link" href="#">Ссылка</a>
  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
</nav>
{{< /example >}}

## Доступные стили

Измените стиль компонента `.nav` с помощью модификаторов и утилит. Смешивайте и сочетайте по мере необходимости или создавайте свои собственные.

### Горизонтальное выравнивание

Измените горизонтальное выравнивание Вашей навигации с помощью [утилит flexbox]({{< docsref "/layout/grid#horizontal-alignment" >}}). По умолчанию элементы навигации выравниваются по левому краю, но Вы можете легко изменить их на выравнивание по центру или по правому краю.

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
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
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
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
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
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

Как всегда, вертикальная навигация возможна и без `<ul>`.

{{< example >}}
<nav class="nav flex-column">
  <a class="nav-link active" aria-current="page" href="#">Активная</a>
  <a class="nav-link" href="#">Ссылка</a>
  <a class="nav-link" href="#">Ссылка</a>
  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
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
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
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
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

### Заполнение и выравнивание

Заставьте содержимое Вашего `.nav` расширить всю доступную ширину одним из двух классов модификаторов. Чтобы пропорционально заполнить все доступное пространство Вашим `.nav-item`, используйте `.nav-fill`. Обратите внимание, что все горизонтальное пространство занято, но не все элементы навигации имеют одинаковую ширину.

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
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

При использовании навигации на основе `<nav>` Вы можете смело опускать `.nav-item`, поскольку для стилизации элементов `<a>` требуется только `.nav-link`.

{{< example >}}
<nav class="nav nav-pills nav-fill">
  <a class="nav-link active" aria-current="page" href="#">Активная</a>
  <a class="nav-link" href="#">На много длиннее ссылка</a>
  <a class="nav-link" href="#">Ссылка</a>
  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
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
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

Подобно примеру `.nav-fill` с использованием навигации на основе `<nav>`.

{{< example >}}
<nav class="nav nav-pills nav-justified">
  <a class="nav-link active" aria-current="page" href="#">Активная</a>
  <a class="nav-link" href="#">На много длиннее ссылка</a>
  <a class="nav-link" href="#">Ссылка</a>
  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
</nav>

{{< /example >}}

## Работа с `flex` утилитами

Если Вам нужны адаптивные варианты навигации, рассмотрите возможность использования ряда [утилит flexbox]({{< docsref "/utilities/flex" >}}). Хотя эти утилиты более подробны, они предлагают более широкие возможности настройки для реагирующих контрольных точек. В приведенном ниже примере наша навигация будет размещена на самой нижней контрольной точке, а затем адаптирована к горизонтальной компоновке, которая заполняет доступную ширину, начиная с небольшой контрольной точки.

{{< example >}}
<nav class="nav nav-pills flex-column flex-sm-row">
  <a class="flex-sm-fill text-sm-center nav-link active" aria-current="page" href="#">Активная</a>
  <a class="flex-sm-fill text-sm-center nav-link" href="#">Длинная ссылка навигации</a>
  <a class="flex-sm-fill text-sm-center nav-link" href="#">Ссылка</a>
  <a class="flex-sm-fill text-sm-center nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
</nav>
{{< /example >}}

## Что касается доступности

Если Вы используете навигацию для предоставления панели навигации, обязательно добавьте `role="navigation"` к наиболее логичному родительскому контейнеру `<ul>`, или оберните элемент `<nav>` вокруг всего навигация. Не добавляйте роль к самому `<ul>`, так как это помешает вспомогательным технологиям объявить ее реальным списком.

Обратите внимание, что панели навигации, даже если они визуально стилизованы как вкладки с классом `.nav-tabs`, **не** должны иметь значение `role="tablist"`, `role="tab"` или `role="tabpanel"` атрибуты. Они подходят только для интерфейсов с динамическими вкладками, как описано в [<abbr title="Web Accessibility Initiative">WAI</abbr> <abbr title="Accessible Rich Internet Applications">ARIA</abbr> Authoring Practices](https://www.w3.org/TR/wai-aria-practices/#tabpanel). См. [поведение JavaScript](#javascript-behavior) для динамических интерфейсов с вкладками в этом разделе в качестве примера. Атрибут `aria-current` не требуется в интерфейсах с динамическими вкладками, поскольку наш JavaScript обрабатывает выбранное состояние, добавляя `aria-selected="true"` на активной вкладке.

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
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
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
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
  </li>
</ul>
{{< /example >}}

## Поведение JavaScript

Используйте плагин JavaScript вкладок - включите его индивидуально или через скомпилированный файл `bootstrap.js` - чтобы расширить наши навигационные вкладки и таблетки для создания вкладок локального контента.

Динамические интерфейсы с вкладками, как описано в [<abbr title="Инициатива веб-доступности">WAI</abbr> <abbr title="Доступные полнофункциональные интернет-приложения">ARIA</abbr> Авторские практики](https://www.w3.org/TR/wai-aria-practices/#tabpanel), требуется `role="tablist"`, `role="tab"`, `role="tabpanel"` и дополнительные атрибуты `aria-` по порядку для передачи их структуры, функций и текущего состояния пользователям вспомогательных технологий (например, программ чтения с экрана). Мы рекомендуем использовать элементы `<button>` для вкладок, поскольку это элементы управления, которые запускают динамическое изменение, а не ссылки, которые переходят на новую страницу или место.

Обратите внимание, что динамические интерфейсы с вкладками <em>не</em> должны содержать раскрывающиеся меню, поскольку это вызывает проблемы как с удобством использования, так и с доступностью. С точки зрения удобства использования тот факт, что элемент триггера отображаемой в данный момент вкладки не виден сразу (поскольку он находится внутри закрытого раскрывающегося меню), может вызвать путаницу. С точки зрения доступности в настоящее время не существует разумного способа сопоставить этот вид конструкции со стандартным шаблоном WAI ARIA, а это означает, что ее нельзя легко сделать понятной для пользователей вспомогательных технологий.

<div class="bd-example">
  <ul class="nav nav-tabs mb-3" id="myTab" role="tablist">
    <li class="nav-item" role="presentation">
      <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Главная</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Профиль</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Контакт</button>
    </li>
  </ul>
  <div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
      <p>Placeholder content for the tab panel. This one relates to the home tab. Takes you miles high, so high, 'cause she’s got that one international smile. There's a stranger in my bed, there's a pounding in my head. Oh, no. In another life I would make you stay. ‘Cause I, I’m capable of anything. Suiting up for my crowning battle. Used to steal your parents' liquor and climb to the roof. Tone, tan fit and ready, turn it up cause its gettin' heavy. Her love is like a drug. I guess that I forgot I had a choice.</p>
    </div>
    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
      <p>Placeholder content for the tab panel. This one relates to the profile tab. You got the finest architecture. Passport stamps, she's cosmopolitan. Fine, fresh, fierce, we got it on lock. Never planned that one day I'd be losing you. She eats your heart out. Your kiss is cosmic, every move is magic. I mean the ones, I mean like she's the one. Greetings loved ones let's take a journey. Just own the night like the 4th of July! But you'd rather get wasted.</p>
    </div>
    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
      <p>Placeholder content for the tab panel. This one relates to the contact tab. Her love is like a drug. All my girls vintage Chanel baby. Got a motel and built a fort out of sheets. 'Cause she's the muse and the artist. (This is how we do) So you wanna play with magic. So just be sure before you give it all to me. I'm walking, I'm walking on air (tonight). Skip the talk, heard it all, time to walk the walk. Catch her if you can. Stinging like a bee I earned my stripes.</p>
    </div>
  </div>
</div>

```html
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Главная</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Профиль</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Контакт</button>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">...</div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
</div>
```

Чтобы помочь Вам удовлетворить Ваши потребности, это работает с разметкой на основе `<ul>`, как показано выше, или с любой произвольной разметкой "сверните свою". Обратите внимание, что если Вы используете `<nav>`, Вам не следует добавлять `role="tablist"` непосредственно к нему, так как это переопределит собственную роль элемента как ориентира навигации. Вместо этого переключитесь на альтернативный элемент (в примере ниже простой `<div>`) и оберните его в `<nav>`.

<div class="bd-example">
  <nav>
    <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
      <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Главная</button>
      <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Профиль</button>
      <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Контакт</button>
    </div>
  </nav>
  <div class="tab-content" id="nav-tabContent">
    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
      <p>Placeholder content for the tab panel. This one relates to the home tab. Takes you miles high, so high, 'cause she’s got that one international smile. There's a stranger in my bed, there's a pounding in my head. Oh, no. In another life I would make you stay. ‘Cause I, I’m capable of anything. Suiting up for my crowning battle. Used to steal your parents' liquor and climb to the roof. Tone, tan fit and ready, turn it up cause its gettin' heavy. Her love is like a drug. I guess that I forgot I had a choice.</p>
    </div>
    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
      <p>Placeholder content for the tab panel. This one relates to the profile tab. You got the finest architecture. Passport stamps, she's cosmopolitan. Fine, fresh, fierce, we got it on lock. Never planned that one day I'd be losing you. She eats your heart out. Your kiss is cosmic, every move is magic. I mean the ones, I mean like she's the one. Greetings loved ones let's take a journey. Just own the night like the 4th of July! But you'd rather get wasted.</p>
    </div>
    <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
      <p>Placeholder content for the tab panel. This one relates to the contact tab. Her love is like a drug. All my girls vintage Chanel baby. Got a motel and built a fort out of sheets. 'Cause she's the muse and the artist. (This is how we do) So you wanna play with magic. So just be sure before you give it all to me. I'm walking, I'm walking on air (tonight). Skip the talk, heard it all, time to walk the walk. Catch her if you can. Stinging like a bee I earned my stripes.</p>
    </div>
  </div>
</div>

```html
<nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Главная</button>
    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Профиль</button>
    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Контакт</button>
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">...</div>
  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">...</div>
  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">...</div>
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
  </ul>
  <div class="tab-content" id="pills-tabContent">
    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
      <p>Placeholder content for the tab panel. This one relates to the home tab. Takes you miles high, so high, 'cause she’s got that one international smile. There's a stranger in my bed, there's a pounding in my head. Oh, no. In another life I would make you stay. ‘Cause I, I’m capable of anything. Suiting up for my crowning battle. Used to steal your parents' liquor and climb to the roof. Tone, tan fit and ready, turn it up cause its gettin' heavy. Her love is like a drug. I guess that I forgot I had a choice.</p>
    </div>
    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
      <p>Placeholder content for the tab panel. This one relates to the profile tab. You got the finest architecture. Passport stamps, she's cosmopolitan. Fine, fresh, fierce, we got it on lock. Never planned that one day I'd be losing you. She eats your heart out. Your kiss is cosmic, every move is magic. I mean the ones, I mean like she's the one. Greetings loved ones let's take a journey. Just own the night like the 4th of July! But you'd rather get wasted.</p>
    </div>
    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
      <p>Placeholder content for the tab panel. This one relates to the contact tab. Her love is like a drug. All my girls vintage Chanel baby. Got a motel and built a fort out of sheets. 'Cause she's the muse and the artist. (This is how we do) So you wanna play with magic. So just be sure before you give it all to me. I'm walking, I'm walking on air (tonight). Skip the talk, heard it all, time to walk the walk. Catch her if you can. Stinging like a bee I earned my stripes.</p>
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
</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">...</div>
  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">...</div>
  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">...</div>
</div>
```

И с вертикальными таблетками.

<div class="bd-example">
  <div class="d-flex align-items-start">
    <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Главная</button>
      <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Профиль</button>
      <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Messages</button>
      <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Settings</button>
    </div>
    <div class="tab-content" id="v-pills-tabContent">
      <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
        <p>Placeholder content for the tab panel. This one relates to the home tab. Saw you downtown singing the Blues. Watch you circle the drain. Why don't you let me stop by? Heavy is the head that wears the crown. Yes, we make angels cry, raining down on earth from up above. Wanna see the show in 3D, a movie. Do you ever feel, feel so paper thin. It’s a yes or no, no maybe.</p>
      </div>
      <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
        <p>Placeholder content for the tab panel. This one relates to the profile tab. Takes you miles high, so high, 'cause she’s got that one international smile. There's a stranger in my bed, there's a pounding in my head. Oh, no. In another life I would make you stay. ‘Cause I, I’m capable of anything. Suiting up for my crowning battle. Used to steal your parents' liquor and climb to the roof. Tone, tan fit and ready, turn it up cause its gettin' heavy. Her love is like a drug. I guess that I forgot I had a choice.</p>
      </div>
      <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
        <p>Placeholder content for the tab panel. This one relates to the messages tab. You got the finest architecture. Passport stamps, she's cosmopolitan. Fine, fresh, fierce, we got it on lock. Never planned that one day I'd be losing you. She eats your heart out. Your kiss is cosmic, every move is magic. I mean the ones, I mean like she's the one. Greetings loved ones let's take a journey. Just own the night like the 4th of July! But you'd rather get wasted.</p>
      </div>
      <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
        <p>Placeholder content for the tab panel. This one relates to the settings tab. Her love is like a drug. All my girls vintage Chanel baby. Got a motel and built a fort out of sheets. 'Cause she's the muse and the artist. (This is how we do) So you wanna play with magic. So just be sure before you give it all to me. I'm walking, I'm walking on air (tonight). Skip the talk, heard it all, time to walk the walk. Catch her if you can. Stinging like a bee I earned my stripes.</p>
      </div>
    </div>
  </div>
</div>

```html
<div class="d-flex align-items-start">
  <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
    <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Главная</button>
    <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Профиль</button>
    <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Messages</button>
    <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Settings</button>
  </div>
  <div class="tab-content" id="v-pills-tabContent">
    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">...</div>
    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">...</div>
    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">...</div>
    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">...</div>
  </div>
</div>
```

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
    <button class="nav-link" id="messages-tab" data-bs-toggle="tab" data-bs-target="#messages" type="button" role="tab" aria-controls="messages" aria-selected="false">Messages</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="settings-tab" data-bs-toggle="tab" hdata-bs-targetref="#settings" type="button" role="tab" aria-controls="settings" aria-selected="false">Настройки</button>
  </li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
  <div class="tab-pane active" id="home" role="tabpanel" aria-labelledby="home-tab">...</div>
  <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
  <div class="tab-pane" id="messages" role="tabpanel" aria-labelledby="messages-tab">...</div>
  <div class="tab-pane" id="settings" role="tabpanel" aria-labelledby="settings-tab">...</div>
</div>
```

### Через JavaScript

Включите вкладки с вкладками через JavaScript (каждую вкладку нужно активировать отдельно):

```js
var triggerTabList = [].slice.call(document.querySelectorAll('#myTab a'))
triggerTabList.forEach(function (triggerEl) {
  var tabTrigger = new bootstrap.Tab(triggerEl)

  triggerEl.addEventListener('click', function (event) {
    event.preventDefault()
    tabTrigger.show()
  })
})
```

Вы можете активировать отдельные вкладки несколькими способами:

```js
var triggerEl = document.querySelector('#myTab a[href="#profile"]')
bootstrap.Tab.getInstance(triggerEl).show() // Select tab by name

var triggerFirstTabEl = document.querySelector('#myTab li:first-child a')
bootstrap.Tab.getInstance(triggerFirstTabEl).show() // Select first tab
```

### Эффект затухания

Чтобы вкладки постепенно появлялись, добавьте `.fade` к каждому` .tab-pane`. На первой панели вкладок также должен быть `.show`, чтобы исходное содержимое было видимым.

```html
<div class="tab-content">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">...</div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
  <div class="tab-pane fade" id="messages" role="tabpanel" aria-labelledby="messages-tab">...</div>
  <div class="tab-pane fade" id="settings" role="tabpanel" aria-labelledby="settings-tab">...</div>
</div>
```

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

#### constructor

Активирует элемент вкладки и контейнер содержимого. Вкладка должна иметь либо `data-bs-target`, либо, если используется ссылка, атрибут `href` нацеленный на узел контейнера в DOM.

```html
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

<div class="tab-content">
  <div class="tab-pane active" id="home" role="tabpanel" aria-labelledby="home-tab">...</div>
  <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
  <div class="tab-pane" id="messages" role="tabpanel" aria-labelledby="messages-tab">...</div>
  <div class="tab-pane" id="settings" role="tabpanel" aria-labelledby="settings-tab">...</div>
</div>

<script>
  var firstTabEl = document.querySelector('#myTab li:last-child a')
  var firstTab = new bootstrap.Tab(firstTabEl)

  firstTab.show()
</script>
```

#### show

Выбирает данную вкладку и показывает связанную с ней панель. Любая другая вкладка, которая была выбрана ранее, становится невыделенной, а связанная с ней панель скрывается. **Возврат к вызывающему абоненту до того, как панель вкладок будет отображена** (то есть до того, как произойдет событие `shown.bs.tab`).

```js
  var someTabTriggerEl = document.querySelector('#someTabTrigger')
  var tab = new bootstrap.Tab(someTabTriggerEl)

  tab.show()
```

#### dispose

Уничтожает вкладку элемента.

#### getInstance

*Статический* метод, позволяющий получить экземпляр вкладки, связанный с элементом DOM.

```js
var triggerEl = document.querySelector('#trigger')
var tab = bootstrap.Tab.getInstance(triggerEl) // Returns a Bootstrap tab instance
```

### События

При отображении новой вкладки события запускаются в следующем порядке:

1. `hide.bs.tab` (на текущей активной вкладке)
2. `show.bs.tab` (на вкладке для показа)
3. `hidden.bs.tab` (на предыдущей активной вкладке такая же, как для события `hide.bs.tab`)
4. `shown.bs.tab` (на только что активированной вкладке, такой же, как для события `show.bs.tab`)

Если ни одна вкладка еще не была активной, то события `hide.bs.tab` и` hidden.bs.tab` не запускаются.

<table class="table">
  <thead>
    <tr>
      <th style="width: 150px;">Тип события</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>show.bs.tab</code></td>
      <td>Это событие запускается при отображении вкладки, но до отображения новой вкладки. Используйте <code>event.target</code> и <code>event.relatedTarget</code> для таргетинга на активную вкладку и предыдущую активную вкладку (если есть) соответственно.</td>
    </tr>
    <tr>
      <td><code>shown.bs.tab</code></td>
      <td>Это событие запускается при отображении вкладки после отображения вкладки. Используйте <code>event.target</code> и <code>event.relatedTarget</code> для таргетинга на активную вкладку и предыдущую активную вкладку (если есть) соответственно.</td>
    </tr>
    <tr>
      <td><code>hide.bs.tab</code></td>
      <td>Это событие возникает, когда должна быть показана новая вкладка (и, следовательно, предыдущая активная вкладка должна быть скрыта). Используйте <code>event.target</code> и <code>event.relatedTarget</code> для таргетинга на текущую активную вкладку и новую вкладку, которая скоро станет активной, соответственно.</td>
    </tr>
    <tr>
      <td><code>hidden.bs.tab</code></td>
      <td>Это событие запускается после отображения новой вкладки (и, таким образом, предыдущая активная вкладка скрыта). Используйте <code>event.target</code> и <code>event.relatedTarget</code> для таргетинга на предыдущую активную вкладку и новую активную вкладку соответственно.</td>
    </tr>
  </tbody>
</table>

```js
var tabEl = document.querySelector('button[data-bs-toggle="tab"]')
tabEl.addEventListener('shown.bs.tab', function (event) {
  event.target // недавно активированная вкладка
  event.relatedTarget // предыдущая активная вкладка
})
```
