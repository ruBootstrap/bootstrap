---
layout: docs
title: Группа кнопок
description: Сгруппируйте серию кнопок вместе в одну строку с группой кнопок и усилите их с помощью JavaScript.
group: components
toc: true
---

## Базовый пример

Оберните серию кнопок с помощью `.btn` в `.btn-group`. Добавьте необязательное поведение переключателя JavaScript и стиля флажка с помощью [нашего плагина кнопок]({{< docsref "/components/buttons#плагин-кнопки" >}}).

{{< example >}}
<div class="btn-group" role="group" aria-label="Basic example">
  <button type="button" class="btn btn-secondary">Лево</button>
  <button type="button" class="btn btn-secondary">Середина</button>
  <button type="button" class="btn btn-secondary">Право</button>
</div>
{{< /example >}}

{{< callout warning >}}
##### Убедитесь, что `role` правильная, и укажите метку

Для того, чтобы вспомогательные технологии (например, программы чтения с экрана) передавали, что последовательность кнопок сгруппирована, необходимо предоставить соответствующий атрибут `role`. Для групп кнопок это будет `role="group"`, в то время как панели инструментов должны иметь `role="toolbar"`.

Кроме того, группам и панелям инструментов следует давать явные метки, поскольку в противном случае большинство вспомогательных технологий не будут их объявлять, несмотря на наличие правильного атрибута роли. В приведенных здесь примерах мы используем `aria-label`, но также можно использовать альтернативы, такие как `aria-labelledby`.
{{< /callout >}}

## Панель инструментов кнопки

Объединяйте наборы групп кнопок в панели инструментов кнопок для получения более сложных компонентов. При необходимости используйте служебные классы для разнесения групп, кнопок и т.д.

{{< example >}}
<div class="btn-toolbar" role="toolbar" aria-label="Панель инструментов с группами кнопок">
  <div class="btn-group mr-2" role="group" aria-label="First group">
    <button type="button" class="btn btn-secondary">1</button>
    <button type="button" class="btn btn-secondary">2</button>
    <button type="button" class="btn btn-secondary">3</button>
    <button type="button" class="btn btn-secondary">4</button>
  </div>
  <div class="btn-group mr-2" role="group" aria-label="Second group">
    <button type="button" class="btn btn-secondary">5</button>
    <button type="button" class="btn btn-secondary">6</button>
    <button type="button" class="btn btn-secondary">7</button>
  </div>
  <div class="btn-group" role="group" aria-label="Third group">
    <button type="button" class="btn btn-secondary">8</button>
  </div>
</div>
{{< /example >}}

Не стесняйтесь смешивать группы ввода с группами кнопок на панелях инструментов. Как и в примере выше, Вам, вероятно, понадобятся некоторые утилиты для правильного размещения вещей.

{{< example >}}
<div class="btn-toolbar mb-3" role="toolbar" aria-label="Панель инструментов с группами кнопок">
  <div class="btn-group mr-2" role="group" aria-label="First group">
    <button type="button" class="btn btn-secondary">1</button>
    <button type="button" class="btn btn-secondary">2</button>
    <button type="button" class="btn btn-secondary">3</button>
    <button type="button" class="btn btn-secondary">4</button>
  </div>
  <div class="input-group">
    <div class="input-group-prepend">
      <div class="input-group-text" id="btnGroupAddon">@</div>
    </div>
    <input type="text" class="form-control" placeholder="Пример группы ввода" aria-label="Пример группы ввода" aria-describedby="btnGroupAddon">
  </div>
</div>

<div class="btn-toolbar justify-content-between" role="toolbar" aria-label="Панель инструментов с группами кнопок">
  <div class="btn-group" role="group" aria-label="First group">
    <button type="button" class="btn btn-secondary">1</button>
    <button type="button" class="btn btn-secondary">2</button>
    <button type="button" class="btn btn-secondary">3</button>
    <button type="button" class="btn btn-secondary">4</button>
  </div>
  <div class="input-group">
    <div class="input-group-prepend">
      <div class="input-group-text" id="btnGroupAddon2">@</div>
    </div>
    <input type="text" class="form-control" placeholder="Пример группы ввода" aria-label="Пример группы ввода" aria-describedby="btnGroupAddon2">
  </div>
</div>
{{< /example >}}

## Размеры

Вместо того, чтобы применять классы изменения размера кнопок к каждой кнопке в группе, просто добавьте `.btn-group- *` к каждой `.btn-group`, включая каждую при вложении нескольких групп.

<div class="bd-example">
  <div class="btn-group btn-group-lg" role="group" aria-label="Группа больших кнопок">
    <button type="button" class="btn btn-secondary">Лево</button>
    <button type="button" class="btn btn-secondary">Середина</button>
    <button type="button" class="btn btn-secondary">Право</button>
  </div>
  <br>
  <div class="btn-group" role="group" aria-label="Группа кнопок по умолчанию">
    <button type="button" class="btn btn-secondary">Лево</button>
    <button type="button" class="btn btn-secondary">Середина</button>
    <button type="button" class="btn btn-secondary">Право</button>
  </div>
  <br>
  <div class="btn-group btn-group-sm" role="group" aria-label="Маленькая группа кнопок">
    <button type="button" class="btn btn-secondary">Лево</button>
    <button type="button" class="btn btn-secondary">Середина</button>
    <button type="button" class="btn btn-secondary">Право</button>
  </div>
</div>

```html
<div class="btn-group btn-group-lg" role="group" aria-label="...">...</div>
<div class="btn-group" role="group" aria-label="...">...</div>
<div class="btn-group btn-group-sm" role="group" aria-label="...">...</div>
```

## Вложенность

Поместите `.btn-group` в другую `.btn-group`, если Вы хотите, чтобы выпадающие меню были смешаны с рядом кнопок.

{{< example >}}
<div class="btn-group" role="group" aria-label="Группа кнопок с вложенным раскрывающимся списком">
  <button type="button" class="btn btn-secondary">1</button>
  <button type="button" class="btn btn-secondary">2</button>

  <div class="btn-group" role="group">
    <button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      Выпадающий список
    </button>
    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
      <a class="dropdown-item" href="#">Выпадающая ссылка</a>
      <a class="dropdown-item" href="#">Выпадающая ссылка</a>
    </div>
  </div>
</div>
{{< /example >}}

## Вертикальный вариант

Сделайте так, чтобы набор кнопок выглядел вертикально сложенными, а не горизонтально. **Раскрывающиеся меню с разделенными кнопками здесь не поддерживаются.**

<div class="bd-example">
  <div class="btn-group-vertical" role="group" aria-label="Вертикальная группа кнопок">
    <button type="button" class="btn btn-secondary">Кнопка</button>
    <button type="button" class="btn btn-secondary">Кнопка</button>
    <button type="button" class="btn btn-secondary">Кнопка</button>
    <button type="button" class="btn btn-secondary">Кнопка</button>
    <button type="button" class="btn btn-secondary">Кнопка</button>
    <button type="button" class="btn btn-secondary">Кнопка</button>
  </div>
</div>


<div class="bd-example">
  <div class="btn-group-vertical" role="group" aria-label="Вертикальная группа кнопок">
    <button type="button" class="btn btn-secondary">Кнопка</button>
    <button type="button" class="btn btn-secondary">Кнопка</button>
    <div class="btn-group" role="group">
      <button id="btnGroupVerticalDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Выпадающий список
      </button>
      <div class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
        <a class="dropdown-item" href="#">Выпадающая ссылка</a>
        <a class="dropdown-item" href="#">Выпадающая ссылка</a>
      </div>
    </div>
    <button type="button" class="btn btn-secondary">Кнопка</button>
    <button type="button" class="btn btn-secondary">Кнопка</button>
    <div class="btn-group" role="group">
      <button id="btnGroupVerticalDrop2" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Выпадающий список
      </button>
      <div class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop2">
        <a class="dropdown-item" href="#">Выпадающая ссылка</a>
        <a class="dropdown-item" href="#">Выпадающая ссылка</a>
      </div>
    </div>
    <div class="btn-group" role="group">
      <button id="btnGroupVerticalDrop3" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Выпадающий список
      </button>
      <div class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop3">
        <a class="dropdown-item" href="#">Выпадающая ссылка</a>
        <a class="dropdown-item" href="#">Выпадающая ссылка</a>
      </div>
    </div>
    <div class="btn-group" role="group">
      <button id="btnGroupVerticalDrop4" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Выпадающий список
      </button>
      <div class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop4">
        <a class="dropdown-item" href="#">Выпадающая ссылка</a>
        <a class="dropdown-item" href="#">Выпадающая ссылка</a>
      </div>
    </div>
  </div>
</div>

```html
<div class="btn-group-vertical">
  ...
</div>
```
