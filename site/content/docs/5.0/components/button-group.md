---
layout: docs
title: Группа кнопок
description: Сгруппируйте несколько кнопок в одну строку или сложите их в вертикальный столбец.
group: components
toc: true
---

## Простой пример

Оберните серию кнопок с помощью `.btn` в `.btn-group`.

{{< example >}}
<div class="btn-group" role="group" aria-label="Простой пример">
  <button type="button" class="btn btn-primary">Левая</button>
  <button type="button" class="btn btn-primary">Средняя</button>
  <button type="button" class="btn btn-primary">Правая</button>
</div>
{{< /example >}}

{{% callout warning %}}
##### Убедитесь, что `role` правильная, и укажите метку

Для того, чтобы вспомогательные технологии (например, программы чтения с экрана) передавали, что последовательность кнопок сгруппирована, необходимо предоставить соответствующий атрибут `role`. Для групп кнопок это будет `role="group"`, в то время как панели инструментов должны иметь `role="toolbar"`.

Кроме того, группам и панелям инструментов следует давать явные метки, поскольку в противном случае большинство вспомогательных технологий не будут их объявлять, несмотря на наличие правильного атрибута роли. В приведенных здесь примерах мы используем `aria-label`, но также можно использовать такие альтернативы, как `aria-labelledby`.
{{% /callout %}}

Эти классы также могут быть добавлены к группам ссылок в качестве альтернативы навигационным компонентам [`.nav` navigation components]({{< docsref "/components/navs" >}}).

{{< example >}}
<div class="btn-group">
  <a href="#" class="btn btn-primary active" aria-current="page">Активная ссылка</a>
  <a href="#" class="btn btn-primary">Ссылка</a>
  <a href="#" class="btn btn-primary">Ссылка</a>
</div>
{{< /example >}}

## Смешанные стили

{{< example >}}
<div class="btn-group" role="group" aria-label="Basic mixed styles example">
  <button type="button" class="btn btn-danger">Левая</button>
  <button type="button" class="btn btn-warning">Средняя</button>
  <button type="button" class="btn btn-success">Правая</button>
</div>
{{< /example >}}

## Контурные стили

{{< example >}}
<div class="btn-group" role="group" aria-label="Basic outlined example">
  <button type="button" class="btn btn-outline-primary">Левая</button>
  <button type="button" class="btn btn-outline-primary">Средняя</button>
  <button type="button" class="btn btn-outline-primary">Правая</button>
</div>
{{< /example >}}

## Группы флажков и переключателей

Объедините кнопочный флажок и радио [кнопки переключатели]({{< docsref "/forms/checks-radios" >}}) в единую группу кнопок.

{{< example >}}
<div class="btn-group" role="group" aria-label="Базовая группа переключателей флажков">
  <input type="checkbox" class="btn-check" id="btncheck1" autocomplete="off">
  <label class="btn btn-outline-primary" for="btncheck1">Флажок 1</label>

  <input type="checkbox" class="btn-check" id="btncheck2" autocomplete="off">
  <label class="btn btn-outline-primary" for="btncheck2">Флажок 2</label>

  <input type="checkbox" class="btn-check" id="btncheck3" autocomplete="off">
  <label class="btn btn-outline-primary" for="btncheck3">Флажок 3</label>
</div>
{{< /example >}}

{{< example >}}
<div class="btn-group" role="group" aria-label="Базовая группа переключателей радио">
  <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
  <label class="btn btn-outline-primary" for="btnradio1">Радио 1</label>

  <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
  <label class="btn btn-outline-primary" for="btnradio2">Радио 2</label>

  <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
  <label class="btn btn-outline-primary" for="btnradio3">Радио 3</label>
</div>
{{< /example >}}

## Кнопка панели инструментов

Объединяйте наборы групп кнопок в панели инструментов кнопок для получения более сложных компонентов. При необходимости используйте служебные классы для разнесения групп, кнопок и т.д.

{{< example >}}
<div class="btn-toolbar" role="toolbar" aria-label="Панель инструментов с группами кнопок">
  <div class="btn-group mr-2" role="group" aria-label="Первая группа">
    <button type="button" class="btn btn-primary">1</button>
    <button type="button" class="btn btn-primary">2</button>
    <button type="button" class="btn btn-primary">3</button>
    <button type="button" class="btn btn-primary">4</button>
  </div>
  <div class="btn-group mr-2" role="group" aria-label="Вторая группа">
    <button type="button" class="btn btn-secondary">5</button>
    <button type="button" class="btn btn-secondary">6</button>
    <button type="button" class="btn btn-secondary">7</button>
  </div>
  <div class="btn-group" role="group" aria-label="Третья группа">
    <button type="button" class="btn btn-info">8</button>
  </div>
</div>
{{< /example >}}

Не стесняйтесь смешивать группы ввода с группами кнопок на панелях инструментов. Как и в примере выше, Вам, вероятно, понадобятся некоторые утилиты для правильного размещения вещей.

{{< example >}}
<div class="btn-toolbar mb-3" role="toolbar" aria-label="Панель инструментов с группами кнопок">
  <div class="btn-group mr-2" role="group" aria-label="Первая группа">
    <button type="button" class="btn btn-outline-secondary">1</button>
    <button type="button" class="btn btn-outline-secondary">2</button>
    <button type="button" class="btn btn-outline-secondary">3</button>
    <button type="button" class="btn btn-outline-secondary">4</button>
  </div>
  <div class="input-group">
    <div class="input-group-text" id="btnGroupAddon">@</div>
    <input type="text" class="form-control" placeholder="Пример группы ввода" aria-label="Пример группы ввода" aria-describedby="btnGroupAddon">
  </div>
</div>

<div class="btn-toolbar justify-content-between" role="toolbar" aria-label="Панель инструментов с группами кнопок">
  <div class="btn-group" role="group" aria-label="Первая группа">
    <button type="button" class="btn btn-outline-secondary">1</button>
    <button type="button" class="btn btn-outline-secondary">2</button>
    <button type="button" class="btn btn-outline-secondary">3</button>
    <button type="button" class="btn btn-outline-secondary">4</button>
  </div>
  <div class="input-group">
    <div class="input-group-text" id="btnGroupAddon2">@</div>
    <input type="text" class="form-control" placeholder="Пример группы ввода" aria-label="Пример группы ввода" aria-describedby="btnGroupAddon2">
  </div>
</div>
{{< /example >}}

## Размеры

Вместо того, чтобы применять классы изменения размера кнопок к каждой кнопке в группе, просто добавьте `.btn-group-*` к каждой `.btn-group`, включая каждую при вложении нескольких групп.

<div class="bd-example">
  <div class="btn-group btn-group-lg" role="group" aria-label="Группа больших кнопок">
    <button type="button" class="btn btn-outline-dark">Левая</button>
    <button type="button" class="btn btn-outline-dark">Средняя</button>
    <button type="button" class="btn btn-outline-dark">Правая</button>
  </div>
  <br>
  <div class="btn-group" role="group" aria-label="Группа кнопок по умолчанию">
    <button type="button" class="btn btn-outline-dark">Левая</button>
    <button type="button" class="btn btn-outline-dark">Средняя</button>
    <button type="button" class="btn btn-outline-dark">Правая</button>
  </div>
  <br>
  <div class="btn-group btn-group-sm" role="group" aria-label="Маленькая группа кнопок">
    <button type="button" class="btn btn-outline-dark">Левая</button>
    <button type="button" class="btn btn-outline-dark">Средняя</button>
    <button type="button" class="btn btn-outline-dark">Правая</button>
  </div>
</div>

{{< highlight html >}}
<div class="btn-group btn-group-lg" role="group" aria-label="...">...</div>
<div class="btn-group" role="group" aria-label="...">...</div>
<div class="btn-group btn-group-sm" role="group" aria-label="...">...</div>
{{< /highlight >}}

## Вложенность

Поместите `.btn-group` в другую `.btn-group`, если Вы хотите, чтобы выпадающие меню были смешаны с рядом кнопок.

{{< example >}}
<div class="btn-group" role="group" aria-label="Группа кнопок с вложенным раскрывающимся списком">
  <button type="button" class="btn btn-primary">1</button>
  <button type="button" class="btn btn-primary">2</button>

  <div class="btn-group" role="group">
    <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
      Выпадающая кнопка
    </button>
    <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
      <li><a class="dropdown-item" href="#">Выпадающая ссылка</a></li>
      <li><a class="dropdown-item" href="#">Выпадающая ссылка</a></li>
    </ul>
  </div>
</div>
{{< /example >}}

## Вертикальный вариант

Сделайте так, чтобы набор кнопок выглядел вертикально сложенными, а не горизонтально. **Раскрывающиеся меню с разделенными кнопками здесь не поддерживаются.**

<div class="bd-example">
  <div class="btn-group-vertical" role="group" aria-label="Вертикальная группа кнопок">
    <button type="button" class="btn btn-dark">Кнопка</button>
    <button type="button" class="btn btn-dark">Кнопка</button>
    <button type="button" class="btn btn-dark">Кнопка</button>
    <button type="button" class="btn btn-dark">Кнопка</button>
    <button type="button" class="btn btn-dark">Кнопка</button>
    <button type="button" class="btn btn-dark">Кнопка</button>
  </div>
</div>

<div class="bd-example">
  <div class="btn-group-vertical" role="group" aria-label="Вертикальная группа кнопок">
    <button type="button" class="btn btn-primary">Кнопка</button>
    <button type="button" class="btn btn-primary">Кнопка</button>
    <div class="btn-group" role="group">
      <button id="btnGroupVerticalDrop1" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
        Выпадающая кнопка
      </button>
      <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop1">
        <li><a class="dropdown-item" href="#">Выпадающая ссылка</a></li>
        <li><a class="dropdown-item" href="#">Выпадающая ссылка</a></li>
      </ul>
    </div>
    <button type="button" class="btn btn-primary">Кнопка</button>
    <button type="button" class="btn btn-primary">Кнопка</button>
    <div class="btn-group" role="group">
      <button id="btnGroupVerticalDrop2" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
        Выпадающая кнопка
      </button>
      <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop2">
        <li><a class="dropdown-item" href="#">Выпадающая ссылка</a></li>
        <li><a class="dropdown-item" href="#">Выпадающая ссылка</a></li>
      </ul>
    </div>
    <div class="btn-group" role="group">
      <button id="btnGroupVerticalDrop3" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
        Выпадающая кнопка
      </button>
      <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop3">
        <li><a class="dropdown-item" href="#">Выпадающая ссылка</a></li>
        <li><a class="dropdown-item" href="#">Выпадающая ссылка</a></li>
      </ul>
    </div>
    <div class="btn-group" role="group">
      <button id="btnGroupVerticalDrop4" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
        Выпадающая кнопка
      </button>
      <ul class="dropdown-menu" aria-labelledby="btnGroupVerticalDrop4">
        <li><a class="dropdown-item" href="#">Выпадающая ссылка</a></li>
        <li><a class="dropdown-item" href="#">Выпадающая ссылка</a></li>
      </ul>
    </div>
  </div>
</div>

<div class="bd-example">
  <div class="btn-group-vertical" role="group" aria-label="Vertical radio toggle button group">
    <input type="radio" class="btn-check" name="vbtn-radio" id="vbtn-radio1" autocomplete="off" checked>
    <label class="btn btn-outline-danger" for="vbtn-radio1">Радио 1</label>
    <input type="radio" class="btn-check" name="vbtn-radio" id="vbtn-radio2" autocomplete="off">
    <label class="btn btn-outline-danger" for="vbtn-radio2">Радио 2</label>
    <input type="radio" class="btn-check" name="vbtn-radio" id="vbtn-radio3" autocomplete="off">
    <label class="btn btn-outline-danger" for="vbtn-radio3">Радио 3</label>
  </div>
</div>

{{< highlight html >}}
<div class="btn-group-vertical">
  ...
</div>
{{< /highlight >}}
