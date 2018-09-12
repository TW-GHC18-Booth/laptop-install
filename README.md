# GHC Laptop Install
Below is an outline of rudimentary installs required to run GHC demos on laptops.

## Instructions
1. Make sure you are set up with a good network connection.
1. [Chrome](https://www.google.com/chrome/)
1. [JetBrains IntelliJ IDE Community](https://www.jetbrains.com/idea/download/#section=mac)
1. [VSCode](https://code.visualstudio.com/download)
1. [.NET Core 2.1 SDK](https://www.microsoft.com/net/learn/get-started-with-dotnet-tutorial)
1. [Docker Community Edition](https://store.docker.com/editions/community/docker-ce-desktop-mac)
1. Run the following
   ```
   bash install.sh
   ```
   It runs checks and calls some other scripts to install some separate components. HOWEVER, it does not install the individual dependencies for each repository.
1. For the individual repositories:
    * infrastructure-as-code: run `make install`
    * vue-morse-code: refer to `README`
    * console-morse-code-queens-attack
        * In the Ruby directory, `bundle install` in each app
            * Run `spec` in each ruby directory to see the tests
        * In the Javascript directory ‘npm install’ in each app
            * Run `gulp jest` in each javascript directory to see the tests
        * In the java directory 
            * Run `gradle test` to see the tests for each app
        * In the Clojure directory
            * Run `lein test` to see the tests for each app
    * testinvaders
        * run `brew install libpqxx`
        * run `bundle update`
        * run `rake db:migrate`
        * run `shotgun`
        * To run tests, run `rake jasmine:ci`


## Additions
* If you have extensions you want to add to VSCode, add the extension package name to `extensions.txt`.
* If you have repositories you want to add for cloning, include them in `repositories.txt`.