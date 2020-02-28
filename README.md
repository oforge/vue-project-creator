# vue-project-creator
You want to create a Vue CLI project and add Buefy and PurgeCSS? Here you have some shell script.

## Prerequisites:
NodeJS, npm and Vue CLI have to be installed. Preferably in the latest versions.

## Here's how it works:
In the `data` folder you will find some preconfigured files. `_custom.scss` will be the buefy override file. It will be copied to a `global` folder and inserted into your project. the `main.ts` has all the imports needed to start with buefy. `postcss.config.js` is customized for PurgeCSS. The `vue.config.js` file extends webpack and adds buefy and your `_custom.scss` as global stylesheets to your project.

## Here's what you need to do:
1. Clone or download that project. 
2. Start `create-view-cli-project.sh`
3. When the cli asks you for a project (folder) name, give it one (without spaces!).
4. Hope that the script runs through.

## What else you should know:
This thing of a script might be buggy! Use at own risk!
