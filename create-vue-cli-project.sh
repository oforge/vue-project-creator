#!/bin/bash

echo "Simple vue project creator"
echo "nodejs, npm and @vue/cli must be installed (latest)"
echo
echo "What is your project name? (this will be the folder-name)"

read projectname

vue create $projectname -i '{"useConfigFiles": true,"plugins": {"@vue/cli-plugin-babel": {},"@vue/cli-plugin-typescript": {"classComponent": true,"useTsWithBabel": true},"@vue/cli-plugin-router": {"historyMode": true},"@vue/cli-plugin-vuex": {}},"cssPreprocessor": "dart-sass"}'

if [ "$?" = "0" ]; then
  echo "Vue project $projectname created"
  echo
else
  echo "Cannot create project $projectname!" 1>&2
  echo
  exit 1
fi

cd $projectname

echo "Adding Buefy and postcss-purgecss to your project"

mkdir -p src/globals/buefy && \
  npm i --save-dev buefy @fullhuman/postcss-purgecss && \
  cp ../data/vue.config.js . && \
  cp ../data/postcss.config.js . && \
  cp ../data/main.ts src && \
  cp ../data/_custom.scss src/globals/buefy

if [ "$?" = "0" ]; then
  echo "Buefy added"
  echo "Ready to go!"
  echo
  exit 0
else
  echo "Cannot add Buefy" 1>&2
  echo
  exit 1
fi
