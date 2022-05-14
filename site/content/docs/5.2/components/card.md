---
layout: docs
title: Карточки
description: Карточки Bootstrap предоставляют гибкий и расширяемый контейнер контента с множеством вариантов и опций.
group: components
toc: true
---

## Обзор

**Карта** - это гибкий и расширяемый контейнер содержимого. Он включает в себя варианты верхних и нижних колонтитулов, широкий выбор контента, контекстные цвета фона и мощные параметры отображения. Если Вы знакомы с Bootstrap 3, карточки заменяют наши старые панели, лунки и эскизы. Функциональность, аналогичная этим компонентам, доступна в виде классов модификаторов для карточек.

## Пример

Карточки создаются с минимальным количеством разметки и стилей, но все же обеспечивают тонну контроля и настройки. Созданные с помощью flexbox, они легко выравниваются и хорошо сочетаются с другими компонентами Bootstrap. По умолчанию они не имеют `margin`, поэтому используйте [утилиты расстояния]({{< docsref "/utilities/spacing" >}}) по мере необходимости.

Ниже приведен пример базовой карточки со смешанным содержанием и фиксированной шириной. У карточек нет фиксированной ширины для начала, поэтому они естественным образом заполняют всю ширину родительского элемента. Это легко настроить с помощью наших различных [параметров размера](#размеры).

{{< example >}}
<div class="card" style="width: 18rem;">
  {{< placeholder width="100%" height="180" class="card-img-top" text="Изображение заглушка" >}}
  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <p class="card-text">Небольшой пример текста, который должен основываться на названии карточки и составлять основную часть содержимого карты.</p>
    <a href="#" class="btn btn-primary">Перейти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

## Типы содержимого

Карточки поддерживают широкий спектр содержимого, включая изображения, текст, группы списков, ссылки и многое другое. Ниже приведены примеры того, что поддерживается.

### Тело

Строительным блоком карты является `.card-body`. Используйте его, когда Вам нужен раздел на карточке с мягкой подкладкой.

{{< example >}}
<div class="card">
  <div class="card-body">
    Это некий текст в теле карточки.
  </div>
</div>
{{< /example >}}

### Заголовки, текст и ссылки

Заголовки карт используются путем добавления `.card-title` к тегу `<h*>`. Таким же образом ссылки добавляются и размещаются рядом друг с другом путем добавления `.card-link` к тегу `<a>`.

Подзаголовок используется путем добавления `.card-subtitle` к тегу `<h*>`. Если элементы `.card-title` и `.card-subtitle` помещены в элемент `.card-body`, заголовок карты и подзаголовок будут выровнены.

{{< example >}}
<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <h6 class="card-subtitle mb-2 text-muted">Подзаголовок карточки</h6>
    <p class="card-text">Небольшой пример текста, который должен основываться на названии карты и составлять основную часть содержимого карты.</p>
    <a href="#" class="card-link">Ссылка карточки</a>
    <a href="#" class="card-link">Другая ссылка</a>
  </div>
</div>
{{< /example >}}

### Изображения

`.card-img-top` помещает изображение в верхнюю часть карточки. С помощью `.card-text`, текст может быть добавлен к карточке. Текст внутри `.card-text` также можно стилизовать с помощью стандартных тегов HTML.

{{< example >}}
<div class="card" style="width: 18rem;">
  {{< placeholder width="100%" height="180" class="card-img-top" text="Изображение заглушка" >}}
  <div class="card-body">
    <p class="card-text">Небольшой пример текста, который должен основываться на названии карточки и составлять основную часть содержимого карточки.</p>
  </div>
</div>
{{< /example >}}

### Список групп

Создавайте списки содержимого в карточке с группой скрытого списка.

{{< example >}}
<div class="card" style="width: 18rem;">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Элемент</li>
    <li class="list-group-item">Второй элемент</li>
    <li class="list-group-item">Третий элемент</li>
  </ul>
</div>
{{< /example >}}

{{< example >}}
<div class="card" style="width: 18rem;">
  <div class="card-header">
    Рекомендуемые
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Элемент</li>
    <li class="list-group-item">Второй элемент</li>
    <li class="list-group-item">Третий элемент</li>
  </ul>
</div>
{{< /example >}}

{{< example >}}
<div class="card" style="width: 18rem;">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Элемент</li>
    <li class="list-group-item">Второй элемент</li>
    <li class="list-group-item">Третий элемент</li>
  </ul>
  <div class="card-footer">
    Футер карточки
  </div>
</div>
{{< /example >}}

### Кухонная мойка

Комбинируйте несколько типов контента, чтобы создать нужную Вам карточку, или добавьте туда все. Ниже показаны стили изображений, блоки, стили текста и группа списков - все они заключены в карточку фиксированной ширины.

{{< example >}}
<div class="card" style="width: 18rem;">
  {{< placeholder width="100%" height="180" class="card-img-top" text="Изображение заглушка" >}}
  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <p class="card-text">Небольшой пример текста, который должен основываться на названии карты и составлять основную часть содержимого карты.</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Элемент</li>
    <li class="list-group-item">Второй элемент</li>
    <li class="list-group-item">Третий элемент</li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">Ссылка карточки</a>
    <a href="#" class="card-link">Другая ссылка</a>
  </div>
</div>
{{< /example >}}

### Верхний и нижний колонтитулы

Добавьте в карточку необязательный верхний и/или нижний колонтитулы.

{{< example >}}
<div class="card">
  <div class="card-header">
    Рекомендуемые
  </div>
  <div class="card-body">
    <h5 class="card-title">Особое обращение с заголовком</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Перейти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

Заголовки карточек можно стилизовать, добавив `.card-header` к элементам `<h*>`.

{{< example >}}
<div class="card">
  <h5 class="card-header">Рекомендуемые</h5>
  <div class="card-body">
    <h5 class="card-title">Особое обращение с заголовком</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Перейти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

{{< example >}}
<div class="card">
  <div class="card-header">
    Цитата
  </div>
  <div class="card-body">
    <blockquote class="blockquote mb-0">
      <p>Известная цитата, содержащаяся в элементе цитаты..</p>
      <footer class="blockquote-footer">Кто-то известный в <cite title="Заголовок источника">Заголовке источника</cite></footer>
    </blockquote>
  </div>
</div>
{{< /example >}}

{{< example >}}
<div class="card text-center">
  <div class="card-header">
    Рекомендуемые
  </div>
  <div class="card-body">
    <h5 class="card-title">Особое обращение с заголовком</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Перейти куда-нибудь</a>
  </div>
  <div class="card-footer text-muted">
    2 дня спустя
  </div>
</div>
{{< /example >}}

## Размеры

Карты не предполагают никакой определенной `width` для начала, поэтому они будут иметь ширину 100%, если не указано иное. Вы можете изменить это по мере необходимости с помощью настраиваемого CSS, классов сетки, примесей Sass сетки или утилит.

### Использование разметки сетки

Используя сетку, оберните карточки в столбцы и строки по мере необходимости.

{{< example >}}
<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Особое обращение с заголовком</h5>
        <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
        <a href="#" class="btn btn-primary">Перейти куда-нибудь</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Особое обращение с заголовком</h5>
        <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
        <a href="#" class="btn btn-primary">Перейти куда-нибудь</a>
      </div>
    </div>
  </div>
</div>
{{< /example >}}

### Использование утилит

Воспользуйтесь нашей горсткой [доступных утилит для определения размера]({{< docsref "/utilities/sizing" >}}), чтобы быстро установить ширину карты.

{{< example >}}
<div class="card w-75">
  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Кнопка</a>
  </div>
</div>

<div class="card w-50">
  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Кнопка</a>
  </div>
</div>
{{< /example >}}

### Использование собственного CSS

Используйте собственный CSS в таблицах стилей или как встроенные стили, чтобы задать ширину.

{{< example >}}
<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Особое обращение с заголовком</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Перейти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

## Выравнивание текста

Вы можете быстро изменить выравнивание текста любой карточки - целиком или в отдельных частях - с помощью наших [классов выравнивания текста]({{< docsref "/utilities/text#text-alignment" >}}).

{{< example >}}
<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Особое обращение с заголовком</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Перейти куда-нибудь</a>
  </div>
</div>

<div class="card text-center" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Особое обращение с заголовком</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Перейти куда-нибудь</a>
  </div>
</div>

<div class="card text-end" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Особое обращение с заголовком</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Перейти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

## Навигация

Добавьте навигацию в заголовок (или блок) карточки с помощью [компонентов навигации]({{< docsref "/components/navs-tabs" >}}) Bootstrap.

{{< example >}}
<div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-tabs card-header-tabs">
      <li class="nav-item">
        <a class="nav-link active" aria-current="true" href="#">Активная</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Ссылка</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled">Отключенная</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
    <h5 class="card-title">Особое обращение с заголовком</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Перейти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

{{< example >}}
<div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-pills card-header-pills">
      <li class="nav-item">
        <a class="nav-link active" href="#">Активная</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Ссылка</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled">Отключенная</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
    <h5 class="card-title">Особое обращение с заголовком</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Перейти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

## Изображения

Карточки включают несколько вариантов работы с изображениями. Выберите добавление «заглушки изображений» на обоих концах карточки, наложение изображений на содержимое карточки или просто встраивание изображения в карточку.

### Заглушки изображения

Подобно верхним и нижним колонтитулам, карточки могут включать верхние и нижни "заглушки изображения" — изображения вверху или внизу карточки.

{{< example >}}
<div class="card mb-3">
  {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <p class="card-text">Это более широкая карточка с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
    <p class="card-text"><small class="text-muted">Последнее обновление 3 мин. назад</small></p>
  </div>
</div>
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <p class="card-text">Это более широкая карточка с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
    <p class="card-text"><small class="text-muted">Последнее обновление 3 мин. назад</small></p>
  </div>
  {{< placeholder width="100%" height="180" class="card-img-bottom" text="Заглушка изображения" >}}
</div>
{{< /example >}}

### Накладываемые изображения

Превратите изображение в фон карты и наложите на нее текст. В зависимости от изображения Вам могут потребоваться или не потребоваться дополнительные стили или утилиты.

{{< example >}}
<div class="card bg-dark text-white">
  {{< placeholder width="100%" height="270" class="bd-placeholder-img-lg card-img" text="Изображение карточки" >}}
  <div class="card-img-overlay">
    <h5 class="card-title">Заголовок карточки</h5>
    <p class="card-text">Это более широкая карточка с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
    <p class="card-text">Последнее обновление 3 мин. назад</p>
  </div>
</div>
{{< /example >}}

{{< callout info >}}
Обратите внимание, что содержимое не должно быть больше высоты изображения. Если содержимое больше изображения, оно будет отображаться вне изображения.
{{< /callout >}}

## По горизонтали

Используя комбинацию классов сетки и утилит, карточки можно сделать горизонтальными, чтобы они были удобными для мобильных устройств и гибкими. В приведенном ниже примере мы удаляем промежутки сетки с помощью `.g-0` и используем классы `.col-md-*`, чтобы сделать карту горизонтальной в контрольной точке `md`. В зависимости от содержимого Вашей карточке могут потребоваться дополнительные корректировки.

{{< example >}}
<div class="card mb-3" style="max-width: 540px;">
  <div class="row g-0">
    <div class="col-md-4">
      {{< placeholder width="100%" height="250" text="Изображение" class="img-fluid rounded-start" >}}
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более широкая карта с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
        <p class="card-text"><small class="text-muted">Последнее обновление 3 мин. назад</small></p>
      </div>
    </div>
  </div>
</div>
{{< /example >}}

## Стили карточек

Карточки включают различные параметры для настройки их фона, границ и цвета.

### Фон и цвет

{{< added-in "5.2.0" >}}

Установите `background-color` с контрастным `color` переднего плана с помощью [наших помощников `.text-bg-{color}`]({{< docsref "helpers/color-background" >}}). Раньше требовалось вручную сопоставлять выбранные вами [`.text-{color}`]({{< docsref "/utilities/colors" >}}) и [`.bg-{color}`]({{< docsref "/utilities/background" >}}) утилиты для оформления, которые вы по-прежнему можете использовать, если хотите.

{{< example >}}
{{< card.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="card text-bg-{{ .name }} mb-3" style="max-width: 18rem;">
  <div class="card-header">Хедер</div>
  <div class="card-body">
    <h5 class="card-title">{{ .name | title }} Заголовок карточки</h5>
    <p class="card-text">Несколько быстрых примеров текста для построения на основе Заголовок карточки и составления основной части содержимого карточки.</p>
  </div>
</div>
{{- end -}}
{{< /card.inline >}}
{{< /example >}}

{{< callout info >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

### Граница

Используйте [утилиты границ]({{< docsref "/utilities/borders" >}}), чтобы изменить только `border-color` карточки. Обратите внимание, что Вы можете поместить классы `.text-{color}` в родительский `.card` или подмножество содержимого карты, как показано ниже.

{{< example >}}
{{< card.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="card border-{{ .name }} mb-3" style="max-width: 18rem;">
  <div class="card-header">Хедер</div>
  <div class="card-body{{ if not .contrast_color }} text-{{ .name }}{{ end }}">
    <h5 class="card-title">{{ .name | title }} Заголовок карточки</h5>
    <p class="card-text">Несколько быстрых примеров текста для построения на основе Заголовок карточки и составления основной части содержимого карточки.</p>
  </div>
</div>
{{- end -}}
{{< /card.inline >}}
{{< /example >}}

### Утилиты примесей

Вы также можете при необходимости изменить границы верхнего и нижнего колонтитула карточки и даже удалить их `background-color` с `.bg-transparent`.

{{< example >}}
<div class="card border-success mb-3" style="max-width: 18rem;">
  <div class="card-header bg-transparent border-success">Хедер</div>
  <div class="card-body text-success">
    <h5 class="card-title">Success Заголовок карточки</h5>
    <p class="card-text">Несколько быстрых примеров текста для построения на основе Заголовок карточки и составления основной части содержимого карточки.</p>
  </div>
  <div class="card-footer bg-transparent border-success">Подвал</div>
</div>
{{< /example >}}

## Макет карточки

Помимо стилизации содержимого карточек, Bootstrap включает несколько опций для размещения серий карточек. В настоящее время **эти параметры макета еще не работают**.

### Группа карточек

Используйте группы карточек для визуализации карточек как одного присоединенного элемента с столбцами одинаковой ширины и высоты. Группы карточек начинаются в стопке и используют `display: flex;` для прикрепления с одинаковыми размерами, начиная с контрольной точки `sm`.

{{< example >}}
<div class="card-group">
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Это более широкая карточка с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      <p class="card-text"><small class="text-muted">Последнее обновление 3 мин. назад</small></p>
    </div>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Эта подсказка имеет вспомогательный текст ниже, как естественный ввод к дополнительному контенту.</p>
      <p class="card-text"><small class="text-muted">Последнее обновление 3 мин. назад</small></p>
    </div>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Это более широкая карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Эта карточка имеет даже более длинный контент, чем первая, чтобы показать действие одинаковой высоты.</p>
      <p class="card-text"><small class="text-muted">Последнее обновление 3 мин. назад</small></p>
    </div>
  </div>
</div>
{{< /example >}}

При использовании групп карточек с нижним колонтитулом их содержимое будет автоматически выровнено.

{{< example >}}
<div class="card-group">
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Это более широкая карточка с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Последнее обновление 3 мин. назад</small>
    </div>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Под этой карточкой есть вспомогательный текст, который является естественным введением к дополнительному содержанию.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Последнее обновление 3 мин. назад</small>
    </div>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Это более широкая карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Эта карточка имеет даже более длинный контент, чем первая, чтобы показать действие одинаковой высоты.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Последнее обновление 3 мин. назад</small>
    </div>
  </div>
</div>
{{< /example >}}

### Сетка карточек

Используйте систему сеток Bootstrap и ее [классы `.row-cols`]({{< docsref "/layout/grid#row-columns" >}}), чтобы контролировать, сколько столбцов сетки (обернутых вокруг Ваших карточек) Вы показываете в ряд. Например, здесь `.row-cols-1` выкладывает карточки в один столбец, а `.row-cols-md-2` разделяет четыре карточки одинаковой ширины на несколько строк, от средней контрольной точки вверх.

{{< example >}}
<div class="row row-cols-1 row-cols-md-2 g-4">
  <div class="col">
    <div class="card">
      {{< placeholder width="100%" height="140" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      {{< placeholder width="100%" height="140" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      {{< placeholder width="100%" height="140" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      {{< placeholder width="100%" height="140" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
</div>
{{< /example >}}

Измените его на `.row-cols-3`, и Вы увидите обертку четвертой карты.

{{< example >}}
<div class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card">
      {{< placeholder width="100%" height="140" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      {{< placeholder width="100%" height="140" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      {{< placeholder width="100%" height="140" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      {{< placeholder width="100%" height="140" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
</div>
{{< /example >}}

Если Вам нужна одинаковая высота, добавьте к карточкам `.h-100`. Если Вы хотите по умолчанию одинаковые высоты, Вы можете установить `$card-height: 100%` в Sass.

{{< example >}}
<div class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card h-100">
      {{< placeholder width="100%" height="140" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      {{< placeholder width="100%" height="140" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это короткая карточка.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      {{< placeholder width="100%" height="140" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      {{< placeholder width="100%" height="140" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
</div>
{{< /example >}}

Как и в случае с группами карточек, нижние колонтитулы карточек выстраиваются автоматически.

{{< example >}}
<div class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card h-100">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более широкая карта с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
      <div class="card-footer">
        <small class="text-muted">Последнее обновление 3 мин. назад</small>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Под этой карточкой есть вспомогательный текст, который является естественным введением к дополнительному содержанию.</p>
      </div>
      <div class="card-footer">
        <small class="text-muted">Последнее обновление 3 мин. назад</small>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более широкая карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Эта карточка имеет даже более длинный контент, чем первая, чтобы показать действие одинаковой высоты.</p>
      </div>
      <div class="card-footer">
        <small class="text-muted">Последнее обновление 3 мин. назад</small>
      </div>
    </div>
  </div>
</div>
{{< /example >}}

### Masonry

В `v4` мы использовали метод только CSS для имитации поведения столбцов, подобных [Masonry](https://masonry.desandro.com/), но этот метод имел множество неприятных [побочных эффектов](https://github.com/twbs/bootstrap/pull/28922). Если Вы хотите иметь этот тип макета в `v5`, Вы можете просто использовать плагин Masonry. **Masonry не входит в Bootstrap**, , но мы сделали [демонстрационный пример]({{< docsref "/examples/masonry" >}}), чтобы помочь Вам начать работу.

## CSS

### Переменные

{{< added-in "5.2.0" >}}

В рамках развивающегося подхода Bootstrap к переменным CSS карты теперь используют локальные переменные CSS на `.card` для расширенной настройки в реальном времени. Значения переменных CSS задаются через Sass, поэтому настройка Sass по-прежнему поддерживается.

{{< scss-docs name="card-css-vars" file="scss/_card.scss" >}}

### Переменные Sass

{{< scss-docs name="card-variables" file="scss/_variables.scss" >}}
