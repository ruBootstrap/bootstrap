---
layout: docs
title: Webpack
description: Узнайте, как включить Bootstrap в свой проект с помощью Webpack.
group: getting-started
toc: true
---

## Установка Bootstrap

[Установка Bootstrap]({{< docsref "/getting-started/download#npm" >}}) как модуль Node.js с использованием npm.

## Импорт JavaScript

Импортируйте [Bootstrap's JavaScript]({{< docsref "/getting-started/javascript" >}}), добавив эту строку в точку входа Вашего приложения (обычно `index.js` или `app.js`):

```js
import 'bootstrap';
```

Кроме того, вы можете **импортировать плагины по отдельности** по мере необходимости:

```js
import 'bootstrap/js/dist/util';
import 'bootstrap/js/dist/alert';
...
```

Bootstrap зависит от [jQuery](https://jquery.com/) и [Popper](https://popper.js.org/),
которые указаны в свойстве `peerDependencies`; это означает, что Вам нужно будет обязательно добавить их оба
в Ваш `package.json`, используя `npm install --save jquery popper.js`.

## Импорт стилей

### Импорт предварительно скомпилированного Sass

Чтобы использовать весь потенциал Bootstrap и настроить его в соответствии с Вашими потребностями, используйте исходные файлы как часть процесса объединения Вашего проекта.

Сначала создайте свой собственный `_custom.scss` и используйте его, чтобы переопределить [встроенные пользовательские переменные]({{< docsref "/getting-started/theming" >}}). Затем используйте Ваш основной файл Sass для импорта Ваших пользовательских переменных, а затем Bootstrap:

```scss
@import "custom";
@import "~bootstrap/scss/bootstrap";
```

Для компиляции Bootstrap убедитесь, что Вы установили и используете необходимые загрузчики: [sass-loader](https://github.com/webpack-contrib/sass-loader), [postcss-loader](https://github.com/webpack-contrib/postcss-loader) с [Autoprefixer](https://github.com/postcss/autoprefixer#webpack). При минимальной настройке конфигурация Вашего веб-пакета должна включать это или подобное правило:

```js
...
{
  test: /\.(scss)$/,
  use: [{
    loader: 'style-loader', // вставить CSS на страницу
  }, {
    loader: 'css-loader', // переводит CSS в модули CommonJS
  }, {
    loader: 'postcss-loader', // Выполнить действия postcss
    options: {
      plugins: function () { // плагины postcss, можно экспортировать в postcss.config.js
        return [
          require('autoprefixer')
        ];
      }
    }
  }, {
    loader: 'sass-loader' // компилирует Sass в CSS
  }]
},
...
```

### Импорт скомпилированного CSS

В качестве альтернативы Вы можете использовать готовый к использованию CSS Bootstrap, просто добавив эту строку в точку входа Вашего проекта:

```js
import 'bootstrap/dist/css/bootstrap.min.css';
```

В этом случае вы можете использовать существующее правило для `css` без каких-либо специальных изменений в конфигурации webpack, за исключением того, что вам не нужен `sass-loader` только [style-loader](https://github.com/webpack-contrib/style-loader) и [css-loader](https://github.com/webpack-contrib/css-loader).

```js
...
module: {
  rules: [
    {
      test: /\.css$/,
      use: ['style-loader', 'css-loader']
    }
  ]
}
...
```
