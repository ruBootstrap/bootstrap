---
layout: docs
title: Проверка
description: Предоставляйте пользователям ценные и полезные отзывы с помощью проверки формы HTML5, поведения браузера по умолчанию или пользовательских стилей и JavaScript.
group: forms
toc: true
extra_js:
  - src: "/docs/5.0/assets/js/validate-forms.js"
    async: true
---

{{< callout warning >}}
Нам известно, что в настоящее время пользовательские стили проверки и всплывающие подсказки на стороне клиента недоступны, поскольку они не доступны для вспомогательных технологий. Пока мы работаем над решением, мы рекомендуем либо использовать вариант на стороне сервера, либо метод проверки браузера по умолчанию.
{{< /callout >}}

## Как это устроено

Вот как проверка формы работает с Bootstrap:

- Проверка HTML-формы применяется через два псевдокласса CSS, `:invalid` и `:valid`. Это применимо к элементам `<input>`, `<select>` и `<textarea>`.
- Bootstrap переносит стили `:invalid` и `:valid` в родительский класс `.was-validated`, обычно применяемый к `<form>`. В противном случае любое обязательное поле без значения будет отображаться как недопустимое при загрузке страницы. Таким образом, Вы можете выбрать, когда их активировать (обычно после попытки отправки формы).
- Чтобы сбросить внешний вид формы (например, в случае отправки динамической формы с использованием AJAX), удалите класс `.was-validated` из `<form>` снова после отправки.
- Вместо псевдоклассов для [проверки на стороне сервера](#на-стороне-сервера), могут использоваться классы `.is-invalid` и `.is-valid`. Им не нужен родительский класс `.was-validated`.
- Из-за ограничений в том, как работает CSS, мы не можем (в настоящее время) применять стили `<label>`, который находится перед элементом управления формой в DOM без помощи пользовательского JavaScript.
- Все современные браузеры поддерживают [API проверки ограничений](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#the-constraint-validation-api), серию методов JavaScript для проверки элементов управления формы.
- В сообщениях обратной связи могут использоваться [параметры браузера по умолчанию](#настройки-браузера-по-умолчанию) (разные для каждого браузера и нестандартные с помощью CSS) или наши пользовательские стили обратной связи с дополнительным HTML и CSS.
- Вы можете предоставлять настраиваемые сообщения о действительности с помощью `setCustomValidity` в JavaScript.

Имея это в виду, рассмотрим следующие демонстрации наших пользовательских стилей проверки формы, необязательных серверных классов и настроек браузера по умолчанию.

## Пользовательские стили

Для настраиваемых сообщений проверки формы Bootstrap Вам необходимо добавить логический атрибут `novalidate` к Вашему `<form>`. Это отключает всплывающие подсказки обратной связи браузера по умолчанию, но по-прежнему обеспечивает доступ к API проверки формы в JavaScript. Попробуйте отправить форму ниже; наш JavaScript перехватит кнопку отправки и передаст Вам ответную реакцию. При попытке отправить Вы увидите стили: `:invalid` и `:valid`, примененные к элементам управления Вашей формы.

В пользовательских стилях обратной связи применяются пользовательские цвета, границы, стили фокуса и фоновые значки, чтобы лучше передавать обратную связь. Фоновые иконки для `<select>` доступны только с `.form-select`, но не с `.form-control`.

{{< example >}}
<form class="row g-3 needs-validation" novalidate>
  <div class="col-md-4">
    <label for="validationCustom01" class="form-label">Имя</label>
    <input type="text" class="form-control" id="validationCustom01" value="Иван" required>
    <div class="valid-feedback">
      Все хорошо!
    </div>
  </div>
  <div class="col-md-4">
    <label for="validationCustom02" class="form-label">Фамилия</label>
    <input type="text" class="form-control" id="validationCustom02" value="Петров" required>
    <div class="valid-feedback">
      Все хорошо!
    </div>
  </div>
  <div class="col-md-4">
    <label for="validationCustomUsername" class="form-label">Имя пользователя</label>
    <div class="input-group">
      <span class="input-group-text" id="inputGroupPrepend">@</span>
      <input type="text" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required>
      <div class="invalid-feedback">
        Пожалуйста, выберите имя пользователя.
      </div>
    </div>
  </div>
  <div class="col-md-6">
    <label for="validationCustom03" class="form-label">Город</label>
    <input type="text" class="form-control" id="validationCustom03" required>
    <div class="invalid-feedback">
      Укажите действующий город.
    </div>
  </div>
  <div class="col-md-3">
    <label for="validationCustom04" class="form-label">Область</label>
    <select class="form-select" id="validationCustom04" required>
      <option selected disabled value="">Выберите...</option>
      <option>...</option>
    </select>
    <div class="invalid-feedback">
      Пожалуйста, выберите корректный город.
    </div>
  </div>
  <div class="col-md-3">
    <label for="validationCustom05" class="form-label">Индекс</label>
    <input type="text" class="form-control" id="validationCustom05" required>
    <div class="invalid-feedback">
      Пожалуйста, предоставьте действующий почтовый индекс.
    </div>
  </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
      <label class="form-check-label" for="invalidCheck">
        Примите условия и соглашения
      </label>
      <div class="invalid-feedback">
        Вы должны принять перед отправкой.
      </div>
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-primary" type="submit">Отправить форму</button>
  </div>
</form>
{{< /example >}}

{{< example lang="js" show_preview="false" >}}
{{< js.inline >}}
{{- readFile (printf "site/static/docs/%s/assets/js/validate-forms.js" .Site.Params.docs_version) -}}
{{< /js.inline >}}
{{< /example >}}

## Настройки браузера по умолчанию

Не заинтересованы в пользовательских сообщениях обратной связи для проверки или написании JavaScript для изменения поведения формы? Все хорошо, Вы можете использовать настройки браузера по умолчанию. Попробуйте заполнить форму ниже. В зависимости от Вашего браузера и ОС Вы увидите немного другой стиль обратной связи.

Хотя эти стили обратной связи нельзя стилизовать с помощью CSS, Вы все равно можете настроить текст отзыва с помощью JavaScript.

{{< example >}}
<form class="row g-3">
  <div class="col-md-4">
    <label for="validationDefault01" class="form-label">Имя</label>
    <input type="text" class="form-control" id="validationDefault01" value="Иван" required>
  </div>
  <div class="col-md-4">
    <label for="validationDefault02" class="form-label">Фамилия</label>
    <input type="text" class="form-control" id="validationDefault02" value="Петров" required>
  </div>
  <div class="col-md-4">
    <label for="validationDefaultUsername" class="form-label">Имя пользователя</label>
    <div class="input-group">
      <span class="input-group-text" id="inputGroupPrepend2">@</span>
      <input type="text" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required>
    </div>
  </div>
  <div class="col-md-6">
    <label for="validationDefault03" class="form-label">Город</label>
    <input type="text" class="form-control" id="validationDefault03" required>
  </div>
  <div class="col-md-3">
    <label for="validationDefault04" class="form-label">Область</label>
    <select class="form-select" id="validationDefault04" required>
      <option selected disabled value="">Выберите...</option>
      <option>...</option>
    </select>
  </div>
  <div class="col-md-3">
    <label for="validationDefault05" class="form-label">Индекс</label>
    <input type="text" class="form-control" id="validationDefault05" required>
  </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
      <label class="form-check-label" for="invalidCheck2">
        Примите условия и соглашения
      </label>
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-primary" type="submit">Отправить форму</button>
  </div>
</form>
{{< /example >}}

## На стороне сервера

Мы рекомендуем использовать проверку на стороне клиента, но если Вам требуется проверка на стороне сервера, Вы можете указать недопустимые и допустимые поля формы с помощью `.is-invalid` и `.is-valid`. Обратите внимание, что эти классы также поддерживают `.invalid-feedback`.

Для недопустимых полей убедитесь, что недопустимая обратная связь/сообщение об ошибке связано с соответствующим полем формы с помощью `aria-describedby` (отмечая, что этот атрибут позволяет ссылаться на более чем один `id`, в случае если поле уже указывает на дополнительную форму текст).

Чтобы исправить [проблемы с радиусами границ](https://github.com/twbs/bootstrap/issues/25110), для групп ввода требуется дополнительный класс `.has-validation`.

{{< example >}}
<form class="row g-3">
  <div class="col-md-4">
    <label for="validationServer01" class="form-label">Имя</label>
    <input type="text" class="form-control is-valid" id="validationServer01" value="Иван" required>
    <div class="valid-feedback">
      Все хорошо!
    </div>
  </div>
  <div class="col-md-4">
    <label for="validationServer02" class="form-label">Фамилия</label>
    <input type="text" class="form-control is-valid" id="validationServer02" value="Петров" required>
    <div class="valid-feedback">
      Все хорошо!
    </div>
  </div>
  <div class="col-md-4">
    <label for="validationServerUsername" class="form-label">Имя пользователя</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="inputGroupPrepend3">@</span>
      <input type="text" class="form-control is-invalid" id="validationServerUsername" aria-describedby="inputGroupPrepend3 validationServerUsernameFeedback" required>
      <div id="validationServerUsernameFeedback" class="invalid-feedback">
        Пожалуйста, выберите имя пользователя.
      </div>
    </div>
  </div>
  <div class="col-md-6">
    <label for="validationServer03" class="form-label">Город</label>
    <input type="text" class="form-control is-invalid" id="validationServer03" aria-describedby="validationServer03Feedback" required>
    <div id="validationServer03Feedback" class="invalid-feedback">
      Укажите действующий город.
    </div>
  </div>
  <div class="col-md-3">
    <label for="validationServer04" class="form-label">Область</label>
    <select class="form-select is-invalid" id="validationServer04" aria-describedby="validationServer04Feedback" required>
      <option selected disabled value="">Выберите...</option>
      <option>...</option>
    </select>
    <div id="validationServer04Feedback" class="invalid-feedback">
      Пожалуйста, выберите корректный город.
    </div>
  </div>
  <div class="col-md-3">
    <label for="validationServer05" class="form-label">Индекс</label>
    <input type="text" class="form-control is-invalid" id="validationServer05" aria-describedby="validationServer05Feedback" required>
    <div id="validationServer05Feedback" class="invalid-feedback">
      Пожалуйста, предоставьте действующий почтовый индекс.
    </div>
  </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" aria-describedby="invalidCheck3Feedback" required>
      <label class="form-check-label" for="invalidCheck3">
        Примите условия и соглашения
      </label>
      <div id="invalidCheck3Feedback" class="invalid-feedback">
        Вы должны принять перед отправкой.
      </div>
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-primary" type="submit">Отправить форму</button>
  </div>
</form>
{{< /example >}}

## Поддерживаемые элементы

Проверка стилей доступна для следующих элементов управления и компонентов формы:

- `<input>` и `<textarea>` с `.form-control` (включая `.form-control` в группе ввода)
- `<select>` с `.form-select`
- `.form-check`

{{< example >}}
<form class="was-validated">
  <div class="mb-3">
    <label for="validationTextarea" class="form-label">Текстовое поле</label>
    <textarea class="form-control is-invalid" id="validationTextarea" placeholder="Обязательный пример текстового поля" required></textarea>
    <div class="invalid-feedback">
      Пожалуйста, введите сообщение в текстовое поле.
    </div>
  </div>

  <div class="form-check mb-3">
    <input type="checkbox" class="form-check-input" id="validationFormCheck1" required>
    <label class="form-check-label" for="validationFormCheck1">Отметьте этот флажок</label>
    <div class="invalid-feedback">Пример неверного текста обратной связи</div>
  </div>

  <div class="form-check">
    <input type="radio" class="form-check-input" id="validationFormCheck2" name="radio-stacked" required>
    <label class="form-check-label" for="validationFormCheck2">Переключить это радио</label>
  </div>
  <div class="form-check mb-3">
    <input type="radio" class="form-check-input" id="validationFormCheck3" name="radio-stacked" required>
    <label class="form-check-label" for="validationFormCheck3">Или переключить это другое радио</label>
    <div class="invalid-feedback">Еще пример неверного текста обратной связи</div>
  </div>

  <div class="mb-3">
    <select class="form-select" required aria-label="select example">
      <option value="">Откройте это меню выбора</option>
      <option value="1">Один</option>
      <option value="2">Два</option>
      <option value="3">Три</option>
    </select>
    <div class="invalid-feedback">Пример обратной связи неверного выбора </div>
  </div>

  <div class="mb-3">
    <input type="file" class="form-control" aria-label="file example" required>
    <div class="invalid-feedback">Пример обратной связи неверной формы выбора файла</div>
  </div>

  <div class="mb-3">
    <button class="btn btn-primary" type="submit" disabled>Отправить форму</button>
  </div>
</form>
{{< /example >}}

## Всплывающие подсказки

Если Ваш макет формы позволяет это, Вы можете заменить классы `.{valid|invalid}-feedback` на классы `.{valid|invalid}-tooltip` , чтобы отображать отзывы о проверке в стилизованной всплывающей подсказке. Убедитесь, что у Вас есть родительский элемент с `position: relative` для позиционирования всплывающей подсказки. В приведенном ниже примере у наших классов столбцов это уже есть, но для Вашего проекта может потребоваться альтернативная настройка.

{{< example >}}
<form class="row g-3 needs-validation" novalidate>
  <div class="col-md-4 position-relative">
    <label for="validationTooltip01" class="form-label">Имя</label>
    <input type="text" class="form-control" id="validationTooltip01" value="Иван" required>
    <div class="valid-tooltip">
      Все хорошо!
    </div>
  </div>
  <div class="col-md-4 position-relative">
    <label for="validationTooltip02" class="form-label">Фамилия</label>
    <input type="text" class="form-control" id="validationTooltip02" value="Петров" required>
    <div class="valid-tooltip">
      Все хорошо!
    </div>
  </div>
  <div class="col-md-4 position-relative">
    <label for="validationTooltipUsername" class="form-label">Имя пользователя</label>
    <div class="input-group has-validation">
      <span class="input-group-text" id="validationTooltipUsernamePrepend">@</span>
      <input type="text" class="form-control" id="validationTooltipUsername" aria-describedby="validationTooltipUsernamePrepend" required>
      <div class="invalid-tooltip">
        Пожалуйста, выберите уникальное и действительное имя пользователя.
      </div>
    </div>
  </div>
  <div class="col-md-6 position-relative">
    <label for="validationTooltip03" class="form-label">Город</label>
    <input type="text" class="form-control" id="validationTooltip03" required>
    <div class="invalid-tooltip">
      Укажите действующий город.
    </div>
  </div>
  <div class="col-md-3 position-relative">
    <label for="validationTooltip04" class="form-label">Область</label>
    <select class="form-select" id="validationTooltip04" required>
      <option selected disabled value="">Выберите...</option>
      <option>...</option>
    </select>
    <div class="invalid-tooltip">
      Пожалуйста, выберите корректный город.
    </div>
  </div>
  <div class="col-md-3 position-relative">
    <label for="validationTooltip05" class="form-label">Индекс</label>
    <input type="text" class="form-control" id="validationTooltip05" required>
    <div class="invalid-tooltip">
      Пожалуйста, предоставьте действующий почтовый индекс.
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-primary" type="submit">Отправить форму</button>
  </div>
</form>
{{< /example >}}

## Настройка

Состояния проверки можно настроить через Sass с помощью карты `$form-validation-states`. Эта карта Sass, расположенная в нашем файле `_variables.scss`, зацикливается для генерации состояний валидации по умолчанию `valid`/`invalid`. Включена вложенная карта для настройки цвета и значка каждого состояния. Хотя браузеры не поддерживают никакие другие состояния, те, кто использует настраиваемые стили, могут легко добавить более сложную обратную связь с формой.

Обратите внимание, что мы не рекомендуем настраивать эти значения без изменения миксина `form-validation-state`.

Это карта Sass из `_variables.scss`. Переопределите это и перекомпилируйте свой Sass для генерации различных состояний:

{{< scss-docs name="form-validation-states" file="scss/_variables.scss" >}}

Это цикл из файла `forms/_validation.scss`. Любые изменения в приведенной выше карте Sass будут отражены в Вашем скомпилированном CSS через этот цикл:

{{< scss-docs name="form-validation-states-loop" file="scss/forms/_validation.scss" >}}
