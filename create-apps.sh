#!/bin/bash
set -e

node unitejs/unitejs-cli/bin/unite configure --packageName=aurelia-javascript --title="Aurelia JavaScript" --profile=AureliaJavaScript --outputDirectory=./apps/aurelia-javascript
mkdir -p ./apps/aurelia-javascript/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.js $_
mkdir -p ./apps/aurelia-javascript/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.js $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/aurelia-javascript
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/aurelia-javascript
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/aurelia-javascript

node unitejs/unitejs-cli/bin/unite configure --packageName=aurelia-typescript-amd --title="Aurelia TypeScript AMD" --profile=AureliaTypeScript --moduleType=AMD --bundler=RequireJS --outputDirectory=./apps/aurelia-typescript-amd
mkdir -p ./apps/aurelia-typescript-amd/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/aurelia-typescript-amd/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/aurelia-typescript-amd
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/aurelia-typescript-amd
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/aurelia-typescript-amd

node unitejs/unitejs-cli/bin/unite configure --packageName=aurelia-typescript-systemjs --title="Aurelia TypeScript SystemJS" --profile=AureliaTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/aurelia-typescript-systemjs
mkdir -p ./apps/aurelia-typescript-systemjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/aurelia-typescript-systemjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/aurelia-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/aurelia-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/aurelia-typescript-systemjs
