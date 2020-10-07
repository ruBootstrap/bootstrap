---
layout: docs
title: Файловый браузер
description: Используйте наши пользовательские входные файлы для согласованного кросс-браузерного стиля, встроенной настройки и облегченного JavaScript.
group: forms
toc: true
---

{{< callout info >}}
Рекомендуемый плагин для анимации пользовательского ввода файла [bs-custom-file-input](https://www.npmjs.com/package/bs-custom-file-input); это то, что мы используем в нашей документации.
{{< /callout >}}

## По умолчанию

Элемент выбора файла является самым сложным из всех и требует дополнительного JavaScript, если Вы хотите подключить их к функциональному *Выбрать файл...* и выбранному тексту имени файла.

{{< example >}}
<div class="form-file">
  <input type="file" class="form-file-input" id="customFile">
  <label class="form-file-label" for="customFile">
    <span class="form-file-text">Выбрать файл...</span>
    <span class="form-file-button">Обзор</span>
  </label>
</div>
{{< /example >}}

Добавьте атрибут `disabled` к `<input>`, и пользовательская разметка будет обновлена, чтобы отображаться как отключенная.

{{< example >}}
<div class="form-file">
  <input type="file" class="form-file-input" id="customFileDisabled" disabled>
  <label class="form-file-label" for="customFileDisabled">
    <span class="form-file-text">Выбрать файл...</span>
    <span class="form-file-button">Обзор</span>
  </label>
</div>
{{< /example >}}

Более длинный текст-заполнитель обрезается, а при недостатке места добавляется многоточие.

{{< example >}}
<div class="form-file">
  <input type="file" class="form-file-input" id="customFileLong">
  <label class="form-file-label" for="customFileLong">
    <span class="form-file-text">Lorem ipsum posuere consectetur est at lobortis nulla vitae elit libero a pharetra augue fusce dapibus tellus ac cursus commodo tortor mauris condimentum nibh ut fermentum massa justo sit amet risus cras mattis consectetur purus sit amet fermentum</span>
    <span class="form-file-button">Обзор</span>
  </label>
</div>
{{< /example >}}

Мы скрываем файл по умолчанию `<input>` через `opacity` и вместо этого стилизуем `<label>`, и объявляем `width` и `height` в `<input>` для правильного интервала для окружающего содержимого.

## Размеры

Вы также можете выбирать между маленькими и большими входными файлами, чтобы соответствовать нашим текстовым входам аналогичного размера.

{{< example >}}
<div class="form-file form-file-lg mb-3">
  <input type="file" class="form-file-input" id="customFileLg">
  <label class="form-file-label" for="customFileLg">
    <span class="form-file-text">Выбрать файл...</span>
    <span class="form-file-button">Обзор</span>
  </label>
</div>

<div class="form-file form-file-sm">
  <input type="file" class="form-file-input" id="customFileSm">
  <label class="form-file-label" for="customFileSm">
    <span class="form-file-text">Выбрать файл...</span>
    <span class="form-file-button">Обзор</span>
  </label>
</div>
{{< /example >}}
