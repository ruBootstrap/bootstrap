---
layout: docs
title: Выпадающие списки
description: Переключайте контекстные наложения для отображения списков ссылок и многого другого с помощью плагина выпадающего списка Bootstrap.
group: components
toc: true
---

## Обзор

Выпадающие списки - это переключаемые контекстные наложения для отображения списков ссылок и многого другого. Они сделаны интерактивными с помощью включенного плагина JavaScript для выпадающего меню Bootstrap. Они переключаются щелчком, а не при наведении курсора; это [намеренное дизайнерское решение](https://markdotto.com/2012/02/27/bootstrap-explained-dropdowns/).

Выпадающие списки созданы на основе сторонней библиотеки, [Popper](https://popper.js.org/), которая обеспечивает динамическое позиционирование и обнаружение области просмотра. Не забудьте включить [popper.min.js]({{< param "cdn.popper" >}}) перед загрузочным JavaScript или используйте `bootstrap.bundle.min.js` / `bootstrap.bundle.js`, который содержит Popper.js. Popper.js не используется для размещения выпадающих списков на панели навигации, хотя динамическое позиционирование не требуется.

## Доступность

The [<abbr title="Инициатива веб-доступности">WAI</abbr> <abbr title="Доступные полнофункциональные интернет-приложения">ARIA</abbr>](https://www.w3.org/TR/wai-aria/) стандарт определяет фактический виджет [`role="menu"` widget](https://www.w3.org/TR/wai-aria/#menu), но это характерно для меню, похожего на приложение, которое запускает действия или функции. Меню <abbr title="Доступные многофункциональные интернет-приложения">ARIA</abbr> могут содержать только пункты меню, пункты меню флажков, пункты меню радиокнопок, группы радиокнопок и подменю.

С другой стороны, выпадающие списки Bootstrap разработаны как общие и применимы к различным ситуациям и структурам разметки. Например, можно создавать выпадающие списки, содержащие дополнительные входные данные и элементы управления формой, такие как поля поиска или формы входа. По этой причине Bootstrap не ожидает (и не добавляет автоматически) какие-либо атрибуты `role` и `aria-`, необходимые для истинных меню <abbr title="Доступные многофункциональные интернет-приложения">ARIA</abbr>. Авторы должны сами включить эти более конкретные атрибуты.

Однако Bootstrap добавляет встроенную поддержку для большинства стандартных взаимодействий с меню клавиатуры, таких как возможность перемещаться по отдельным элементам `.dropdown-item` с помощью клавиш курсора и закрывать меню с помощью клавиши <kbd>Esc</kbd>.

## Примеры

Оберните переключатель раскрывающегося списка (вашу кнопку или ссылку) и раскрывающееся меню в `.dropdown` или другой элемент, который объявляет `position: relative;`. В идеале вы должны использовать элемент `<button>` в качестве триггера раскрывающегося списка, но плагин будет работать и с элементами `<a>`. Показанные здесь примеры используют семантические элементы `<ul>`, где это уместно, но пользовательская разметка поддерживается.

### Одиночная кнопка

Любой отдельный `.btn` можно превратить в раскрывающийся список с некоторыми изменениями разметки. Вот как вы можете заставить их работать с элементами `<button>`:

{{< example >}}
<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    Кнопка выпадающего списка
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
  </ul>
</div>
{{< /example >}}

Хотя `<button>` является рекомендуемым элементом управления для переключателя раскрывающегося списка, могут быть ситуации, когда вам придется использовать элемент `<a>`. Если вы это сделаете, мы рекомендуем добавить атрибут `role="button"`, чтобы правильно передать назначение элемента управления вспомогательным технологиям, таким как программы чтения с экрана.

{{< example >}}
<div class="dropdown">
  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    Ссылка выпадающего списка
  </a>

  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Другое действие</a></li>
    <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
  </ul>
</div>
{{< /example >}}

Самое приятное то, что Вы можете сделать это и с любым вариантом кнопки:

<div class="bd-example">
  <div class="btn-group">
    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Primary</button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Secondary</button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Success</button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-info dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Info</button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-warning dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Warning</button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Danger</button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
  </div><!-- /btn-group -->
</div>

```html
<!-- Пример отдельной кнопки danger -->
<div class="btn-group">
  <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
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
```

### Раздельная кнопка

Точно так же создайте выпадающие списки с разделенными кнопками с практически такой же разметкой, что и выпадающие списки с одной кнопкой, но с добавлением `.dropdown-toggle-split` для правильного интервала вокруг курсора выпадающего списка.

Мы используем этот дополнительный класс, чтобы уменьшить горизонтальный `padding` по обе стороны от каретки на 25% и удалить `margin-left`, который добавляется для обычных выпадающих списков кнопок. Эти дополнительные изменения удерживают курсор в центре разделенной кнопки и обеспечивают область нажатия более подходящего размера рядом с основной кнопкой.

<div class="bd-example">
  <div class="btn-group">
    <button type="button" class="btn btn-primary">Primary</button>
    <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
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
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
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
    <button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
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
    <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
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
    <button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
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
    <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
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

```html
<!-- Пример отдельной кнопки danger -->
<div class="btn-group">
  <button type="button" class="btn btn-danger">Действие</button>
  <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
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
```

## Размеры

Выпадающие списки кнопок работают с кнопками любого размера, включая кнопку по умолчанию и разделенную кнопку выпадающего списка.

<div class="bd-example">
  <div class="btn-group">
    <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
      Большая кнопка
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
    <button type="button" class="btn btn-lg btn-secondary">Большая разделенная кнопка</button>
    <button type="button" class="btn btn-lg btn-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
      <span class="visually-hidden">Переключатель всплывающей кнопки</span>
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

```html
<!-- Группы больших кнопок (по умолчанию и разделенные) -->
<div class="btn-group">
  <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
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
  <button type="button" class="btn btn-lg btn-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Переключатель выпадающего списка</span>
  </button>
  <ul class="dropdown-menu">
    ...
  </ul>
</div>
```

<div class="bd-example">
  <div class="btn-group">
    <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
      Маленькая кнопка
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
    <button type="button" class="btn btn-sm btn-secondary">Маленькая кнопка разделения</button>
    <button type="button" class="btn btn-sm btn-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
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
</div>

```html
<div class="btn-group">
  <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
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
  <button type="button" class="btn btn-sm btn-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Переключатель выпадающего списка</span>
  </button>
  <ul class="dropdown-menu">
    ...
  </ul>
</div>
```

## Темные выпадающие списки

{{< deprecated-in "5.3.0" >}}

Выберите более темные раскрывающиеся списки, чтобы они соответствовали темной панели навигации или пользовательскому стилю, добавив `.dropdown-menu-dark` к существующему `.dropdown-menu`. Никаких изменений в раскрывающихся элементах не требуется.

{{< callout-deprecated-dark-variants "dropdown-menu" >}}

{{< example >}}
<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" id="dropdownMenuButton2" type="button" data-bs-toggle="dropdown" aria-expanded="false">
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
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Переключить навигацию">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
      <ul class="navbar-nav">
        <li class="nav-item dropdown">
          <button class="btn btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            Выпадающий список
          </button>
          <ul class="dropdown-menu dropdown-menu-dark">
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

{{< callout info >}}
**Направления переворачиваются в режиме RTL.** Таким образом, `.dropstart` появится справа.
{{< /callout >}}

### По центру

Сделайте выпадающее меню по центру под переключателем с `.dropdown-center` на родительском элементе.

{{< example >}}
<div class="dropdown-center">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    Выпадающий список по центру
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Действие два</a></li>
    <li><a class="dropdown-item" href="#">Действие три</a></li>
  </ul>
</div>
{{< /example >}}

### Вверх

Вызвать выпадающее меню над элементами, добавив к родительскому элементу `.dropup`.

<div class="bd-example">
  <div class="btn-group dropup">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
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
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
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

```html
<!-- Кнопка выпадающего меню по умолчанию -->
<div class="btn-group dropup">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
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
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Переключатель выпадающего списка</span>
  </button>
  <ul class="dropdown-menu">
    <!-- Ссылки выпадающего меню -->
  </ul>
</div>
```

### Выпадающий по центру

Сделайте выпадающее меню центрированным над переключателем с `.dropup-center` на родительском элементе.

{{< example >}}
<div class="dropup-center dropup">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    Выпадающий список по центру
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Действие</a></li>
    <li><a class="dropdown-item" href="#">Действие два</a></li>
    <li><a class="dropdown-item" href="#">Действие три</a></li>
  </ul>
</div>
{{< /example >}}

### Выпадающий в конец

Вызовите раскрывающееся меню справа от элементов, добавив `.dropend` к родительскому элементу.

<div class="bd-example">
  <div class="btn-group dropend">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
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
  <div class="btn-group dropend">
    <button type="button" class="btn btn-secondary">
      Раздельная кнопка выпадающего списка вправо
    </button>
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
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

```html
<!-- Кнопка выпадающего списка вправо по умолчанию -->
<div class="btn-group dropend">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Выпадающий список вправо
  </button>
  <ul class="dropdown-menu">
    <!-- Ссылки выпадающего меню -->
  </ul>
</div>

<!-- Раздельная кнопка выпадающего списка вправо -->
<div class="btn-group dropend">
  <button type="button" class="btn btn-secondary">
    Раздельный выпадающий список вправо
  </button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Переключатель выпадающего списка вправо</span>
  </button>
  <ul class="dropdown-menu">
    <!-- Ссылки выпадающего меню -->
  </ul>
</div>
```

### Выпадающий в начало

Активируйте раскрывающиеся меню слева от элементов, добавив `.dropstart` к родительскому элементу.

<div class="bd-example">
  <div class="btn-group dropstart">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
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
  <div class="btn-group dropstart">
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
      <span class="visually-hidden">Переключатель выпадающего списка влево</span>
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
      <li><hr class="dropdown-divider"></li>
      <li><a class="dropdown-item" href="#">Отделенная ссылка</a></li>
    </ul>
    <button type="button" class="btn btn-secondary">
      Раздельный выпадающий список влево
    </button>
  </div>
</div>

```html
<!-- Кнопка выпадающего списка влево по умолчанию -->
<div class="btn-group dropstart">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Выпадающий список влево
  </button>
  <ul class="dropdown-menu">
    <!-- Ссылки выпадающего меню -->
  </ul>
</div>

<!-- Split dropstart button -->
<div class="btn-group dropstart">
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
    <span class="visually-hidden">Переключатель выпадающего списка влево</span>
  </button>
  <ul class="dropdown-menu">
    <!-- Dropdown menu links -->
  </ul>
  <button type="button" class="btn btn-secondary">
    Раздельный выпадающий список влево
  </button>
</div>
```

## Элементы меню

Вы можете использовать элементы `<a>` или `<button>` в качестве выпадающих элементов.

{{< example >}}
<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    Выпадающий список
  </button>
  <ul class="dropdown-menu">
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
  <li><a class="dropdown-item disabled" aria-disabled="true">Отключенная ссылка</a></li>
  <li><a class="dropdown-item" href="#">Другая ссылка</a></li>
</ul>
{{< /example >}}

## Выравнивание меню

По умолчанию раскрывающееся меню автоматически располагается на 100% сверху и слева от своего родителя. Вы можете изменить это с помощью направленных классов `.drop*`, но Вы также можете управлять ими с помощью дополнительных классов-модификаторов.

Добавьте `.dropdown-menu-end` в `.dropdown-menu`, чтобы выровнять раскрывающееся меню по правому краю. При использовании Bootstrap в RTL направления отражаются, то есть `.dropdown-menu-end` появится слева.

{{< callout info >}}
**Внимание!** Выпадающие списки позиционируются благодаря Popper, за исключением случаев, когда они содержатся в навигационной панели.
{{< /callout >}}

{{< example >}}
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Пример меню с выравниванием по правому краю
  </button>
  <ul class="dropdown-menu dropdown-menu-end">
    <li><button class="dropdown-item" type="button">Действие</button></li>
    <li><button class="dropdown-item" type="button">Другое действие</button></li>
    <li><button class="dropdown-item" type="button">Что-то еще здесь</button></li>
  </ul>
</div>
{{< /example >}}

### Отзывчивое выравнивание

Если Вы хотите использовать адаптивное выравнивание, отключите динамическое позиционирование, добавив атрибут `data-bs-display="static"` и используйте гибкие классы вариантов.

Чтобы выровнять **справа** раскрывающееся меню с заданной контрольной точкой или больше, добавьте `.dropdown-menu {-sm | -md | -lg | -xl | -xxl} -end`.

{{< example >}}
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
    По левому краю, но по правому краю на большом экране
  </button>
  <ul class="dropdown-menu dropdown-menu-lg-end">
    <li><button class="dropdown-item" type="button">Действие</button></li>
    <li><button class="dropdown-item" type="button">Другое действие</button></li>
    <li><button class="dropdown-item" type="button">Что-то еще здесь</button></li>
  </ul>
</div>
{{< /example >}}

Чтобы выровнять **слева** раскрывающееся меню с заданной контрольной точкой или больше, добавьте `.dropdown-menu-end` и `.dropdown-menu{-sm|-md|-lg|-xl|-xxl}-start`.

{{< example >}}
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
    По правому краю, но по левому краю на большом экране
  </button>
  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-lg-start">
    <li><button class="dropdown-item" type="button">Действие</button></li>
    <li><button class="dropdown-item" type="button">Другое действие</button></li>
    <li><button class="dropdown-item" type="button">Что-то еще здесь</button></li>
  </ul>
</div>
{{< /example >}}

Обратите внимание, что Вам не нужно добавлять атрибут `data-bs-display="static"` к кнопке выпадающего списка в навигационных панелях, поскольку Popper не используется в навигационных панелях.

### Варианты выравнивания

Воспользовавшись большинством вариантов, показанных выше, вот небольшая демонстрация кухонной мойки с различными вариантами выравнивания раскрывающегося списка в одном месте.

{{< example >}}
<div class="btn-group">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    Выпадающий список
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
  </ul>
</div>

<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Меню с выравниванием по правому краю
  </button>
  <ul class="dropdown-menu dropdown-menu-end">
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
  </ul>
</div>

<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
    По левому краю, по правому краю lg
  </button>
  <ul class="dropdown-menu dropdown-menu-lg-end">
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
  </ul>
</div>

<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
    По правому краю, по левому краю lg
  </button>
  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-lg-start">
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
  </ul>
</div>

<div class="btn-group dropstart">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    ВС в начале
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
  </ul>
</div>

<div class="btn-group dropend">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    ВС в конце
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
  </ul>
</div>

<div class="btn-group dropup">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    ВС вверху
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
  </ul>
</div>
{{< /example >}}

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
<div class="dropdown-menu p-4 text-body-secondary" style="max-width: 200px;">
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
<div class="dropdown">
  <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
    Выпадающая форма
  </button>
  <form class="dropdown-menu p-4">
    <div class="mb-3">
      <label for="exampleDropdownFormEmail2" class="form-label">Адрес электронной почты</label>
      <input type="email" class="form-control" id="exampleDropdownFormEmail2" placeholder="email@example.com">
    </div>
    <div class="mb-3">
      <label for="exampleDropdownFormPassword2" class="form-label">Пароль</label>
      <input type="password" class="form-control" id="exampleDropdownFormPassword2" placeholder="Password">
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
</div>
{{< /example >}}

## Параметры выпадающего списка

Используйте `data-bs-offset` или `data-bs-reference`, чтобы изменить расположение выпадающего списка.

{{< example >}}
<div class="d-flex">
  <div class="dropdown me-1">
    <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownMenuOffset" data-bs-toggle="dropdown" aria-expanded="false" data-bs-offset="10,20">
      Смещение
    </button>
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Действие</a></li>
      <li><a class="dropdown-item" href="#">Другое действие</a></li>
      <li><a class="dropdown-item" href="#">Что-то еще здесь</a></li>
    </ul>
  </div>
  <div class="btn-group">
    <button type="button" class="btn btn-secondary">Ссылка</button>
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-bs-toggle="dropdown" aria-expanded="false" data-bs-reference="parent">
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
</div>
{{< /example >}}

### Поведение автоматического закрытия

По умолчанию раскрывающееся меню закрывается при нажатии внутри или вне раскрывающегося меню. Вы можете использовать опцию `autoClose`, чтобы изменить поведение раскрывающегося списка.

{{< example >}}
<div class="btn-group">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    Раскрывающийся список по умолчанию
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
  </ul>
</div>

<div class="btn-group">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="inside" aria-expanded="false">
    Кликабельно внутри
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
  </ul>
</div>

<div class="btn-group">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
    Кликабельно снаружи
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
  </ul>
</div>

<div class="btn-group">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    Ручное закрытие
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
    <li><a class="dropdown-item" href="#">Элемент меню</a></li>
  </ul>
</div>
{{< /example >}}

## CSS

### Переменные

{{< added-in "5.2.0" >}}

Как часть развивающегося подхода Bootstrap к переменным CSS, раскрывающиеся списки теперь используют локальные переменные CSS в `.dropdown-menu` для расширенной настройки в реальном времени. Значения переменных CSS задаются через Sass, поэтому настройка Sass по-прежнему поддерживается.

{{< scss-docs name="dropdown-css-vars" file="scss/_dropdown.scss" >}}

{{< callout info >}}
Элементы раскрывающегося списка включают по крайней мере одну переменную, не установленную в `.dropdown`. Это позволяет указать новое значение, в то время как Bootstrap по умолчанию использует резервное значение.

- `--bs-dropdown-item-border-radius`
{{< /callout >}}

Настройку с помощью переменных CSS можно увидеть в классе `.dropdown-menu-dark`, где мы переопределяем определенные значения без добавления повторяющихся селекторов CSS.

{{< scss-docs name="dropdown-dark-css-vars" file="scss/_dropdown.scss" >}}

### Sass переменные

Переменные для всех выпадающих списков:

{{< scss-docs name="dropdown-variables" file="scss/_variables.scss" >}}

Переменные для [темного раскрывающегося списка](#dark-dropdowns):

{{< scss-docs name="dropdown-dark-variables" file="scss/_variables.scss" >}}

Переменные для курсоров на основе CSS, которые указывают на интерактивность раскрывающегося списка:

{{< scss-docs name="caret-variables" file="scss/_variables.scss" >}}

### Sass миксины

Миксины используются для генерации курсоров на основе CSS и могут быть найдены в `scss/mixins/_caret.scss`.

{{< scss-docs name="caret-mixins" file="scss/mixins/_caret.scss" >}}

## Использование

С помощью атрибутов данных или JavaScript плагин раскрывающегося списка переключает скрытый контент (раскрывающиеся меню), переключая класс `.show` в родительском элементе списка `.dropdown-menu`. Атрибут `data-bs-toggle="dropdown"` используется для закрытия выпадающих меню на уровне приложения, поэтому рекомендуется всегда использовать его.

{{< callout info >}}
На устройствах с сенсорным экраном открытие выпадающего списка добавляет пустые обработчики `mouseover` к непосредственным потомкам элемента `<body>`. Этот, по общему признанию, уродливый хак необходим, чтобы обойти [причуду в делегировании событий iOS](https://www.quirksmode.org/blog/archives/2014/02/mouse_event_bub.html), которая в противном случае предотвратила бы нажатие где-нибудь за пределами выпадающего списка от запуска кода, закрывающего выпадающий список. После закрытия выпадающего списка эти дополнительные пустые обработчики `mouseover` удаляются.
{{< /callout >}}

### Через атрибуты данных

Добавьте `data-bs-toggle="dropdown"` к ссылке или кнопке, чтобы переключить выпадающий список.

```html
<div class="dropdown">
  <button id="dLabel" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    Триггер выпадающего списка
  </button>
  <ul class="dropdown-menu">
    ...
  </ul>
</div>
```

### Через JavaScript

{{< callout warning >}}
Выпадающие списки должны иметь `data-bs-toggle="dropdown"` в своем элементе триггера, независимо от того, вызываете ли вы раскрывающийся список через JavaScript или используете data-api.
{{< /callout >}}

Вызовите раскрывающиеся списки через JavaScript:

```js
const dropdownElementList = document.querySelectorAll('.dropdown-toggle')
const dropdownList = [...dropdownElementList].map(dropdownToggleEl => new bootstrap.Dropdown(dropdownToggleEl))
```

### Опции

{{< markdown >}}
{{< partial "js-data-attributes.md" >}}
{{< /markdown >}}

{{< bs-table "table" >}}
| Название | Тип | По умолчанию | Описание |
| --- | --- | --- | --- |
| `autoClose` | boolean, string | `true` | Настройте автоматическое закрытие раскрывающегося списка: <ul class="my-2"><li>`true` - раскрывающийся список будет закрыт, если щелкнуть снаружи или внутри раскрывающегося меню.</li><li>`false` - раскрывающийся список будет закрыт, если нажать кнопку переключения и вручную вызвать метод `hide` или `toggle`. (Также не будет закрыто нажатием клавиши <kbd>Esc</kbd>)</li><li>`'inside'` - выпадающее меню будет закрыто (только) нажатием внутри выпадающего меню.</li> <li>`'outside'` - выпадающее меню будет закрыто (только) нажатием вне выпадающего меню.</li></ul> Примечание: выпадающее меню всегда можно закрыть с помощью клавиши <kbd>Esc</kbd>. |
| `boundary` | string, element | `'clippingParents'` | Граница ограничения переполнения выпадающего меню (применяется только к модификатору preventOverflow Поппера). По умолчанию это `clippingParents`, и он может принимать ссылку HTMLElement (только через JavaScript). Для получения дополнительной информации обратитесь к [документации detectOverflow Popper](https://popper.js.org/docs/v2/utils/detect-overflow/#boundary). |
| `display` | string | `'dynamic'` | По умолчанию мы используем Popper для динамического позиционирования. Отключите это с помощью `static`. |
| `offset` | array, string, function | `[0, 2]` | Смещение раскрывающегося списка относительно его цели. Вы можете передать строку в атрибутах данных со значениями, разделенными запятыми, например: `data-bs-offset="10,20"`. Когда функция используется для определения смещения, она вызывается с объектом, содержащим размещение поппера, ссылку и прямоугольники поппера в качестве первого аргумента. Узел триггерного элемента DOM передается в качестве второго аргумента. Функция должна вернуть массив с двумя числами: [skidding](https://popper.js.org/docs/v2/modifiers/offset/#skidding-1), [distance](https://popper.js.org/docs/v2/modifiers/offset/#distance-1). Для получения дополнительной информации обратитесь к [документации смещения Popper](https://popper.js.org/docs/v2/modifiers/offset/#options). |
| `popperConfig` | null, object, function | `null` | Чтобы изменить конфигурацию Popper по умолчанию в Bootstrap, смотрите [Конфигурация Popper](https://popper.js.org/docs/v2/constructors/#options). Когда функция используется для создания конфигурации Popper, она вызывается с объектом, который содержит конфигурацию Bootstrap по умолчанию Popper. Это поможет вам использовать и объединить настройки по умолчанию с вашей собственной конфигурацией. Функция должна возвращать объект конфигурации для Popper. |
| `reference` | string, element, object | `'toggle'` | Справочный элемент выпадающего меню. Принимает значения `'toggle'`, `'parent'`, ссылку HTMLElement или объект, предоставляющий `getBoundingClientRect`. Для получения дополнительной информации обратитесь к [документации конструктора Popper](https://popper.js.org/docs/v2/constructors/#createpopper) и [документации виртуального элемента](https://popper.js.org/docs/v2/virtual-elements/). |
{{< /bs-table >}}

#### Использование функции с `popperConfig`

```js
const dropdown = new bootstrap.Dropdown(element, {
  popperConfig(defaultBsPopperConfig) {
    // const newPopperConfig = {...}
    // use defaultBsPopperConfig if needed...
    // return newPopperConfig
  }
})
```

### Методы

{{< bs-table >}}
| Метод | Описание |
| --- | --- |
| `dispose` | Уничтожает раскрывающийся список элемента. (Удаляет сохраненные данные в элементе DOM) |
| `getInstance` | Статический метод, который позволяет вам получить экземпляр раскрывающегося списка, связанный с элементом DOM, вы можете использовать его следующим образом: `bootstrap.Dropdown.getInstance(element)`. |
| `getOrCreateInstance` | Статический метод, который возвращает экземпляр раскрывающегося списка, связанный с элементом DOM, или создает новый экземпляр, если он не был инициализирован. Вы можете использовать его следующим образом: `bootstrap.Dropdown.getOrCreateInstance(element)`. |
| `hide` | Скрывает раскрывающееся меню данной панели навигации или навигации с вкладками. |
| `show` | Показывает раскрывающееся меню данной панели навигации или навигации с вкладками. |
| `toggle` | Переключает раскрывающееся меню данной панели навигации или навигации с вкладками. |
| `update` | Обновляет положение выпадающего списка элемента. |
{{< /bs-table >}}

### События

Все выпадающие события запускаются в переключающемся элементе, а затем всплывают. Таким образом, Вы также можете добавить прослушивателей событий в родительский элемент. `hide.bs.dropdown` и `hidden.bs.dropdown` имеют свойство `clickEvent` (только если исходный тип события `click`), который содержит объект события для события клика.

{{< bs-table >}}
| Тип события | Описание |
| --- | --- |
| `hide.bs.dropdown` | Срабатывает немедленно, когда был вызван метод экземпляра `hide`. |
| `hidden.bs.dropdown` | Запускается, когда раскрывающийся список перестал быть скрытым от пользователя и переходы CSS завершились. |
| `show.bs.dropdown` | Срабатывает немедленно, когда вызывается метод экземпляра `show`. |
| `shown.bs.dropdown` | Запускается, когда раскрывающийся список становится видимым для пользователя и переходы CSS завершены. |
{{< /bs-table >}}

```js
const myDropdown = document.getElementById('myDropdown')
myDropdown.addEventListener('show.bs.dropdown', event => {
  // сделайте что-нибудь...
})
```
