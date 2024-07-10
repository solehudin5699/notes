# My Visual Studio Code Setup

Visual Studio Code is a popular code editor developed by Microsoft. It is widely used by developers for writing code in various programming languages. In this article, I will share my Visual Studio Code setup and the extensions I use for software development.

## Install Visual Studio Code

Download Visual Studio Code from the official website. Visit the [Visual Studio Code download page](https://code.visualstudio.com/download) and download the version that is compatible with your operating system.

## Theme

I use the GitHub Dark Default theme for Visual Studio Code. Add extension [**Github Theme**](https://marketplace.visualstudio.com/items?itemName=GitHub.github-vscode-theme) in Visual Studio Code.

## Icon Theme

I use the Material Icon Theme for Visual Studio Code. Add extension [**Material Icon Theme**](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) in Visual Studio Code.

## Extensions

Here are some of the extensions I use in Visual Studio Code:

- **Auto Rename Tag**: Automatically rename paired HTML/XML tags.
- **colorize**: A plugin to help visualize CSS colors in your CSS, SCSS, LESS, and Stylus files.
- **css-auto-prefix**: Automatically add vendor prefixes to your CSS.
- **Dart**: Dart language support and debugger for Visual Studio Code.
- **Docker**: Adds syntax highlighting, commands, hover tips, and linting for Dockerfile and docker-compose files.
- **DoxyDoxygen Documentation Generator**: Generate Doxygen Comments in VS Code
- **EditorConfig for Visual Studio Code**: EditorConfig Support for Visual Studio Code.
- **VS Code ES7+ React/Redux/React-Native/JS snippets**: Simple extensions for React, Redux in JS with babel plugin features for ES6.
- **Even Better TOML**: Better TOML language support.
- **Extension Pack for Java**: A collection of popular Java extensions.
- **file-size**: Show the file size in the status bar.
- **Flutter**: Flutter support and debugger for Visual Studio Code.
- **Git Graph**: View a Git Graph of your repository, and perform Git actions from the graph.
- **GitHub Copilot**: AI pair programmer.
- **GitHub Copilot Chat**: Chat with GitHub Copilot.
- **GitHub Theme**: GitHub theme for Visual Studio Code.
- **GitLens — Git supercharged**: Supercharge the Git capabilities built into Visual Studio Code.
- **Go**: Rich Go language support for Visual Studio Code.
- **Indent-Rainbow**: Makes indentation easier to read.
- **IntelliCode**: AI-assisted development.
- **IntelliCode API Usage Examples**: IntelliCode API Usage Examples.
- **JavaScript (ES6) code snippets**: Code snippets for JavaScript in ES6 syntax.
- **Language Support for Java(TM) by Red Hat**: Java language support for Visual Studio Code.
- **Live Server**: Launch a development local server with live reload feature for static & dynamic pages.
- **Material Icon Theme**: Material Design Icons for Visual Studio Code.
- **Maven for Java**: Maven support for Java projects.
- **Prettier - Code formatter**: Code formatter using Prettier.
- **Project Manager for Java**: Project Manager for Java.
- **Pylance**: A new language server for Python.
- **Python**: Linting, debugging, IntelliSense, code formatting, Jupyter, and more.
- **Python Debugger**: Debug your Python code.
- **Rainbow CSV**: Highlight CSV and TSV files in different colors.
- **SQL Snippets**: SQL snippets for Visual Studio Code.
- **Tailwind CSS IntelliSense**: Intelligent Tailwind CSS tooling for Visual Studio Code.
- **Test Runner for Java**: Test Runner for Java.
- **Todo Tree**: Show TODO, FIXME, etc. comment tags in a tree view.
- **Typescript React code snippets**: Typescript React code snippets.
- **XML**: XML Language Support by Red Hat.
- **YAML**: YAML Language Support by Red Hat.

??? tip "Install Extensions"

    ```bash title="Run in terminal"
    code --install-extension bradlc.vscode-tailwindcss
    code --install-extension cschlosser.doxdocgen
    code --install-extension dart-code.dart-code
    code --install-extension dart-code.flutter
    code --install-extension dsznajder.es7-react-js-snippets
    code --install-extension eamodio.gitlens
    code --install-extension editorconfig.editorconfig
    code --install-extension esbenp.prettier-vscode
    code --install-extension formulahendry.auto-rename-tag
    code --install-extension github.copilot
    code --install-extension github.copilot-chat
    code --install-extension github.github-vscode-theme
    code --install-extension golang.go
    code --install-extension gruntfuggly.todo-tree
    code --install-extension infeng.vscode-react-typescript
    code --install-extension kamikillerto.vscode-colorize
    code --install-extension mechatroner.rainbow-csv
    code --install-extension mhutchie.git-graph
    code --install-extension ms-azuretools.vscode-docker
    code --install-extension ms-python.debugpy
    code --install-extension ms-python.python
    code --install-extension ms-python.vscode-pylance
    code --install-extension oderwat.indent-rainbow
    code --install-extension pkief.material-icon-theme
    code --install-extension redhat.java
    code --install-extension redhat.vscode-xml
    code --install-extension redhat.vscode-yaml
    code --install-extension ritwickdey.liveserver
    code --install-extension sadeghpm.sql-snippets
    code --install-extension sporiley.css-auto-prefix
    code --install-extension tamasfe.even-better-toml
    code --install-extension visualstudioexptteam.intellicode-api-usage-examples
    code --install-extension visualstudioexptteam.vscodeintellicode
    code --install-extension vscjava.vscode-java-debug
    code --install-extension vscjava.vscode-java-dependency
    code --install-extension vscjava.vscode-java-pack
    code --install-extension vscjava.vscode-java-test
    code --install-extension vscjava.vscode-maven
    code --install-extension xabikos.javascriptsnippets
    code --install-extension zh9528.file-size
    ```

## setting.json

```json linenums="1"
{
  "editor.minimap.enabled": false,
  "workbench.iconTheme": "material-icon-theme",
  "tailwindCSS.emmetCompletions": true,
  "tailwindCSS.includeLanguages": {
    "plaintext": "html",
    "jsx": "javascript",
    "tsx": "typescript"
  },
  "editor.formatOnSave": true,
  "editor.tabSize": 2,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "typescript.preferences.quoteStyle": "single",
  "javascript.preferences.quoteStyle": "single",
  "prettier.singleQuote": true,
  "git.alwaysShowStagedChangesResourceGroup": true,
  "colorize.languages": [
    "javascript",
    "typescript",
    "css",
    "sass",
    "scss",
    "less",
    "postcss",
    "sss",
    "stylus",
    "xml",
    "svg"
  ],
  "colorize.include": [
    "**/*.jsx",
    "**/*.tsx",
    "**/*.js",
    "**/*.ts",
    "**/*.css",
    "**/*.scss",
    "**/*.sass",
    "**/*.less",
    "**/*.styl"
  ],
  "editor.wordWrap": "on",
  "prettier.printWidth": 100,
  "html.format.wrapLineLength": 100,
  "js/ts.implicitProjectConfig.checkJs": true,
  "workbench.colorTheme": "GitHub Dark Default",
  "tailwindCSS.lint.invalidTailwindDirective": "ignore",
  "tailwindCSS.lint.cssConflict": "error",
  "todo-tree.general.showActivityBarBadge": true,
  "todo-tree.general.showIconsInsteadOfTagsInStatusBar": true,
  "gitlens.currentLine.dateFormat": "",
  "diffEditor.ignoreTrimWhitespace": false,
  "less.lint.validProperties": ["@tailwind"],
  "github.copilot.enable": {
    "*": true,
    "plaintext": true,
    "markdown": true,
    "scminput": false
  },
  "terminal.integrated.fontFamily": "'MesloLGS NF'",
  "dev.containers.defaultFeatures": {},
  "files.associations": {
    "*.css": "tailwindcss"
  },
  "editor.guides.bracketPairs": "active",
  "dart.previewFlutterUiGuidesCustomTracking": true,
  "github.copilot.editor.enableAutoCompletions": true
}
```
