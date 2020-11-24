---
layout: docs
title: Растянутая ссылка
description: Сделайте любой элемент HTML или компонент Bootstrap интерактивным, «растягивая» вложенную ссылку с помощью CSS.
group: utilities
---

Добавьте `.stretched-link` к ссылке, чтобы сделать ее [содержащий блок](https://developer.mozilla.org/en-US/docs/Web/CSS/Containing_block) доступным для кликов через псевдоэлемент `::after`. В большинстве случаев это означает, что элемент с `position: relative;`, который содержит ссылку с классом `.stretched-link`, является интерактивным.

Карточки имеют в Bootstrap по умолчанию `position: relative`, поэтому в этом случае Вы можете безопасно добавить класс `.stretched-link` к ссылке в карточке без каких-либо других изменений HTML.

При растянутых ссылках не рекомендуется использовать несколько ссылок и целей касания. Однако некоторые стили `position` и `z-index` могут помочь, если это потребуется.

{{< example >}}
<div class="card" style="width: 18rem;">
  {{< placeholder width="100%" height="180" class="card-img-top" text=" " title="Заглушка изображения карты" >}}
  <div class="card-body">
    <h5 class="card-title">Карточка с растянутой ссылкой</h5>
    <p class="card-text">Небольшой пример текста, который должен основываться на названии карты и составлять основную часть содержимого карты.</p>
    <a href="#" class="btn btn-primary stretched-link">Перейти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

Медиа-объекты по умолчанию не имеют `position: relative`, поэтому нам нужно добавить сюда `.position-relative`, чтобы ссылка не растягивалась за пределы медиа-объекта.

{{< example >}}
<div class="media position-relative">
  {{< placeholder width="144" height="144" class="mr-3" text=" " title="Общее изображение-заполнитель" >}}
  <div class="media-body">
    <h5 class="mt-0">Медиа с растянутой ссылкой</h5>
    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
    <a href="#" class="stretched-link">Перейти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

Столбцы по умолчанию являются `position: relative`, поэтому для интерактивных столбцов требуется только класс `.stretched-link` для ссылки. Однако для растягивания ссылки на весь `.row` требуется `.position-static` для столбца и `.position-relative` для строки.

{{< example >}}
<div class="row no-gutters bg-light position-relative">
  <div class="col-md-6 mb-md-0 p-md-4">
    {{< placeholder width="100%" height="200" class="w-100" text=" " title="Общее изображение-заполнитель" >}}
  </div>
  <div class="col-md-6 position-static p-4 pl-md-0">
    <h5 class="mt-0">Столбцы с растянутой ссылкой</h5>
    <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
    <a href="#" class="stretched-link">Перейти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

## Определение содержащего блока

Если растянутая ссылка не работает, вероятно, причиной будет [содержащий блок](https://developer.mozilla.org/en-US/docs/Web/CSS/Containing_block#Identifying_the_containing_block). Следующие свойства CSS сделают элемент содержащим блоком:

- Значение `position`, отличное от `static`
- Значение `transform` или `perspective`, отличное от `none`
- Значение `will-change` для `transform` или `perspective`
- Значение `filter`, отличное от `none` или значение `will-change` из `filter` (работает только в Firefox)

{{< example >}}
<div class="card" style="width: 18rem;">
  {{< placeholder width="100%" height="180" class="card-img-top" text=" " title="Заглушка изображения карты" >}}
  <div class="card-body">
    <h5 class="card-title">Карточка с растянутой ссылкойs</h5>
    <p class="card-text">Небольшой пример текста, который должен основываться на названии карты и составлять основную часть содержимого карты.</p>
    <p class="card-text">
      <a href="#" class="stretched-link text-danger" style="position: relative;">Растянутая ссылка здесь не будет работать, потому что к ссылке добавляется <code>position: relative</code></a>
    </p>
    <p class="card-text bg-light" style="transform: rotate(0);">
      Эта <a href="#" class="text-warning stretched-link">растянутая ссылка</a> будет распространяться только на тег <code>p</code>, поскольку к ней применяется преобразование.
    </p>
  </div>
</div>
{{< /example >}}
