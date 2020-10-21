---
layout: docs
title: Навигация
description: Документация и примеры использования включенных навигационных компонентов Bootstrap.
group: components
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

Если Вам нужны адаптивные варианты навигации, рассмотрите возможность использования ряда [утилит flexbox]({{< docsref "/utilities/flex" >}}). Хотя эти утилиты более подробны, они предлагают более широкие возможности настройки для реагирующих контрольных точек. В приведенном ниже примере наша навигация будет размещена на самой нижней контрольной точке, а затем адаптирована к горизонтальной компоновке, которая заполняет доступную ширину, начиная с небольшой точки останова.

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
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">Выпадающий список</a>
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
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">Выпадающий список</a>
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

Используйте подключаемый модуль вкладок JavaScript - включите его отдельно или через скомпилированный файл `bootstrap.js` - чтобы расширить наши навигационные вкладки и таблетки для создания вкладок локального контента, даже через раскрывающиеся меню.

Динамические интерфейсы с вкладками, как описано в [<abbr title="Web Accessibility Initiative">WAI</abbr> <abbr title="Accessible Rich Internet Applications">ARIA</abbr> Authoring Practices](https://www.w3.org/TR/wai-aria-practices/#tabpanel), требует `role="tablist"`, `role="tab"`, `role="tabpanel"` и дополнительные атрибуты `aria-` по порядку для передачи их структуры, функций и текущего состояния пользователям вспомогательных технологий (например, программ чтения с экрана).

Обратите внимание, что динамические интерфейсы с вкладками <em>не</em> должны содержать раскрывающиеся меню, поскольку это вызывает проблемы как с удобством использования, так и с доступностью. С точки зрения удобства использования тот факт, что элемент триггера отображаемой в данный момент вкладки не виден сразу (поскольку он находится внутри закрытого раскрывающегося меню), может вызвать путаницу. С точки зрения доступности в настоящее время не существует разумного способа сопоставить этот вид конструкции со стандартным шаблоном WAI ARIA, а это означает, что ее нельзя легко сделать понятной для пользователей вспомогательных технологий.

<div class="bd-example">
  <ul class="nav nav-tabs mb-3" id="myTab" role="tablist">
    <li class="nav-item" role="presentation">
      <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Главная</a>
    </li>
    <li class="nav-item" role="presentation">
      <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Профиль</a>
    </li>
    <li class="nav-item" role="presentation">
      <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Контакт</a>
    </li>
  </ul>
  <div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
      <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
    </div>
    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
      <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
    </div>
    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
      <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
    </div>
  </div>
</div>

{{< highlight html >}}
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Главная</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Профиль</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Контакт</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">...</div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
</div>
{{< /highlight >}}

Чтобы помочь Вам удовлетворить Ваши потребности, это работает с разметкой на основе `<ul>`, как показано выше, или с любой произвольной разметкой "сверните свою". Обратите внимание, что если Вы используете `<nav>`, Вам не следует добавлять `role="tablist"` непосредственно к нему, так как это переопределит собственную роль элемента как ориентира навигации. Вместо этого переключитесь на альтернативный элемент (в примере ниже простой `<div>`) и оберните его в `<nav>`.

<div class="bd-example">
  <nav>
    <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
      <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Главная</a>
      <a class="nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Профиль</a>
      <a class="nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Контакт</a>
    </div>
  </nav>
  <div class="tab-content" id="nav-tabContent">
    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
      <p>Et et consectetur ipsum labore excepteur est proident excepteur ad velit occaecat qui minim occaecat veniam. Fugiat veniam incididunt anim aliqua enim pariatur veniam sunt est aute sit dolor anim. Velit non irure adipisicing aliqua ullamco irure incididunt irure non esse consectetur nostrud minim non minim occaecat. Amet duis do nisi duis veniam non est eiusmod tempor incididunt tempor dolor ipsum in qui sit. Exercitation mollit sit culpa nisi culpa non adipisicing reprehenderit do dolore. Duis reprehenderit occaecat anim ullamco ad duis occaecat ex.</p>
    </div>
    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
      <p>Nulla est ullamco ut irure incididunt nulla Lorem Lorem minim irure officia enim reprehenderit. Magna duis labore cillum sint adipisicing exercitation ipsum. Nostrud ut anim non exercitation velit laboris fugiat cupidatat. Commodo esse dolore fugiat sint velit ullamco magna consequat voluptate minim amet aliquip ipsum aute laboris nisi. Labore labore veniam irure irure ipsum pariatur mollit magna in cupidatat dolore magna irure esse tempor ad mollit. Dolore commodo nulla minim amet ipsum officia consectetur amet ullamco voluptate nisi commodo ea sit eu.</p>
    </div>
    <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
      <p>Sint sit mollit irure quis est nostrud cillum consequat Lorem esse do quis dolor esse fugiat sunt do. Eu ex commodo veniam Lorem aliquip laborum occaecat qui Lorem esse mollit dolore anim cupidatat. Deserunt officia id Lorem nostrud aute id commodo elit eiusmod enim irure amet eiusmod qui reprehenderit nostrud tempor. Fugiat ipsum excepteur in aliqua non et quis aliquip ad irure in labore cillum elit enim. Consequat aliquip incididunt ipsum et minim laborum laborum laborum et cillum labore. Deserunt adipisicing cillum id nulla minim nostrud labore eiusmod et amet. Laboris consequat consequat commodo non ut non aliquip reprehenderit nulla anim occaecat. Sunt sit ullamco reprehenderit irure ea ullamco Lorem aute nostrud magna.</p>
    </div>
  </div>
</div>

{{< highlight html >}}
<nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Главная</a>
    <a class="nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Профиль</a>
    <a class="nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Контакт</a>
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">...</div>
  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">...</div>
  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">...</div>
</div>
{{< /highlight >}}

Плагин вкладок также работает с таблетками.

<div class="bd-example">
  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
    <li class="nav-item" role="presentation">
      <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Главная</a>
    </li>
    <li class="nav-item" role="presentation">
      <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Профиль</a>
    </li>
    <li class="nav-item" role="presentation">
      <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Контакт</a>
    </li>
  </ul>
  <div class="tab-content" id="pills-tabContent">
    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
      <p>Consequat occaecat ullamco amet non eiusmod nostrud dolore irure incididunt est duis anim sunt officia. Fugiat velit proident aliquip nisi incididunt nostrud exercitation proident est nisi. Irure magna elit commodo anim ex veniam culpa eiusmod id nostrud sit cupidatat in veniam ad. Eiusmod consequat eu adipisicing minim anim aliquip cupidatat culpa excepteur quis. Occaecat sit eu exercitation irure Lorem incididunt nostrud.</p>
    </div>
    <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
      <p>Ad pariatur nostrud pariatur exercitation ipsum ipsum culpa mollit commodo mollit ex. Aute sunt incididunt amet commodo est sint nisi deserunt pariatur do. Aliquip ex eiusmod voluptate exercitation cillum id incididunt elit sunt. Qui minim sit magna Lorem id et dolore velit Lorem amet exercitation duis deserunt. Anim id labore elit adipisicing ut in id occaecat pariatur ut ullamco ea tempor duis.</p>
    </div>
    <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
      <p>Est quis nulla laborum officia ad nisi ex nostrud culpa Lorem excepteur aliquip dolor aliqua irure ex. Nulla ut duis ipsum nisi elit fugiat commodo sunt reprehenderit laborum veniam eu veniam. Eiusmod minim exercitation fugiat irure ex labore incididunt do fugiat commodo aliquip sit id deserunt reprehenderit aliquip nostrud. Amet ex cupidatat excepteur aute veniam incididunt mollit cupidatat esse irure officia elit do ipsum ullamco Lorem. Ullamco ut ad minim do mollit labore ipsum laboris ipsum commodo sunt tempor enim incididunt. Commodo quis sunt dolore aliquip aute tempor irure magna enim minim reprehenderit. Ullamco consectetur culpa veniam sint cillum aliqua incididunt velit ullamco sunt ullamco quis quis commodo voluptate. Mollit nulla nostrud adipisicing aliqua cupidatat aliqua pariatur mollit voluptate voluptate consequat non.</p>
    </div>
  </div>
</div>

{{< highlight html >}}
<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Главная</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Профиль</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Контакт</a>
  </li>
</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">...</div>
  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">...</div>
  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">...</div>
</div>
{{< /highlight >}}

И с вертикальными таблетками.

<div class="bd-example">
  <div class="d-flex align-items-start">
    <div class="nav flex-column nav-pills mr-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Главная</a>
      <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Профиль</a>
      <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Сообщения</a>
      <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Настройки</a>
    </div>
    <div class="tab-content" id="v-pills-tabContent">
      <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
        <p>Cillum ad ut irure tempor velit nostrud occaecat ullamco aliqua anim Lorem sint. Veniam sint duis incididunt do esse magna mollit excepteur laborum qui. Id id reprehenderit sit est eu aliqua occaecat quis et velit excepteur laborum mollit dolore eiusmod. Ipsum dolor in occaecat commodo et voluptate minim reprehenderit mollit pariatur. Deserunt non laborum enim et cillum eu deserunt excepteur ea incididunt minim occaecat.</p>
      </div>
      <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
        <p>Culpa dolor voluptate do laboris laboris irure reprehenderit id incididunt duis pariatur mollit aute magna pariatur consectetur. Eu veniam duis non ut dolor deserunt commodo et minim in quis laboris ipsum velit id veniam. Quis ut consectetur adipisicing officia excepteur non sit. Ut et elit aliquip labore Lorem enim eu. Ullamco mollit occaecat dolore ipsum id officia mollit qui esse anim eiusmod do sint minim consectetur qui.</p>
      </div>
      <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
        <p>Fugiat id quis dolor culpa eiusmod anim velit excepteur proident dolor aute qui magna. Ad proident laboris ullamco esse anim Lorem Lorem veniam quis Lorem irure occaecat velit nostrud magna nulla. Velit et et proident Lorem do ea tempor officia dolor. Reprehenderit Lorem aliquip labore est magna commodo est ea veniam consectetur.</p>
      </div>
      <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
        <p>Eu dolore ea ullamco dolore Lorem id cupidatat excepteur reprehenderit consectetur elit id dolor proident in cupidatat officia. Voluptate excepteur commodo labore nisi cillum duis aliqua do. Aliqua amet qui mollit consectetur nulla mollit velit aliqua veniam nisi id do Lorem deserunt amet. Culpa ullamco sit adipisicing labore officia magna elit nisi in aute tempor commodo eiusmod.</p>
      </div>
    </div>
  </div>
</div>

{{< highlight html >}}
<div class="d-flex align-items-start">
  <div class="nav flex-column nav-pills mr-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
    <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Главная</a>
    <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Профиль</a>
    <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Сообщения</a>
    <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Настройки</a>
  </div>
  <div class="tab-content" id="v-pills-tabContent">
    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">...</div>
    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">...</div>
    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">...</div>
    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">...</div>
  </div>
</div>
{{< /highlight >}}

### Использование атрибутов данных

Вы можете активировать навигацию по вкладкам или таблеткам без написания кода JavaScript, просто указав для элемента `data-toggle="tab"` или `data-toggle="pill"`. Используйте эти атрибуты данных в `.nav-tabs` или `.nav-pills`.

{{< highlight html >}}
<!-- Nav tabs -->
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Главная</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Профиль</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="messages-tab" data-toggle="tab" href="#messages" role="tab" aria-controls="messages" aria-selected="false">Сообщения</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="settings-tab" data-toggle="tab" href="#settings" role="tab" aria-controls="settings" aria-selected="false">Настройки</a>
  </li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
  <div class="tab-pane active" id="home" role="tabpanel" aria-labelledby="home-tab">...</div>
  <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
  <div class="tab-pane" id="messages" role="tabpanel" aria-labelledby="messages-tab">...</div>
  <div class="tab-pane" id="settings" role="tabpanel" aria-labelledby="settings-tab">...</div>
</div>
{{< /highlight >}}

### Через JavaScript

Включите вкладки с вкладками через JavaScript (каждую вкладку нужно активировать отдельно):

{{< highlight js >}}
var triggerTabList = [].slice.call(document.querySelectorAll('#myTab a'))
triggerTabList.forEach(function (triggerEl) {
  var tabTrigger = new bootstrap.Tab(triggerEl)

  triggerEl.addEventListener('click', function (e) {
    e.preventDefault()
    tabTrigger.show()
  })
})
{{< /highlight >}}

Вы можете активировать отдельные вкладки несколькими способами:

{{< highlight js >}}
var triggerEl = document.querySelector('#myTab a[href="#profile"]')
bootstrap.Tab.getInstance(triggerEl).show() // Select tab by name

var triggerFirstTabEl = document.querySelector('#myTab li:first-child a')
bootstrap.Tab.getInstance(triggerFirstTabEl).show() // Select first tab
{{< /highlight >}}

### Эффект затухания

Чтобы вкладки постепенно появлялись, добавьте `.fade` к каждому` .tab-pane`. На первой панели вкладок также должен быть `.show`, чтобы исходное содержимое было видимым.

{{< highlight html >}}
<div class="tab-content">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">...</div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
  <div class="tab-pane fade" id="messages" role="tabpanel" aria-labelledby="messages-tab">...</div>
  <div class="tab-pane fade" id="settings" role="tabpanel" aria-labelledby="settings-tab">...</div>
</div>
{{< /highlight >}}

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

#### constructor

Активирует элемент вкладки и контейнер содержимого. Вкладка должна иметь либо `data-target`, либо `href`, нацеленный на узел контейнера в DOM.

{{< highlight html >}}
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Главная</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Профиль</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="messages-tab" data-toggle="tab" href="#messages" role="tab" aria-controls="messages" aria-selected="false">Сообщения</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="settings-tab" data-toggle="tab" href="#settings" role="tab" aria-controls="settings" aria-selected="false">Настройки</a>
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
{{< /highlight >}}

#### show

Выбирает данную вкладку и показывает связанную с ней панель. Любая другая вкладка, которая была выбрана ранее, становится невыделенной, а связанная с ней панель скрывается. **Возврат к вызывающему абоненту до того, как панель вкладок будет отображена** (то есть до того, как произойдет событие `shown.bs.tab`).

{{< highlight js >}}
  var someTabTriggerEl = document.querySelector('#someTabTrigger')
  var tab = new bootstrap.Tab(someTabTriggerEl)

  tab.show()
{{< /highlight >}}

#### dispose

Уничтожает вкладку элемента.

#### getInstance

*Статический* метод, позволяющий получить экземпляр вкладки, связанный с элементом DOM.

{{< highlight js >}}
var triggerEl = document.querySelector('#trigger')
var tab = bootstrap.Tab.getInstance(triggerEl) // Returns a Bootstrap tab instance
{{< /highlight >}}

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

{{< highlight js >}}
var tabEl = document.querySelector('a[data-toggle="tab"]')
tabEl.addEventListener('shown.bs.tab', function (e) {
  e.target // недавно активированная вкладка
  e.relatedTarget // предыдущая активная вкладка
})
{{< /highlight >}}
