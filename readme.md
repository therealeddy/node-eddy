<h2 align="center">
  <img src="docs/node-eddy.png" height="90" alt="node-eddy" />
</h2>

<br>

<div align="center">

[![version](https://img.shields.io/badge/version-1.1.0-blue.svg)](https://github.com/therealeddy/node-eddy/releases)<space><space>
[![documentation](https://img.shields.io/badge/documentation-yes-brightgreen.svg)](#overview)

</div>

<br><br>

## Overview

Advanced template for NodeJS.

- **[Structure](#structure)**
- **[Dependencies](#dependencies)**
- **[Docker](#docker)**
- **[Husky](#husky)**
- **[ESLint](#eslint)**
- **[Microsoft Visual Code](#microsoft-visual-code)**
- **[Author](#author)**
- **[Show your support](#show-your-support)**


<br><br>

## Structure

- ```app``` - MVC
    - ```controllers``` - Application controllers
    - ```jobs``` - Application jobs
    - ```middlewares``` - Middlewares da aplicação
    - ```models``` - Application middlewares
    - ```views``` - Application email templates
- ```config``` - Application settings
- ```database``` - Database configuration
- ```lib``` - Email configuration
- ```app.js``` - Encapsulation of the entire application
- ```queue.js``` - Queue processing
- ```routes.js``` - Application routes
- ```server.js``` - Server initiation

<br><br>

## Dependencies

Remember to execute the command ```yarn upgrade``` to update with dependencies.

**Normal:**

- @sentry/node
- bcryptjs
- bee-queue
- dotenv
- express
- express-async-errors
- express-handlebars
- jsonwebtoken
- multer
- nodemailer
- nodemailer-express-handlebars
- pg
- pg-hstore
- sequelize
- youch
- yup

**Dev Dependencies:**

- nodemon
- sequelize-cli
- sucrase

<br><br>

## Docker

Useful commands for using Docker

Create Migration
```sh
yarn sequelize migration:create --name=create-users
```

Run Migration
```sh
yarn sequelize db:migrate
```

Undo Migrate
```sh
yarn sequelize db:migrate:undo
```
```sh
yarn sequelize db:migrate:undo:all
```

Create Seed
```sh
yarn sequelize seed:generate --name admin-user
```

Run Seed
```sh
yarn sequelize db:seed:all
```

Containers
```sh
docker ps
docker ps -a
docker start <id>
docker stop <id>
docker container rm <id>
```

Redis
```sh
docker run --name redisdatabase -p 6379:6379 -d -t redis:alpine
```

Sequelize
```sh
docker run --name database -e POSTGRES_PASSWORD=docker -p 5432:5432 -d postgres
```

<br><br>

## Husky

For standardization of commits for GitHub within a project, using the library **[Husky](https://github.com/typicode/husky)**, together with libraries **[commitizen](https://github.com/commitizen/cz-cli)**, **[lint-staged](https://github.com/okonet/lint-staged)**, **[@commitlint/config-conventional](https://www.npmjs.com/package/@commitlint/config-conventional)** and **[@commitlint/cli](https://www.npmjs.com/package/@commitlint/cli)**.

Add the Hunsky library in development.

```sh
yarn add husky -D
```

Also add the following libraries below, under development.

```sh
yarn add commitizen lint-staged @commitlint/config-conventional @commitlint/cli -D
```

Paste the excerpt below into your file ```package.json```.

```json
{
  "husky": {
    "hooks": {
      "pre-commit": "lint-staged",
      "commit-msg": "commitlint -E HUSKY_GIT_PARAMS",
      "prepare-commit-msg": "exec < /dev/tty && git cz --hook || true"
    }
  },
  "lint-staged": {
    "*.js": [
      "prettier --write",
      "eslint --fix --ignore-pattern '!.eslintrc.js'",
      "git add ."
    ]
  },
  "config": {
    "commitizen": {
      "path": "./node_modules/cz-conventional-changelog"
    }
  }
}
```

Create a file called ```commitlint.config.js``` at the root of the project and paste the code below.

```javascript
module.exports = { extends: ['@commitlint/config-conventional'] };
```

After these settings, just type ```git add .``` and ```git commit``` on your terminal and Husky will take action.

Below are listed possible questions that Husky will ask.

1. Select the type of change that you're committing: (Use arrow keys)
- ```feat```:         A new feature
- ```fix```:          A bug fix
- ```docs```:         Documentation only changes
- ```style```:        Changes that do not affect the meaning of the code (white-space, for matting, missing semi-colons, etc)
- ```refactor```:     A code change that neither fixes a bug nor adds a feature
- ```perf```:         A code change that improves performance
- ```test```:         Adding missing tests or correcting existing tests
- ```build```:        Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
- ```ci```:           Changes to our CI configuration files and scripts (example scopes: Travis, Circle, BrowserStack, SauceLabs)
- ```chore```:        Other changes that don't modify src or test files
- ```revert```:       Reverts a previous commit

2. What is the scope of this change (e.g. component or file name): (press enter to skip)
3. Write a short, imperative tense description of the change (max 66 chars):
4. Provide a longer description of the change: (press enter to skip)
5. Are there any breaking changes? (y/N)
	- A BREAKING CHANGE commit requires a body. Please enter a longer description of the commit itself:
	- Describe the breaking changes:
6. Does this change affect any open issues? (y/N)
	- Add issue references (e.g. "fix #123", "re #123".):

<br><br>

## ESLint

For better standardization of codes within the project, we use the **[ESLint](https://eslint.org/)** and **[Prettier](https://prettier.io/)** libraries.

Install the ```ESLint``` and ```Prettier - Code formatter``` extensions in your Visual Code.

Add ESLint as a development dependency.

```sh
yarn add eslint -D
```

Start ESLint with the command below.

```sh
yarn eslint –-init
```
Or

```sh
./node_modules/.bin/eslint --init
```

Answer the questions in the following order.

1. **How Would you like to use ESLint?** <br/>
*To check syntax, find problems, and enforce code style*

2. **What type of modules does your project use?** <br/>
*JavaScript modules (import/export)*

3. **Which framework does your project use?** <br/>
*None of these*

4. **Does your project use TypeScript?** <br/>
*(y/N)*

5. **Where does your code run?** <br/>
*Node*

6. **How would you like to define a style for your project?** <br/>
*Use a popular style guide*

7. **Which style guide do you want to follow?** <br/>
*Airbnb*

8. **What format do you want your config file to be in?** <br/>
*JavaScript*

9. **Do you want to downgrade?** <br/>
*Y*

10. **Would you like to install them now with npm?** <br/>
*Y*

Once installed, notice that a ```package-lock.json``` file was generated at the root of the project, because it was installed using NPM.

Remove the ```package-lock.json``` file and install the dependencies again.

```sh
yarn
```

Once installed, add the following dependencies in development mode.

```sh
yarn add prettier eslint-config-prettier eslint-plugin-prettier -D
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

<br><br>

## Microsoft Visual Code

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
  "editor.tabSize": 2,
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

<br><br>

## Author

👤 **[Eduardo Mauricio](https://github.com/therealeddy)**

## Show your support

Give a ⭐️ if this project helped you!
