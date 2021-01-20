---
layout: docs
title: Jumbotron
description: Легкий и гибкий компонент для демонстрации контента в стиле героев.
group: components
---

Легкий и гибкий компонент, который при желании может расширять всю область просмотра для демонстрации ключевых маркетинговых сообщений на Вашем сайте.

{{< example >}}
<div class="jumbotron">
  <h1 class="display-4">Примети, мир!</h1>
  <p class="lead">Это простой герой, простой компонент в стиле jumbotron для привлечения дополнительного внимания к избранному контенту или информации.</p>
  <hr class="my-4">
  <p>Он использует служебные классы для типографики и интервалов для размещения содержимого в более крупном контейнере.</p>
  <a class="btn btn-primary btn-lg" href="#" role="button">Узнать больше</a>
</div>
{{< /example >}}

Чтобы сделать jumbotron во всю ширину и без закругленных углов, добавьте класс-модификатор `.jumbotron-fluid` и добавьте внутрь `.container` или `.container-fluid`.

{{< example >}}
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Jumbotron на всю ширину</h1>
    <p class="lead">Это модифицированный jumbotron, который занимает все горизонтальное пространство своего родителя.</p>
  </div>
</div>
{{< /example >}}
