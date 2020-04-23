<h1 align="center">Eddy NodeJS 👋</h1>

<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />
  <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
</p>

> Advanced template for NodeJS

## ESLint Config

Install the ```ESLint``` and ```Prettier - Code formatter``` extensions in your Visual Code.

Add ESLint as a development dependency.

```sh
yarn add eslint -D
```

Start ESLint with the command below.

```sh
yarn eslint –init
```

Answer the questions in the following order.

1. **How Would you like to use ESLint?** <br/>
*To check syntax, find problems, and enforce code style*

2. **What type of modules does your project use?** <br/>
*JavaScript modules (import/export)*

3. **Which framework does your project use?** <br/>
*None of these*

4. **Where does your code run?** <br/>
*Node*

5. **How would you like to define a style for your project?** <br/>
*Use a popular style guide*

6. **Which style guide do you want to follow?** <br/>
*Airbnb*

7. **What format do you want your config file to be in?** <br/>
*JavaScript*

8. **Do you want to downgrade?** <br/>
*Y*

9. **Would you like to install them now with npm?** <br/>
*Y*

Once installed, notice that a ```package-lock.json``` file was generated at the root of the project, because it was installed using NPM.

Remove the ```package-lock.json``` file and install the dependencies again.

```sh
yarn
```

Once installed, add the following dependencies in development mode.

```sh
yarn add prettier eslint-config-prettier eslint-plugin-prettier babel-eslint -D
```

Once installed, notice that an ```.eslintrc.js``` file was generated at the root of the project, remove what is inside the file and paste the following code snippet.

```javascript
module.exports = {
  env: {
    es6: true,
    node: true,
  },
  extends: ['airbnb-base', 'prettier'],
  plugins: ['prettier'],
  globals: {
    Atomics: 'readonly',
    SharedArrayBuffer: 'readonly',
  },
  parserOptions: {
    ecmaVersion: 2018,
    sourceType: 'module',
  },
  rules: {
    "prettier/prettier": "error",
    "linebreak-style": 0,
    "class-methods-use-this": "off",
    "no-param-reassign": "off",
    "camelcase": "off",
    "no-unused-vars": ["error", { "argsIgnorePattern": "next" }]
  },
};
```

## Microsoft Visual Code Config

Open your Visual Code ```settings.json``` file and add the following code snippet.

```json
{
  "window.zoomLevel": 0,
  "workbench.startupEditor": "newUntitledFile",
  "workbench.colorTheme": "Dracula",
  "editor.fontFamily": "Fira Code",
  "editor.fontLigatures": true,
  "editor.fontSize": 16,
  "workbench.iconTheme": "material-icon-theme",
  "editor.rulers": [80, 120],
  "editor.renderLineHighlight": "gutter",
  "editor.tabSize": 4,
  "terminal.integrated.fontSize": 14,
  "emmet.includeLanguages": {
    "javascript": "javascriptreact"
  },
  "emmet.syntaxProfiles": {
    "javascript": "jsx"
  },
  "javascript.updateImportsOnFileMove.enabled": "never",
  "editor.parameterHints.enabled": false,
  "breadcrumbs.enabled": true,
  "javascript.suggest.autoImports": false,
  "eslint.autoFixOnSave": true,
  "eslint.validate": [
    {
      "language": "javascript",
      "autoFix": true
    },
    {
      "language": "javascriptreact",
      "autoFix": true
    },
    {
      "language": "typescript",
      "autoFix": true
    },
    {
      "language": "typescriptreact",
      "autoFix": true
    },
  ],
}
```

## Author

👤 **Eduardo Mauricio**

## Show your support

Give a ⭐️ if this project helped you!
