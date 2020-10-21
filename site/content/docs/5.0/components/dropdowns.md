---
layout: docs
title: Выпадающие списки
description: Переключайте контекстные наложения для отображения списков ссылок и многого другого с помощью плагина выпадающего списка Bootstrap.
group: components
toc: true
---

## Обзор

Выпадающие списки - это переключаемые контекстные наложения для отображения списков ссылок и многого другого. Они сделаны интерактивными с помощью включенного плагина JavaScript для выпадающего меню Bootstrap. Они переключаются щелчком, а не при наведении курсора; это [намеренное дизайнерское решение](https://markdotto.com/2012/02/27/bootstrap-explained-dropdowns/).

Выпадающие списки созданы на основе сторонней библиотеки, [Popper.js](https://popper.js.org/), которая обеспечивает динамическое позиционирование и обнаружение области просмотра. Не забудьте включить [popper.min.js]({{< param "cdn.popper" >}}) перед загрузочным JavaScript или используйте `bootstrap.bundle.min.js` / `bootstrap.bundle.js`, который содержит Popper.js. Popper.js не используется для размещения выпадающих списков на панели навигации, хотя динамическое позиционирование не требуется.

## Доступность

The [<abbr title="Инициатива веб-доступности">WAI</abbr> <abbr title="Доступные полнофункциональные интернет-приложения">ARIA</abbr>](https://www.w3.org/TR/wai-aria/) стандарт определяет фактический виджет [`role="menu"` widget](https://www.w3.org/WAI/PF/aria/roles#menu), но это характерно для меню, похожего на приложение, которое запускает действия или функции. Меню <abbr title="Accessible Rich Internet Applications">ARIA</abbr> могут содержать только пункты меню, пункты меню флажков, пункты меню радиокнопок, группы радиокнопок и подменю.

С другой стороны, выпадающие списки Bootstrap разработаны как общие и применимы к различным ситуациям и структурам разметки. Например, можно создавать выпадающие списки, содержащие дополнительные входные данные и элементы управления формой, такие как поля поиска или формы входа. По этой причине Bootstrap не ожидает (и не добавляет автоматически) какие-либо атрибуты `role` и `aria-`, необходимые для истинных меню <abbr title="Accessible Rich Internet Applications">ARIA</abbr>. Авторы должны сами включить эти более конкретные атрибуты.

Однако Bootstrap добавляет встроенную поддержку для большинства стандартных взаимодействий с меню клавиатуры, таких как возможность перемещаться по отдельным элементам `.dropdown-item` с помощью клавиш курсора и закрывать меню с помощью клавиши <kbd>ESC</kbd>.

## Примеры

Оберните переключатель выпадающего списка (Ваша кнопка или ссылка) и выпадающее меню внутри `.dropdown` или другого элемента, который объявляет `position: relative;`. Выпадающие списки можно запускать из элементов `<a>` или `<button>`, чтобы лучше соответствовать Вашим потенциальным потребностям. В показанных здесь примерах используются семантические элементы `<ul>` там, где это необходимо, но поддерживается настраиваемая разметка.

### Отдельная кнопка

Любой отдельный `.btn` можно превратить в выпадающий список с некоторыми изменениями разметки. Вот как Вы можете заставить их работать с любым элементом `<button>`:

{{< example >}}
<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false">
    Кнопка выпадающего списка
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
  </ul>
</div>
{{< /example >}}

И с элементами `<a>`:

{{< example >}}
<div class="dropdown">
  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-expanded="false">
    Ссылка выпадающего списка
  </a>

  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
  </ul>
</div>
{{< /example >}}

Самое приятное то, что Вы можете сделать это и с любым вариантом кнопки:

<div class="bd-example">
  <div class="btn-group">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Primary</button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Secondary</button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Success</button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Info</button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Warning</button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Danger</button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
</div>

{{< highlight html >}}
<!-- Example single danger button -->
<div class="btn-group">
  <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
    Действие
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
  </ul>
</div>
{{< /highlight >}}

### Отдельная кнопка

Точно так же создайте выпадающие списки с разделенными кнопками с практически такой же разметкой, что и выпадающие списки с одной кнопкой, но с добавлением `.dropdown-toggle-split` для правильного интервала вокруг курсора выпадающего списка.

Мы используем этот дополнительный класс, чтобы уменьшить горизонтальный `padding` по обе стороны от каретки на 25% и удалить `margin-left`, который добавляется для обычных выпадающих списков кнопок. Эти дополнительные изменения удерживают курсор в центре разделенной кнопки и обеспечивают область нажатия более подходящего размера рядом с основной кнопкой.

<div class="bd-example">
  <div class="btn-group">
    <button type="button" class="btn btn-primary">Primary</button>
    <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
      <span class="visually-hidden">Переключатель выпадающего списка</span>
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-secondary">Secondary</button>
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
      <span class="visually-hidden">Переключатель выпадающего списка</span>
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-success">Success</button>
    <button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
      <span class="visually-hidden">Переключатель выпадающего списка</span>
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-info">Info</button>
    <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
      <span class="visually-hidden">Переключатель выпадающего списка</span>
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-warning">Warning</button>
    <button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
      <span class="visually-hidden">Переключатель выпадающего списка</span>
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-danger">Danger</button>
    <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
      <span class="visually-hidden">Переключатель выпадающего списка</span>
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
</div>

{{< highlight html >}}
<!-- Example split danger button -->
<div class="btn-group">
  <button type="button" class="btn btn-danger">Действие</button>
  <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Переключатель выпадающего списка</span>
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
  </ul>
</div>
{{< /highlight >}}

## Размеры

Выпадающие списки кнопок работают с кнопками любого размера, включая кнопку по умолчанию и разделенную кнопку выпадающего списка.

<div class="bd-example">
  <div class="btn-toolbar" role="toolbar">
    <div class="btn-group">
      <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
        Большая кнопка
      </button>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Действие</a></li>
        <li><a class="dropdown-item" href="#">Другое действие</a></li>
        <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
      </ul>
    </div><!-- /btn-group -->
    <div class="btn-group ml-2">
      <button type="button" class="btn btn-lg btn-secondary">Большая раздельная кнопка</button>
      <button type="button" class="btn btn-lg btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
        <span class="visually-hidden">Переключатель выпадающего списка</span>
      </button>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Действие</a></li>
        <li><a class="dropdown-item" href="#">Другое действие</a></li>
        <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
      </ul>
    </div><!-- /btn-group -->
  </div><!-- /btn-toolbar -->
  <div class="btn-toolbar" role="toolbar">
    <div class="btn-group">
      <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
        Маленькая кнопка
      </button>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Действие</a></li>
        <li><a class="dropdown-item" href="#">Другое действие</a></li>
        <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
      </ul>
    </div><!-- /btn-group -->
    <div class="btn-group ml-2">
      <button type="button" class="btn btn-sm btn-secondary">Маленькая раздельная кнопка</button>
      <button type="button" class="btn btn-sm btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
        <span class="visually-hidden">Переключатель выпадающего списка</span>
      </button>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Действие</a></li>
        <li><a class="dropdown-item" href="#">Другое действие</a></li>
        <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
      </ul>
    </div><!-- /btn-group -->
  </div><!-- /btn-toolbar -->
</div>

{{< highlight html >}}
<!-- Группы больших кнопок (по умолчанию и разделенные) -->
<div class="btn-group">
  <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
    Большая кнопка
  </button>
  <ul class="dropdown-menu">
    ...
  </ul>
</div>
<div class="btn-group">
  <button class="btn btn-secondary btn-lg" type="button">
    Большая раздельная кнопка
  </button>
  <button type="button" class="btn btn-lg btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Переключатель выпадающего списка</span>
  </button>
  <ul class="dropdown-menu">
    ...
  </ul>
</div>

<!-- Группы маленьких кнопок (по умолчанию и разделенные) -->
<div class="btn-group">
  <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
    Маленькая кнопка
  </button>
  <ul class="dropdown-menu">
    ...
  </ul>
</div>
<div class="btn-group">
  <button class="btn btn-secondary btn-sm" type="button">
    Маленькая раздельная кнопка
  </button>
  <button type="button" class="btn btn-sm btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Переключатель выпадающего списка</span>
  </button>
  <ul class="dropdown-menu">
    ...
  </ul>
</div>
{{< /highlight >}}

## Темные выпадающие списки

Включите более темные выпадающие списки, чтобы они соответствовали темной панели навигации или индивидуальному стилю, добавив `.dropdown-menu-dark` к существующему `.dropdown-menu`. Никаких изменений в выпадающих элементах не требуется.

{{< example >}}
<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2" data-toggle="dropdown" aria-expanded="false">
    Кнопка выпадающего списка
  </button>
  <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
    <li><a class="dropdown-item active" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
    <li><hr class="dropdown-divider"></li>
    <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
  </ul>
</div>
{{< /example >}}

И использовать его в навигационной панели:

{{< example >}}
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Панель навигации</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
      <ul class="navbar-nav">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-toggle="dropdown" aria-expanded="false">
            Выпадающий список
          </a>
          <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
            <li><a class="dropdown-item" href="#">Действие</a></li>
            <li><a class="dropdown-item" href="#">Другое действие</a></li>
            <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
{{< /example >}}

## Направления

### Вверх

Вызвать выпадающее меню над элементами, добавив к родительскому элементу `.dropup`.

<div class="bd-example">
  <div class="btn-group dropup">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
      Выпадающий список вверх
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div>
  <div class="btn-group dropup">
    <button type="button" class="btn btn-secondary">
      Раздельная кнопка выпадающего списка вверх
    </button>
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
      <span class="visually-hidden">Переключатель выпадающего списка вверх</span>
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div>
</div>

{{< highlight html >}}
<!-- Кнопка выпадающего меню по умолчанию -->
<div class="btn-group dropup">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
    Выпадающий список вверх
  </button>
  <ul class="dropdown-menu">
    <!-- Ссылки выпадающего меню -->
  </ul>
</div>

<!-- Раздельная кнопка выпадающего списка -->
<div class="btn-group dropup">
  <button type="button" class="btn btn-secondary">
    Раздельная кнопка выпадающего списка вверх
  </button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Переключатель выпадающего списка</span>
  </button>
  <ul class="dropdown-menu">
    <!-- Ссылки выпадающего меню -->
  </ul>
</div>
{{< /highlight >}}

### Вправо

Откройте выпадающее меню справа от элементов, добавив `.dropright` к родительскому элементу.

<div class="bd-example">
  <div class="btn-group dropright">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
      Выпадающий список вправо
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div>
  <div class="btn-group dropright">
    <button type="button" class="btn btn-secondary">
      Раздельная кнопка выпадающего списка вправо
    </button>
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
      <span class="visually-hidden">Переключатель выпадающего списка вправо</span>
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div>
</div>

{{< highlight html >}}
<!-- Кнопка выпадающего списка вправо по умолчанию -->
<div class="btn-group dropright">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
    Выпадающий список вправо
  </button>
  <ul class="dropdown-menu">
    <!-- Ссылки выпадающего меню -->
  </ul>
</div>

<!-- Раздельная кнопка выпадающего списка вправо -->
<div class="btn-group dropright">
  <button type="button" class="btn btn-secondary">
    Раздельный выпадающий список вправо
  </button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Переключатель выпадающего списка вправо</span>
  </button>
  <ul class="dropdown-menu">
    <!-- Ссылки выпадающего меню -->
  </ul>
</div>
{{< /highlight >}}

### Влево

Активируйте выпадающие меню слева от элементов, добавив `.dropleft` к родительскому элементу.

<div class="bd-example">
  <div class="btn-group dropleft">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
      Выпадающий список влево
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div>
  <div class="btn-group">
    <div class="btn-group dropleft" role="group">
      <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
        <span class="visually-hidden">Переключатель выпадающего списка влево</span>
      </button>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Действие</a></li>
        <li><a class="dropdown-item" href="#">Другое действие</a></li>
        <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
      </ul>
    </div>
    <button type="button" class="btn btn-secondary">
      Раздельный выпадающий список влево
    </button>
  </div>
</div>

{{< highlight html >}}
<!-- Кнопка выпадающего списка влево по умолчанию -->
<div class="btn-group dropleft">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
    Выпадающий список влево
  </button>
  <ul class="dropdown-menu">
    <!-- Ссылки выпадающего меню -->
  </ul>
</div>

<!-- Раздельная кнопка выпадающего списка влево -->
<div class="btn-group">
  <div class="btn-group dropleft" role="group">
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
      <span class="visually-hidden">Переключатель выпадающего списка влево</span>
    </button>
    <ul class="dropdown-menu">
      <!-- Ссылки выпадающего меню -->
    </ul>
  </div>
  <button type="button" class="btn btn-secondary">
    Раздельный выпадающий список влево
  </button>
</div>
{{< /highlight >}}

## Элементы меню

Исторически содержимое выпадающего меню *должно было быть* ссылками, но в версии 4 это уже не так. Теперь вы можете при желании использовать элементы `<button>` в выпадающих списках вместо просто `<a>`.

{{< example >}}
<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-expanded="false">
    Выпадающий список
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
    <li><button class="dropdown-item" type="button">Действие</button></li>
    <li><button class="dropdown-item" type="button">Другое действие</button></li>
    <li><button class="dropdown-item" type="button">Что-то еще здесь</button></li>
  </ul>
</div>
{{< /example >}}

Вы также можете создавать неинтерактивные выпадающие элементы с помощью `.dropdown-item-text`. Не стесняйтесь изменять стиль с помощью пользовательских CSS или текстовых утилит.

{{< example >}}
<ul class="dropdown-menu">
  <li><span class="dropdown-item-text">Текст выпадающего списка</span></li>
  <li><a class="dropdown-item" href="#">Действие</a></li>
  <li><a class="dropdown-item" href="#">Другое действие</a></li>
  <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
</ul>
{{< /example >}}

### Активный

Добавьте `.active` к элементам в выпадающем списке, чтобы **сделать их активными**. Чтобы передать активное состояние вспомогательным технологиям, используйте атрибут `aria-current`, используя значение `page` для текущей страницы или `true` для текущего элемента в наборе.

{{< example >}}
<ul class="dropdown-menu">
  <li><a class="dropdown-item" href="#">Обычная ссылка</a></li>
  <li><a class="dropdown-item active" href="#" aria-current="true">Активная ссылка</a></li>
  <li><a class="dropdown-item" href="#">Другая ссылка</a></li>
</ul>
{{< /example >}}

### Отключенный

Добавьте `.disabled` к элементам в выпадающем списке, чтобы **сделать их отключенными**.

{{< example >}}
<ul class="dropdown-menu">
  <li><a class="dropdown-item" href="#">Обычная ссылка</a></li>
  <li><a class="dropdown-item disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная ссылка</a></li>
  <li><a class="dropdown-item" href="#">Другая ссылка</a></li>
</ul>
{{< /example >}}

## Выравнивание меню

По умолчанию выпадающее меню автоматически располагается на 100% сверху и слева от своего родителя. Добавьте `.dropdown-menu-right` в `.dropdown-menu`, чтобы выровнять выпадающее меню по правому краю..

{{% callout info %}}
**Внимание!** Выпадающие списки позиционируются благодаря Popper.js (кроме случаев, когда они содержатся в навигационной панели).
{{% /callout %}}

{{< example >}}
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
    Меню с выравниванием по правому краю
  </button>
  <ul class="dropdown-menu dropdown-menu-right">
    <li><button class="dropdown-item" type="button">Действие</button></li>
    <li><button class="dropdown-item" type="button">Другое действие</button></li>
    <li><button class="dropdown-item" type="button">Что-то еще здесь</button></li>
  </ul>
</div>
{{< /example >}}

### Отзывчивое выравнивание

Если Вы хотите использовать адаптивное выравнивание, отключите динамическое позиционирование, добавив атрибут `data-display="static"` и используйте гибкие классы вариантов.

Чтобы выровнять **по правой стороне** выпадающее меню с заданной контрольной точкой или больше, добавьте `.dropdown-menu{-sm|-md|-lg|-xl|-xxl}-right`.

{{< example >}}
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" data-display="static" aria-expanded="false">
    По левому краю, но по правому краю на большом экране
  </button>
  <ul class="dropdown-menu dropdown-menu-lg-right">
    <li><button class="dropdown-item" type="button">Действие</button></li>
    <li><button class="dropdown-item" type="button">Другое действие</button></li>
    <li><button class="dropdown-item" type="button">Что-то еще здесь</button></li>
  </ul>
</div>
{{< /example >}}

Чтобы выровнять **по левой стороне** выпадающее меню с заданной контрольной точкой или больше, добавьте `.dropdown-menu-right` и `.dropdown-menu{-sm|-md|-lg|-xl|-xxl}-left`.

{{< example >}}
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" data-display="static" aria-expanded="false">
    По правому краю, но по левому краю на большом экране
  </button>
  <ul class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left">
    <li><button class="dropdown-item" type="button">Действие</button></li>
    <li><button class="dropdown-item" type="button">Другое действие</button></li>
    <li><button class="dropdown-item" type="button">Что-то еще здесь</button></li>
  </ul>
</div>
{{< /example >}}

Обратите внимание, что Вам не нужно добавлять атрибут `data-display="static"` к кнопке выпадающего списка в навигационных панелях, поскольку Popper.js не используется в навигационных панелях.

## Содержание меню

### Заголовки

Добавьте заголовок для обозначения разделов действий в любом выпадающем меню.

{{< example >}}
<ul class="dropdown-menu">
  <li><h6 class="dropdown-header">Заголовок выпадающего списка</h6></li>
  <li><a class="dropdown-item" href="#">Действие</a></li>
  <li><a class="dropdown-item" href="#">Другое действие</a></li>
</ul>
{{< /example >}}

### Разделители

Разделите группы связанных пунктов меню разделителем.

{{< example >}}
<ul class="dropdown-menu">
  <li><a class="dropdown-item" href="#">Действие</a></li>
  <li><a class="dropdown-item" href="#">Другое действие</a></li>
  <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
  <li><hr class="dropdown-divider"></li>
  <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
</ul>
{{< /example >}}

### Текст

Поместите произвольный текст в выпадающее меню с текстом и используйте [утилиты отступов]({{< docsref "/utilities/spacing" >}}). Обратите внимание, что Вам, вероятно, потребуются дополнительные стили размеров, чтобы ограничить ширину меню.

{{< example >}}
<div class="dropdown-menu p-4 text-muted" style="max-width: 200px;">
  <p>
    Пример текста, который свободно перемещается в выпадающем меню.
  </p>
  <p class="mb-0">
    И это еще один пример текста.
  </p>
</div>
{{< /example >}}

### Формы

Поместите форму в выпадающее меню или превратите ее в выпадающее меню и используйте [утилиты полей или отступов]({{< docsref "/utilities/spacing" >}}), чтобы дать ей необходимое отрицательное пространство.

{{< example >}}
<div class="dropdown-menu">
  <form class="px-4 py-3">
    <div class="mb-3">
      <label for="exampleDropdownFormEmail1" class="form-label">Адрес электронной почты</label>
      <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com">
    </div>
    <div class="mb-3">
      <label for="exampleDropdownFormPassword1" class="form-label">Пароль</label>
      <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Пароль">
    </div>
    <div class="mb-3">
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="dropdownCheck">
        <label class="form-check-label" for="dropdownCheck">
          Запомнить меня
        </label>
      </div>
    </div>
    <button type="submit" class="btn btn-primary">Войти</button>
  </form>
  <div class="dropdown-divider"></div>
  <a class="dropdown-item" href="#">Впервые здесь? Зарегистрироваться</a>
  <a class="dropdown-item" href="#">Забыли пароль?</a>
</div>
{{< /example >}}

{{< example >}}
<form class="dropdown-menu p-4">
  <div class="mb-3">
    <label for="exampleDropdownFormEmail2" class="form-label">Адрес электронной почты</label>
    <input type="email" class="form-control" id="exampleDropdownFormEmail2" placeholder="email@example.com">
  </div>
  <div class="mb-3">
    <label for="exampleDropdownFormPassword2" class="form-label">Пароль</label>
    <input type="password" class="form-control" id="exampleDropdownFormPassword2" placeholder="Пароль">
  </div>
  <div class="mb-3">
    <div class="form-check">
      <input type="checkbox" class="form-check-input" id="dropdownCheck2">
      <label class="form-check-label" for="dropdownCheck2">
        Запомнить меня
      </label>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Войти</button>
</form>
{{< /example >}}

## Параметры выпадающего списка

Используйте `data-offset` или `data-reference`, чтобы изменить расположение выпадающего списка.

{{< example >}}
<div class="d-flex">
  <div class="dropdown mr-1">
    <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownMenuOffset" data-toggle="dropdown" aria-expanded="false" data-offset="10,20">
      Смещение
    </button>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
    </ul>
  </div>
  <div class="btn-group">
    <button type="button" class="btn btn-secondary">Ссылка</button>
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-expanded="false" data-reference="parent">
      <span class="visually-hidden">Переключатель выпадающего списка</span>
    </button>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenuReference">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div>
</div>
{{< /example >}}

## Использование

С помощью атрибутов данных или JavaScript плагин выпадающего списка переключает скрытый контент (выпадающие меню) путем переключения класса `.show` в родительском элементе списка. Атрибут `data-toggle="dropdown"` используется для закрытия выпадающих меню на уровне приложения, поэтому рекомендуется всегда использовать его.

{{% callout info %}}
На устройствах с сенсорным экраном открытие выпадающего списка добавляет пустые обработчики `mouseover` к непосредственным потомкам элемента `<body>`. Этот, по общему признанию, уродливый хак необходим, чтобы обойти [причуду в делегировании событий iOS](https://www.quirksmode.org/blog/archives/2014/02/mouse_event_bub.html), которая в противном случае предотвратила бы нажатие где-нибудь за пределами выпадающего списка от запуска кода, закрывающего выпадающий список. После закрытия выпадающего списка эти дополнительные пустые обработчики `mouseover` удаляются.
{{% /callout %}}

### Через атрибуты данных

Добавьте `data-toggle="dropdown"` к ссылке или кнопке, чтобы переключить выпадающий список.

{{< highlight html >}}
<div class="dropdown">
  <button id="dLabel" type="button" data-toggle="dropdown" aria-expanded="false">
    Триггер выпадающего списка
  </button>
  <ul class="dropdown-menu" aria-labelledby="dLabel">
    ...
  </ul>
</div>
{{< /highlight >}}

### Через JavaScript

Вызов выпадающих списков через JavaScript:

{{< highlight js >}}
var dropdownElementList = [].slice.call(document.querySelectorAll('.dropdown-toggle'))
var dropdownList = dropdownElementList.map(function (dropdownToggleEl) {
  return new bootstrap.Dropdown(dropdownToggleEl)
})
{{< /highlight >}}

{{% callout info %}}
##### `data-toggle="dropdown"` по-прежнему требуется

Независимо от того, вызываете ли вы выпадающий список через JavaScript или вместо этого используете data-api, в элементе триггера выпадающего списка всегда должен присутствовать `data-toggle="dropdown"`.
{{% /callout %}}

### Параметры

Параметры можно передавать через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-`, как в `data-offset=""`.

<table class="table">
  <thead>
    <tr>
      <th style="width: 100px;">Имя</th>
      <th style="width: 100px;">Тип</th>
      <th style="width: 50px;">По умолчанию</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>offset</code></td>
      <td>number | string | function</td>
      <td><code>0</code></td>
      <td>
        <p>Смещение выпадающего списка относительно его цели.</p>
        <p>Когда функция используется для определения смещения, она вызывается с объектом, содержащим данные смещения в качестве первого аргумента. Функция должна возвращать объект с такой же структурой. Узел DOM запускающего элемента передается в качестве второго аргумента.</p>
        <p>Для получения дополнительной информации обратитесь к <a href="https://popper.js.org/docs/v1/#modifiers..offset.offset">документации смещения</a> Popper.js.</p>
      </td>
    </tr>
    <tr>
      <td><code>flip</code></td>
      <td>boolean</td>
      <td><code>true</code></td>
      <td>Разрешить выпадающий список переворачиваться в случае перекрытия ссылочного элемента. Для получения дополнительной информации обратитесь к <a href="https://popper.js.org/docs/v1/#modifiers..flip.enabled">документации переворотов</a> Popper.js.</td>
    </tr>
    <tr>
      <td><code>boundary</code></td>
      <td>string | element</td>
      <td><code>'scrollParent'</code></td>
      <td>Граница ограничения переполнения выпадающего меню. Принимает значения <code>'viewport'</code>, <code>'window'</code>, <code>'scrollParent'</code> или ссылку HTMLElement (только JavaScript). Дополнительную информацию см в <a href="https://popper.js.org/docs/v1/#modifiers..preventOverflow.boundariesElement">документации предотвращения переполнения</a> Popper.js.</td>
    </tr>
    <tr>
      <td><code>reference</code></td>
      <td>string | element</td>
      <td><code>'toggle'</code></td>
      <td>Ссылочный элемент выпадающего меню. Принимает значения <code>'toggle'</code>, <code>'parent'</code> или ссылку HTMLElement. Дополнительную информацию см в <a href="https://popper.js.org/docs/v1/#referenceObject">документацию ссылки объекта</a> Popper.js.</td>
    </tr>
    <tr>
      <td><code>display</code></td>
      <td>string</td>
      <td><code>'dynamic'</code></td>
      <td>По умолчанию мы используем Popper.js для динамического позиционирования. Отключите это с помощью <code>static</code>.</td>
    </tr>
    <tr>
      <td><code>popperConfig</code></td>
      <td>null | object</td>
      <td><code>null</code></td>
      <td>Чтобы изменить конфигурацию Popper.js по умолчанию для Bootstrap, см. <a href="https://popper.js.org/docs/v1/#Popper.Defaults">конфигурацию Popper.js</a></td>
    </tr>
  </tbody>
</table>

Обратите внимание, когда для параметра `boundary` установлено любое значение, кроме `'scrollParent'`, стиль `position: static` применяется к контейнеру `.dropdown`.

### Методы

<table class="table">
  <thead>
    <tr>
      <th>Метод</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>toggle</code></td>
      <td>
        Переключает выпадающее меню данной панели навигации или навигации с вкладками.
      </td>
    </tr>
    <tr>
      <td><code>show</code></td>
      <td>
        Показывает выпадающее меню данной панели навигации или навигации с вкладками.
      </td>
    </tr>
    <tr>
      <td><code>hide</code></td>
      <td>
        Скрывает выпадающее меню данной панели навигации или навигации с вкладками.
      </td>
    </tr>
    <tr>
      <td><code>update</code></td>
      <td>
        Обновляет положение выпадающего списка элемента.
      </td>
    </tr>
    <tr>
      <td><code>dispose</code></td>
      <td>
        Уничтожает выпадающий список элемента. (Удаляет сохраненные данные в элементе DOM)
      </td>
    </tr>
    <tr>
      <td><code>getInstance</code></td>
      <td>
        Статический метод, который позволяет получить выпадающий список, связанный с элементом DOM.
      </td>
    </tr>
  </tbody>
</table>

### События

Все выпадающие события запускаются в родительском элементе `.dropdown-menu` и имеют свойство `relatedTarget`, значением которого является переключаемый элемент привязки.
События `hide.bs.dropdown` и `hidden.bs.dropdown` имеют свойство `clickEvent` (только если исходный тип события `click`), который содержит объект события для события щелчка.

<table class="table">
  <thead>
    <tr>
      <th>Метод</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
        <code>show.bs.dropdown</code>
      </td>
      <td>
        Срабатывает немедленно при вызове метода экземпляра show.
      </td>
    </tr>
    <tr>
      <td>
        <code>shown.bs.dropdown</code>
      </td>
      <td>
        Запускается, когда выпадающий список становится видимым для пользователя и переходы CSS завершены.
      </td>
    </tr>
    <tr>
      <td>
        <code>hide.bs.dropdown</code>
      </td>
      <td>
        Срабатывает немедленно при вызове метода экземпляра hide.
      </td>
    </tr>
    <tr>
      <td>
        <code>hidden.bs.dropdown</code>
      </td>
      <td>
        Запускается, когда выпадающий список перестает быть скрытым от пользователя и переходы CSS завершены.
      </td>
    </tr>
  </tbody>
</table>

{{< highlight js >}}
var myDropdown = document.getElementById('myDropdown')
myDropdown.addEventListener('show.bs.dropdown', function () {
  // сделайте что-нибудь...
})
{{< /highlight >}}
