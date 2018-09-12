#!/bin/bash -

echo "==== Checking if VSCode is installed and configured with shell command mode... ===="
if ! code --version; then
    echo "VSCode is not installed or configured with shell command mode."
    echo "Please turn it on in VSCode."
    exit 1
fi

echo "==== Installing homebrew... ===="
if ! bash homebrew.sh; then
    echo "Homebrew was not installed"
    exit 1
fi

echo "==== Checking if Docker is running... ===="
if ! docker version; then
    echo "Docker is not running or installed."
    exit 1
fi

echo "==== Install nvm... ===="
if ! bash nvm.sh; then
    echo "Nvm is not running or installed."
    exit 1
fi

echo "==== Install git... ===="
brew install git
if ! git --version; then
    echo "Git is not installed."
    exit 1
fi

echo "==== Install java... ===="
brew cask install java
if ! java --version; then
    echo "Java is not installed."
    exit 1
fi

echo "==== Install gradle... ===="
brew install gradle
if ! gradle --version; then
    echo "Gradle is not installed."
    exit 1
fi

echo "==== Install clojure... ===="
brew install clojure
brew install leiningen
if ! clojure --help; then
    echo "Gradle is not installed."
    exit 1
fi

echo "==== Install vue & gulp... ===="
npm install -g @vue/cli
npm install -g gulp

echo "==== Install yarn... ===="
brew install yarn --without-node
if ! yarn --version; then
    echo "Yarn is not installed."
    exit 1
fi

echo "==== Checking if dotnet installed... ===="
if ! dotnet --version; then
    echo ".NET Core is not installed."
    exit 1
fi

echo "==== Install Ruby... ===="
bash ruby.sh
if ! rvm list; then
    echo "Make sure there are ruby versions installed."
    exit 1
fi

echo "==== Install VSCode extensions... ===="
if ! bash vscode_extensions.sh; then
    echo "Check all of the VSCode extensions are installed."
    exit 1
fi

echo "==== Clone all of the repositories ===="
if ! bash get_repositories.sh; then
    echo "Not all repositories were cloned."
    exit 1
fi