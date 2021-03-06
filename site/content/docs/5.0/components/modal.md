---
layout: docs
title: Модальное окно
description: Используйте плагин модального окна Bootstrap для JavaScript, чтобы добавить на свой сайт диалоговые окна для лайтбоксов, уведомлений пользователей или полностью настраиваемого контента.
group: components
toc: true
---

## Как это работает

Прежде чем приступить к работе с модальным компонентом Bootstrap, обязательно прочтите следующее, поскольку параметры нашего меню недавно изменились.

- Модальные окна создаются с помощью HTML, CSS и JavaScript. Они располагаются поверх всего остального в документе и удаляют прокрутку из `<body>`, так что вместо этого прокручивается модальное содержимое.
- Клик по модальному «фону» автоматически закрывает модальный.
- Bootstrap поддерживает только одно модальное окно за раз. Вложенные модальные окна не поддерживаются, поскольку мы считаем, что они неудобны для пользователей.
- В модальных окнах используется `position: fixed`, что иногда может быть немного специфичным при его рендеринге. По возможности размещайте модальный HTML-код на верхнем уровне, чтобы избежать потенциального вмешательства со стороны других элементов. Вы, вероятно, столкнетесь с проблемами при вложении `.modal` в другой фиксированный элемент.
- Еще раз, из-за `position: fixed` есть некоторые предостережения при использовании модальных окон на мобильных устройствах. [См. нашу документацию по поддержке браузеров]({{< docsref "/getting-started/browsers-devices#модальные-окна-и-выпадающие-списки-на-мобильных-устройствах" >}}) для получения дополнительной информации.
- Из-за того, как HTML5 определяет свою семантику, [атрибут HTML `autofocus`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#attr-autofocus) не действует в Bootstrap. модальные окна. Чтобы добиться того же эффекта, используйте собственный JavaScript:

```js
var myModal = document.getElementById('myModal')
var myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', function () {
  myInput.focus()
})
```

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

Продолжайте читать, чтобы увидеть демонстрации и инструкции по использованию.

## Примеры

### Модальные компоненты

Ниже приведен пример _статического_ модального окна (это означает, что его `position` и `display` были переопределены). Включены модальный заголовок, модальное тело (требуется для `padding`) и модальный нижний колонтитул (необязательно). Мы просим вас по возможности включать модальные заголовки с действиями по отклонению или предоставить другое явное действие по отклонению.

<div class="bd-example bd-example-modal">
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

### Живая демонстрация

Переключите рабочую модальную демонстрацию, нажав кнопку ниже. Он будет скользить вниз и исчезать из верхней части страницы.

<div class="modal fade" id="exampleModalLive" tabindex="-1" aria-labelledby="exampleModalLiveLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLiveLabel">Заголовок модального окна</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <p>Уууу, вы читаете этот текст в модальном!</p>
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
        <h5 class="modal-title" id="exampleModalLabel">Заголовок модального окна</h5>
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

Если фон установлен на статический, модальное окно не закроется при нажатии вне его. Нажмите кнопку ниже, чтобы попробовать.

<div class="modal fade" id="staticBackdropLive" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLiveLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLiveLabel">Заголовок модального окна</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <p>Я не закроюсь, если ты щелкнешь вне меня. Даже не пытайтесь нажимать клавишу выхода.</p>
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
        <h5 class="modal-title" id="staticBackdropLabel">Заголовок модального окна</h5>
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
        <h5 class="modal-title" id="exampleModalLongTitle">Заголовок модального окна</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body" style="min-height: 1500px">
        <p>Это некий заполнитель, показывающий поведение при прокрутке модальных окон. Вместо того, чтобы повторять модальный текст, мы используем встроенный стиль, устанавливающий минимальную высоту, тем самым увеличивая длину всего модального окна и демонстрируя прокрутку переполнения. Когда содержимое становится длиннее, чем высота области просмотра, при прокрутке модальное окно перемещается по мере необходимости.</p>
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

Вы также можете создать прокручиваемое модальное окно, которое позволяет прокручивать модальное тело, добавляя `.modal-dialog-scrollable` к `.modal-dialog`.

<div class="modal fade" id="exampleModalScrollable" tabindex="-1" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">Заголовок модального окна</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <p>Это некий заполнитель, показывающий поведение при прокрутке модальных окон. Мы используем повторяющиеся разрывы строк, чтобы продемонстрировать, как контент может превышать минимальную внутреннюю высоту, тем самым показывая внутреннюю прокрутку. Когда содержимое становится длиннее, чем предустановленная максимальная высота модального окна, содержимое будет обрезано и прокручиваться внутри модального окна.</p>
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

### Центрование по вертикали

Добавьте `.modal-dialog-centered` к `.modal-dialog` для вертикального центрирования модального окна.

<div class="modal fade" id="exampleModalCenter" tabindex="-1" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">Заголовок модального окна</h5>
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
        <h5 class="modal-title" id="exampleModalCenteredScrollableTitle">Заголовок модального окна</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <p>Это некий заполнитель для отображения модального окна с вертикальным центрированием. Мы добавили здесь дополнительную копию, чтобы показать, как работает вертикальное центрирование модального окна в сочетании с прокручиваемыми модальными окнами. Мы также используем несколько повторяющихся разрывов строк, чтобы быстро увеличить высоту содержимого и тем самым запустить прокрутку. Когда содержимое становится длиннее, чем предустановленная максимальная высота модального окна, содержимое будет обрезано и прокручиваться внутри модального окна.</p>
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
        <h5 class="modal-title" id="exampleModalPopoversLabel">Заголовок модального окна</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <div class="modal-body">
        <h5>Всплывающие окна в модальном окне</h5>
        <p>Эта <a href="#" role="button" class="btn btn-secondary popover-test" title="Popover title" data-bs-content="В этом атрибуте задается содержимое тела всплывающего окна." data-bs-container="#exampleModalPopovers">кнопка</a> вызывает всплывающее окно при нажатии.</p>
        <hr>
        <h5>Всплывающие подсказки в модальном окне</h5>
        <p><a href="#" class="tooltip-test" title="Tooltip" data-bs-container="#exampleModalPopovers">Эта ссылка</a> и <a href="#" class="tooltip-test" title="Tooltip" data-bs-container="#exampleModalPopovers">эта ссылка</a> имеют всплывающие подсказки при наведении курсора.</p>
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
  <h5>Всплывающие окна в модальном окне</h5>
  <p>Эта <a href="#" role="button" class="btn btn-secondary popover-test" title="Заголовок всплывающего окна" data-bs-content="В этом атрибуте задается содержимое тела всплывающего окна.">кнопка</a> вызывает всплывающее окно при нажатии.</p>
  <hr>
  <h5>Всплывающие подсказки в модальном окне</h5>
  <p><a href="#" class="tooltip-test" title="Tooltip">Эта ссылка</a> и <a href="#" class="tooltip-test" title="Tooltip">эта ссылка</a> имеют всплывающие подсказки при наведении курсора.</p>
</div>
```

### Использование сетки

Используйте сеточную систему Bootstrap в модальном окне, вложив `.container-fluid` в `.modal-body`. Затем используйте обычные классы системы сетки, как и везде.

<div class="modal fade" id="gridSystemModal" tabindex="-1" aria-labelledby="gridModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="gridModalLabel">Сетки в модальных окнах</h5>
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

{{< example >}}
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">Открыть модальное окно для @mdo</button>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@fat">Открыть модальное окно для @fat</button>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@getbootstrap">Открыть модальное окно для @getbootstrap</button>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Новое сообщение</h5>
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

```js
var exampleModal = document.getElementById('exampleModal')
exampleModal.addEventListener('show.bs.modal', function (event) {
  // Кнопка, запускающая модальное окно
  var button = event.relatedTarget
  // Извлечь информацию из атрибутов data-bs- *
  var recipient = button.getAttribute('data-bs-whatever')
  // При необходимости вы можете инициировать запрос AJAX здесь
  // а затем выполните обновление в обратном вызове.
  //
  // Обновите содержимое модального окна.
  var modalTitle = exampleModal.querySelector('.modal-title')
  var modalBodyInput = exampleModal.querySelector('.modal-body input')

  modalTitle.textContent = 'Новое сообщение для ' + recipient
  modalBodyInput.value = recipient
})
```

### Переключение между модальными окнами

{{< example >}}
<div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalToggleLabel">Модалка 1</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Покажите второе модальное окно и скройте его с помощью кнопки ниже.
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" data-bs-target="#exampleModalToggle2" data-bs-toggle="modal" data-bs-dismiss="modal">Открыть второе модальное окно</button>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="exampleModalToggle2" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalToggleLabel2">Модалка 2</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Скройте это модальное окно и покажите первое с помощью кнопки ниже.
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" data-bs-target="#exampleModalToggle" data-bs-toggle="modal" data-bs-dismiss="modal">Вернуться к первому</button>
      </div>
    </div>
  </div>
</div>
<a class="btn btn-primary" data-bs-toggle="modal" href="#exampleModalToggle" role="button">Открыть первое модальное окно</a>
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

<table class="table">
  <thead>
    <tr>
      <th>Размер</th>
      <th>Класс</th>
      <th>Максимальная ширина модального окна</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Маленькое</td>
      <td><code>.modal-sm</code></td>
      <td><code>300px</code></td>
    </tr>
    <tr>
      <td>По умочланию</td>
      <td class="text-muted">нет</td>
      <td><code>500px</code></td>
    </tr>
    <tr>
      <td>Большое</td>
      <td><code>.modal-lg</code></td>
      <td><code>800px</code></td>
    </tr>
    <tr>
      <td>Очень большое</td>
      <td><code>.modal-xl</code></td>
      <td><code>1140px</code></td>
    </tr>
  </tbody>
</table>

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
        <h5 class="modal-title h4" id="exampleModalXlLabel">Очень большое модальное окно</h5>
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
        <h5 class="modal-title h4" id="exampleModalLgLabel">Большое модальное окно</h5>
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
        <h5 class="modal-title h4" id="exampleModalSmLabel">Маленькое модальное окно</h5>
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

<table class="table">
  <thead>
    <tr>
      <th>Класс</th>
      <th>Доступность</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>.modal-fullscreen</code></td>
      <td>Всегда</td>
    </tr>
    <tr>
      <td><code>.modal-fullscreen-sm-down</code></td>
      <td>Меньше <code>576px</code></td>
    </tr>
    <tr>
      <td><code>.modal-fullscreen-md-down</code></td>
      <td>Меньше <code>768px</code></td>
    </tr>
    <tr>
      <td><code>.modal-fullscreen-lg-down</code></td>
      <td>Меньше <code>992px</code></td>
    </tr>
    <tr>
      <td><code>.modal-fullscreen-xl-down</code></td>
      <td>Меньше <code>1200px</code></td>
    </tr>
    <tr>
      <td><code>.modal-fullscreen-xxl-down</code></td>
      <td>Меньше <code>1400px</code></td>
    </tr>
  </tbody>
</table>

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
        <h5 class="modal-title h4" id="exampleModalFullscreenLabel">Полноэкранное модальное окно</h5>
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
        <h5 class="modal-title h4" id="exampleModalFullscreenSmLabel">Полноэкранный меньше sm</h5>
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
        <h5 class="modal-title h4" id="exampleModalFullscreenMdLabel">Полноэкранный меньше md</h5>
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
        <h5 class="modal-title h4" id="exampleModalFullscreenLgLabel">Полноэкранный меньше lg</h5>
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
        <h5 class="modal-title h4" id="exampleModalFullscreenXlLabel">Полноэкранный меньше xl</h5>
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
        <h5 class="modal-title h4" id="exampleModalFullscreenXxlLabel">Полноэкранный меньше xxl</h5>
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

## Sass

### Переменные

{{< scss-docs name="modal-variables" file="scss/_variables.scss" >}}

### Цикл

[Адаптивные полноэкранные модальные окна](#fullscreen-modal) генерируются с помощью карты `$breakpoints` и цикла в `scss/_modal.scss`.

{{< scss-docs name="modal-fullscreen-loop" file="scss/_modal.scss" >}}

## Использование

Модальный плагин переключает ваш скрытый контент по запросу с помощью атрибутов данных или JavaScript. Он также переопределяет поведение прокрутки по умолчанию и генерирует `.modal-backdrop`, чтобы предоставить область клика для отклонения отображаемых модальных окон при щелчке вне модального окна.

### Через атрибуты данных

Активируйте модальное окно без написания JavaScript. Установите `data-bs-toggle="modal"` на элементе контроллера, таком как кнопка, вместе с `data-bs-target="#foo"` или `href="#foo"`, чтобы настроить таргетинг на конкретный модальный элемент для переключения.

```html
<button type="button" data-bs-toggle="modal" data-bs-target="#myModal">Запустить модальное окно</button>
```

### Через JavaScript

Создайте модальное окно с одной строкой JavaScript:

```js
var myModal = new bootstrap.Modal(document.getElementById('myModal'), options)
```

### Параметры

Параметры могут передаваться через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-bs-`, как в `data-bs-backdrop=""`.

<table class="table">
  <thead>
    <tr>
      <th style="width: 100px;">Наименование</th>
      <th style="width: 50px;">Тип</th>
      <th style="width: 50px;">По умолчанию</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>backdrop</code></td>
      <td>boolean or the string <code>'static'</code></td>
      <td><code>true</code></td>
      <td>Включает элемент модального фона. В качестве альтернативы укажите <code>static</code> для фона, который не закрывает модальное окно при нажатии.</td>
    </tr>
    <tr>
      <td><code>keyboard</code></td>
      <td>boolean</td>
      <td><code>true</code></td>
      <td>Закрывает модальное окно при нажатии клавиши выхода.</td>
    </tr>
    <tr>
      <td><code>focus</code></td>
      <td>boolean</td>
      <td><code>true</code></td>
      <td>При инициализации фокусируется на модальном окне.</td>
    </tr>
  </tbody>
</table>

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

#### Passing options

Активирует Ваш контент как модальное окно. Принимает необязательные параметры `object`.

```js
var myModal = new bootstrap.Modal(document.getElementById('myModal'), {
  keyboard: false
})
```

#### toggle

Вручную переключает модальное окно. **Возврат к вызывающей стороне до того, как модальное окно было фактически показано или скрыто** (т.е. до того, как произойдет событие `shown.bs.modal` или` hidden.bs.modal`).

```js
myModal.toggle()
```

#### show

Открывает модальное окно вручную. **Возврат к вызывающей стороне до фактического отображения модального окна** (т.е. до того, как произойдет событие `shown.bs.modal`).

```js
myModal.show()
```

Also, you can pass a DOM element as an argument that can be received in the modal events (as the `relatedTarget` property).

```js
var modalToggle = document.getElementById('toggleMyModal') // relatedTarget
myModal.show(modalToggle)
```

#### hide

Скрывает модальное окно вручную. **Возврат к вызывающей стороне до того, как модальное окно было фактически скрыто** (т.е. до того, как произойдет событие `hidden.bs.modal`).

```js
myModal.hide()
```

#### handleUpdate

Вручную скорректируйте положение модального окна, если высота модального окна изменяется, пока он открыт (то есть в случае появления полосы прокрутки).

```js
myModal.handleUpdate()
```

#### dispose

Уничтожает элемент модальное окно. (Удаляет сохраненные данные в элементе DOM)

```js
myModal.dispose()
```

#### getInstance

*Статический* метод, позволяющий получить модальный экземпляр, связанный с элементом DOM.

```js
var myModalEl = document.getElementById('myModal')
var modal = bootstrap.Modal.getInstance(myModalEl) // Возвращает экземпляр Bootstrap modal
```

#### getOrCreateInstance

*Статический* метод, который позволяет вам получить модальный экземпляр, связанный с элементом DOM, или создать новый, если он не был инициализирован.

```js
var myModalEl = document.querySelector('#myModal')
var modal = bootstrap.Modal.getOrCreateInstance(myModalEl) // Возвращает экземпляр модалки Bootstrap
```

### События

Модальный класс Bootstrap предоставляет несколько событий для подключения к модальным функциям. Все модальные события запускаются в самом модальном окне (то есть в `<div class="modal">`).

<table class="table">
  <thead>
    <tr>
      <th style="width: 150px;">Тип события</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>show.bs.modal</code></td>
      <td>Это событие запускается немедленно при вызове метода экземпляра <code>show</code>. Если это вызвано кликом, выбранный элемент доступен как свойство <code>relatedTarget</code> события.</td>
    </tr>
    <tr>
      <td><code>shown.bs.modal</code></td>
      <td>Это событие запускается, когда модальное окно становится видимым для пользователя (будет ожидать завершения переходов CSS). Если он вызван кликом, выбранный элемент доступен как свойство <code>relatedTargetcode> события.</td>
    </tr>
    <tr>
      <td><code>hide.bs.modal</code></td>
      <td>Это событие запускается сразу после вызова метода экземпляра <code>hide</code>.</td>
    </tr>
    <tr>
      <td><code>hidden.bs.modal</code></td>
      <td>Это событие запускается, когда модальное окно перестает быть скрытым от пользователя (будет ожидать завершения переходов CSS).</td>
    </tr>
    <tr>
      <td><code>hidePrevented.bs.modal</code></td>
      <td>Это событие запускается, когда отображается модальное окно, его фон является <code>static</code>, а щелчок за пределами модального окна или нажатие клавиши escape выполняется с параметром клавиатуры или установленным параметром <code>data-keyboard</code> на <code>false</code>.</td>
    </tr>
  </tbody>
</table>

```js
var myModalEl = document.getElementById('myModal')
myModalEl.addEventListener('hidden.bs.modal', function (event) {
  // сделайте что-нибудь...
})
```
