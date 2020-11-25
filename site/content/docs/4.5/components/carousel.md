---
layout: docs
title: Карусель
description: Компонент слайд-шоу для циклического просмотра элементов - изображений или текстовых слайдов - например, карусели.
group: components
toc: true
---

## Как это работает

Карусель - это слайд-шоу для циклического просмотра серии контента, созданного с помощью преобразований CSS 3D и небольшого количества JavaScript. Он работает с серией изображений, текста или пользовательской разметки. Он также включает поддержку предыдущего/следующего элементов управления и индикаторов.

В браузерах, где поддерживается [API видимости страницы](https://www.w3.org/TR/page-visibility/), карусель не будет скользить, когда веб-страница не видна пользователю (например, когда браузер вкладка неактивна, окно браузера свернуто и т.д.).

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

Имейте в виду, что вложенные карусели не поддерживаются, а карусели обычно не соответствуют стандартам доступности.

И, наконец, если Вы создаете наш JavaScript из исходного кода, он [требует `util.js`]({{< docsref "/getting-started/javascript#util" >}}).

## Пример

Карусели не нормализуют автоматически размеры слайдов. Таким образом, Вам может потребоваться использовать дополнительные утилиты или настраиваемые стили для соответствующего размера содержимого. Хотя карусели поддерживают элементы управления и индикаторы «предыдущий/следующий», они явно не требуются. Добавляйте и настраивайте по своему усмотрению.

**Класс `.active` необходимо добавить к одному из слайдов** , иначе карусель не будет видна. Также не забудьте установить уникальный идентификатор в `.carousel` для дополнительных элементов управления, особенно если Вы используете несколько каруселей на одной странице. Элементы управления и индикаторы должны иметь атрибут `data-target` (или `href` для ссылок), который соответствует идентификатору элемента `.carousel`.

### Только слайды

Вот карусель только со слайдами. Обратите внимание на наличие `.d-block` и `.w-100` на изображениях карусели, чтобы предотвратить выравнивание изображений по умолчанию в браузере.

{{< example >}}
<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
        {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#555" background="#777" text="Первый слайд" >}}
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#444" background="#666" text="Второй слайд" >}}
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#333" background="#555" text="Третий слайд" >}}
    </div>
  </div>
</div>
{{< /example >}}

### С элементами управления

Добавление предыдущего и следующего элементов управления:

{{< example >}}
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#555" background="#777" text="Первый слайд" >}}
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#444" background="#666" text="Второй слайд" >}}
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#333" background="#555" text="Третий слайд" >}}
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Предыдущий</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Следующий</span>
  </a>
</div>
{{< /example >}}

### С индикаторами

Вы также можете добавить индикаторы в карусель вместе с элементами управления.

{{< example >}}
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#555" background="#777" text="Первый слайд" >}}
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#444" background="#666" text="Второй слайд" >}}
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#333" background="#555" text="Третий слайд" >}}
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Предыдущий</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Следующий</span>
  </a>
</div>
{{< /example >}}

### С подписями

Легко добавляйте подписи к слайдам с помощью элемента `.carousel-caption` внутри любого `.carousel-item`. Их можно легко скрыть на небольших окнах просмотра, как показано ниже, с помощью дополнительных [утилит дисплея]({{< docsref "/utilities/display" >}}). Сначала мы скрываем их с помощью `.d-none` и возвращаем их на устройства среднего размера с помощью `.d-md-block`.

{{< example >}}
<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#555" background="#777" text="Первый слайд" >}}
      <div class="carousel-caption d-none d-md-block">
        <h5>Метка первого слайда</h5>
        <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
      </div>
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#444" background="#666" text="Второй слайд" >}}
      <div class="carousel-caption d-none d-md-block">
        <h5>Метка второго слайда</h5>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </div>
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#333" background="#555" text="Третий слайд" >}}
      <div class="carousel-caption d-none d-md-block">
        <h5>Метка третьего слайда</h5>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Предыдущий</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Следующий</span>
  </a>
</div>
{{< /example >}}

### Перекрестное затухание

Добавьте в карусель `.carousel-fade`, чтобы анимировать слайды с постепенным переходом вместо слайда.

{{< example >}}
<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#555" background="#777" text="Первый слайд" >}}
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#444" background="#666" text="Второй слайд" >}}
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#333" background="#555" text="Третий слайд" >}}
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Предыдущий</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Следующий</span>
  </a>
</div>
{{< /example >}}

### Индивидуальный интервал `.carousel-item`

Добавьте `data-interval=""` в `.carousel-item`, чтобы изменить время задержки между автоматическим циклическим переходом к следующему элементу.

{{< example >}}
<div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-interval="10000">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#555" background="#777" text="Первый слайд" >}}
    </div>
    <div class="carousel-item" data-interval="2000">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#444" background="#666" text="Второй слайд" >}}
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#333" background="#555" text="Третий слайд" >}}
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Предыдущий</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Следующий</span>
  </a>
</div>
{{< /example >}}


## Применение

### Через атрибуты данных

Используйте атрибуты данных, чтобы легко контролировать положение карусели. `data-slide` принимает ключевые слова `prev` или `next`, которые изменяют положение слайда относительно его текущего положения. В качестве альтернативы, используйте `data-slide-to`, чтобы передать необработанный индекс слайда в карусель `data-slide-to="2"`, который сдвигает положение слайда на конкретный индекс, начинающийся с `0`.

Атрибут `data-ride="carousel"` используется для пометки карусели как анимированной, начиная с загрузки страницы. Если Вы не используете `data-ride="carousel"` для инициализации карусели, Вам придется инициализировать ее самостоятельно. **Его нельзя использовать в сочетании с (избыточной и ненужной) явной инициализацией JavaScript той же карусели.**

### Через JavaScript

Вызов карусели вручную с помощью:

```js
$('.carousel').carousel()
```

### Параметры

Параметры могут передаваться через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-`, как в `data-interval=""`.

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
      <td>interval</td>
      <td>number</td>
      <td>5000</td>
      <td>Время задержки между автоматическим циклическим переключением элемента. Если false, карусель не будет автоматически повторяться.</td>
    </tr>
    <tr>
      <td>keyboard</td>
      <td>boolean</td>
      <td>true</td>
      <td>Должна ли карусель реагировать на события клавиатуры.</td>
    </tr>
    <tr>
      <td>pause</td>
      <td>string | boolean</td>
      <td>"hover"</td>
      <td><p>Если установлено значение <code>"hover"</code>, приостанавливает цикл карусели на <code>mouseenter</code> и возобновляет циклическое движение карусели на <code>mouseleave</code>. Если установлено значение <code>false</code>, при наведении курсора на карусель она не приостанавливается.</p>
      <p>На устройствах с сенсорным экраном, когда установлено значение <code>"hover"</code>, цикл будет приостанавливаться на <code>touchend</code> (после того, как пользователь завершит взаимодействие с каруселью) на два интервала, прежде чем автоматически возобновляется. Обратите внимание, что это в дополнение к описанному выше поведению мыши.</p></td>
    </tr>
    <tr>
      <td>ride</td>
      <td>string</td>
      <td>false</td>
      <td>Автоматически воспроизводит карусель после того, как пользователь вручную перебирает первый элемент. Если "карусель", автоматически воспроизводит карусель при загрузке.</td>
    </tr>
    <tr>
      <td>wrap</td>
      <td>boolean</td>
      <td>true</td>
      <td>Должна ли карусель работать непрерывно или иметь жесткие остановки.</td>
    </tr>
    <tr>
      <td>touch</td>
      <td>boolean</td>
      <td>true</td>
      <td>Должна ли карусель поддерживать взаимодействие смахивания влево/вправо на устройствах с сенсорным экраном.</td>
    </tr>
  </tbody>
</table>

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

#### `.carousel(options)`

Инициализирует карусель необязательным параметром `object` и начинает циклический просмотр элементов.

```js
$('.carousel').carousel({
  interval: 2000
})
```

#### `.carousel('cycle')`

Перебирает элементы карусели слева направо.

#### `.carousel('pause')`

Останавливает карусель от циклического перебора элементов.

#### `.carousel(number)`

Циклически переключает карусель на определенный кадр (на основе 0, аналогично массиву). **Возврат к вызывающей стороне до того, как целевой элемент будет показан** (то есть до того, как произойдет событие `slid.bs.carousel`).

#### `.carousel('prev')`

Переход к предыдущему элементу. **Возврат к вызывающему абоненту до того, как будет показан предыдущий элемент** (то есть до того, как произойдет событие `slid.bs.carousel`).

#### `.carousel('next')`

Переход к следующему элементу. **Возврат к вызывающей стороне до того, как будет показан следующий элемент** (т.е. до того, как произойдет событие `slid.bs.carousel`).

#### `.carousel('dispose')`

Разрушает карусель элемента.

#### `.carousel('nextWhenVisible')`

Не циклически переходите к следующей карусели, если страница не отображается или карусель или ее родительский элемент не видны. **Возврат к вызывающей стороне до того, как будет показан следующий элемент** (т.е. до того, как произойдет событие `slid.bs.carousel`).

#### `.carousel('to')`

Циклически переключает карусель на определенный кадр (на основе 0, аналогично массиву). **Возврат к вызывающей стороне до того, как будет показан следующий элемент** (т.е. до того, как произойдет событие `slid.bs.carousel`).

### События

Класс карусели Bootstrap предоставляет два события для подключения к функциональности карусели. Оба события имеют следующие дополнительные свойства:

- `direction`: Направление, в котором движется карусель (`"влево"` или `"вправо"`).
- `relatedTarget`: Элемент DOM, который вставляется на место в качестве активного элемента.
- `from`: Индекс текущего элемента
- `to`: Индекс следующего элемента

Все события карусели запускаются в самой карусели (т.е. в `<div class="carousel">`).

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="width: 150px;">Тип события</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>slide.bs.carousel</td>
      <td>Это событие запускается немедленно при вызове метода экземпляра <code>slide</code>.</td>
    </tr>
    <tr>
      <td>slid.bs.carousel</td>
      <td>Это событие вызывается, когда карусель завершает переход между слайдами.</td>
    </tr>
  </tbody>
</table>

```js
$('#myCarousel').on('slide.bs.carousel', function () {
  // сделайте что-нибудь...
})
```

### Изменить продолжительность перехода

Длительность перехода `.carousel-item` может быть изменена с помощью переменной Sass `$carousel-transition` перед компиляцией или пользовательскими стилями, если Вы используете скомпилированный CSS. Если применяется несколько переходов, убедитесь, что сначала определен переход преобразования (например, `transition: transform 2s ease, opacity .5s ease-out`).
