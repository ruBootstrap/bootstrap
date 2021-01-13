---
layout: docs
title: Отслеживание прокрутки
description: Автоматически обновляйте элементы навигации Bootstrap или группы списков в зависимости от положения прокрутки, чтобы указать, какая ссылка в данный момент активна в области просмотра.
group: components
toc: true
---

## Как это работает

У отслеживания прокрутки есть несколько требований для правильной работы:

- Если Вы создаете наш JavaScript из исходного кода, для него [требуется `util.js`]({{< docsref "/getting-started/javascript#util" >}}).
- Он должен использоваться в Bootstrap [компонент навигации]({{< docsref "/components/navs" >}}) или [группа списка]({{< docsref "/components/list-group" >}}).
- Отслеживание прокрутки требует `position: relative;` на элементе, за которым Вы следите, обычно это `<body>`.
- При слежке за элементами, отличными от `<body>`, убедитесь, что у Вас установлен параметр `height` и применен параметр `overflow-y: scroll;`.
- Якоря (`<a>`) обязательны и должны указывать на элемент с этим `id`.

При успешной реализации Ваша группа навигации или списка будет обновляться соответствующим образом, перемещая класс `.active` от одного элемента к другому в зависимости от связанных с ними целей.

## Пример на панели навигации

Прокрутите область под панелью навигации и посмотрите, как меняется активный класс. Выпадающие элементы также будут выделены.

<div class="bd-example">
  <nav id="navbar-example2" class="navbar navbar-light bg-light">
    <a class="navbar-brand" href="#">Панель навигации</a>
    <ul class="nav nav-pills">
      <li class="nav-item">
        <a class="nav-link" href="#fat">@fat</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#mdo">@mdo</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Выпадающий список</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#one">один</a>
          <a class="dropdown-item" href="#two">два</a>
          <div role="separator" class="dropdown-divider"></div>
          <a class="dropdown-item" href="#three">три</a>
        </div>
      </li>
    </ul>
  </nav>
  <div data-spy="scroll" data-target="#navbar-example2" data-offset="0" class="scrollspy-example">
    <h4 id="fat">@fat</h4>
    <p>Placeholder content for the scrollspy example. You got the finest architecture. Passport stamps, she's cosmopolitan. Fine, fresh, fierce, we got it on lock. Never planned that one day I'd be losing you. She eats your heart out. Your kiss is cosmic, every move is magic. I mean the ones, I mean like she's the one. Greetings loved ones let's take a journey. Just own the night like the 4th of July! But you'd rather get wasted.</p>
    <h4 id="mdo">@mdo</h4>
    <p>Placeholder content for the scrollspy example. 'Cause she's the muse and the artist. (This is how we do) So you wanna play with magic. So just be sure before you give it all to me. I'm walking, I'm walking on air (tonight). Skip the talk, heard it all, time to walk the walk.</p>
    <h4 id="one">один</h4>
    <p>Placeholder content for the scrollspy example. Takes you miles high, so high, 'cause she’s got that one international smile. There's a stranger in my bed, there's a pounding in my head. Oh, no. In another life I would make you stay. ‘Cause I, I’m capable of anything. Suiting up for my crowning battle. Used to steal your parents' liquor and climb to the roof. Tone, tan fit and ready, turn it up cause its gettin' heavy. Her love is like a drug. I guess that I forgot I had a choice.</p>
    <h4 id="two">два</h4>
    <p>Placeholder content for the scrollspy example. It's time to bring out the big balloons. I'm walking, I'm walking on air (tonight). Yeah, we maxed our credit cards and got kicked out of the bar. Yo, shout out to all you kids, buying bottle service, with your rent money. I'm ma get your heart racing in my skin-tight jeans. If you get the chance you better keep her. Yo, shout out to all you kids, buying bottle service, with your rent money.</p>
    <h4 id="three">три</h4>
    <p>Placeholder content for the scrollspy example. If you wanna dance, if you want it all, you know that I'm the girl that you should call. Walk through the storm I would. So let me get you in your birthday suit. The one that got away. Last Friday night, yeah I think we broke the law, always say we're gonna stop. 'Cause she's a little bit of Yoko, And she's a little bit of 'Oh no'. I want the jaw droppin', eye poppin', head turnin', body shockin'. Yeah, we maxed our credit cards and got kicked out of the bar.</p>
    <p>And some more placeholder content, for good measure.</p>
  </div>
</div>

```html
<nav id="navbar-example2" class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">Панель навигации</a>
  <ul class="nav nav-pills">
    <li class="nav-item">
      <a class="nav-link" href="#fat">@fat</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#mdo">@mdo</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Выпадающий список</a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#one">один</a>
        <a class="dropdown-item" href="#two">два</a>
        <div role="separator" class="dropdown-divider"></div>
        <a class="dropdown-item" href="#three">три</a>
      </div>
    </li>
  </ul>
</nav>
<div data-spy="scroll" data-target="#navbar-example2" data-offset="0">
  <h4 id="fat">@fat</h4>
  <p>...</p>
  <h4 id="mdo">@mdo</h4>
  <p>...</p>
  <h4 id="one">один</h4>
  <p>...</p>
  <h4 id="two">два</h4>
  <p>...</p>
  <h4 id="three">три</h4>
  <p>...</p>
</div>
```

## Пример с вложенной навигацией

Слежение прокрутки также работает с вложенными `.nav`. Если вложенный `.nav` имеет значение `.active`, его родители также будут `.active`. Прокрутите область рядом с панелью навигации и посмотрите, как меняется активный класс.

<div class="bd-example">
  <div class="row">
    <div class="col-4">
      <nav id="navbar-example3" class="navbar navbar-light bg-light flex-column">
        <a class="navbar-brand" href="#">Панель навигации</a>
        <nav class="nav nav-pills flex-column">
          <a class="nav-link" href="#item-1">Элемент 1</a>
          <nav class="nav nav-pills flex-column">
            <a class="nav-link ml-3 my-1" href="#item-1-1">Элемент 1-1</a>
            <a class="nav-link ml-3 my-1" href="#item-1-2">Элемент 1-2</a>
          </nav>
          <a class="nav-link" href="#item-2">Элемент 2</a>
          <a class="nav-link" href="#item-3">Элемент 3</a>
          <nav class="nav nav-pills flex-column">
            <a class="nav-link ml-3 my-1" href="#item-3-1">Элемент 3-1</a>
            <a class="nav-link ml-3 my-1" href="#item-3-2">Элемент 3-2</a>
          </nav>
        </nav>
      </nav>
    </div>
    <div class="col-8">
      <div data-spy="scroll" data-target="#navbar-example3" data-offset="0" class="scrollspy-example-2">
        <h4 id="item-1">Элемент 1</h4>
        <p>Placeholder content for the scrollspy example. This one relates to item 1. Takes you miles high, so high, 'cause she’s got that one international smile. There's a stranger in my bed, there's a pounding in my head. Oh, no. In another life I would make you stay. ‘Cause I, I’m capable of anything. Suiting up for my crowning battle. Used to steal your parents' liquor and climb to the roof. Tone, tan fit and ready, turn it up cause its gettin' heavy. Her love is like a drug. I guess that I forgot I had a choice.</p>
        <h5 id="item-1-1">Элемент 1-1</h5>
        <p>Placeholder content for the scrollspy example. This one relates to the item 1-1. You got the finest architecture. Passport stamps, she's cosmopolitan. Fine, fresh, fierce, we got it on lock. Never planned that one day I'd be losing you. She eats your heart out. Your kiss is cosmic, every move is magic. I mean the ones, I mean like she's the one. Greetings loved ones let's take a journey. Just own the night like the 4th of July! But you'd rather get wasted.</p>
        <h5 id="item-1-2">Элемент 1-2</h5>
        <p>Placeholder content for the scrollspy example. This one relates to the item 1-2. Her love is like a drug. All my girls vintage Chanel baby. Got a motel and built a fort out of sheets. 'Cause she's the muse and the artist. (This is how we do) So you wanna play with magic. So just be sure before you give it all to me. I'm walking, I'm walking on air (tonight). Skip the talk, heard it all, time to walk the walk. Catch her if you can. Stinging like a bee I earned my stripes.</p>
        <h4 id="item-2">Элемент 2</h4>
        <p>Placeholder content for the scrollspy example. This one relates to item 2. Don't need apologies. There is no fear now, let go and just be free, I will love you unconditionally. Last Friday night. Don't be a shy kinda guy I'll bet it's beautiful. Summer after high school when we first met. 'Cause she's the muse and the artist. What? Wait. No, no, no, no. Thought that I was the exception.</p>
        <h4 id="item-3">Элемент 3</h4>
        <p>Placeholder content for the scrollspy example. This one relates to item 3. Word on the street, you got somethin' to show me, me. All this money can't buy me a time machine. Make it like your birthday everyday. So we hit the boulevard. You make me feel like I'm livin' a teenage dream, the way you turn me on Skip the talk, heard it all, time to walk the walk. Word on the street, you got somethin' to show me, me. It's no big deal, it's no big deal, it's no big deal.</p>
        <h5 id="item-3-1">Элемент 3-1</h5>
        <p>Placeholder content for the scrollspy example. This one relates to item 3-1. Baby do you dare to do this? This is no big deal. Yeah, you're lucky if you're on her plane. Just own the night like the 4th of July! Standing on the frontline when the bombs start to fall. So just be sure before you give it all to me.</p>
        <h5 id="item-3-2">Элемент 3-2</h5>
        <p>Placeholder content for the scrollspy example. This one relates to item 3-2. You're original, cannot be replaced. All night they're playing, your song. California girls we're undeniable. Like a bird without a cage. There is no fear now, let go and just be free, I will love you unconditionally. I can see the writing on the wall. You could travel the world but nothing comes close to the golden coast.</p>
      </div>
    </div>
  </div>
</div>

```html
<nav id="navbar-example3" class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">Панель навигации</a>
  <nav class="nav nav-pills flex-column">
    <a class="nav-link" href="#item-1">Элемент 1</a>
    <nav class="nav nav-pills flex-column">
      <a class="nav-link ml-3 my-1" href="#item-1-1">Элемент 1-1</a>
      <a class="nav-link ml-3 my-1" href="#item-1-2">Элемент 1-2</a>
    </nav>
    <a class="nav-link" href="#item-2">Элемент 2</a>
    <a class="nav-link" href="#item-3">Элемент 3</a>
    <nav class="nav nav-pills flex-column">
      <a class="nav-link ml-3 my-1" href="#item-3-1">Элемент 3-1</a>
      <a class="nav-link ml-3 my-1" href="#item-3-2">Элемент 3-2</a>
    </nav>
  </nav>
</nav>

<div data-spy="scroll" data-target="#navbar-example3" data-offset="0">
  <h4 id="item-1">Элемент 1</h4>
  <p>...</p>
  <h5 id="item-1-1">Элемент 1-1</h5>
  <p>...</p>
  <h5 id="item-1-2">Элемент 1-2</h5>
  <p>...</p>
  <h4 id="item-2">Элемент 2</h4>
  <p>...</p>
  <h4 id="item-3">Элемент 3</h4>
  <p>...</p>
  <h5 id="item-3-1">Элемент 3-1</h5>
  <p>...</p>
  <h5 id="item-3-2">Элемент 3-2</h5>
  <p>...</p>
</div>
```

## Пример со списком-группой

Отслеживание прокрутки также работает с `.list-group`. Прокрутите область рядом с группой списка и посмотрите, как меняется активный класс.

<div class="bd-example">
  <div class="row">
    <div class="col-4">
      <div id="list-example" class="list-group">
        <a class="list-group-item list-group-item-action" href="#list-item-1">Элемент 1</a>
        <a class="list-group-item list-group-item-action" href="#list-item-2">Элемент 2</a>
        <a class="list-group-item list-group-item-action" href="#list-item-3">Элемент 3</a>
        <a class="list-group-item list-group-item-action" href="#list-item-4">Элемент 4</a>
      </div>
    </div>
    <div class="col-8">
      <div data-spy="scroll" data-target="#list-example" data-offset="0" class="scrollspy-example">
        <h4 id="list-item-1">Элемент 1</h4>
        <p>Placeholder content for the scrollspy list-group example. This one relates to item 1. Don't need apologies. There is no fear now, let go and just be free, I will love you unconditionally. Last Friday night. Don't be a shy kinda guy I'll bet it's beautiful. Summer after high school when we first met. 'Cause she's the muse and the artist. What? Wait. Thought that I was the exception.</p>
        <h4 id="list-item-2">Элемент 2</h4>
        <p>Placeholder content for the scrollspy list-group example. This one relates to item 2. Yeah, she dances to her own beat. Oh, no. You could've been the greatest. 'Cause, baby, you're a firework. Maybe a reason why all the doors are closed. Open up your heart and just let it begin. So très chic, yeah, she's a classic.</p>
        <h4 id="list-item-3">Элемент 3</h4>
        <p>Placeholder content for the scrollspy list-group example. This one relates to item 3. We go higher and higher. Never one without the other, we made a pact. I'm walking on air. Someone said you had your tattoo removed. Now I’m floating like a butterfly. Tone, tan fit and ready, turn it up cause its gettin' heavy. Cause once you’re mine, once you’re mine. You just gotta ignite the light and let it shine! So we hit the boulevard. Do you ever feel, feel so paper thin. I see it all, I see it now.</p>
        <h4 id="list-item-4">Элемент 4</h4>
        <p>Placeholder content for the scrollspy list-group example. This one relates to item 4. Summer after high school when we first met. There is no fear now, let go and just be free, I will love you unconditionally. Sun-kissed skin so hot we'll melt your popsicle. This love will make you levitate.</p>
      </div>
    </div>
  </div>
</div>

```html
<div id="list-example" class="list-group">
  <a class="list-group-item list-group-item-action" href="#list-item-1">Элемент 1</a>
  <a class="list-group-item list-group-item-action" href="#list-item-2">Элемент 2</a>
  <a class="list-group-item list-group-item-action" href="#list-item-3">Элемент 3</a>
  <a class="list-group-item list-group-item-action" href="#list-item-4">Элемент 4</a>
</div>
<div data-spy="scroll" data-target="#list-example" data-offset="0" class="scrollspy-example">
  <h4 id="list-item-1">Элемент 1</h4>
  <p>...</p>
  <h4 id="list-item-2">Элемент 2</h4>
  <p>...</p>
  <h4 id="list-item-3">Элемент 3</h4>
  <p>...</p>
  <h4 id="list-item-4">Элемент 4</h4>
  <p>...</p>
</div>
```

## Применение

### Через атрибуты данных

Чтобы легко добавить поведение прокрутки к вашей навигации на верхней панели, добавьте `data-spy="scroll"` к элементу, за которым Вы хотите следить (чаще всего это `<body>`). Затем добавьте атрибут `data-target` с идентификатором или классом родительского элемента любого компонента Bootstrap `.nav`.

```css
body {
  position: relative;
}
```

```html
<body data-spy="scroll" data-target="#navbar-example">
  ...
  <div id="navbar-example">
    <ul class="nav nav-tabs" role="tablist">
      ...
    </ul>
  </div>
  ...
</body>
```

### Через JavaScript

После добавления `position: relative;` в Ваш CSS вызовите scrollspy через JavaScript:

```js
$('body').scrollspy({ target: '#navbar-example' })
```

{{< callout danger >}}
#### Требуются разрешимые целевые идентификаторы

Ссылки на навигационную панель должны иметь разрешаемые идентификаторы. Например, `<a href="#home">Главная</a>` должен соответствовать чему-то в DOM, например, `<div id="home"></div>`.
{{< /callout >}}

{{< callout info >}}
#### Целевые элементы без `:visible` игнорируются

Целевые элементы, которые не являются [`:visible` согласно jQuery](https://api.jquery.com/visible-selector/), будут игнорироваться, а соответствующие им элементы навигации никогда не будут выделены.
{{< /callout >}}

### Методы

#### `.scrollspy('refresh')`

При использовании отслеживания прокрутки в сочетании с добавлением или удалением элементов из DOM Вам необходимо вызвать метод обновления следующим образом:

```js
$('[data-spy="scroll"]').each(function () {
  var $spy = $(this).scrollspy('refresh')
})
```

#### `.scrollspy('dispose')`

Уничтожает элемент слежение за прокруткой.

### Параметры

Параметры могут передаваться через атрибуты данных или JavaScript. Для атрибутов данных добавьте имя параметра к `data-`, как в `data-offset=""`.

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="width: 100px;">Название</th>
      <th style="width: 100px;">Тип</th>
      <th style="width: 50px;">По умолчанию</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>offset</td>
      <td>number</td>
      <td>10</td>
      <td>Пиксели для смещения сверху при вычислении положения прокрутки.</td>
    </tr>
    <tr>
      <td>method</td>
      <td>string</td>
      <td>auto</td>
      <td>Находит, в каком разделе находится отслеживаемый элемент. <code>auto</code> выберет лучший метод для получения координат прокрутки. <code>offset</code> будет использовать метод смещения jQuery для получения координат прокрутки. <code>position</code> будет использовать метод позиции jQuery для получения координат прокрутки.</td>
    </tr>
    <tr>
      <td>target</td>
      <td>string | jQuery object | DOM element</td>
      <td></td>
      <td>Определяет элемент для применения подключаемого модуля Scrollspy.</td>
    </tr>
  </tbody>
</table>

### Events

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th style="width: 150px;">Тип события</th>
      <th>Описание</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>activate.bs.scrollspy</td>
      <td>Это событие запускается в элементе прокрутки всякий раз, когда новый элемент активируется scrollspy.</td>
    </tr>
  </tbody>
</table>

```js
$('[data-spy="scroll"]').on('activate.bs.scrollspy', function () {
  // сделайте что-нибудь...
})
```
