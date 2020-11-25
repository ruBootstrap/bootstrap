---
layout: docs
title: Modal
description: Используйте JavaScript modal плагин Bootstrap , чтобы добавить на свой сайт диалоговые окна для лайтбоксов, уведомлений пользователей или полностью настраиваемого контента.
group: components
toc: true
---

## Как это работает

Прежде чем приступить к работе с модальным компонентом Bootstrap, обязательно прочтите следующее, поскольку параметры нашего меню недавно изменились.

- Модальные окна созданы с использованием HTML, CSS и JavaScript. Они располагаются поверх всего остального в документе и удаляют прокрутку из `<body>`, так что вместо этого прокручивается модальное содержимое.
- Клик по «подложке» модального окна автоматически закрывает модальный.
- Bootstrap поддерживает только одно модальное окно за раз. Вложенные модальные окна не поддерживаются, поскольку мы считаем, что они неудобны для пользователей.
- В модальных окнах используется `position: fixed`, что иногда может быть немного специфичным в отношении рендеринга. По возможности размещайте модальный HTML-код на верхнем уровне, чтобы избежать потенциального вмешательства со стороны других элементов. Вы, вероятно, столкнетесь с проблемами при вложении `.modal` в другой фиксированный элемент.
- Еще раз, из-за `position: fixed`, есть некоторые предостережения при использовании модальных окон на мобильных устройствах. [Смотрите нашу документацию по поддержке браузеров]({{< docsref "/getting-started/browsers-devices#модальные-окна-и-выпадающие-списки-на-мобильных-устройствах" >}}) для получения дополнительной информации.
- Из-за того, как HTML5 определяет свою семантику, [HTML атрибут `autofocus`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#attr-autofocus) не влияет на Модальные окна Bootstrap. Чтобы добиться того же эффекта, используйте собственный JavaScript:

```js
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})
```

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

Продолжайте читать, чтобы увидеть демонстрации и инструкции по использованию.

## Примеры

### Модальные компоненты

Ниже приведен пример _статичного_ модального окна (это означает, что его `position` и `display` были переопределены). Включены модальный заголовок, модальное тело (требуется для `padding`) и модальный нижний колонтитул (необязательно). Мы просим Вас по возможности включать модальные заголовки с действиями по отклонению или предоставить другое явное действие по отклонению.

<div class="bd-example bd-example-modal">
  <div class="modal" tabindex="-1">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Заголовок модального окна</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <p>Здесь основной текст модального окна</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
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
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Здесь основной текст модального окна</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
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
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Уууу, вы читаете этот текст в модальном окне!</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLive">
    Запустить демонстрацию модального окна
  </button>
</div>

```html
<!-- Кнопка-триггер модального окна -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Запустить демонстрацию модального окна
</button>

<!-- Модальное окно -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Заголовок модального окна</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>
```

### Статический фон

Если фон установлен на статический, модальное окно не закроется при нажатии вне его. Нажмите кнопку ниже, чтобы попробовать.

<div class="modal fade" id="staticBackdropLive" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLiveLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLiveLabel">Заголовок модального окна</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Я не закроюсь, если ты кликнешь вне меня. Даже не пытайтесь нажимать клавишу выхода.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Понял</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdropLive">
    Запустить модальное окно со статическим фоном
  </button>
</div>

```html
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
  Запустить модальное окно со статическим фоном
</button>

<!-- Модальное окно -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Заголовок модального окна</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
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
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
    Запустить демонстрацию модального окна
  </button>
</div>

Вы также можете создать модальное окно с возможностью прокрутки, которое позволяет прокручивать тело модального окна, добавив `.modal-dialog-scrollable` к `.modal-dialog`.

<div class="modal fade" id="exampleModalScrollable" tabindex="-1" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">Заголовок модального окна</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalScrollable">
    Запустить демонстрацию модального окна
  </button>
</div>

```html
<!-- Прокручиваемое модальное окно -->
<div class="modal-dialog modal-dialog-scrollable">
  ...
</div>
```

### Вертикально по центру

Добавьте `.modal-dialog-centered` к `.modal-dialog` для вертикального выравнивания модального окна.

<div class="modal fade" id="exampleModalCenter" tabindex="-1" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">Заголовок модального окна</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
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
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
    Вертикально выравненное модальное окно
  </button>
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenteredScrollable">
    Вертикально выравненное прокручиваемое модальное окно
  </button>
</div>

```html
<!-- Вертикально выравненное модальное окно -->
<div class="modal-dialog modal-dialog-centered">
  ...
</div>

<!-- Вертикально выравненное прокручиваемое модальное окно -->
<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
  ...
</div>
```

### Всплывающие подсказки и всплывающие окна

[Всплывающие подсказки]({{< docsref "/components/tooltips" >}}) и [всплывающие окна]({{< docsref "/components/popovers" >}}) могут быть размещены в модальных окнах по мере необходимости. Когда модальные окна закрываются, любые всплывающие подсказки и всплывающие окна также автоматически закрываются.

<div class="modal fade" id="exampleModalPopovers" tabindex="-1" aria-labelledby="exampleModalPopoversLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalPopoversLabel">Заголовок модального окна</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <h5>Всплывающее окно в модальном окне</h5>
        <p>Эта <a href="#" role="button" class="btn btn-secondary popover-test" title="Заголовок всплывающего окна" data-content="В этом атрибуте задается содержимое тела всплывающего окна." data-container="#exampleModalPopovers">кнопка</a> вызывает всплывающее окно при нажатии.</p>
        <hr>
        <h5>Всплывающая подсказка в модальном окне</h5>
        <p><a href="#" class="tooltip-test" title="Всплывающая подсказка" data-container="#exampleModalPopovers">Эта ссылка</a> и <a href="#" class="tooltip-test" title="Всплывающая подсказка" data-container="#exampleModalPopovers">эта ссылка</a> имеют всплывающие подсказки при наведении.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalPopovers">
    Запустить демонстрацию модального окна
  </button>
</div>

```html
<div class="modal-body">
  <h5>Popover in a modal</h5>
  <p>This <a href="#" role="button" class="btn btn-secondary popover-test" title="Popover title" data-content="Popover body content is set in this attribute.">button</a> triggers a popover on click.</p>
  <hr>
  <h5>Tooltips in a modal</h5>
  <p><a href="#" class="tooltip-test" title="Tooltip">This link</a> and <a href="#" class="tooltip-test" title="Tooltip">that link</a> have tooltips on hover.</p>
</div>
```

### Использование сетки

Используйте сеточную систему Bootstrap в модальном окне, вложив `.container-fluid` в `.modal-body`. Затем используйте обычные классы системы сетки, как и везде.

<div class="modal fade" id="gridSystemModal" tabindex="-1" aria-labelledby="gridModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="gridModalLabel">Сетки в модальных окнах</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
        <div class="container-fluid bd-example-row">
          <div class="row">
            <div class="col-md-4">.col-md-4</div>
            <div class="col-md-4 ml-auto">.col-md-4 .ml-auto</div>
          </div>
          <div class="row">
            <div class="col-md-3 ml-auto">.col-md-3 .ml-auto</div>
            <div class="col-md-2 ml-auto">.col-md-2 .ml-auto</div>
          </div>
          <div class="row">
            <div class="col-md-6 ml-auto">.col-md-6 .ml-auto</div>
          </div>
          <div class="row">
            <div class="col-sm-9">
              Уровень 1: .col-sm-9
              <div class="row">
                <div class="col-8 col-sm-6">
                  Уровень 2: .col-8 .col-sm-6
                </div>
                <div class="col-4 col-sm-6">
                  Уровень 2: .col-4 .col-sm-6
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<div class="bd-example">
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#gridSystemModal">
  Запустить демонстрацию модального окна
</button>
</div>

```html
<div class="modal-body">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-4">.col-md-4</div>
      <div class="col-md-4 ml-auto">.col-md-4 .ml-auto</div>
    </div>
    <div class="row">
      <div class="col-md-3 ml-auto">.col-md-3 .ml-auto</div>
      <div class="col-md-2 ml-auto">.col-md-2 .ml-auto</div>
    </div>
    <div class="row">
      <div class="col-md-6 ml-auto">.col-md-6 .ml-auto</div>
    </div>
    <div class="row">
      <div class="col-sm-9">
        Уровень 1: .col-sm-9
        <div class="row">
          <div class="col-8 col-sm-6">
            Уровень 2: .col-8 .col-sm-6
          </div>
          <div class="col-4 col-sm-6">
            Уровень 2: .col-4 .col-sm-6
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
```

### Изменяющееся модальное содержимое

У вас есть несколько кнопок, которые запускают одно и то же модальное окно с немного различным содержанием? Используйте атрибуты `event.relatedTarget` и [HTML-атрибуты `data-*`](https://developer.mozilla.org/en-US/docs/Learn/HTML/Howto/Use_data_attributes) (возможно [через jQuery](https://api.jquery.com/data/)), чтобы изменять содержимое модального окна в зависимости от того, какая кнопка была нажата.

Ниже представлена живая демонстрация, за которой следуют примеры HTML и JavaScript. Для получения дополнительной информации [прочтите документацию по модальным событиям](#события) для получения подробной информации о `relatedTarget`.

{{< example >}}
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Открыть модальное окно для @mdo</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@fat">Открыть модальное окно для @fat</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Открыть модальное окно для @getbootstrap</button>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Новое сообщение</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Получатель:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Сообщение:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Отправить сообщение</button>
      </div>
    </div>
  </div>
</div>
{{< /example >}}

```js
$('#exampleModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Кнопка, запускающая модальное окно
  var recipient = button.data('whatever') // Извлечь информацию из атрибутов data- *
  // При необходимости Вы можете инициировать здесь запрос AJAX (а затем выполнить обновление в обратном вызове).
  // Обновите содержимое модального окна. Здесь мы будем использовать jQuery, но вместо этого вы можете использовать библиотеку привязки данных или другие методы.
  var modal = $(this)
  modal.find('.modal-title').text('New message to ' + recipient)
  modal.find('.modal-body input').val(recipient)
})
```

### Изменение анимации

Переменная `$modal-fade-transform` определяет состояние преобразования `.modal-dialog` перед модальной плавной анимацией, переменная `$modal-show-transform` определяет преобразование `.modal-dialog` в конец модальной плавной анимации.

Если вам нужна, например, анимация с увеличением, Вы можете установить `$modal-fade-transform: scale(.8)`.

### Удаление анимации

Для модальных окон, которые просто появляются, а не исчезают при просмотре, удалите класс `.fade` из Вашей модальной разметки.

```html
<div class="modal" tabindex="-1" aria-labelledby="..." aria-hidden="true">
  ...
</div>
```

### Динамические высоты

Если высота модального окна изменяется, пока он открыт, Вы должны вызвать `$('#myModal').modal('handleUpdate')`, чтобы скорректировать положение модального окна в случае появления полосы прокрутки.

### Доступность

Не забудьте добавить `aria-labelledby="..."`, ссылаясь на Заголовок модального окна, в `.modal`. Кроме того, Вы можете дать описание Вашего модального диалога с помощью `aria-describedby` в `.modal`. Обратите внимание, что Вам не нужно добавлять `role="dialog"`, поскольку мы уже добавляем его через JavaScript.

### Встраивание видео с YouTube

Встраивание видео YouTube в модальные окна требует дополнительного JavaScript не в Bootstrap для автоматической остановки воспроизведения и т.д. [См. этот полезный пост Stack Overflow](https://stackoverflow.com/questions/18622508/bootstrap-3-and-youtube-in-modal) для получения дополнительной информации.

## Дополнительные размеры

Модальные окна имеют три необязательных размера, доступных через классы модификаторов для размещения в `.modal-dialog`. Эти размеры вступают в силу в определенных точках останова, чтобы избежать горизонтальных полос прокрутки на более узких окнах просмотра.

<table class="table table-bordered table-striped">
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
      <td>По умолчанию</td>
      <td class="text-muted">Никакой</td>
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

Наш модальный класс по умолчанию без модификаторов представляет собой модальное окно «среднего» размера.

<div class="bd-example">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalXl">Очень большое модальное окно</button>
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLg">Большое модальное окно</button>
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalSm">Маленькое модальное окно</button>
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
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
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
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
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
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
    </div>
  </div>
</div>

## Применение

Модальный плагин переключает Ваш скрытый контент по запросу с помощью атрибутов данных или JavaScript. Он также добавляет `.modal-open` к `<body> `, чтобы переопределить поведение прокрутки по умолчанию, и генерирует `.modal-backdrop`, чтобы предоставить область клика для отклонения отображаемых модальных окон при клике вне модального окна.

### Через атрибуты данных

Активируйте модальное окно без написания JavaScript. Установите `data-toggle="modal"` на элементе контроллера, например кнопке, вместе с `data-target="#foo"` или `href="#foo"`, чтобы настроить таргетинг на конкретное модальное окно для переключения.

```html
<button type="button" data-toggle="modal" data-target="#myModal">Запустить модальное окно</button>
```

### Через JavaScript

Вызов модального окна с идентификатором `myModal` с помощью одной строки на JavaScript:

```js
$('#myModal').modal(options)
```

### Параметры

Параметры могут передаваться через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-`, как в `data-backdrop=""`.

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="width: 100px;">Имя</th>
      <th style="width: 50px;">Тип</th>
      <th style="width: 50px;">По умолчанию</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>backdrop</td>
      <td>boolean or the string <code>'static'</code></td>
      <td>true</td>
      <td>Включает элемент модального фона. В качестве альтернативы укажите <code>static</code> для фона, который не закрывает модальное окно при нажатии.</td>
    </tr>
    <tr>
      <td>keyboard</td>
      <td>boolean</td>
      <td>true</td>
      <td>Закрывает модальное окно при нажатии клавиши выхода (Esc)</td>
    </tr>
    <tr>
      <td>focus</td>
      <td>boolean</td>
      <td>true</td>
      <td>При инициализации фокусируется на модальном окне.</td>
    </tr>
    <tr>
      <td>show</td>
      <td>boolean</td>
      <td>true</td>
      <td>Показывает модальное окно при инициализации.</td>
    </tr>
  </tbody>
</table>

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

#### `.modal(options)`

Активирует ваш контент как модальный. Принимает необязательные параметры `object`.

```js
$('#myModal').modal({
  keyboard: false
})
```

#### `.modal('toggle')`

Вручную переключает модальное окно. **Возврат к вызывающей стороне до того, как модальное окно было фактически показано или скрыто** (т.е. до того, как произойдет событие `shown.bs.modal` или `hidden.bs.modal`).

```js
$('#myModal').modal('toggle')
```

#### `.modal('show')`

Открывает модальное окно вручную. **Возврат к вызывающей стороне до фактического отображения модального окна** (т.е. до того, как произойдет событие `shown.bs.modal`).

```js
$('#myModal').modal('show')
```

#### `.modal('hide')`

Скрывает модальное окно вручную. **Возврат к вызывающей стороне до того, как модальное окно было фактически скрыто** (т.е. до того, как произойдет событие `hidden.bs.modal`).

```js
$('#myModal').modal('hide')
```

#### `.modal('handleUpdate')`

Вручную отрегулируйте положение модального окна, если высота модального окна изменяется, пока он открыт (например, в случае появления полосы прокрутки).

```js
$('#myModal').modal('handleUpdate')
```

#### `.modal('dispose')`

Уничтожает элемент модальное окно.

### События

Модальный класс Bootstrap предоставляет несколько событий для подключения к модальным функциям. Все модальные события запускаются в самом модальном окне (то есть в `<div class="modal">`).

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="width: 150px;">Тип события</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>show.bs.modal</td>
      <td>Это событие запускается немедленно при вызове метода экземпляра <code>show</code>. Если он вызван кликом, выбранный элемент доступен как свойство события <code>relatedTarget</code>.</td>
    </tr>
    <tr>
      <td>shown.bs.modal</td>
      <td>Это событие запускается, когда модальное окно становится видимым для пользователя (будет ожидать завершения переходов CSS). Если он вызван кликом, выбранный элемент доступен как свойство события <code>relatedTarget</code>.</td>
    </tr>
    <tr>
      <td>hide.bs.modal</td>
      <td>Это событие запускается сразу после вызова метода экземпляра <code>hide</code>.</td>
    </tr>
    <tr>
      <td>hidden.bs.modal</td>
      <td>Это событие запускается, когда модальное окно перестает быть скрытым от пользователя (будет ожидать завершения переходов CSS).</td>
    </tr>
    <tr>
      <td>hidePrevented.bs.modal</td>
      <td>Это событие запускается, когда отображается модальное окно, его фон является <code>static</code>, и выполняется щелчок за пределами модального окна или нажатие клавиши escape с параметром клавиатуры или установленным параметром <code>data-keyboard</code> на <code>false</code>.</td>
    </tr>
  </tbody>
</table>

```js
$('#myModal').on('hidden.bs.modal', function (event) {
  // сделайте что-нибудь...
})
```
