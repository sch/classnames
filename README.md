# Classnames

Small gem for ergonomically creating class names for HTML in Ruby. Based on
[JedWatson/classnames](https://github.com/JedWatson/classnames).

## Installation

Add this line to your application's Gemfile:

```ruby
gem "classnames"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install classnames

## Usage

The 90% case:

```erb
<div class="<%= Classnames("Product", { "Product--unavailable" => product.out_of_stock? }) %>">
  Blue Suede Shoes
</div>
```

produces:

```html
<div class="Product Product--unavailable">
  Blue Suede Shoes
</div>
```

Checkout the tests for more examples


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sch/classnames. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

