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
- [Contributing](#contributing)
- [License](#license)

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

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/hausgold/conversejs.

## License

The gem is available as open source under the terms of the [MIT
License](https://opensource.org/licenses/MIT).
