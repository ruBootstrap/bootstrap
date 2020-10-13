---
layout: docs
title: Служебный API
description: Служебный API - это инструмент на основе Sass для создания служебных классов.
group: utilities
aliases: "/docs/5.0/utilities/"
toc: true
---

Утилиты начальной загрузки создаются с помощью служебного API, который можно использовать для изменения или расширения служебных классов Bootstrap. Если Вы не знаете, что такое карты Sass, Вы можете обратиться к [официальной документации](https://sass-lang.com/documentation/values/maps), чтобы начать работу.

Карта `$utilities` содержит все утилиты и позже объединяется с Вашей пользовательской картой `$utilities`, если она есть. Карта утилит содержит ключевой список групп утилит, которые принимают следующие параметры:

- `property`: Имя свойства, это может быть строка или массив строк (требуется, например, для горизонтальных отступов или полей).
- `responsive` _(необязательный)_: Логическое значение, указывающее, нужно ли создавать адаптивные классы. По умолчанию `false`.
- `rfs` _(необязательный)_: Переменная для изменения масштаба текучести. Взгляните на страницу [RFS]({{< docsref "/getting-started/rfs" >}}), чтобы узнать, как это работает. По умолчанию `false`.
- `class` _(необязательный)_: Переменная для изменения имени класса, если Вы не хотите, чтобы оно совпадало со свойством. Если Вы не предоставили ключ `class`, а ключ `property` представляет собой массив строк, имя класса будет первым элементом массива `property`.
- `values`: Это может быть список значений или карта, если Вы не хотите, чтобы имя класса совпадало со значением. Если в качестве ключа карты используется null, он не отображается.
- `print` _(необязательный)_: Логическое значение, указывающее, нужно ли создавать классы печати. По умолчанию `false`.


## Добавление утилит в служебный API

Все служебные переменные добавляются в переменную `$utilities`. Пользовательские группы утилит могут быть добавлены следующим образом:

```scss
$utilities: (
  "opacity": (
    property: opacity,
    values: (
      0: 0,
      25: .25,
      50: .5,
      75: .75,
      100: 1,
    )
  )
 );
```

На выходе:

```css
.opacity-0 {
  opacity: 0;
}
.opacity-25 {
  opacity: .25;
}
.opacity-50 {
  opacity: .5;
}
.opacity-75 {
  opacity: .75;
}
.opacity-100 {
  opacity: 1;
}
```


## Изменение префикса класса

С помощью опции `class` префикс класса может быть изменен:

```scss
$utilities: (
  "opacity": (
    property: opacity,
    class: o,
    values: (
      0: 0,
      25: .25,
      50: .5,
      75: .75,
      100: 1,
    )
  )
 );
```

На выходе:

```css
.o-0 {
  opacity: 0;
}
.o-25 {
  opacity: .25;
}
.o-50 {
  opacity: .5;
}
.o-75 {
  opacity: .75;
}
.o-100 {
  opacity: 1;
}
```

## Адаптивные утилиты

С помощью опции `responsive` можно сгенерировать отзывчивые служебные классы:

```scss
$utilities: (
  "opacity": (
    property: opacity,
    responsive: true,
    values: (
      0: 0,
      25: .25,
      50: .5,
      75: .75,
      100: 1,
    )
  )
 );
```

На выходе:

```css
.opacity-0 {
  opacity: 0;
}
.opacity-25 {
  opacity: .25;
}
.opacity-50 {
  opacity: .5;
}
.opacity-75 {
  opacity: .75;
}
.opacity-100 {
  opacity: 1;
}
@media (min-width: 576px) {
  .opacity-sm-0 {
    opacity: 0;
  }
  .opacity-sm-25 {
    opacity: .25;
  }
  .opacity-sm-50 {
    opacity: .5;
  }
  .opacity-sm-75 {
    opacity: .75;
  }
  .opacity-sm-100 {
    opacity: 1;
  }
}
@media (min-width: 768px) {
  .opacity-md-0 {
    opacity: 0;
  }
  .opacity-md-25 {
    opacity: .25;
  }
  .opacity-md-50 {
    opacity: .5;
  }
  .opacity-md-75 {
    opacity: .75;
  }
  .opacity-md-100 {
    opacity: 1;
  }
}
@media (min-width: 992px) {
  .opacity-lg-0 {
    opacity: 0;
  }
  .opacity-lg-25 {
    opacity: .25;
  }
  .opacity-lg-50 {
    opacity: .5;
  }
  .opacity-lg-75 {
    opacity: .75;
  }
  .opacity-lg-100 {
    opacity: 1;
  }
}
@media (min-width: 1200px) {
  .opacity-xl-0 {
    opacity: 0;
  }
  .opacity-xl-25 {
    opacity: .25;
  }
  .opacity-xl-50 {
    opacity: .5;
  }
  .opacity-xl-75 {
    opacity: .75;
  }
  .opacity-xl-100 {
    opacity: 1;
  }
}
```

## Замена утилит

Переопределить утилит отрезания можно с помощью того же ключа. Например, если Вы хотите более отзывчивое переполнение
утилит классов, которые Вы можете сделать:

```scss
$utilities: (
  "overflow": (
    responsive: true,
    property: overflow,
    values: visible hidden scroll auto,
  ),
);
```


## Утилиты для печати

Включение опции `print` **также** сгенерирует служебные классы для печати.

```scss
$utilities: (
  "opacity": (
    property: opacity,
    class: o,
    print: true,
    values: (
      0: 0,
      25: .25,
      50: .5,
      75: .75,
      100: 1,
    )
  )
 );
```

На выходе:

```css
.o-0 {
  opacity: 0;
}
.o-25 {
  opacity: .25;
}
.o-50 {
  opacity: .5;
}
.o-75 {
  opacity: .75;
}
.o-100 {
  opacity: 1;
}

@media print {
  .o-print-0 {
    opacity: 0;
  }
  .o-print-25 {
    opacity: .25;
  }
  .o-print-50 {
    opacity: .5;
  }
  .o-print-75 {
    opacity: .75;
  }
  .o-print-100 {
    opacity: 1;
  }
}
```

## Удаление утилит

Утилиты также можно удалить, изменив ключ группы на `null`:

```scss
$utilities: (
  "float": null,
);
```
