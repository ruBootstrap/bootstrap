---
layout: docs
title: Выпадающие списки
description: Переключайте контекстные наложения для отображения списков ссылок и многого другого с помощью плагина раскрывающегося списка Bootstrap.
group: components
toc: true
---

## Обзор

Выпадающие списки - это переключаемые контекстные наложения для отображения списков ссылок и многого другого. Они сделаны интерактивными с помощью включенного плагина JavaScript для выпадающего меню Bootstrap. Они переключаются щелчком, а не при наведении курсора; это [намеренное дизайнерское решение](https://markdotto.com/2012/02/27/bootstrap-explained-dropdowns/).

Выпадающие списки созданы на основе сторонней библиотеки [Popper](https://popper.js.org/), которая обеспечивает динамическое позиционирование и обнаружение области просмотра. Обязательно включите [popper.min.js]({{< param "cdn.popper" >}}) перед загрузочным JavaScript или используйте `bootstrap.bundle.min.js` / `bootstrap.bundle.js`, который содержит Popper . Popper не используется для размещения раскрывающихся списков на навигационных панелях, хотя динамическое позиционирование не требуется.

Если Вы создаете наш JavaScript из исходного кода, он [требуется `util.js`]({{< docsref "/getting-started/javascript#util" >}}).

## Доступность

[<abbr title="Инициатива обеспечения доступности Интернета">WAI</abbr> <abbr title="Доступные полнофункциональные Интернет-приложения">ARIA</abbr>](https://www.w3.org/TR/wai-aria/) стандарт определяет фактический [виджет `role="menu"`](https://www.w3.org/WAI/PF/aria/roles#menu), но это характерно для меню, похожего на приложение, которое запускает действия или функции. Меню <abbr title="Доступные полнофункциональные интернет-приложения">ARIA</abbr> могут содержать только пункты меню, пункты меню флажков, пункты меню радиокнопок, группы радиокнопок и подменю.

С другой стороны, выпадающие списки Bootstrap разработаны как общие и применимы к различным ситуациям и структурам разметки. Например, можно создавать раскрывающиеся списки, содержащие дополнительные входные данные и элементы управления формой, такие как поля поиска или формы входа. По этой причине Bootstrap не ожидает (и не добавляет автоматически) какие-либо атрибуты `role` и `aria-`, необходимые для истинных <abbr title="Доступные полнофункциональные интернет-приложения">ARIA</abbr>. Авторы должны сами включить эти более конкретные атрибуты.

Однако Bootstrap добавляет встроенную поддержку для большинства стандартных взаимодействий с меню клавиатуры, таких как возможность перемещаться по отдельным элементам `.dropdown-item` с помощью клавиш курсора и закрывать меню с помощью клавиши <kbd>ESC</kbd>.

## Примеры

Оберните переключатель раскрывающегося списка (Вашу кнопку или ссылку) и раскрывающееся меню внутри `.dropdown`, или другого элемента, объявляющего `position: relative;`. Выпадающие списки можно запускать из элементов `<a>` или `<button>`, чтобы лучше соответствовать вашим потенциальным потребностям.

### Одна кнопка

Любой отдельный `.btn` можно превратить в раскрывающийся список с некоторыми изменениями разметки. Вот как Вы можете заставить их работать с любым элементом `<button>`:

{{< example >}}
<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Кнопка выпадающего списка
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">Действие</a>
    <a class="dropdown-item" href="#">Другое действие</a>
    <a class="dropdown-item" href="#">Что-то еще здесь</a>
  </div>
</div>
{{< /example >}}

И с элементами `<a>`:

{{< example >}}
<div class="dropdown">
  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Ссылка выпадающего списка
  </a>

  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <a class="dropdown-item" href="#">Действие</a>
    <a class="dropdown-item" href="#">Другое действие</a>
    <a class="dropdown-item" href="#">Что-то еще здесь</a>
  </div>
</div>
{{< /example >}}

Самое приятное то, что Вы можете сделать это и с любым вариантом кнопки:

<div class="bd-example">
  <div class="btn-group">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Primary</button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Secondary</button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Success</button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Info</button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Warning</button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Danger</button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div><!-- /btn-group -->
</div>

```html
<!-- Example single danger button -->
<div class="btn-group">
  <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Действие
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">Действие</a>
    <a class="dropdown-item" href="#">Другое действие</a>
    <a class="dropdown-item" href="#">Что-то еще здесь</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">Отдельная ссылка</a>
  </div>
</div>
```

### Раздельная кнопка

Точно так же создайте раскрывающиеся списки с разделенными кнопками с практически такой же разметкой, что и раскрывающиеся списки с одной кнопкой, но с добавлением `.dropdown-toggle-split` для правильного интервала вокруг курсора раскрывающегося списка.

Мы используем этот дополнительный класс, чтобы уменьшить горизонтальный `padding` по обе стороны от курсора на 25% и удалить `margin-left`, который добавляется для обычных раскрывающихся списков кнопок. Эти дополнительные изменения удерживают курсор в центре разделенной кнопки и обеспечивают область нажатия более подходящего размера рядом с основной кнопкой.

<div class="bd-example">
  <div class="btn-group">
    <button type="button" class="btn btn-primary">Primary</button>
    <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="sr-only">Переключатель выпадающего списка</span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-secondary">Secondary</button>
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="sr-only">Переключатель выпадающего списка</span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-success">Success</button>
    <button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="sr-only">Переключатель выпадающего списка</span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-info">Info</button>
    <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="sr-only">Переключатель выпадающего списка</span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-warning">Warning</button>
    <button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="sr-only">Переключатель выпадающего списка</span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div><!-- /btn-group -->
  <div class="btn-group">
    <button type="button" class="btn btn-danger">Danger</button>
    <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="sr-only">Переключатель выпадающего списка</span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div><!-- /btn-group -->
</div>

```html
<!-- Пример раздельной кнопки Опасность -->
<div class="btn-group">
  <button type="button" class="btn btn-danger">Действие</button>
  <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Переключатель выпадающего списка</span>
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">Действие</a>
    <a class="dropdown-item" href="#">Другое действие</a>
    <a class="dropdown-item" href="#">Что-то еще здесь</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">Отдельная ссылка</a>
  </div>
</div>
```

## Размеры

Выпадающие кнопки работают с кнопками всех размеров, включая кнопки по умолчанию и кнопки с разделенным раскрывающимся списком.

<div class="bd-example">
  <div class="btn-group">
    <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Большая кнопка
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div>
  <div class="btn-group">
    <button type="button" class="btn btn-lg btn-secondary">Большая раздельная кнопка</button>
    <button type="button" class="btn btn-lg btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="sr-only">Переключатель выпадающего списка</span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div>
</div>

```html
<!-- Группы больших кнопок (по умолчанию и разделенные) -->
<div class="btn-group">
  <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Большая кнопка
  </button>
  <div class="dropdown-menu">
    ...
  </div>
</div>
<div class="btn-group">
  <button class="btn btn-secondary btn-lg" type="button">
    Большая раздельная кнопка
  </button>
  <button type="button" class="btn btn-lg btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Переключатель выпадающего списка</span>
  </button>
  <div class="dropdown-menu">
    ...
  </div>
</div>
```

<div class="bd-example">
  <div class="btn-group">
    <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Маленькая кнопка
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div>
  <div class="btn-group">
    <button type="button" class="btn btn-sm btn-secondary">Маленькая раздельная кнопка</button>
    <button type="button" class="btn btn-sm btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="sr-only">Переключатель выпадающего списка</span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div>
</div>

```html
<!-- Небольшие группы кнопок (по умолчанию и разделенные) -->
<div class="btn-group">
  <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Маленькая кнопка
  </button>
  <div class="dropdown-menu">
    ...
  </div>
</div>
<div class="btn-group">
  <button class="btn btn-secondary btn-sm" type="button">
    Маленькая раздельная кнопка
  </button>
  <button type="button" class="btn btn-sm btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Переключатель выпадающего списка</span>
  </button>
  <div class="dropdown-menu">
    ...
  </div>
</div>
```

## Направления

### Выпадающий вверх

Вызвать раскрывающееся меню над элементами, добавив к родительскому элементу `.dropup`.

<div class="bd-example">
  <div class="btn-group dropup">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Выпадающий вверх
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div>
  <div class="btn-group dropup">
    <button type="button" class="btn btn-secondary">
      Раздельный выпадающий вверх
    </button>
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="sr-only">Переключатель выпадающего списка</span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div>
</div>

```html
<!-- Кнопка выпадающего меню по умолчанию -->
<div class="btn-group dropup">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Выпадающий вверх
  </button>
  <div class="dropdown-menu">
    <!-- Ссылки раскрывающегося меню -->
  </div>
</div>

<!-- Раздельная кнопка выпадающая вверх -->
<div class="btn-group dropup">
  <button type="button" class="btn btn-secondary">
    Раздельный выпад вверх
  </button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Переключатель выпадающего списка</span>
  </button>
  <div class="dropdown-menu">
    <!-- Ссылки раскрывающегося меню -->
  </div>
</div>
```

### Выпад вправо

Откройте раскрывающееся меню справа от элементов, добавив `.dropright` к родительскому элементу.

<div class="bd-example">
  <div class="btn-group dropright">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Выпадающий вправо
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div>
  <div class="btn-group dropright">
    <button type="button" class="btn btn-secondary">
      Раздельный выпадающий вправо
    </button>
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="sr-only">Переключатель выпада вправо</span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div>
</div>

```html
<!-- Кнопка выпадающего вправо по умолчанию -->
<div class="btn-group dropright">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Выпадающий вправо
  </button>
  <div class="dropdown-menu">
    <!-- Ссылки раскрывающегося меню -->
  </div>
</div>

<!-- Раздельная кнопка выпадающего вправо по умолчанию -->
<div class="btn-group dropright">
  <button type="button" class="btn btn-secondary">
    Раздельный выпадающий вправо
  </button>
  <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Переключатель выпада вправо</span>
  </button>
  <div class="dropdown-menu">
    <!-- Ссылки раскрывающегося меню -->
  </div>
</div>
```

### Выпадающий влево

Активируйте раскрывающиеся меню слева от элементов, добавив `.dropleft` к родительскому элементу.

<div class="bd-example">
  <div class="btn-group dropleft">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Выпадающий влево
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div>
  <div class="btn-group">
    <div class="btn-group dropleft" role="group">
      <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <span class="sr-only">Переключатель выпадающего влево</span>
      </button>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Действие</a>
        <a class="dropdown-item" href="#">Другое действие</a>
        <a class="dropdown-item" href="#">Что-то еще здесь</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="#">Отдельная ссылка</a>
      </div>
    </div>
    <button type="button" class="btn btn-secondary">
      Раздельный выпадающий влево
    </button>
  </div>
</div>

```html
<!-- Кнопка выпадающая влево по умолчанию -->
<div class="btn-group dropleft">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Выпадающий влево
  </button>
  <div class="dropdown-menu">
    <!-- Ссылки раскрывающегося меню -->
  </div>
</div>

<!-- Раздельная кнопка выпадающая влево -->
<div class="btn-group">
  <div class="btn-group dropleft" role="group">
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="sr-only">Переключатель выпадающего влево</span>
    </button>
    <div class="dropdown-menu">
      <!-- Ссылки раскрывающегося меню -->
    </div>
  </div>
  <button type="button" class="btn btn-secondary">
    Раздельный выпадающий влево
  </button>
</div>
```

## Пункты меню

Исторически содержимое выпадающего меню *должно было быть* ссылками, но в версии 4 это уже не так. Теперь Вы можете при желании использовать элементы `<button>` в раскрывающихся списках вместо просто `<a>`.

{{< example >}}
<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Выпадающий вниз
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
    <button class="dropdown-item" type="button">Действие</button>
    <button class="dropdown-item" type="button">Другое действие</button>
    <button class="dropdown-item" type="button">Что-то еще здесь</button>
  </div>
</div>
{{< /example >}}

Вы также можете создавать неинтерактивные выпадающие элементы с помощью `.dropdown-item-text`. Не стесняйтесь изменять стиль с помощью пользовательских CSS или текстовых утилит.

{{< example >}}
<div class="dropdown-menu">
  <span class="dropdown-item-text">Текст выпадающего списка</span>
  <a class="dropdown-item" href="#">Действие</a>
  <a class="dropdown-item" href="#">Другое действие</a>
  <a class="dropdown-item" href="#">Что-то еще здесь</a>
</div>
{{< /example >}}

### Активный

Добавьте `.active` к элементам в раскрывающемся списке, чтобы **сделать их активными**.

{{< example >}}
<div class="dropdown-menu">
  <a class="dropdown-item" href="#">Обычная ссылка</a>
  <a class="dropdown-item active" href="#">Активная ссылка</a>
  <a class="dropdown-item" href="#">Другая ссылка</a>
</div>
{{< /example >}}

### Отключенный

Добавьте `.disabled` к элементам в раскрывающемся списке, чтобы **сделать их отключенными**.

{{< example >}}
<div class="dropdown-menu">
  <a class="dropdown-item" href="#">Обычная ссылка</a>
  <a class="dropdown-item disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная ссылка</a>
  <a class="dropdown-item" href="#">Другая ссылка</a>
</div>
{{< /example >}}

## Выравнивание меню

По умолчанию раскрывающееся меню автоматически располагается на 100% сверху и слева от своего родителя. Добавьте `.dropdown-menu-right` в `.dropdown-menu`, чтобы выровнять раскрывающееся меню по правому краю.

{{< callout info >}}
**Внимание!** Выпадающие списки располагаются благодаря Popper (кроме случаев, когда они содержатся в навигационной панели).
{{< /callout >}}

{{< example >}}
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Меню с выравниванием по правому краю
  </button>
  <div class="dropdown-menu dropdown-menu-right">
    <button class="dropdown-item" type="button">Действие</button>
    <button class="dropdown-item" type="button">Другое действие</button>
    <button class="dropdown-item" type="button">Что-то еще здесь</button>
  </div>
</div>
{{< /example >}}

### Адаптивное выравнивание

Если Вы хотите использовать адаптивное выравнивание, отключите динамическое позиционирование, добавив атрибут `data-display="static"` и используйте гибкие классы вариантов.

Чтобы выровнять **вправо** раскрывающееся меню с заданной контрольной точкой или больше, добавьте `.dropdown-menu{-sm|-md|-lg|-xl}-right`.

{{< example >}}
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
    По левому краю, но по правому краю на большом экране
  </button>
  <div class="dropdown-menu dropdown-menu-lg-right">
    <button class="dropdown-item" type="button">Действие</button>
    <button class="dropdown-item" type="button">Другое действие</button>
    <button class="dropdown-item" type="button">Что-то еще здесь</button>
  </div>
</div>
{{< /example >}}

Чтобы выровнять **слева** раскрывающееся меню с заданной контрольной точкой или больше, добавьте `.dropdown-menu-right` и `.dropdown-menu{-sm|-md|-lg|-xl}-left`.

{{< example >}}
<div class="btn-group">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false">
    По правому краю, но по левому краю на большом экране
  </button>
  <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left">
    <button class="dropdown-item" type="button">Действие</button>
    <button class="dropdown-item" type="button">Другое действие</button>
    <button class="dropdown-item" type="button">Что-то еще здесь</button>
  </div>
</div>
{{< /example >}}

Обратите внимание, что Вам не нужно добавлять атрибут `data-display="static"` к кнопкам раскрывающегося списка на панели навигации, поскольку Popper не используется в панелях навигации.

## Содержание меню

### Заголовки

Добавьте заголовок для обозначения разделов действий в любом раскрывающемся меню.

{{< example >}}
<div class="dropdown-menu">
  <h6 class="dropdown-header">Заголовок раскрывающегося списка</h6>
  <a class="dropdown-item" href="#">Действие</a>
  <a class="dropdown-item" href="#">Другое действие</a>
</div>
{{< /example >}}

### Разделители

Разделите группы связанных пунктов меню разделителем.

{{< example >}}
<div class="dropdown-menu">
  <a class="dropdown-item" href="#">Действие</a>
  <a class="dropdown-item" href="#">Другое действие</a>
  <a class="dropdown-item" href="#">Что-то еще здесь</a>
  <div class="dropdown-divider"></div>
  <a class="dropdown-item" href="#">Отдельная ссылка</a>
</div>
{{< /example >}}

### Текст

Поместите произвольный текст в раскрывающееся меню с текстом и используйте [утилиты отступа]({{< docsref "/utilities/spacing" >}}). Обратите внимание, что Вам, вероятно, потребуются дополнительные стили размеров, чтобы ограничить ширину меню.

{{< example >}}
<div class="dropdown-menu p-4 text-muted" style="max-width: 200px;">
  <p>
    Пример текста, который свободно перемещается в раскрывающемся меню.
  </p>
  <p class="mb-0">
    И это еще один пример текста.
  </p>
</div>
{{< /example >}}

### Формы

Поместите форму в раскрывающееся меню или превратите ее в раскрывающееся меню и используйте [утилиты полей или отступов]({{< docsref "/utilities/spacing" >}}), чтобы дать ей необходимое отрицательное пространство.

{{< example >}}
<div class="dropdown-menu">
  <form class="px-4 py-3">
    <div class="form-group">
      <label for="exampleDropdownFormEmail1">Адрес электронной почты</label>
      <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com">
    </div>
    <div class="form-group">
      <label for="exampleDropdownFormPassword1">Пароль</label>
      <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Пароль">
    </div>
    <div class="form-group">
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="dropdownCheck">
        <label class="form-check-label" for="dropdownCheck">
          Запомните меня
        </label>
      </div>
    </div>
    <button type="submit" class="btn btn-primary">Войти в систему</button>
  </form>
  <div class="dropdown-divider"></div>
  <a class="dropdown-item" href="#">Новенький здесь? Зарегистрироваться</a>
  <a class="dropdown-item" href="#">Забыли пароль?</a>
</div>
{{< /example >}}

{{< example >}}
<form class="dropdown-menu p-4">
  <div class="form-group">
    <label for="exampleDropdownFormEmail2">Адрес электронной почты</label>
    <input type="email" class="form-control" id="exampleDropdownFormEmail2" placeholder="email@example.com">
  </div>
  <div class="form-group">
    <label for="exampleDropdownFormPassword2">Пароль</label>
    <input type="password" class="form-control" id="exampleDropdownFormPassword2" placeholder="Пароль">
  </div>
  <div class="form-group">
    <div class="form-check">
      <input type="checkbox" class="form-check-input" id="dropdownCheck2">
      <label class="form-check-label" for="dropdownCheck2">
        Запомните меня
      </label>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Войти в систему</button>
</form>
{{< /example >}}

## Параметры раскрывающегося списка

Используйте `data-offset` или `data-reference`, чтобы изменить расположение раскрывающегося списка.

{{< example >}}
<div class="d-flex">
  <div class="dropdown mr-1">
    <button type="button" class="btn btn-secondary dropdown-toggle" id="dropdownMenuOffset" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-offset="10,20">
      Смещение
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
    </div>
  </div>
  <div class="btn-group">
    <button type="button" class="btn btn-secondary">Справка</button>
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent">
      <span class="sr-only">Переключатель выпадающего списка</span>
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuReference">
      <a class="dropdown-item" href="#">Действие</a>
      <a class="dropdown-item" href="#">Другое действие</a>
      <a class="dropdown-item" href="#">Что-то еще здесь</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Отдельная ссылка</a>
    </div>
  </div>
</div>
{{< /example >}}

## Применение

С помощью атрибутов данных или JavaScript плагин раскрывающегося списка переключает скрытый контент (раскрывающиеся меню), переключая класс `.dropdown-menu`. Атрибут `data-toggle="dropdown"` используется для закрытия раскрывающихся меню на уровне приложения, поэтому рекомендуется всегда использовать его.

{{< callout info >}}
На устройствах с сенсорным экраном открытие раскрывающегося списка добавляет пустые (`$.noop`) обработчики `mouseover` к непосредственным дочерним элементам элемента `<body>`. Этот, по общему признанию, уродливый взлом необходим, чтобы обойти [причуду в делегировании событий iOS](https://www.quirksmode.org/blog/archives/2014/02/mouse_event_bub.html), которая в противном случае предотвратила бы нажатие где-нибудь за пределами раскрывающегося списка от запуска кода, закрывающего раскрывающийся список. После закрытия раскрывающегося списка эти дополнительные пустые обработчики `mouseover` указателя мыши удаляются.
{{< /callout >}}

### Через атрибуты данных

Добавьте `data-toggle="dropdown"` к ссылке или кнопке, чтобы переключить раскрывающийся список.

```html
<div class="dropdown">
  <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Триггер выпадающего списка
  </button>
  <div class="dropdown-menu" aria-labelledby="dLabel">
    ...
  </div>
</div>
```

### Через JavaScript

Вызов выпадающих списков через JavaScript:

```js
$('.dropdown-toggle').dropdown()
```

{{< callout info >}}
##### `data-toggle="dropdown"` все еще требуется

Независимо от того, вызываете ли Вы раскрывающийся список через JavaScript или вместо этого используете data-api, в элементе триггера раскрывающегося списка всегда должен присутствовать `data-toggle="dropdown"`.
{{< /callout >}}

### Параметры

Параметры могут передаваться через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-`, как в `data-offset=""`.

<table class="table table-bordered table-striped">
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
      <td>offset</td>
      <td>number | string | function</td>
      <td>0</td>
      <td>
        <p>Смещение раскрывающегося списка относительно его цели.</p>
        <p>Когда функция используется для определения смещения, она вызывается с объектом, содержащим данные смещения в качестве первого аргумента. Функция должна возвращать объект с такой же структурой. Узел DOM запускающего элемента передается в качестве второго аргумента.</p>
        <p>Дополнительную информацию смотрите в <a href="https://popper.js.org/docs/v1/#modifiers..offset.offset">документации Popper по смещению</a>.</p>
      </td>
    </tr>
    <tr>
      <td>flip</td>
      <td>boolean</td>
      <td>true</td>
      <td>Разрешить раскрывающийся список переворачиваться в случае перекрытия ссылочного элемента. Дополнительную информацию смотрите в <a href="https://popper.js.org/docs/v1/#modifiers..flip.enabled">документации переворотов</a> Popper.</td>
    </tr>
    <tr>
      <td>boundary</td>
      <td>string | element</td>
      <td>'scrollParent'</td>
      <td>Граница ограничения переполнения раскрывающегося меню. Принимает значения <code>'viewport'</code>, <code>'window'</code>, <code>'scrollParent'</code> или ссылку HTMLElement (только JavaScript). Дополнительную информацию смотрите в <a href="https://popper.js.org/docs/v1/#modifiers..preventOverflow.boundariesElement">документации preventOverflow</a> Popper.</td>
    </tr>
    <tr>
      <td>reference</td>
      <td>string | element</td>
      <td>'toggle'</td>
      <td>Справочный элемент раскрывающегося меню. Принимает значения <code>'toggle'</code>, <code>'parent'</code> или ссылка HTMLElement. Дополнительную информацию смотрите <a href="https://popper.js.org/docs/v1/#referenceObject">referenceObject docs</a>.</td>
    </tr>
    <tr>
      <td>display</td>
      <td>string</td>
      <td>'dynamic'</td>
      <td>По умолчанию мы используем Popper для динамического позиционирования. Отключите это с помощью <code>static</code>.</td>
    </tr>
    <tr>
      <td>popperConfig</td>
      <td>null | object</td>
      <td>null</td>
      <td>Чтобы изменить конфигурацию Popper по умолчанию в Bootstrap, смотрите <a href="https://popper.js.org/docs/v1/#Popper.Defaults">конфигурацию Popper</a>.</td>
    </tr>
  </tbody>
</table>

Обратите внимание, что если параметр `boundary` имеет любое значение, отличное от `'scrollParent'`, к контейнеру `.dropdown` применяется стиль `position: static`.

### Методы

| Метод | Описание |
| --- | --- |
| `$().dropdown('toggle')` | Переключает раскрывающееся меню данной панели навигации или навигации с вкладками. |
| `$().dropdown('show')` | Показывает раскрывающееся меню данной панели навигации или навигации с вкладками. |
| `$().dropdown('hide')` | Скрывает раскрывающееся меню данной панели навигации или навигации с вкладками. |
| `$().dropdown('update')` | Обновляет позицию раскрывающегося списка элемента. |
| `$().dropdown('dispose')` | Уничтожает раскрывающийся список элемента. |

### События

Все выпадающие события запускаются в родительском элементе `.dropdown-menu` и имеют свойство `relatedTarget`, значением которого является переключаемый элемент привязки.
События `hide.bs.dropdown` и `hidden.bs.dropdown` имеют свойство `clickEvent` (только если исходный тип события `click`), который содержит объект события для события щелчка.

| События | Описание |
| --- | --- |
| `show.bs.dropdown` | Это событие срабатывает немедленно, когда вызывается метод экземпляра шоу. |
| `shown.bs.dropdown` | Это событие запускается, когда раскрывающийся список становится видимым для пользователя (будет ожидать завершения переходов CSS). |
| `hide.bs.dropdown` | Это событие запускается сразу после вызова метода экземпляра hide. |
| `hidden.bs.dropdown`| Это событие запускается, когда раскрывающийся список перестает быть скрытым от пользователя (будет ожидать завершения переходов CSS). |

```js
$('#myDropdown').on('show.bs.dropdown', function () {
  // сделайте что-нибудь...
})
```
