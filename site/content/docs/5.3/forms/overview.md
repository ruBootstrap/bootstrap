---
layout: docs
title: Формы
description: Примеры и рекомендации по использованию стилей управления формами, параметров макета и настраиваемых компонентов для создания самых разных форм.
group: forms
toc: true
aliases: "/docs/5.3/forms/"
sections:
  - title: Управление формой
    description: Стилизуйте текстовые поля ввода (input) и текстовые поля (textarea) с поддержкой нескольких состояний.
    slug: form-control
  - title: Элемент выбора
    description: Улучшите элементы выбора (select) браузера по умолчанию с помощью настраиваемого начального внешнего вида.
    slug: select
  - title: Переключатели и флажки
    description: Используйте наши настраиваемые переключатели (radio buttons) и флажки (checkboxes) в формах для выбора параметров ввода.
    slug: checks-radios
  - title: Диапазон
    description: Замените входные данные диапазона браузера по умолчанию нашей собственной версией.
    slug: range
  - title: Группа полей ввода
    description: Прикрепляйте метки и кнопки к своим входам для увеличения семантической ценности.
    slug: input-group
  - title: Плавающие метки
    description: Создавайте красиво простые метки формы, которые плавают над полями ввода.
    slug: floating-labels
  - title: Макет
    description: Создавайте встроенные, горизонтальные или сложные макеты на основе сетки с Вашими формами.
    slug: layout
  - title: Валидация
    description: Проверяйте свои формы с помощью настраиваемых или встроенных методов и стилей проверки.
    slug: validation
---

## Обзор

Элементы управления формой Bootstrap расширяются на [наши стили перезагруженных форм]({{< docsref "/content/reboot#forms" >}}) с помощью классов. Используйте эти классы, чтобы выбрать их индивидуальные дисплеи для более согласованного рендеринга в браузерах и на разных устройствах.

Обязательно используйте соответствующий атрибут `type` для всех полей ввода (например, `email` для адреса электронной почты или `number` для числовой информации) чтобы воспользоваться преимуществами новых элементов управления вводом, таких как проверка электронной почты, выбор номера и т.д.

Вот быстрый пример, демонстрирующий стили формы Bootstrap. Продолжайте читать, чтобы узнать о необходимых классах, макете формы и многом другом.

{{< example >}}
<form>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Адрес электронной почты</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">Мы никогда никому не передадим вашу электронную почту.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Пароль</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Проверить меня</label>
  </div>
  <button type="submit" class="btn btn-primary">Отправить</button>
</form>
{{< /example >}}

## Отключенные формы

Добавьте логический атрибут `disabled` для ввода, чтобы предотвратить взаимодействие с пользователем и сделать его более светлым.

```html
<input class="form-control" id="disabledInput" type="text" placeholder="Здесь отключен ввод..." disabled>
```

Добавьте атрибут `disabled` к `<fieldset>`, чтобы отключить все элементы управления внутри. Браузеры обрабатывают все элементы управления собственными формами (элементы `<input>`, `<select>` и `<button>`) внутри `<fieldset disabled>` как отключенные, предотвращая взаимодействие с ними как с клавиатуры, так и с помощью мыши.

Однако, если Ваша форма также включает пользовательские элементы, похожие на кнопки, такие как `<a class="btn btn-*">...</a>`, им будет присвоен стиль только `pointer-events: none`, что означает, что они по-прежнему могут фокусироваться и управляться с помощью клавиатуры. В этом случае Вы должны вручную изменить эти элементы управления, добавив `tabindex="-1"`, чтобы они не получали фокус, и `aria-disabled="disabled"`, чтобы сигнализировать о своем состоянии вспомогательным технологиям.

{{< example >}}
<form>
  <fieldset disabled>
    <legend>Пример отключенного набора полей</legend>
    <div class="mb-3">
      <label for="disabledTextInput" class="form-label">Отключенное поле ввода</label>
      <input type="text" id="disabledTextInput" class="form-control" placeholder="Отключенное поле ввода">
    </div>
    <div class="mb-3">
      <label for="disabledSelect" class="form-label">Отключено меню выбора</label>
      <select id="disabledSelect" class="form-select">
        <option>Отключен элемент выбора</option>
      </select>
    </div>
    <div class="mb-3">
      <div class="form-check">
        <input class="form-check-input" type="checkbox" id="disabledFieldsetCheck" disabled>
        <label class="form-check-label" for="disabledFieldsetCheck">
          Не могут это проверить
        </label>
      </div>
    </div>
    <button type="submit" class="btn btn-primary">Отправить</button>
  </fieldset>
</form>
{{< /example >}}

## Доступность

Убедитесь, что у всех элементов управления формы есть подходящие доступные имена, чтобы их назначение можно было донести до пользователей вспомогательных технологий. Самый простой способ добиться этого - использовать элемент `<label>` или в случае кнопок - включить достаточно описательный текст как часть содержимого `<button>...</button>`.

В ситуациях, когда невозможно включить видимую метку `<label>` или соответствующее текстовое содержимое, есть альтернативные способы предоставления доступного имени, например:

- Элементы `<label>` скрыты с помощью класса `.visually-hidden`
- Указание на существующий элемент, который может действовать как метка, используя `aria-labelledby`
- Предоставление атрибута `title`
- Явная установка доступного имени для элемента с помощью `aria-label`

Если ни один из них не присутствует, вспомогательные технологии могут прибегнуть к использованию атрибута `placeholder` в качестве запасного варианта для доступного имени в элементах `<input>` и `<textarea>`. Примеры в этом разделе представляют несколько предлагаемых подходов для конкретных случаев.

Несмотря на то, что использование визуально скрытого содержимого (содержимое `.visually-hidden`, `aria-label` и даже `placeholder` , которое исчезает после того, как в поле формы появляется содержимое) принесет пользу пользователям вспомогательных технологий, отсутствие видимого текста метки все же может быть проблематично для некоторых пользователей. Как правило, лучше всего подходят видимые метки в той или иной форме как с точки зрения доступности, так и удобства использования.

## CSS

Многие переменные формы устанавливаются на общем уровне для повторного использования и расширения отдельными компонентами формы. Чаще всего Вы увидите их как переменные `$input-btn-**` и `$input-*`.

### Sass переменные

Переменные `$input-btn-**` являются общими глобальными переменными между нашими [кнопками]({{< docsref "/components/buttons" >}}) и нашими компонентами формы. Вы обнаружите, что они часто переназначаются как значения для других переменных, зависящих от компонента.

{{< scss-docs name="input-btn-variables" file="scss/_variables.scss" >}}
