# GoogleSpellcheck

A spellchecker using Google's search engine.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'google_spellcheck'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install google_spellcheck

## Usage

```ruby
# will return true if there are no corrections, otherwise will return the corrected string
result = GoogleSpellcheck.check("word or phrase to check")
```

## Testing

```
rake test
```

## Contributing

1. Fork it ( https://github.com/marshallford/google_spellcheck/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
