# Angular Template

Basic Angular 10 project

## Instructions & Features

- run `./rename.sh` to rename the project
- run `npm run lint` to lint and beautify the application.
- run `npm run test` to test using ChromeHeadless
- run `npm run e2e` to run e2e tests using
- add all custom styles to `src/styles/manifest.scss`
- git hook prevents commit before linting
- git hook prevents push before testing
- routing enabled
- strict enabled

## How it was created

```sh
ng new angular-template --strict --prefix schmoli --style scss --routing
npm install --save-dev eslint
npm install --save-dev @typescript-eslint/eslint-plugin eslint-plugin-prettier
npm install --save-dev prettier prettier-eslint eslint-config-prettier
npm install husky --save-dev
```

### Updating libraries

```sh
ng update @angular/core @angular/cli # Upgrade Angular to lates (add @angular/material if using)
npm update # Updates other libraries to latest (non-major) version
```

## Package.json updates

### Lint & Test

```json
"test": "ng test --watch=false --browsers=ChromeHeadless",
"lint": "tsc --noEmit && eslint ./src --ext js,ts,json --quiet --fix",
```

### Git Hooks

```json
"husky": {
  "hooks": {
    "pre-commit": "npm run lint",
    "pre-push": "npm run test"
  }
}
```

## Other Updates

### SCSS Styling Module

- created `src/styles/manifest.scss` and imported by `src/styles.scss`
