---
layout: docs
title: Аккордеон
description: Создавайте вертикально сворачивающиеся аккордеоны в сочетании с нашим JavaScript плагином Collapse.
group: components
aliases:
  - "/components/"
  - "/docs/5.0/components/"
toc: true
---

## Как это работает

Аккордеон использует внутри [collapse]({{< docsref "/components/collapse" >}}), чтобы сделать его сворачиваемым. Для рендеринга раскрытого аккордеона добавьте класс `.open` в `.accordion`.

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

## Пример

Щелкните аккордеоны ниже, чтобы развернуть / свернуть содержимое аккордеона.

{{< example >}}
<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        Аккордеонный элемент #1
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="accordion-body">
        <strong>Это тело аккордеона первого элемента.</strong> По умолчанию оно скрыто, пока плагин свертывания не добавит соответствующие классы, которые мы используем для стилизации каждого элемента. Эти классы управляют общим внешним видом, а также отображением и скрытием с помощью переходов CSS. Вы можете изменить все это с помощью собственного CSS или переопределить наши переменные по умолчанию. Также стоит отметить, что практически любой HTML может быть помещен в <code>.accordion-body</code>, хотя переход ограничивает переполнение.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Аккордеонный элемент #2
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="accordion-body">
        <strong>Это тело аккордеона второго элемента.</strong> По умолчанию он скрыт, пока плагин свертывания не добавит соответствующие классы, которые мы используем для стилизации каждого элемента. Эти классы управляют общим внешним видом, а также отображением и скрытием с помощью переходов CSS. Вы можете изменить все это с помощью собственного CSS или переопределить наши переменные по умолчанию. Также стоит отметить, что практически любой HTML может быть помещен в <code>.accordion-body</code>, хотя переход ограничивает переполнение.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        Аккордеонный элемент #3
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="accordion-body">
        <strong>Это тело аккордеона третьего элемента.</strong> По умолчанию оно скрыто, пока плагин свертывания не добавит соответствующие классы, которые мы используем для стилизации каждого элемента. Эти классы управляют общим внешним видом, а также отображением и скрытием с помощью переходов CSS. Вы можете изменить все это с помощью собственного CSS или переопределить наши переменные по умолчанию. Также стоит отметить, что практически любой HTML может быть помещен в <code>.accordion-body</code>, хотя переход ограничивает переполнение.
      </div>
    </div>
  </div>
</div>
{{< /example >}}

### Поток

Добавьте `.accordion-flush`, чтобы удалить цвет фона `background-color` по умолчанию, некоторые границы и некоторые закругленные углы для рендеринга аккордеонов от края до края с их родительским контейнером.

{{< example class="bg-light" >}}
<div class="accordion accordion-flush" id="accordionFlushExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingOne">
      <button class="accordion-button collapsed" type="button" data-toggle="collapse" data-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        Аккордеонный элемент #1
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-parent="#accordionFlushExample">
      <div class="accordion-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed" type="button" data-toggle="collapse" data-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        Аккордеонный элемент #2
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-parent="#accordionFlushExample">
      <div class="accordion-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingThree">
      <button class="accordion-button collapsed" type="button" data-toggle="collapse" data-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
        Аккордеонный элемент #3
      </button>
    </h2>
    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-parent="#accordionFlushExample">
      <div class="accordion-body">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</div>
    </div>
  </div>
</div>
{{< /example >}}

## Доступность

Пожалуйста, прочтите [раздел специальных возможностей сворачивания]({{< docsref "/components/collapse#accessibility" >}}) для получения дополнительной информации.
