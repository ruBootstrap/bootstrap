---
layout: docs
title: Карусель
description: Компонент слайд-шоу для циклического перехода по элементам - изображениям или текстовым слайдам - например, карусели.
group: components
toc: true
---

## Как это работает

Карусель - это слайд-шоу для циклического просмотра серии контента, созданного с помощью преобразований CSS 3D и небольшого количества JavaScript. Он работает с серией изображений, текста или пользовательской разметки. Он также включает поддержку предыдущих/следующих элементов управления и индикаторов.

В браузерах, где поддерживается [API видимости страницы](https://www.w3.org/TR/page-visibility/), карусель не будет скользить, когда веб-страница не видна пользователю (например, когда браузер вкладка неактивна, окно браузера свернуто и т.д.).

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

Имейте в виду, что вложенные карусели не поддерживаются, а карусели обычно не соответствуют общедоступным стандартам.

## Пример

Карусели не нормализуют автоматически размеры слайдов. Таким образом, Вам может потребоваться использовать дополнительные утилиты или настраиваемые стили для соответствующего размера содержимого. Хотя карусели поддерживают элементы управления и индикаторы предыдущий/следующий, они явно не требуются. Добавляйте и настраивайте по своему усмотрению.

**Класс `.active` необходимо добавить на один из слайдов**, иначе карусель не будет видна. Также не забудьте установить уникальный идентификатор в `.carousel` для дополнительных элементов управления, особенно если Вы используете несколько каруселей на одной странице. Элементы управления и индикаторы должны иметь атрибут `data-bs-target` (или `href` для ссылок), который соответствует идентификатору элемента `.carousel`.

### Только слайды

Вот карусель только со слайдами. Обратите внимание на наличие `.d-block` и `.w-100` на изображениях карусели, чтобы предотвратить выравнивание изображений по умолчанию в браузере.

{{< example >}}
<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
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
<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
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
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Предыдущий</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Следующий</span>
  </a>
</div>
{{< /example >}}

### С индикаторами

Вы также можете добавить индикаторы в карусель вместе с элементами управления.

{{< example >}}
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <ol class="carousel-indicators">
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></li>
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
    <li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
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
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Предыдущий</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Следующий</span>
  </a>
</div>
{{< /example >}}

### С подписями

Легко добавляйте подписи к слайдам с помощью элемента `.carousel-caption` внутри любого `.carousel-item`. Их можно легко скрыть в меньших окнах просмотра, как показано ниже, с помощью дополнительных [утилит отображения]({{< docsref "/utilities/display" >}}). Сначала мы скрываем их с помощью `.d-none` и возвращаем их на устройства среднего размера с помощью `.d-md-block`.

{{< example >}}
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <ol class="carousel-indicators">
    <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"></li>
    <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"></li>
    <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"></li>
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
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Предыдущий</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Следующий</span>
  </a>
</div>
{{< /example >}}

### Плавный переход

Добавьте `.carousel-fade` в свою карусель, чтобы анимировать слайды с плавным переходом вместо слайда.

{{< example >}}
<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
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
  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Предыдущий</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Следующий</span>
  </a>
</div>
{{< /example >}}

### Индивидуальный интервал `.carousel-item`

Добавьте `data-bs-interval=""` в `.carousel-item`, чтобы изменить время задержки между автоматическим циклическим переходом к следующему элементу.

{{< example >}}
<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#555" background="#777" text="Первый слайд" >}}
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#444" background="#666" text="Второй слайд" >}}
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#333" background="#555" text="Третий слайд" >}}
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Предыдущий</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Следующий</span>
  </a>
</div>
{{< /example >}}

## Темный вариант

Добавьте `.carousel-dark` к `.carousel` для более темных элементов управления, индикаторов и подписей. Элементы управления были инвертированы по сравнению с их белой заливкой по умолчанию с помощью свойства CSS `filter`. Заголовки и элементы управления имеют дополнительные переменные Sass, которые настраивают `color` и `background-color`.

{{< example >}}
<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
  <ol class="carousel-indicators">
    <li data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"></li>
    <li data-bs-target="#carouselExampleDark" data-bs-slide-to="1"></li>
    <li data-bs-target="#carouselExampleDark" data-bs-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#aaa" background="#f5f5f5" text="Первый слайд" >}}
      <div class="carousel-caption d-none d-md-block">
        <h5>Метка первого слайда</h5>
        <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#bbb" background="#eee" text="Второй слайд" >}}
      <div class="carousel-caption d-none d-md-block">
        <h5>Метка второго слайда</h5>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </div>
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#999" background="#e5e5e5" text="Третий слайд" >}}
      <div class="carousel-caption d-none d-md-block">
        <h5>Метка третьего слайда</h5>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleDark" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Предыдущий</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleDark" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Следующий</span>
  </a>
</div>
{{< /example >}}

## Использование

### Через атрибуты данных

Используйте атрибуты данных, чтобы легко контролировать положение карусели. `data-bs-slide` принимает ключевые слова `prev` или `next`, которые изменяют положение слайда относительно его текущего положения. В качестве альтернативы, используйте `data-bs-slide-to`, чтобы передать необработанный индекс слайда в карусель `data-bs-slide-to="2"`, который сдвигает положение слайда на конкретный индекс, начинающийся с `0`.

Атрибут `data-bs-ride="carousel"` используется для пометки карусели как анимированной, начиная с загрузки страницы. Если Вы не используете `data-bs-ride="carousel"` для инициализации карусели, Вам придется инициализировать ее самостоятельно. **Его нельзя использовать в сочетании с (избыточной и ненужной) явной инициализацией JavaScript той же карусели.**

### Через JavaScript

Вызов карусели вручную с помощью:

```js
var myCarousel = document.querySelector('#myCarousel')
var carousel = new bootstrap.Carousel(myCarousel)
```

### Параметры

Параметры можно передавать через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-bs-`, как в `data-bs-interval=""`.

<table class="table">
  <thead>
    <tr>
      <th style="width: 100px;">Наименование</th>
      <th style="width: 50px;">Тип</th>
      <th style="width: 50px;">По умолчанию</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>interval</code></td>
      <td>number</td>
      <td><code>5000</code></td>
      <td>Время задержки между автоматическим циклическим переключением элемента. Если false, карусель не будет автоматически повторяться.</td>
    </tr>
    <tr>
      <td><code>keyboard</code></td>
      <td>boolean</td>
      <td><code>true</code></td>
      <td>Должна ли карусель реагировать на события клавиатуры.</td>
    </tr>
    <tr>
      <td><code>pause</code></td>
      <td>string | boolean</td>
      <td><code>"hover"</code></td>
      <td><p>Если установлено значение <code>"hover"</code>, приостанавливает цикл карусели на <code>mouseenter</code> и возобновляет циклическое движение карусели на <code>mouseleave</code>. Если установлено значение <code>false</code>, при наведении курсора на карусель она не приостанавливается.</p>
      <p>На устройствах с сенсорным экраном, когда установлено значение <code>"hover"</code>, цикл будет приостанавливаться на <code>touchend</code> (после того, как пользователь завершит взаимодействие с каруселью) на два интервала, прежде чем автоматически возобновляется. Обратите внимание, что это в дополнение к описанному выше поведению мыши.</p></td>
    </tr>
    <tr>
      <td><code>slide</code></td>
      <td>string | boolean</td>
      <td><code>false</code></td>
      <td>Автоматически воспроизводит карусель после того, как пользователь вручную перебирает первый элемент. Если "carousel" автоматически воспроизводит карусель при загрузке.</td>
    </tr>
    <tr>
      <td><code>wrap</code></td>
      <td>boolean</td>
      <td><code>true</code></td>
      <td>Должна ли карусель работать непрерывно или иметь жесткие остановки.</td>
    </tr>
    <tr>
      <td><code>touch</code></td>
      <td>boolean</td>
      <td><code>true</code></td>
      <td>Должна ли карусель поддерживать взаимодействие смахивания влево/вправо на устройствах с сенсорным экраном.</td>
    </tr>
  </tbody>
</table>

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

Вы можете создать экземпляр карусели с помощью конструктора карусели, например, для инициализации с дополнительными параметрами и начала циклического перебора элементов:

```js
var myCarousel = document.querySelector('#myCarousel')
var carousel = new bootstrap.Carousel(myCarousel, {
  interval: 2000,
  wrap: false
})
```

<table class="table">
  <thead>
    <tr>
      <th>Метод</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>cycle</code></td>
      <td>Перебирает элементы карусели слева направо.</td>
    </tr>
    <tr>
      <td><code>pause</code></td>
      <td>Не дает карусели перебирать элементы.</td>
    </tr>
    <tr>
      <td><code>prev</code></td>
      <td>Переходит к предыдущему элементу. <strong>Возврат к вызывающему абоненту до того, как был показан предыдущий элемент</strong> (например, до возникновения события <code>slid.bs.carousel</code>).</td>
    </tr>
    <tr>
      <td><code>Следующий</code></td>
      <td>Переход к следующему элементу. <strong>Возврат к вызывающему абоненту до того, как будет показан следующий элемент</strong> (например, до того, как произойдет событие <code>slid.bs.carousel</code>).</td>
    </tr>
    <tr>
      <td><code>nextWhenVisible</code></td>
      <td>Не переключать карусель на следующую, если страница не отображается или карусель или ее родительский элемент не видны. <strong>Возврат к вызывающему абоненту до того, как будет показан целевой элемент</strong>
    </tr>
    <tr>
      <td><code>to</code></td>
      <td>Циклически переключает карусель на конкретный кадр (на основе 0, аналогично массиву). <strong>Возврат к вызывающему абоненту до того, как будет показан целевой элемент</strong> (например, до того, как произойдет событие <code>slid.bs.carousel</code>).</td>
    </tr>
    <tr>
      <td><code>dispose</code></td>
      <td>Уничтожает элемент карусели. (Удаляет сохраненные данные в элементе DOM)</td>
    </tr>
    <tr>
      <td><code>getInstance</code></td>
      <td>Статический метод, позволяющий получить экземпляр карусели, связанный с элементом DOM.</td>
    </tr>
  </tbody>
</table>

### События

Класс карусели Bootstrap предоставляет два события для подключения к функциональности карусели. Оба события имеют следующие дополнительные свойства:

- `direction`: Направление, в котором движется карусель (любое `"left"` или `"right"`).
- `relatedTarget`: Элемент DOM, который вставляется на место как активный элемент.
- `from`: Индекс текущего элемента.
- `to`: Индекс следующего элемента.

Все события карусели запускаются в самой карусели (например, `<div class="carousel">`).

<table class="table">
  <thead>
    <tr>
      <th style="width: 150px;">Тип события</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>slide.bs.carousel</code></td>
      <td>Срабатывает немедленно при вызове метода экземпляра <code>slide</code>.</td>
    </tr>
    <tr>
      <td><code>slid.bs.carousel</code></td>
      <td>Запускается, когда карусель завершает переход между слайдами.</td>
    </tr>
  </tbody>
</table>

```js
var myCarousel = document.getElementById('myCarousel')

myCarousel.addEventListener('slide.bs.carousel', function () {
  // сделайте что-нибудь...
})
```

### Изменить продолжительность перехода

Продолжительность перехода `.carousel-item` может быть изменена с помощью переменной Sass `$carousel-transition` перед компиляцией или пользовательскими стилями, если Вы используете скомпилированный CSS. Если применяется несколько переходов, убедитесь, что сначала определен переход преобразования (например, `transition: transform 2s ease, opacity .5s ease-out`).
