---
layout: docs
title: Карусель
description: Компонент слайд-шоу для циклического перехода по элементам - изображениям или текстовым слайдам - например, карусели.
group: components
toc: true
---

## Как это устроено

Карусель - это слайд-шоу для циклического просмотра серии контента, созданного с помощью преобразований CSS 3D и небольшого количества JavaScript. Он работает с серией изображений, текста или пользовательской разметки. Он также включает поддержку предыдущих/следующих элементов управления и индикаторов.

В браузерах, где поддерживается [API видимости страницы](https://www.w3.org/TR/page-visibility/), карусель не будет скользить, когда веб-страница не видна пользователю (например, когда браузер вкладка неактивна, окно браузера свернуто и т.д.).

{{< callout info >}}
{{< partial "callout-info-prefersreducedmotion.md" >}}
{{< /callout >}}

Имейте в виду, что вложенные карусели не поддерживаются, а карусели обычно не соответствуют общедоступным стандартам.

## Пример

Карусели не нормализуют автоматически размеры слайдов. Таким образом, Вам может потребоваться использовать дополнительные утилиты или настраиваемые стили для соответствующего размера содержимого. Хотя карусели поддерживают элементы управления и индикаторы предыдущий/следующий, они явно не требуются. Добавляйте и настраивайте по своему усмотрению.

**Класс `.active` необходимо добавить к одному из слайдов**, иначе карусель не будет видна. Также не забудьте установить уникальный идентификатор `id` в `.carousel` для дополнительных элементов управления, особенно если Вы используете несколько каруселей на одной странице. Элементы управления и индикатора должны иметь атрибут `data-bs-target` (или `href` для ссылок), который соответствует идентификатору `id` элемента `.carousel`.

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

Добавление предыдущего и следующего элементов управления. Мы рекомендуем использовать элементы `<button>`, но Вы также можете использовать элементы `<a>` с `role="button"`.

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
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Предыдущий</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Следующий</span>
  </button>
</div>
{{< /example >}}

### С индикаторами

Вы также можете добавить индикаторы в карусель вместе с элементами управления.

{{< example >}}
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
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
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Предыдущий</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Следующий</span>
  </button>
</div>
{{< /example >}}

### С подписями

Легко добавляйте подписи к слайдам с помощью элемента `.carousel-caption` внутри любого `.carousel-item`. Их можно легко скрыть в меньших окнах просмотра, как показано ниже, с помощью дополнительных [утилит отображения]({{< docsref "/utilities/display" >}}). Сначала мы скрываем их с помощью `.d-none` и возвращаем их на устройства среднего размера с помощью `.d-md-block`.

{{< example >}}
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#555" background="#777" text="Первый слайд" >}}
      <div class="carousel-caption d-none d-md-block">
        <h5>Метка первого слайда</h5>
        <p>Некоторый репрезентативный заполнитель для первого слайда.</p>
      </div>
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#444" background="#666" text="Второй слайд" >}}
      <div class="carousel-caption d-none d-md-block">
        <h5>Метка второго слайда</h5>
        <p>Некоторый репрезентативный заполнитель для второго слайда.</p>
      </div>
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#333" background="#555" text="Третий слайд" >}}
      <div class="carousel-caption d-none d-md-block">
        <h5>Метка третьего слайда</h5>
        <p>Некоторый репрезентативный заполнитель для третьего слайда.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Предыдущий</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Следующий</span>
  </button>
</div>
{{< /example >}}

### Плавный переход

Добавьте `.carousel-fade` в свою карусель, чтобы анимировать слайды с плавным переходом вместо слайда. В зависимости от содержимого вашей карусели (например, слайды, содержащие только текст), вы можете добавить `.bg-body` или какой-нибудь пользовательский CSS к `.carousel-item` для правильного плавного перехода.

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
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Предыдущий</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Следующий</span>
  </button>
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
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Предыдущий</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Следующий</span>
  </button>
</div>
{{< /example >}}

### Отключить сенсорный свайпинг

Карусели поддерживают смахивание влево/вправо на устройствах с сенсорным экраном для перемещения между слайдами. Это можно отключить с помощью атрибута `data-bs-touch`. Пример ниже также не включает атрибут `data-bs-ride`, поэтому он не воспроизводится автоматически.

{{< example >}}
<div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false">
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
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Предыдущий</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Следующий</span>
  </button>
</div>
{{< /example >}}

## Темный вариант

Добавьте `.carousel-dark` к `.carousel` для более темных элементов управления, индикаторов и подписей. Элементы управления были инвертированы по сравнению с их белой заливкой по умолчанию с помощью свойства CSS `filter`. Заголовки и элементы управления имеют дополнительные переменные Sass, которые настраивают `color` и `background-color`.

{{< example >}}
<div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#aaa" background="#f5f5f5" text="Первый слайд" >}}
      <div class="carousel-caption d-none d-md-block">
        <h5>Метка первого слайда</h5>
        <p>Некоторый репрезентативный заполнитель для первого слайда.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#bbb" background="#eee" text="Второй слайд" >}}
      <div class="carousel-caption d-none d-md-block">
        <h5>Метка второго слайда</h5>
        <p>Некоторый репрезентативный заполнитель для второго слайда.</p>
      </div>
    </div>
    <div class="carousel-item">
      {{< placeholder width="800" height="400" class="bd-placeholder-img-lg d-block w-100" color="#999" background="#e5e5e5" text="Третий слайд" >}}
      <div class="carousel-caption d-none d-md-block">
        <h5>Метка третьего слайда</h5>
        <p>Некоторый репрезентативный заполнитель для третьего слайда.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Предыдущий</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Следующий</span>
  </button>
</div>
{{< /example >}}

## Пользовательский переход

Длительность перехода `.carousel-item` может быть изменена с помощью переменной Sass `$carousel-transition-duration` перед компиляцией или настраиваемыми стилями, если вы используете скомпилированный CSS. Если применяется несколько переходов, убедитесь, что сначала определен переход преобразования (например, `transition: transform 2s ease, opacity .5s ease-out`).

## Sass

### Переменные

Переменные для всех каруселей:

{{< scss-docs name="carousel-variables" file="scss/_variables.scss" >}}

Переменные для [темной карусели](#dark-variant):

{{< scss-docs name="carousel-dark-variables" file="scss/_variables.scss" >}}

## Использование

### Через атрибуты данных

Используйте атрибуты данных, чтобы легко контролировать положение карусели. `data-bs-slide` принимает ключевые слова `prev` или `next`, которые изменяют положение слайда относительно его текущего положения. В качестве альтернативы, используйте `data-bs-slide-to`, чтобы передать необработанный индекс слайда в карусель `data-bs-slide-to="2"`, который сдвигает положение слайда на конкретный индекс, начинающийся с `0`.

Атрибут `data-bs-ride="carousel"` используется для пометки карусели как анимированной, начиная с загрузки страницы. Если Вы не используете `data-bs-ride="carousel"` для инициализации карусели, Вам придется инициализировать ее самостоятельно. **Его нельзя использовать в сочетании с (избыточной и ненужной) явной инициализацией JavaScript той же карусели.**

### Через JavaScript

Вызов карусели вручную с помощью:

```js
const carousel = new bootstrap.Carousel('#myCarousel')
```

### Опции

{{< markdown >}}
{{< partial "js-data-attributes.md" >}}
{{< /markdown >}}

{{< bs-table >}}
| Название | Тип | По умолчанию | Описание |
| --- | --- | --- | --- |
| `interval` | number | `5000` | Количество времени задержки между автоматическим циклом элемента. |
| `keyboard` | boolean | `true` | Должна ли карусель реагировать на события клавиатуры. |
| `pause` | string, boolean | `"hover"` | Если установлено значение `"hover"`, карусель приостанавливается при нажатии `mouseenter` и возобновляется при нажатии `mouseleave`. Если установлено значение `false`, наведение курсора на карусель не приостанавливает ее. На устройствах с сенсорным экраном, если установлено значение `"hover"`, цикл будет приостанавливаться при `touchend` (после того, как пользователь завершит взаимодействие с каруселью) на два интервала, а затем автоматически возобновится. Это в дополнение к поведению мыши. |
| `ride` | string, boolean | `false` | Если установлено значение `true`, автоматически воспроизводится карусель после того, как пользователь вручную прокрутит первый элемент. Если установлено значение `"carousel"`, автоматически воспроизводится карусель при загрузке. |
| `touch` | boolean | `true` | Должна ли карусель поддерживать смахивание влево/вправо на устройствах с сенсорным экраном. |
| `wrap` | boolean | `true` | Должна ли карусель вращаться непрерывно или делать резкие остановки. |
{{< /bs-table >}}

### Методы

{{< callout danger >}}
{{< partial "callout-danger-async-methods.md" >}}
{{< /callout >}}

Вы можете создать экземпляр карусели с помощью конструктора карусели, например, для инициализации с дополнительными параметрами и начала циклического перебора элементов:

```js
const myCarouselElement = document.querySelector('#myCarousel')
const carousel = new bootstrap.Carousel(myCarouselElement, {
  interval: 2000,
  wrap: false
})
```

{{< bs-table >}}
| Метод | Описание |
| --- | --- |
| `cycle` | Перебирает элементы карусели слева направо. |
| `dispose` | Уничтожает карусель элемента. (Удаляет сохраненные данные в элементе DOM). |
| `getInstance` | Статический метод, который позволяет вам получить экземпляр карусели, связанный с элементом DOM, вы можете использовать его следующим образом: `bootstrap.Carousel.getInstance(element)`. |
| `getOrCreateInstance` | Статический метод, который возвращает экземпляр карусели, связанный с элементом DOM, или создает новый, если он не был инициализирован. Вы можете использовать его так: `bootstrap.Carousel.getOrCreateInstance(element)`. |
| `next` | Переход к следующему элементу. **Возвращается к вызывающей стороне до того, как будет показан следующий элемент** (например, до того, как произойдет событие `slid.bs.carousel`). |
| `nextWhenVisible` | Не переключайте карусель на следующую, если страница не видна или карусель или ее родитель не видны. **Возвращается к вызывающему абоненту до того, как целевой элемент будет показан**. |
| `pause` | Запрещает карусели циклически перемещаться по элементам. |
| `prev` | Переход к предыдущему элементу. **Возвращается к вызывающей стороне до того, как был показан предыдущий элемент** (например, до того, как произойдет событие `slid.bs.carousel`). |
| `to` | Циклически перемещает карусель к определенному кадру (на основе 0, подобно массиву). **Возвращается к вызывающей стороне до того, как целевой элемент будет показан** (например, до того, как произойдет событие `slid.bs.carousel`). |
{{< /bs-table >}}

### События

Класс карусели Bootstrap предоставляет два события для подключения к функциональности карусели. Оба события имеют следующие дополнительные свойства:

- `direction`: Направление, в котором движется карусель (любое `"left"` или `"right"`).
- `relatedTarget`: Элемент DOM, который вставляется на место как активный элемент.
- `from`: Индекс текущего элемента.
- `to`: Индекс следующего элемента.

Все события карусели запускаются в самой карусели (например, `<div class="carousel">`).

{{< bs-table >}}
| Тип события | Описание |
| --- | --- |
| `slid.bs.carousel` | Запускается, когда карусель завершила переход слайдов. |
| `slide.bs.carousel` | Срабатывает немедленно при вызове метода экземпляра `slide`. |
{{< /bs-table >}}

```js
const myCarousel = document.getElementById('myCarousel')

myCarousel.addEventListener('slide.bs.carousel', event => {
  // сделайте что-нибудь...
})
```
