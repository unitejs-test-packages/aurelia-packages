#!/bin/bash
set -e

node unitejs/unitejs-cli/bin/unite configure --packageName=aurelia-javascript-amd --title="Aurelia JavaScript CommonJS" --profile=AureliaJavaScript --moduleType=AMD --bundler=RequireJS --outputDirectory=./apps/aurelia-javascript-amd
mkdir -p ./apps/aurelia-javascript-amd/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.js $_
mkdir -p ./apps/aurelia-javascript-amd/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.js $_
rm ./apps/aurelia-javascript-amd/www/test/e2e/src/examples/example-rxjs.spec.js
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/aurelia-javascript-amd
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/aurelia-javascript-amd
# node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/aurelia-javascript-amd
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/aurelia-javascript-amd

node unitejs/unitejs-cli/bin/unite configure --packageName=aurelia-javascript --title="Aurelia JavaScript SystemJS" --profile=AureliaJavaScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/aurelia-javascript-systemjs
mkdir -p ./apps/aurelia-javascript-systemjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.js $_
mkdir -p ./apps/aurelia-javascript-systemjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.js $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/aurelia-javascript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/aurelia-javascript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/aurelia-javascript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/aurelia-javascript-systemjs

node unitejs/unitejs-cli/bin/unite configure --packageName=aurelia-typescript-amd --title="Aurelia TypeScript AMD" --profile=AureliaTypeScript --moduleType=AMD --bundler=RequireJS --outputDirectory=./apps/aurelia-typescript-amd
mkdir -p ./apps/aurelia-typescript-amd/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/aurelia-typescript-amd/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
rm ./apps/aurelia-typescript-amd/www/test/e2e/src/examples/example-rxjs.spec.ts
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/aurelia-typescript-amd
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/aurelia-typescript-amd
# node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/aurelia-typescript-amd
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/aurelia-typescript-amd

node unitejs/unitejs-cli/bin/unite configure --packageName=aurelia-typescript-systemjs --title="Aurelia TypeScript SystemJS" --profile=AureliaTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/aurelia-typescript-systemjs
mkdir -p ./apps/aurelia-typescript-systemjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/aurelia-typescript-systemjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/aurelia-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/aurelia-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/aurelia-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/aurelia-typescript-systemjs
