---
layout: docs
title: Модальное окно
description: Используйте плагин модального окна Bootstrap для JavaScript, чтобы добавить на свой сайт диалоговые окна для лайтбоксов, уведомлений пользователей или полностью настраиваемого контента.
group: components
toc: true
---

## Как это устроено

Прежде чем приступить к работе с модальным компонентом Bootstrap, обязательно прочтите следующее, поскольку параметры нашего меню недавно изменились.

- Модальные окна создаются с помощью HTML, CSS и JavaScript. Они располагаются поверх всего остального в документе и удаляют прокрутку из `<body>`, так что вместо этого прокручивается модальное содержимое.
- Клик по модальному «фону» автоматически закрывает модальный.
- Bootstrap поддерживает только одно модальное окно за раз. Вложенные модальные окна не поддерживаются, поскольку мы считаем, что они неудобны для пользователей.
- В модальных окнах используется `position: fixed`, что иногда может быть немного специфичным при его рендеринге. По возможности размещайте модальный HTML-код на верхнем уровне, чтобы избежать потенциального вмешательства со стороны других элементов. Вы, вероятно, столкнетесь с проблемами при вложении `.modal` в другой фиксированный элемент.
- Еще раз, из-за `position: fixed` есть некоторые предостережения при использовании модальных окон на мобильных устройствах. [См. нашу документацию по поддержке браузеров]({{< docsref "/getting-started/browsers-devices#модальные-окна-и-выпадающие-списки-на-мобильных-устройствах" >}}) для получения дополнительной информации.
- Из-за того, как HTML5 определяет свою семантику, [атрибут HTML `autofocus`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#attr-autofocus) не действует в Bootstrap. модальные окна. Чтобы добиться того же эффекта, используйте собственный JavaScript:

```js
const myModal = document.getElementById('myModal')
const myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', () => {
  myInput.focus()
})
```

{{< callout info >}}
{{< partial "callouts/info-prefersreducedmotion.md" >}}
{{< /callout >}}

Продолжайте читать, чтобы увидеть демонстрации и инструкции по использованию.

## Примеры

### Модальные компоненты

Ниже приведен пример _статического_ модального окна (это означает, что его `position` и `display` были переопределены). Включены модальный заголовок, модальное тело (требуется для `padding`) и модальный нижний колонтитул (необязательно). Мы просим вас по возможности включать модальные заголовки с действиями по отклонению или предоставить другое явное действие по отклонению.

<div class="bd-example bg-body-tertiary">
  <div class="modal position-static d-block" tabindex="-1">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Заголовок модального окна</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
        </div>
        <div class="modal-body">
          <p>Здесь идет основной текст модального окна</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
          <button type="button" class="btn btn-primary">Сохранить изменения</button>
        </div>
      </div>
    </div>
  </div>
</div>

```html
<div class="modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Заголовок модального окна</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <p>Здесь идет основной текст модального окна</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>
```

{{< callout info >}}
В приведенном выше статическом примере мы используем `<h5>`, чтобы избежать проблем с иерархией заголовков на странице документации. Однако структурно модальное диалоговое окно представляет собой отдельный документ/контекст, поэтому `.modal-title` в идеале должен быть `<h1>`. При необходимости вы можете использовать [утилиты размера шрифта]({{< docsref "/utilities/text#font-size" >}}) для управления внешним видом заголовка. Все следующие живые примеры используют этот подход.
{{< /callout >}}

### Живая демонстрация

Переключите рабочую модальную демонстрацию, нажав кнопку ниже. Он будет скользить вниз и исчезать из верхней части страницы.

<div class="modal fade" id="exampleModalLive" tabindex="-1" aria-labelledby="exampleModalLiveLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLiveLabel">Заголовок модального окна</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <p>У-у-у, вы читаете этот текст в модальном режиме!</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalLive">
    Запустите демо модального окна
  </button>
</div>

```html
<!-- Кнопка-триггер модального окна -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Запустите демо модального окна
</button>

<!-- Модальное окно -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Заголовок модального окна</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>
```

### Статический фон

Когда фон установлен на статический, модальное окно не будет закрываться при нажатии за его пределами. Нажмите кнопку ниже, чтобы попробовать.

<div class="modal fade" id="staticBackdropLive" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLiveLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLiveLabel">Заголовок модального окна</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <p>Я не закроюсь, если вы нажмете вне меня. Даже не пытайтесь нажать клавишу выхода.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Понял</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdropLive">
    Запустить модальное окно со статическим фоном
  </button>
</div>

```html
<!-- Кнопка-триггер модального окна -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  Запустить модальное окно со статическим фоном
</button>

<!-- Модальное окно -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Заголовок модального окна</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Понял</button>
      </div>
    </div>
  </div>
</div>
```

### Прокрутка длинного контента

Когда модальные окна становятся слишком длинными для области просмотра или устройства пользователя, они прокручиваются независимо от самой страницы. Попробуйте демонстрацию ниже, чтобы понять, что мы имеем в виду.

<div class="modal fade" id="exampleModalLong" tabindex="-1" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLongTitle">Заголовок модального окна</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body" style="min-height: 1500px">
        <p>Это некоторый заполнитель, чтобы показать поведение прокрутки для модальных окон. Вместо того, чтобы повторять текст в модальном окне, мы используем встроенный стиль, чтобы установить минимальную высоту, тем самым увеличивая длину всего модального окна и демонстрируя прокрутку переполнения. Когда содержимое становится длиннее, чем высота области просмотра, прокрутка будет перемещать модальное окно по мере необходимости.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalLong">
    Запустите демо модального окна
  </button>
</div>

Вы также можете создать прокручиваемое модальное окно, которое позволяет прокручивать тело модального окна, добавив `.modal-dialog-scrollable` к `.modal-dialog`.

<div class="modal fade" id="exampleModalScrollable" tabindex="-1" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalScrollableTitle">Заголовок модального окна</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <p>Это некий заполнитель, показывающий поведение при прокрутке модальных окон. Мы используем повторяющиеся перенос строк, чтобы продемонстрировать, как контент может превышать минимальную внутреннюю высоту, тем самым показывая внутреннюю прокрутку. Когда содержимое становится длиннее, чем предопределенная максимальная высота модального окна, содержимое будет обрезано и прокручивается внутри модального окна.</p>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <p>Это содержимое должно появиться внизу после прокрутки.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalScrollable">
    Запустите демо модального окна
  </button>
</div>

```html
<!-- Прокручиваемое модальное окно -->
<div class="modal-dialog modal-dialog-scrollable">
  ...
</div>
```

### Центрирование по вертикали

Добавьте `.modal-dialog-centered` к `.modal-dialog` для вертикального центрирования модального окна.

<div class="modal fade" id="exampleModalCenter" tabindex="-1" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalCenterTitle">Заголовок модального окна</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <p>This is a vertically centered modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModalCenteredScrollable" tabindex="-1" aria-labelledby="exampleModalCenteredScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalCenteredScrollableTitle">Заголовок модального окна</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <p>Это некий заполнитель для отображения модального окна с вертикальным центрированием. Мы добавили здесь дополнительную копию, чтобы показать, как работает вертикальное центрирование модального окна в сочетании с прокручиваемыми модальными окнами. Мы также используем несколько повторяющихся перенос строк, чтобы быстро увеличить высоту содержимого, тем самым вызывая прокрутку. Когда содержимое становится длиннее, чем предопределенная максимальная высота модального окна, содержимое будет обрезано и прокручивается внутри модального окна.</p>
        <br><br><br><br><br><br><br><br><br><br>
        <p>Просто так.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalCenter">
    Вертикально центрированное модальное окно
  </button>
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalCenteredScrollable">
    Вертикально центрированное прокручиваемое модальное окно
  </button>
</div>

```html
<!-- Вертикально центрированное модальное окно -->
<div class="modal-dialog modal-dialog-centered">
  ...
</div>

<!-- Вертикально центрированное прокручиваемое модальное окно -->
<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
  ...
</div>
```

### Всплывающие подсказки и всплывающие окна

[Всплывающие подсказки]({{< docsref "/components/tooltips" >}}) и [всплывающие подсказки]({{< docsref "/components/popovers" >}}) могут быть помещены в модальные окна по мере необходимости. Когда модальные окна закрываются, любые всплывающие подсказки и всплывающие окна также автоматически закрываются.

<div class="modal fade" id="exampleModalPopovers" tabindex="-1" aria-labelledby="exampleModalPopoversLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalPopoversLabel">Заголовок модального окна</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <h2 class="fs-5">Поповер в модальном окне</h2>
        <p>Эта <button class="btn btn-secondary" data-bs-toggle="popover" title="Заголовок поповера" data-bs-content="Содержимое тела всплывающего окна задается в этом атрибуте." data-bs-container="#exampleModalPopovers">кнопка</button> вызывает всплывающее окно при нажатии.</p>
        <hr>
        <h2 class="fs-5">Подсказки в модальном окне</h2>
        <p><a href="#" data-bs-toggle="tooltip" title="Тултип" data-bs-container="#exampleModalPopovers">Эта ссылка</a> и <a href="#" data-bs-toggle="tooltip" title="Тултип" data-bs-container="#exampleModalPopovers">эта ссылка</a> имеет всплывающие подсказки при наведении.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalPopovers">
    Запустите демо модального окна
  </button>
</div>

```html
<div class="modal-body">
  <h2 class="fs-5">Поповер в модальном окне</h2>
  <p>Эта <button class="btn btn-secondary" data-bs-toggle="popover" title="Заголовок поповера" data-bs-content="Содержимое тела всплывающего окна задается в этом атрибуте.">кнопка</button> вызывает всплывающее окно при нажатии.</p>
  <hr>
  <h2 class="fs-5">Подсказки в модальном окне</h2>
  <p><a href="#" data-bs-toggle="tooltip" title="Тултип">Эта ссылка</a> и <a href="#" data-bs-toggle="tooltip" title="Тултип">эта ссылка</a> имеет всплывающие подсказки при наведении.</p>
</div>
```

### Использование сетки

Используйте сеточную систему Bootstrap в модальном окне, вложив `.container-fluid` в `.modal-body`. Затем используйте обычные классы системы сетки, как и везде.

<div class="modal fade" id="gridSystemModal" tabindex="-1" aria-labelledby="gridModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="gridModalLabel">Сетки в модальных окнах</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <div class="container-fluid bd-example-row">
          <div class="row">
            <div class="col-md-4">.col-md-4</div>
            <div class="col-md-4 ms-auto">.col-md-4 .ms-auto</div>
          </div>
          <div class="row">
            <div class="col-md-3 ms-auto">.col-md-3 .ms-auto</div>
            <div class="col-md-2 ms-auto">.col-md-2 .ms-auto</div>
          </div>
          <div class="row">
            <div class="col-md-6 ms-auto">.col-md-6 .ms-auto</div>
          </div>
          <div class="row">
            <div class="col-sm-9">
              Level 1: .col-sm-9
              <div class="row">
                <div class="col-8 col-sm-6">
                  Level 2: .col-8 .col-sm-6
                </div>
                <div class="col-4 col-sm-6">
                  Level 2: .col-4 .col-sm-6
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#gridSystemModal">
  Запустите демо модального окна
</button>
</div>

```html
<div class="modal-body">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-4">.col-md-4</div>
      <div class="col-md-4 ms-auto">.col-md-4 .ms-auto</div>
    </div>
    <div class="row">
      <div class="col-md-3 ms-auto">.col-md-3 .ms-auto</div>
      <div class="col-md-2 ms-auto">.col-md-2 .ms-auto</div>
    </div>
    <div class="row">
      <div class="col-md-6 ms-auto">.col-md-6 .ms-auto</div>
    </div>
    <div class="row">
      <div class="col-sm-9">
        Level 1: .col-sm-9
        <div class="row">
          <div class="col-8 col-sm-6">
            Level 2: .col-8 .col-sm-6
          </div>
          <div class="col-4 col-sm-6">
            Level 2: .col-4 .col-sm-6
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
```

### Изменяющееся модальное содержимое

У Вас есть несколько кнопок, которые запускают одно и то же модальное окно с немного разным содержимым? Используйте `event.relatedTarget` и [HTML `data-*` атрибуты](https://developer.mozilla.org/en-US/docs/Learn/HTML/Howto/Use_data_attributes), чтобы изменять содержимое модального окна в зависимости от какая кнопка была нажата.

Ниже представлена живая демонстрация, за которой следуют примеры HTML и JavaScript. Для получения дополнительной информации [прочтите документацию по модальным событиям](#события) для получения подробной информации о `relatedTarget`.

{{< example stackblitz_add_js="true" >}}
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">Открыть модальное окно для @mdo</button>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@fat">Открыть модальное окно для @fat</button>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@getbootstrap">Открыть модальное окно для @getbootstrap</button>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Новое сообщение</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label for="recipient-name" class="col-form-label">Получатель:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="mb-3">
            <label for="message-text" class="col-form-label">Сообщение:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Отправить сообщение</button>
      </div>
    </div>
  </div>
</div>
{{< /example >}}

{{< js-docs name="varying-modal-content" file="site/assets/js/snippets.js" >}}

### Переключение между модальными окнами

{{< example >}}
<div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalToggleLabel">Модалка 1</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        Покажите второе модальное окно и скройте его с помощью кнопки ниже.
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" data-bs-target="#exampleModalToggle2" data-bs-toggle="modal">Открыть второе модальное окно</button>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="exampleModalToggle2" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalToggleLabel2">Модалка 2</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        Скройте это модальное окно и покажите первое с помощью кнопки ниже.
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Вернуться к первому</button>
      </div>
    </div>
  </div>
</div>
<button class="btn btn-primary" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Открыть первое модальное окно</button>
{{< /example >}}

### Изменение анимации

Переменная `$modal-fade-transform` определяет состояние преобразования `.modal-dialog` перед модальной плавной анимацией, переменная `$modal-show-transform` определяет преобразование `.modal-dialog` в конец модальной плавной анимации.

Если Вам нужна, например, анимация с увеличением, Вы можете установить `$modal-fade-transform: scale(.8)`.

### Удаление анимации

Для модальных окон, которые просто появляются, а не исчезают при просмотре, удалите класс `.fade` из Вашей модальной разметки.

```html
<div class="modal" tabindex="-1" aria-labelledby="..." aria-hidden="true">
  ...
</div>
```

### Динамические высоты

Если высота модального окна изменяется, пока он открыт, Вы должны вызвать `myModal.handleUpdate()`, чтобы скорректировать положение модального окна в случае появления полосы прокрутки.

### Доступность

Не забудьте добавить `aria-labelledby="..."`, ссылаясь на Заголовок модального окна, в `.modal`. Кроме того, Вы можете дать описание Вашего модального диалога с помощью `aria-describedby` в `.modal`. Обратите внимание, что Вам не нужно добавлять `role="dialog"`, поскольку мы уже добавляем его через JavaScript..

### Встраивание видео с YouTube

Встраивание видео YouTube в модальные окна требует дополнительного JavaScript не в Bootstrap для автоматической остановки воспроизведения и т.д. [См. этот полезный пост о переполнении стека](https://stackoverflow.com/questions/18622508/bootstrap-3-and-youtube-in-modal) для получения дополнительной информации.

## Дополнительные размеры

Модальные окна имеют три необязательных размера, доступных через классы модификаторов, которые помещаются в `.modal-dialog`. Эти размеры действуют в определенных контрольных точках, чтобы избежать горизонтальных полос прокрутки на более узких окнах просмотра.

{{< bs-table "table" >}}
| Размер | Класс | Максимальная ширина модального окна
| --- | --- | --- |
| Маленький | `.modal-sm` | `300px` |
| По умолчанию | <span class="text-body-secondary">Нет</span> | `500px` |
| Большой | `.modal-lg` | `800px` |
| Очень большой | `.modal-xl` | `1140px` |
{{< /bs-table >}}

Наш модальный класс по умолчанию без модификатора представляет собой модальное окно «среднего» размера.

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalXl">Очень большое модальное окно</button>
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalLg">Большое модальное окно</button>
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalSm">Маленькое модальное окно</button>
</div>

```html
<div class="modal-dialog modal-xl">...</div>
<div class="modal-dialog modal-lg">...</div>
<div class="modal-dialog modal-sm">...</div>
```

<div class="modal fade" id="exampleModalXl" tabindex="-1" aria-labelledby="exampleModalXlLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-4" id="exampleModalXlLabel">Очень большое модальное окно</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModalLg" tabindex="-1" aria-labelledby="exampleModalLgLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-4" id="exampleModalLgLabel">Большое модальное окно</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModalSm" tabindex="-1" aria-labelledby="exampleModalSmLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-4" id="exampleModalSmLabel">Маленькое модальное окно</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
    </div>
  </div>
</div>

## Полноэкранное модальное окно

Другое переопределение - это возможность вывести модальное окно, охватывающее область просмотра пользователя, доступное через классы модификаторов, которые помещаются в `.modal-dialog`.

{{< bs-table >}}
| Класс | Доступность |
| --- | --- |
| `.modal-fullscreen` | Всегда |
| `.modal-fullscreen-sm-down` | `576px` |
| `.modal-fullscreen-md-down` | `768px` |
| `.modal-fullscreen-lg-down` | `992px` |
| `.modal-fullscreen-xl-down` | `1200px` |
| `.modal-fullscreen-xxl-down` | `1400px` |
{{< /bs-table >}}

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalFullscreen">Полноэкранный</button>
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalFullscreenSm">Полноэкранный меньше sm</button>
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalFullscreenMd">Полноэкранный меньше md</button>
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalFullscreenLg">Полноэкранный меньше lg</button>
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalFullscreenXl">Полноэкранный меньше xl</button>
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalFullscreenXxl">Полноэкранный меньше xxl</button>
</div>

```html
<!-- Полноэкранное модальное окно -->
<div class="modal-dialog modal-fullscreen-sm-down">
  ...
</div>
```

<div class="modal fade" id="exampleModalFullscreen" tabindex="-1" aria-labelledby="exampleModalFullscreenLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-4" id="exampleModalFullscreenLabel">Полноэкранное модальное окно</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModalFullscreenSm" tabindex="-1" aria-labelledby="exampleModalFullscreenSmLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen-sm-down">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-4" id="exampleModalFullscreenSmLabel">Полноэкранный меньше sm</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModalFullscreenMd" tabindex="-1" aria-labelledby="exampleModalFullscreenMdLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen-md-down">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-4" id="exampleModalFullscreenMdLabel">Полноэкранный меньше md</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModalFullscreenLg" tabindex="-1" aria-labelledby="exampleModalFullscreenLgLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen-lg-down">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-4" id="exampleModalFullscreenLgLabel">Полноэкранный меньше lg</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModalFullscreenXl" tabindex="-1" aria-labelledby="exampleModalFullscreenXlLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen-xl-down">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-4" id="exampleModalFullscreenXlLabel">Полноэкранный меньше xl</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="exampleModalFullscreenXxl" tabindex="-1" aria-labelledby="exampleModalFullscreenXxlLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen-xxl-down">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-4" id="exampleModalFullscreenXxlLabel">Полноэкранный меньше xxl</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
      </div>
    </div>
  </div>
</div>

## CSS

### Переменные

{{< added-in "5.2.0" >}}

Как часть развивающегося подхода Bootstrap к переменным CSS, модальные окна теперь используют локальные переменные CSS в `.modal` и `.modal-backdrop` для расширенной настройки в реальном времени. Значения переменных CSS задаются через Sass, поэтому настройка Sass по-прежнему поддерживается.

{{< scss-docs name="modal-css-vars" file="scss/_modal.scss" >}}

{{< scss-docs name="modal-backdrop-css-vars" file="scss/_modal.scss" >}}

### Sass переменные

{{< scss-docs name="modal-variables" file="scss/_variables.scss" >}}

### Sass циклы

[Адаптивные полноэкранные модальные окна](#fullscreen-modal) генерируются с помощью карты `$breakpoints` и цикла в `scss/_modal.scss`.

{{< scss-docs name="modal-fullscreen-loop" file="scss/_modal.scss" >}}

## Использование

Модальный плагин переключает ваш скрытый контент по запросу с помощью атрибутов данных или JavaScript. Он также переопределяет поведение прокрутки по умолчанию и генерирует `.modal-backdrop`, чтобы предоставить область клика для отклонения отображаемых модальных окон при щелчке вне модального окна.

### Через атрибуты данных

#### Переключение

Активируйте модальное окно без написания JavaScript. Установите `data-bs-toggle="modal"` на элемент контроллера, например кнопку, вместе с `data-bs-target="#foo"` или `href="#foo"` для нацеливания на конкретное модальное окно для переключения.

```html
<button type="button" data-bs-toggle="modal" data-bs-target="#myModal">Запустить модальное окно</button>
```

#### Отклонение

{{% js-dismiss "modal" %}}

{{< callout warning >}}
Хотя поддерживаются оба способа отклонения модального окна, имейте в виду, что удаление модального окна извне не соответствует [Шаблон диалогового окна (модального) Руководства по авторской работе ARIA](https://www.w3.org/WAI/ARIA/apg/patterns/dialogmodal/). Делайте это на свой страх и риск.
{{< /callout >}}

### Через JavaScript

Создайте модальное окно с одной строкой JavaScript:

```js
const myModal = new bootstrap.Modal(document.getElementById('myModal'), options)
// or
const myModalAlternative = new bootstrap.Modal('#myModal', options)
```

### Опции

{{< markdown >}}
{{< partial "js-data-attributes.md" >}}
{{< /markdown >}}

{{< bs-table "table" >}}
| Название | Тип | По умолчанию | Описание |
| --- | --- | --- | --- |
| `backdrop` | boolean, `'static'` | `true` | Включает элемент модального фона. В качестве альтернативы укажите `static` для фона, который не закрывает модальное окно при нажатии. |
| `focus` | boolean | `true` | Ставит фокус на модальное окно при инициализации. |
| `keyboard` | boolean | `true` | Закрывает модальное окно при нажатии клавиши escape. |
{{< /bs-table >}}

### Методы

{{< callout danger >}}
{{< partial "callouts/danger-async-methods.md" >}}
{{< /callout >}}

#### Варианты прохождения

Активирует Ваш контент как модальное окно. Принимает необязательные параметры `object`.

```js
const myModal = new bootstrap.Modal('#myModal', {
  keyboard: false
})
```

{{< bs-table "table" >}}
| Метод | Описание |
| --- | --- |
| `dispose` | Уничтожает модальное окно элемента. (Удаляет сохраненные данные в элементе DOM). |
| `getInstance` | _Статический_ метод, позволяющий получить модальный экземпляр, связанный с элементом DOM. |
| `getOrCreateInstance` | _Статический_ метод, который позволяет вам получить модальный экземпляр, связанный с элементом DOM, или создать новый, если он не был инициализирован. |
| `handleUpdate` | Вручную отрегулируйте положение модального окна, если высота модального окна изменяется, когда оно открыто (например, в случае появления полосы прокрутки). |
| `hide` | Вручную скрывает модальное окно. **Возврат к вызывающей стороне до того, как модальное окно будет фактически скрыто** (т.е. до того, как произойдет событие `hidden.bs.modal`). |
| `show` | Вручную открывает модальное окно. **Возврат к вызывающей стороне до того, как модальное окно действительно будет показано** (т.е. до того, как произойдет событие `shown.bs.modal`). Кроме того, вы можете передать элемент DOM в качестве аргумента, который может быть получен в модальных событиях (как свойство `relatedTarget`). (т.е. `const modalToggle = document.getElementById('toggleMyModal'); myModal.show(modalToggle)`. |
| `toggle` | Вручную переключает модальное окно. **Возврат к вызывающей стороне до того, как модальное окно было действительно показано или скрыто** (т.е. до того, как произошло событие `shown.bs.modal` или `hidden.bs.modal`). |
{{< /bs-table >}}

### События

Модальный класс Bootstrap предоставляет несколько событий для подключения к модальным функциям. Все модальные события запускаются в самом модальном окне (то есть в `<div class="modal">`).

{{< bs-table >}}
| Событие | Описание |
| --- | --- |
| `hide.bs.modal` | Это событие запускается сразу после вызова метода экземпляра `hide`. |
| `hidden.bs.modal` | Это событие запускается, когда модальное окно больше не скрыто от пользователя (будет ждать завершения переходов CSS). |
| `hidePrevented.bs.modal` | Это событие запускается, когда отображается модальное окно, его фон является `static` и выполняется щелчок за пределами модального окна. Событие также запускается, когда нажата клавиша escape, а для параметра `keyboard` установлено значение `false`. |
| `show.bs.modal` | Это событие срабатывает немедленно при вызове метода экземпляра `show`. Если это вызвано щелчком, элемент, по которому щелкнули, доступен как свойство `relatedTarget`. |
| `shown.bs.modal` | Это событие запускается, когда модальное окно становится видимым для пользователя (будет ждать завершения переходов CSS). Если это вызвано щелчком, элемент, по которому щелкнули, доступен как свойство `relatedTarget`. |
{{< /bs-table >}}

```js
const myModalEl = document.getElementById('myModal')
myModalEl.addEventListener('hidden.bs.modal', event => {
  // сделайте что-нибудь...
})
```
