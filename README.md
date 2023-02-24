![Conversejs](doc/assets/project.svg)

[![Continuous Integration](https://github.com/hausgold/conversejs/actions/workflows/test.yml/badge.svg?branch=master)](https://github.com/hausgold/conversejs/actions/workflows/test.yml)
[![Gem Version](https://badge.fury.io/rb/conversejs.svg)](https://badge.fury.io/rb/conversejs)
[![Test Coverage](https://automate-api.hausgold.de/v1/coverage_reports/conversejs/coverage.svg)](https://knowledge.hausgold.de/coverage)
[![Test Ratio](https://automate-api.hausgold.de/v1/coverage_reports/conversejs/ratio.svg)](https://knowledge.hausgold.de/coverage)
[![API docs](https://automate-api.hausgold.de/v1/coverage_reports/conversejs/documentation.svg)](https://www.rubydoc.info/gems/conversejs)

This gem provides the [converse.js](https://conversejs.org/) JavaScript library
for your Rails 4+ application.

- [Installation](#installation)
- [Usage](#usage)
- [Development](#development)
- [Code of Conduct](#code-of-conduct)
- [Contributing](#contributing)
- [Releasing](#releasing)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'conversejs'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install conversejs
```

## Usage

The converse.js files will be added to the asset pipeline and available for you
to use. If they're not already in `app/assets/javascripts/application.js` by
default, add this line:

```js
//= require converse
```

The converse.js library comes also with a stylesheet which must be included to
your `app/assets/stylesheets/application.scss`. Just add this line:

```css
@import "converse";
```

## Development

After checking out the repo, run `make install` to install dependencies. Then,
run `make test` to run the tests. You can also run `make shell-irb` for an
interactive prompt that will allow you to experiment.

## Code of Conduct

Everyone interacting in the project codebase, issue tracker, chat
rooms and mailing lists is expected to follow the [code of
conduct](./CODE_OF_CONDUCT.md).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/hausgold/conversejs. Make sure that every pull request adds
a bullet point to the [changelog](./CHANGELOG.md) file with a reference to the
actual pull request.

## Releasing

The release process of this Gem is fully automated. You just need to open the
Github Actions [Release
Workflow](https://github.com/hausgold/conversejs/actions/workflows/release.yml)
and trigger a new run via the **Run workflow** button. Insert the new version
number (check the [changelog](./CHANGELOG.md) first for the latest release) and
you're done.
