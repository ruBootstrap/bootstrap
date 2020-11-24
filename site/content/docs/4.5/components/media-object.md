---
layout: docs
title: Медиа объект
description: Документация и примеры для медиа-объекта Bootstrap для создания часто повторяющихся компонентов, таких как комментарии в блогах, твиты и тому подобное.
group: components
toc: true
---

## Пример

[Медиа-объект](http://www.stubbornella.org/content/2010/06/25/the-media-object-saves-hundreds-of-lines-of-code/) помогает создавать сложные и повторяющиеся компоненты, в которых некоторые медиа позиционируются рядом с контентом, который не охватывает упомянутые медиа. Кроме того, благодаря flexbox он делает это только с двумя обязательными классами.

Ниже приведен пример одного медиа-объекта. Требуются только два класса - обертка `.media` и `.media-body` вокруг Вашего контента. Необязательные отступы и поля можно контролировать с помощью [утилит интервалов]({{< docsref "/utilities/spacing" >}}).

{{< example >}}
<div class="media">
  {{< placeholder width="64" height="64" class="mr-3" >}}
  <div class="media-body">
    <h5 class="mt-0">Медиа заголовок</h5>
    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
  </div>
</div>
{{< /example >}}

{{< callout warning >}}
##### Flexbug #12: Строковые элементы не рассматриваются как гибкие

Internet Explorer 10-11 не отображает встроенные элементы, такие как ссылки или изображения (или псевдоэлементы `::before` и `::after`) как гибкие элементы. Единственный обходной путь - установить не встроенное значение `display` (например, `block`, `inline-block` или `flex`). Мы предлагаем использовать `.d-flex`, одну из наших [утилит отображения]({{< docsref "/utilities/display" >}}), как простое решение.

**Источник:** [Flexbugs на GitHub](https://github.com/philipwalton/flexbugs#flexbug-12)
{{< /callout >}}

## Вложенность

Медиа-объекты могут быть бесконечно вложенными, хотя мы рекомендуем Вам остановиться на каком-то этапе. Поместите вложенный файл `.media` в `.media-body` родительского медиа-объекта.

{{< example >}}
<div class="media">
  {{< placeholder width="64" height="64" class="mr-3" >}}
  <div class="media-body">
    <h5 class="mt-0">Медиа заголовок</h5>
    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.

    <div class="media mt-3">
      <a class="mr-3" href="#">
        {{< placeholder width="64" height="64" >}}
      </a>
      <div class="media-body">
        <h5 class="mt-0">Медиа заголовок</h5>
        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
      </div>
    </div>
  </div>
</div>
{{< /example >}}

## Выравнивание

Мультимедиа в медиа-объекте можно выровнять с помощью утилит flexbox по верхнему (по умолчанию), среднему или концу Вашего содержимого `.media-body`.

{{< example >}}
<div class="media">
  {{< placeholder width="64" height="64" class="align-self-start mr-3" >}}
  <div class="media-body">
    <h5 class="mt-0">Медиа по верхнему краю</h5>
    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
    <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
  </div>
</div>
{{< /example >}}

{{< example >}}
<div class="media">
  {{< placeholder width="64" height="64" class="align-self-center mr-3" >}}
  <div class="media-body">
    <h5 class="mt-0">Медиа по центру</h5>
    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
    <p class="mb-0">Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
  </div>
</div>
{{< /example >}}

{{< example >}}
<div class="media">
  {{< placeholder width="64" height="64" class="align-self-end mr-3" >}}
  <div class="media-body">
    <h5 class="mt-0">Медиа по нижнему краю</h5>
    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
    <p class="mb-0">Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
  </div>
</div>
{{< /example >}}

## Порядок

Измените порядок содержимого в медиа-объектах, изменив сам HTML или добавив некоторый настраиваемый CSS Flexbox, чтобы установить свойство `order` (целое число по Вашему выбору).

{{< example >}}
<div class="media">
  <div class="media-body">
    <h5 class="mt-0 mb-1">Медиа-объект</h5>
    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
  </div>
  {{< placeholder width="64" height="64" class="ml-3" >}}
</div>
{{< /example >}}

## Медиа-список

Поскольку у медиа-объекта очень мало структурных требований, Вы также можете использовать эти классы в элементах HTML списка. На Ваш `<ul>` или `<ol>`, добавьте `.list-unstyled`, чтобы удалить все стили списка браузера по умолчанию, а затем примените `.media` к Вашим `<li>`. Как всегда, для точной настройки используйте утилиты интервалов.

{{< example >}}
<ul class="list-unstyled">
  <li class="media">
    {{< placeholder width="64" height="64" class="mr-3" >}}
    <div class="media-body">
      <h5 class="mt-0 mb-1">Медиа-объект на основе списка</h5>
      Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
    </div>
  </li>
  <li class="media my-4">
    {{< placeholder width="64" height="64" class="mr-3" >}}
    <div class="media-body">
      <h5 class="mt-0 mb-1">Медиа-объект на основе списка</h5>
      Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
    </div>
  </li>
  <li class="media">
    {{< placeholder width="64" height="64" class="mr-3" >}}
    <div class="media-body">
      <h5 class="mt-0 mb-1">Медиа-объект на основе списка</h5>
      Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
    </div>
  </li>
</ul>
{{< /example >}}
