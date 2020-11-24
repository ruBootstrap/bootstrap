---
layout: docs
title: Пагинация
description: Документация и примеры для отображения разбивки на страницы, чтобы указать, что на нескольких страницах существует серия связанного контента.
group: components
toc: true
---

## Обзор

Мы используем большой блок связанных ссылок для нашей нумерации страниц, что делает ссылки труднодоступными и легко масштабируемыми, обеспечивая при этом большие области попадания. Разбивка на страницы построена с помощью элементов списка HTML, поэтому программы чтения с экрана могут объявлять количество доступных ссылок. Используйте оборачивающий элемент `<nav>`, чтобы идентифицировать его как раздел навигации для программ чтения с экрана и других вспомогательных технологий.

Кроме того, поскольку страницы, вероятно, имеют более одного такого раздела навигации, рекомендуется предоставить описательный `aria-label` для `<nav>`, чтобы отразить его назначение. Например, если компонент разбивки на страницы используется для навигации между набором результатов поиска, подходящей меткой может быть `aria-label="Страницы результатов поиска"`.

{{< example >}}
<nav aria-label="Пример навигации по страницам">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Предыдущая</a></li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">Следующая</a></li>
  </ul>
</nav>
{{< /example >}}

## Работа с иконками

Хотите использовать значок или символ вместо текста для некоторых ссылок на страницы? Убедитесь, что Вы обеспечили надлежащую поддержку программы чтения с экрана с атрибутами `aria`.

{{< example >}}
<nav aria-label="Пример навигации по страницам">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Предыдущая">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Следующая">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
{{< /example >}}

## Отключенное и активное состояния

Ссылки пагинации настраиваются для разных обстоятельств. Используйте `.disabled` для ссылок, которые кажутся неактивными, и `.active` для обозначения текущей страницы.

В то время как класс `.disabled` использует `pointer-events: none` для _попытки_, чтобы отключить функциональность ссылок тега `<a>`, это свойство CSS еще не стандартизировано и не учитывает навигацию с клавиатуры. Таким образом, Вы всегда должны добавлять `tabindex="-1"` для отключенных ссылок и использовать собственный JavaScript для полного отключения их функций.

{{< example >}}
<nav aria-label="...">
  <ul class="pagination">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Предыдущая</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item active" aria-current="page">
      <a class="page-link" href="#">2</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Следующая</a>
    </li>
  </ul>
</nav>
{{< /example >}}

Вы можете по желанию заменить активные или отключенные привязки на `<span>` или опустить привязку в случае стрелок предыдущая/следующая, чтобы удалить функциональность клика и предотвратить фокусировку клавиатуры при сохранении заданных стилей.

{{< example >}}
<nav aria-label="...">
  <ul class="pagination">
    <li class="page-item disabled">
      <span class="page-link">Предыдущая</span>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item active" aria-current="page">
      <span class="page-link">2</span>
    </li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Следующая</a>
    </li>
  </ul>
</nav>
{{< /example >}}

## Размеры

Хотите больше или меньше нумерации страниц? Добавьте `.pagination-lg` или `.pagination-sm` для дополнительных размеров.

{{< example >}}
<nav aria-label="...">
  <ul class="pagination pagination-lg">
    <li class="page-item active" aria-current="page">
      <span class="page-link">1</span>
    </li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
  </ul>
</nav>
{{< /example >}}

{{< example >}}
<nav aria-label="...">
  <ul class="pagination pagination-sm">
    <li class="page-item active" aria-current="page">
      <span class="page-link">1</span>
    </li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
  </ul>
</nav>
{{< /example >}}

## Выравнивание

Измените выравнивание компонентов разбивки на страницы с помощью [утилит flexbox]({{< docsref "/utilities/flex" >}}).

{{< example >}}
<nav aria-label="Пример навигации по страницам">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Предыдущая</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Следующая</a>
    </li>
  </ul>
</nav>
{{< /example >}}

{{< example >}}
<nav aria-label="Пример навигации по страницам">
  <ul class="pagination justify-content-end">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Предыдущая</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Следующая</a>
    </li>
  </ul>
</nav>
{{< /example >}}
