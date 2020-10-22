---
layout: docs
title: Webpack и сборщики
description: Узнайте, как включить Bootstrap в свой проект с помощью Webpack или других сборщиков.
group: getting-started
toc: true
---

## Установка Bootstrap

[Установить бутстрап]({{< docsref "/getting-started/download#npm" >}}) как модуль Node.js с помощью npm.

## Импорт JavaScript

Импортируйте [Bootstrap's JavaScript]({{< docsref "/getting-started/javascript" >}}), добавив эту строку в точку входа вашего приложения (обычно `index.js` или `app.js`):

```js
// Вы можете указать, какие плагины Вам нужны
import { Tooltip, Toast, Popover } from 'bootstrap';
```

В качестве альтернативы, если Вам нужно всего несколько наших плагинов, Вы можете **импортировать плагины по отдельности** по мере необходимости:

```js
import Alert from 'bootstrap/js/dist/alert';
...
```

Bootstrap зависит от [Popper](https://popper.js.org/), который указан в свойстве `peerDependencies`.
Это означает, что Вам нужно обязательно добавить его в свой `package.json` используя `npm install popper.js`.

## Импорт Стилей

### Импорт предварительно скомпилированного Sass

Чтобы использовать весь потенциал Bootstrap и настроить его в соответствии с Вашими потребностями, используйте исходные файлы как часть процесса сборки Вашего проекта.

Сначала создайте свой собственный `_custom.scss` и используйте его для переопределения [встроенных пользовательских переменных]({{< docsref "/customize/sass" >}}). Затем используйте Ваш основной файл Sass для импорта Ваших пользовательских переменных, а затем Bootstrap:

```scss
@import "custom";
@import "~bootstrap/scss/bootstrap";
```

Для компиляции Bootstrap, убедитесь, что Вы установили и используете необходимые загрузчики: [sass-loader](https://github.com/webpack-contrib/sass-loader), [postcss-loader](https://github.com/webpack-contrib/postcss-loader) с [Autoprefixer](https://github.com/postcss/autoprefixer#webpack). При минимальной настройке конфигурация Вашего веб-пакета должна включать это или подобное правило:

```js
// ...
{
  test: /\.(scss)$/,
  use: [{
    // вставить CSS на страницу
    loader: 'style-loader'
  }, {
    // переводит CSS в модули CommonJS
    loader: 'css-loader'
  }, {
    // Выполнить действия postcss
    loader: 'postcss-loader',
    options: {
      // `postcssOptions` требуется для postcss 8.x;
      // если Вы используете postcss 7.x пропустите ключ
      postcssOptions: {
        // плагины postcss, можно экспортировать в postcss.config.js
        plugins: function () {
          return [
            require('autoprefixer')
          ];
        }
      }
    }
  }, {
    // компилирует Sass в CSS
    loader: 'sass-loader'
  }]
}
// ...
```

### Импорт скомпилированного CSS

В качестве альтернативы Вы можете использовать готовый к использованию CSS Bootstrap, просто добавив эту строку в точку входа Вашего проекта:

```js
import 'bootstrap/dist/css/bootstrap.min.css';
```

В этом случае Вы можете использовать существующее правило для `css` без каких-либо специальных изменений в конфигурации webpack, за исключением того, что Вам не нужен `sass-loader`, а только [style-loader](https://github.com/webpack-contrib/style-loader) и [css-loader](https://github.com/webpack-contrib/css-loader).

```js
// ...
module: {
  rules: [
    {
      test: /\.css$/,
      use: [
        'style-loader',
        'css-loader'
      ]
    }
  ]
}
// ...
```
