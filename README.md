# Brained

[![Gem Version](https://badge.fury.io/rb/brained.svg)](https://badge.fury.io/rb/brained)

    [verb] Having the brains knocked or dashed out; killed by a blow which breaks the skull.

-- The Century Dictionary

The Brained gem contains a collection of types designed to create
defects. Brained types are bad. Very bad. They are designed to take your
innocent data and do unnatural things to it in a way that is difficult
to uncover.

## Dependencies

* [Translit](https://github.com/tjbladez/translit)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'brained'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install brained

## Usage

```ruby
require 'brained'

name = Brained::Name.new("Mel")
greeting = Brained::String.new("Hello")

puts "#{greeting}, #{name}!"

# prints Hello, Mel!
# Nothing wrong with that. What could possibly go wrong? 😈
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/folkengine/brained. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/brained/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Brained project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/brained/blob/main/CODE_OF_CONDUCT.md).
