## Getting Started ##

### Installing rbenv ###
To install rbenv type:
```shell
brew install rbenv
```

Add to ~/.bash_profile:
```shell
eval "$(rbenv init -)"
```

List all available versions:
```shell
rbenv install -l
```

Install a Ruby version:
```shell
rbenv install 2.3.1
```

Sets a local application-specific Ruby 2.3.1:
```shell
rbenv local 2.3.1
```

### Installing bundler ###
To install bundler type:
```shell
gem install bundler
```

### Installing gems ###
To install gems type:
```shell
bundle install
```

### Drivers: ###
Install and include in PATH
- [chromedriver](https://sites.google.com/a/chromium.org/chromedriver/)
- [phantomjs](http://phantomjs.org/)
- [internetExplorerDriver](http://www.seleniumhq.org/download/)
- [Firefox Geckodriver](https://developer.mozilla.org/en-US/docs/Mozilla/QA/Marionette/WebDriver)

Install [Webdriver Safari extension](http://selenium-release.storage.googleapis.com/2.48/SafariDriver.safariextz).

### Run for Customer tests###
```shell
bundle exec cucumber -p dev --tags @customer #Chrome
bundle exec cucumber -p firefox -p dev --tags @customer #Firefox
bundle exec cucumber -p poltergeist -p dev --tags @customer #Poltergeist
```
### Run for Order tests###
```shell
bundle exec cucumber -p dev --tags @order #Chrome
bundle exec cucumber -p firefox -p dev --tags @order #Firefox
bundle exec cucumber -p poltergeist -p dev --tags @order #Poltergeist
```
### Run for Payment tests###
```shell
bundle exec cucumber -p dev --tags @payment #Chrome
bundle exec cucumber -p firefox -p dev --tags @payment #Firefox
bundle exec cucumber -p poltergeist -p dev --tags @payment #Poltergeist
```

### Run for DashBoard tests###
```shell
bundle exec cucumber -p dev --tags @dashboard #Chrome
bundle exec cucumber -p firefox -p dev --tags @dashboard #Firefox
bundle exec cucumber -p poltergeist -p dev --tags @dashboard #Poltergeist
```

### HTML Report###
Type this in the tests folder:
```shell
bundle exec cucumber -p html_report
```
