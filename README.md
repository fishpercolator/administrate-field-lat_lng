# Administrate::Field::Type

Adds fields for Single Table Inheritence (STI) to ThoughtBot's [Administrate](https://github.com/thoughtbot/administrate)

[![Gem Version](https://img.shields.io/gem/v/administrate-field-type.svg?style=flat)](https://rubygems.org/gems/administrate-field-type)
[![Build Status](https://img.shields.io/travis/fishpercolator/administrate-field-type/master.svg?style=flat)](https://travis-ci.org/fishpercolator/administrate-field-type)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'administrate-field-type'
```

And then execute:

    $ bundle

## Usage

In your dashboard's `ATRRIBUTE_TYPES`, use the type `Field::Type` with options:

```ruby
ATTRIBUTE_TYPES = {
  type: Field::Type.with_options({
    class_name: 'User'
  }),
}
```

The class_name should match the parent class of the model whose subclasses you want to be able to select from. This is likely to be (but not required to be) the same as the class you are building a dashboard for.

Additional options that are available:

* `include_parent`: If true, includes the parent class as one of the options.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fishpercolator/administrate-field-select. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

