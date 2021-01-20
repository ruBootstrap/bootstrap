---
layout: docs
title: Карточки
description: Карточки Bootstrap предоставляют гибкий и расширяемый контейнер содержимого с множеством вариантов и опций.
group: components
toc: true
---

## О карточках

**Карточка** - это гибкий и расширяемый контейнер содержимого. Он включает параметры для верхних и нижних колонтитулов, широкий спектр содержимого, контекстные цвета фона и мощные параметры отображения. Если Вы знакомы с Bootstrap 3, карточки заменяют наши старые панели, лунки и эскизы. Функциональность, аналогичная этим компонентам, доступна в виде классов-модификаторов для карточек.

## Пример

Карточки создаются с минимальным количеством разметки и стилей, но все же обеспечивают тонну контроля и настройки. Созданные на основе Flexbox, они легко выравниваются и хорошо сочетаются с другими компонентами Bootstrap. По умолчанию они не имеют `margin`, поэтому используйте [утилиты отступов]({{< docsref "/utilities/spacing" >}}) по мере необходимости.

Ниже приведен пример базовой карточки со смешанным содержанием и фиксированной шириной. У карточек нет фиксированной ширины для начала, поэтому они естественным образом заполняют всю ширину родительского элемента. Это легко настроить с помощью наших различных [параметров размера](#размеры).

{{< example >}}
<div class="card" style="width: 18rem;">
  {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <p class="card-text">Несколько быстрых примеров текста для построения на основе заголовка карточек и составляющих основную часть содержимого карточки.</p>
    <a href="#" class="btn btn-primary">Идти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

## Типы контента

Карточки поддерживают широкий спектр содержимого, включая изображения, текст, группы списков, ссылки и многое другое. Ниже приведены примеры того, что поддерживается.

### Тело

Строительным блоком карты является `.card-body`. Используйте его всякий раз, когда Вам нужен мягкий раздел на карточке.

{{< example >}}
<div class="card">
  <div class="card-body">
    Это текст в теле карточки.
  </div>
</div>
{{< /example >}}

### Заголовки, текст и ссылки

Заголовок карточки используются путем добавления `.card-title` к тегу `<h*>`. Таким же образом ссылки добавляются и размещаются рядом друг с другом путем добавления `.card-link` к тегу `<a>`.

Подзаголовки используются путем добавления `.card-subtitle` к тегу `<h*>`. Если элементы `.card-title` и `.card-subtitle` помещаются в элемент `.card-body`, заголовок карточки и подзаголовок выравниваются правильно.

{{< example >}}
<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <h6 class="card-subtitle mb-2 text-muted">Подзаголовок карточки</h6>
    <p class="card-text">Несколько быстрых примеров текста для построения на основе заголовка карточек и составляющих основную часть содержимого карточки.</p>
    <a href="#" class="card-link">Ссылка карточки</a>
    <a href="#" class="card-link">Другая ссылка</a>
  </div>
</div>
{{< /example >}}

### Изображения

`.card-img-top` помещает изображение в верхнюю часть карточки. С помощью `.card-text` текст может быть добавлен к карточке. Текст внутри `.card-text` также можно стилизовать с помощью стандартных тегов HTML.

{{< example >}}
<div class="card" style="width: 18rem;">
  {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
  <div class="card-body">
    <p class="card-text">Несколько быстрых примеров текста для построения на основе заголовка карточек и составляющих основную часть содержимого карточки.</p>
  </div>
</div>
{{< /example >}}

### Группы списка

Создавайте списки содержимого в карточке с группой скрытого списка.

{{< example >}}
<div class="card" style="width: 18rem;">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">An item</li>
    <li class="list-group-item">A second item</li>
    <li class="list-group-item">A third item</li>
  </ul>
</div>
{{< /example >}}

{{< example >}}
<div class="card" style="width: 18rem;">
  <div class="card-header">
    Рекомендуемые
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">An item</li>
    <li class="list-group-item">A second item</li>
    <li class="list-group-item">A third item</li>
  </ul>
</div>
{{< /example >}}

{{< example >}}
<div class="card" style="width: 18rem;">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">An item</li>
    <li class="list-group-item">A second item</li>
    <li class="list-group-item">A third item</li>
  </ul>
  <div class="card-footer">
    Подвал карточки
  </div>
</div>
{{< /example >}}

### Кухонная мойка

Комбинируйте несколько типов контента, чтобы создать нужную Вам карточку, или добавьте туда все. Ниже показаны стили изображения, блоки, стили текста и группа списков - все они заключены в карточку фиксированной ширины.

{{< example >}}
<div class="card" style="width: 18rem;">
  {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <p class="card-text">Несколько быстрых примеров текста для построения на основе заголовка карточек и составляющих основную часть содержимого карточки.</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">An item</li>
    <li class="list-group-item">A second item</li>
    <li class="list-group-item">A third item</li>
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
    <h5 class="card-title">Особое обращение с титулом</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Идти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

Заголовки карточек можно стилизовать, добавив `.card-header` к элементам `<h*>`.

{{< example >}}
<div class="card">
  <h5 class="card-header">Рекомендуемые</h5>
  <div class="card-body">
    <h5 class="card-title">Особое обращение с титулом</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Идти куда-нибудь</a>
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
      <p>Известная цитата, содержащаяся в элементе цитаты.</p>
      <footer class="blockquote-footer">Кто-то известный в <cite title="Название источника">названии источника</cite></footer>
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
    <h5 class="card-title">Особое обращение с титулом</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Идти куда-нибудь</a>
  </div>
  <div class="card-footer text-muted">
    2 days ago
  </div>
</div>
{{< /example >}}

## Размеры

Карты не предполагают никакой определенной ширины `width` для начала, поэтому они будут иметь ширину 100%, если не указано иное. Вы можете изменить это по мере необходимости с помощью настраиваемого CSS, классов сетки, миксинов Sass сетки или утилит.

### Использование разметки сетки

Используя сетку, расположите карточки в столбцы и строки по мере необходимости.

{{< example >}}
<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Особое обращение с титулом</h5>
        <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
        <a href="#" class="btn btn-primary">Идти куда-нибудь</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Особое обращение с титулом</h5>
        <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
        <a href="#" class="btn btn-primary">Идти куда-нибудь</a>
      </div>
    </div>
  </div>
</div>
{{< /example >}}

### Использование утилит

Воспользуйтесь нашей горсткой [доступных утилит для определения размера]({{< docsref "/utilities/sizing" >}}), чтобы быстро установить ширину карточки.

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
    <h5 class="card-title">Особое обращение с титулом</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Идти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

## Выравнивание текста

Вы можете быстро изменить выравнивание текста любой карточки - целиком или в отдельных частях - с помощью наших [классов выравнивания текста]({{< docsref "/utilities/text#text-alignment" >}}).

{{< example >}}
<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Особое обращение с титулом</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Идти куда-нибудь</a>
  </div>
</div>

<div class="card text-center" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Особое обращение с титулом</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Идти куда-нибудь</a>
  </div>
</div>

<div class="card text-right" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Особое обращение с титулом</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Идти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

## Навигация

Добавьте навигацию в заголовок (или блок) карточки с помощью [компонентов навигации]({{< docsref "/components/navs" >}}).

{{< example >}}
<div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-tabs card-header-tabs">
      <li class="nav-item">
        <a class="nav-link active" href="#">Активная</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Ссылка</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
    <h5 class="card-title">Особое обращение с титулом</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Идти куда-нибудь</a>
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
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Отключенная</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
    <h5 class="card-title">Особое обращение с титулом</h5>
    <p class="card-text">С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
    <a href="#" class="btn btn-primary">Идти куда-нибудь</a>
  </div>
</div>
{{< /example >}}

## Изображения

Карточки включают несколько вариантов работы с изображениями. Вы можете добавить «Заглушку изображения» на любом конце карточки, наложить изображения на содержимое карточки или просто вставить изображение в карточку.

### Заглушка изображений

Как и верхние и нижние колонтитулы, карточки могут содержать верхнюю и нижнюю «Заглушка изображений» - изображения вверху или внизу карточки.

{{< example >}}
<div class="card mb-3">
  {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <p class="card-text">Это более широкая карта с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
    <p class="card-text"><small class="text-muted">Последнее обновление: 3 мин. назад</small></p>
  </div>
</div>
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Заголовок карточки</h5>
    <p class="card-text">Это более широкая карта с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
    <p class="card-text"><small class="text-muted">Последнее обновление: 3 мин. назад</small></p>
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
    <p class="card-text">Это более широкая карта с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
    <p class="card-text">Последнее обновление: 3 мин. назад</p>
  </div>
</div>
{{< /example >}}

{{< callout info >}}
Обратите внимание, что содержимое не должно быть больше высоты изображения. Если содержимое больше изображения, оно будет отображаться вне изображения.
{{< /callout >}}

## Горизонтальные

Используя комбинацию классов сетки и утилит, карточки можно сделать горизонтальными, удобными для мобильных устройств и адаптивными. В приведенном ниже примере мы удаляем желоба сетки с помощью `.no-gutters` и используем классы `.col-md-*`, чтобы сделать карту горизонтальной в контрольной точке `md`. В зависимости от содержимого Вашей карточки могут потребоваться дополнительные корректировки.

{{< example >}}
<div class="card mb-3" style="max-width: 540px;">
  <div class="row no-gutters">
    <div class="col-md-4">
      {{< placeholder width="100%" height="250" class="" text="Изображение" >}}
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более широкая карта с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
        <p class="card-text"><small class="text-muted">Последнее обновление: 3 мин. назад</small></p>
      </div>
    </div>
  </div>
</div>
{{< /example >}}

## Стили карточек

Карточки включают различные параметры для настройки их фона, границ и цвета.

### Фон и цвет

Используйте [текстовые и фоновые утилиты]({{< docsref "/utilities/colors" >}}), чтобы изменить внешний вид карточки.

{{< example >}}
{{< card.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="card{{ if not (eq .name "light") }} text-white{{ end }} bg-{{ .name }} mb-3" style="max-width: 18rem;">
  <div class="card-header">Верхний колонтитул</div>
  <div class="card-body">
    <h5 class="card-title">{{ .name | title }} заголовок карточки</h5>
    <p class="card-text">Несколько быстрых примеров текста для построения на основе заголовка карточек и составляющих основную часть содержимого карточки.</p>
  </div>
</div>
{{- end -}}
{{< /card.inline >}}
{{< /example >}}

{{< callout warning >}}
{{< partial "callout-warning-color-assistive-technologies.md" >}}
{{< /callout >}}

### Граница

Используйте [утилиты границ]({{< docsref "/utilities/borders" >}}), чтобы изменить только цвет границы `border-color` карточки. Обратите внимание, что Вы можете поместить классы `.text-{color}` в родительский `.card` или подмножество содержимого карты, как показано ниже.

{{< example >}}
{{< card.inline >}}
{{- range (index $.Site.Data "theme-colors") }}
<div class="card border-{{ .name }} mb-3" style="max-width: 18rem;">
  <div class="card-header">Верхний колонтитул</div>
  <div class="card-body{{ if not (eq .name "light") }} text-{{ .name }}{{ end }}">
    <h5 class="card-title">{{ .name | title }} заголовок карточки</h5>
    <p class="card-text">Несколько быстрых примеров текста для построения на основе заголовка карточек и составляющих основную часть содержимого карточки.</p>
  </div>
</div>
{{- end -}}
{{< /card.inline >}}
{{< /example >}}

### Утилиты миксинов

Вы также можете при необходимости изменить границы верхнего и нижнего колонтитула карточки и даже удалить их цвет фона `background-color` с помощью `.bg-transparent`.

{{< example >}}
<div class="card border-success mb-3" style="max-width: 18rem;">
  <div class="card-header bg-transparent border-success">Верхний колонтитул</div>
  <div class="card-body text-success">
    <h5 class="card-title">Success заголовок карточки</h5>
    <p class="card-text">Несколько быстрых примеров текста для построения на основе заголовка карточек и составляющих основную часть содержимого карточки.</p>
  </div>
  <div class="card-footer bg-transparent border-success">Нижний колонтитул</div>
</div>
{{< /example >}}

## Макет карточки

Помимо стилизации содержимого карточек, Bootstrap включает несколько опций для размещения серий карточек. В настоящее время **эти параметры макета еще не работают**.

### Группы карточек

Используйте группы карточек для визуализации карточек как одного присоединенного элемента с столбцами одинаковой ширины и высоты. Группы карточек начинаются в стопке и используют `display: flex;` для прикрепления с одинаковыми размерами, начиная с контрольной точки `sm`.

{{< example >}}
<div class="card-group">
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Это более широкая карта с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      <p class="card-text"><small class="text-muted">Последнее обновление: 3 мин. назад</small></p>
    </div>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Эта подсказка имеет вспомогательный текст ниже как естественный ввод к дополнительному контенту.</p>
      <p class="card-text"><small class="text-muted">Последнее обновление: 3 мин. назад</small></p>
    </div>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Это более широкая карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Эта карточка имеет даже более длинный контент, чем первая, чтобы показать действие одинаковой высоты.</p>
      <p class="card-text"><small class="text-muted">Последнее обновление: 3 мин. назад</small></p>
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
      <p class="card-text">Это более широкая карта с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Последнее обновление: 3 мин. назад</small>
    </div>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Эта подсказка имеет вспомогательный текст ниже как естественный ввод к дополнительному контенту.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Последнее обновление: 3 мин. назад</small>
    </div>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Это более широкая карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Эта карточка имеет даже более длинный контент, чем первая, чтобы показать действие одинаковой высоты.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Последнее обновление: 3 мин. назад</small>
    </div>
  </div>
</div>
{{< /example >}}

### Колоды карт

Нужен набор карточек одинаковой ширины и высоты, которые не прикреплены друг к другу? Используйте колоды карт.

{{< example >}}
<div class="card-deck">
  <div class="card">
    {{< placeholder width="100%" height="200" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      <p class="card-text"><small class="text-muted">Последнее обновление: 3 мин. назад</small></p>
    </div>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="200" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Эта подсказка имеет вспомогательный текст ниже как естественный ввод к дополнительному контенту.</p>
      <p class="card-text"><small class="text-muted">Последнее обновление: 3 мин. назад</small></p>
    </div>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="200" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Это более широкая карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Эта карточка имеет даже более длинный контент, чем первая, чтобы показать действие одинаковой высоты.</p>
      <p class="card-text"><small class="text-muted">Последнее обновление: 3 мин. назад</small></p>
    </div>
  </div>
</div>
{{< /example >}}

Как и в случае с группами карточек, нижние колонтитулы карточек в колодах автоматически выстраиваются в линию.

{{< example >}}
<div class="card-deck">
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Это более широкая карта с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Последнее обновление: 3 мин. назад</small>
    </div>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Эта подсказка имеет вспомогательный текст ниже как естественный ввод к дополнительному контенту.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Последнее обновление: 3 мин. назад</small>
    </div>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Это более широкая карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Эта карточка имеет даже более длинный контент, чем первая, чтобы показать действие одинаковой высоты.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Последнее обновление: 3 мин. назад</small>
    </div>
  </div>
</div>
{{< /example >}}

### Сетка карточек

Используйте систему сеток Bootstrap и ее [классы`.row-cols`]({{< docsref "/layout/grid#row-columns" >}}), чтобы контролировать, сколько столбцов сетки (обернутых вокруг Ваших карточек) Вы показываете в строка. Например, здесь `.row-cols-1` выкладывает карточки в один столбец, а `.row-cols-md-2` разделяет четыре карточки одинаковой ширины на несколько строк, начиная со средней контрольной точки.

{{< example >}}
<div class="row row-cols-1 row-cols-md-2">
  <div class="col mb-4">
    <div class="card">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карточка с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
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
<div class="row row-cols-1 row-cols-md-3">
  <div class="col mb-4">
    <div class="card">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карточка с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
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
<div class="row row-cols-1 row-cols-md-3">
  <div class="col mb-4">
    <div class="card h-100">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card h-100">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это короткая карточка.</p>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card h-100">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карточка с вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту.</p>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card h-100">
      {{< placeholder width="100%" height="180" class="card-img-top" text="Заглушка изображения" >}}
      <div class="card-body">
        <h5 class="card-title">Заголовок карточки</h5>
        <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
      </div>
    </div>
  </div>
</div>
{{< /example >}}

### Столбцы карточек

Карточки могут быть организованы в столбцы типа [Masonry](https://masonry.desandro.com/) с помощью простого CSS, заключив их в `.card-columns`. Карточки построены с использованием свойств CSS `column` вместо flexbox для упрощения выравнивания. Карточки располагаются сверху вниз и слева направо.

**Внимание!** Ваш пробег с карточками может отличаться. Чтобы карточки не разбивались по столбцам, мы должны установить для них `display: inline-block`, поскольку `column-break-inside: avoid` еще не является надежным решением.

{{< example >}}
<div class="card-columns">
  <div class="card">
    {{< placeholder width="100%" height="160" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки that wraps to a new line</h5>
      <p class="card-text">Это более длинная карта С вспомогательным текстом ниже в качестве естественного перехода к дополнительному контенту. Этот контент немного длиннее.</p>
    </div>
  </div>
  <div class="card p-3">
    <blockquote class="blockquote mb-0 card-body">
      <p>A well-known quote, contained in a blockquote element.</p>
      <footer class="blockquote-footer">
        <small class="text-muted">
          Кто-то известный в <cite title="Названии Источника">Названии Источника</cite>
        </small>
      </footer>
    </blockquote>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="160" class="card-img-top" text="Заглушка изображения" >}}
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Эта подсказка имеет вспомогательный текст ниже как естественный ввод к дополнительному контенту.</p>
      <p class="card-text"><small class="text-muted">Последнее обновление: 3 мин. назад</small></p>
    </div>
  </div>
  <div class="card bg-primary text-white text-center p-3">
    <blockquote class="blockquote mb-0">
      <p>A well-known quote, contained in a blockquote element.</p>
      <footer class="blockquote-footer text-white">
        <small>
          Кто-то известный в <cite title="Названии Источника">Названии Источника</cite>
        </small>
      </footer>
    </blockquote>
  </div>
  <div class="card text-center">
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">У этой карточки есть обычный заголовок и короткий абзац текста под ним.</p>
      <p class="card-text"><small class="text-muted">Последнее обновление: 3 мин. назад</small></p>
    </div>
  </div>
  <div class="card">
    {{< placeholder width="100%" height="260" class="card-img" text="Изображение карточки" >}}
  </div>
  <div class="card p-3 text-right">
    <blockquote class="blockquote mb-0">
      <p>A well-known quote, contained in a blockquote element.</p>
      <footer class="blockquote-footer">
        <small class="text-muted">
          Кто-то известный в <cite title="Названии Источника">Названии Источника</cite>
        </small>
      </footer>
    </blockquote>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Заголовок карточки</h5>
      <p class="card-text">Это еще одна карточка с заголовком и вспомогательным текстом ниже. У этой карточки есть дополнительный контент, чтобы сделать ее в целом немного выше.</p>
      <p class="card-text"><small class="text-muted">Последнее обновление: 3 мин. назад</small></p>
    </div>
  </div>
</div>
{{< /example >}}

Столбцы карточек также можно расширить и настроить с помощью некоторого дополнительного кода. Ниже показано расширение класса `.card-columns`, использующее тот же CSS-код, который мы используем - CSS-столбцы - для создания набора адаптивных уровней для изменения числа столбцов.

```scss
.card-columns {
  @include media-breakpoint-only(lg) {
    column-count: 4;
  }
  @include media-breakpoint-only(xl) {
    column-count: 5;
  }
}
```
