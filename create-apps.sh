#!/bin/bash
set -e

node unitejs/cli/bin/unite configure --packageName=aurelia-javascript --title="Aurelia JavaScript" --profile=AureliaJavaScript --outputDirectory=./apps/aurelia-javascript
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/aurelia-javascript

node unitejs/cli/bin/unite configure --packageName=aurelia-typescript-amd --title="Aurelia TypeScript AMD" --profile=AureliaTypeScript --moduleType=AMD --bundler=RequireJS --outputDirectory=./apps/aurelia-typescript-amd
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/aurelia-typescript-amd

node unitejs/cli/bin/unite configure --packageName=aurelia-typescript-systemjs --title="Aurelia TypeScript SystemJS" --profile=AureliaTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/aurelia-typescript-systemjs
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/aurelia-typescript-systemjs
