---
layout: docs
title: Figures
description: Документация и примеры для отображения связанных изображений и текста с помощью компонента figure в Bootstrap.
group: content
---

Каждый раз, когда Вам нужно отобразить часть контента, например изображение с необязательной подписью, подумайте об использовании `<figure>`.

Используйте включенные классы `.figure`, `.figure-img` и `.figure-caption`, чтобы предоставить некоторые базовые стили для элементов HTML5 `<figure>` и `<figcaption>`. У изображений на рисунках нет явного размера, поэтому обязательно добавьте класс `.img-fluid` к Вашему `<img>`, чтобы сделать его отзывчивым.

{{< example >}}
<figure class="figure">
  {{< placeholder width="400" height="300" class="figure-img img-fluid rounded" >}}
  <figcaption class="figure-caption">Подпись к изображению выше.</figcaption>
</figure>
{{< /example >}}

Выровнять подписи к рисунку легко с помощью наших [текстовых утилит]({{< docsref "/utilities/text#text-alignment" >}}).

{{< example >}}
<figure class="figure">
  {{< placeholder width="400" height="300" class="figure-img img-fluid rounded" >}}
  <figcaption class="figure-caption text-right">Подпись к изображению выше.</figcaption>
</figure>
{{< /example >}}
