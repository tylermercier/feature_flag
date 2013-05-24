# FeatureFlag

Ruby gem for tying feature flags to environment variables

## Status
[![Gem Version](https://badge.fury.io/rb/feature_flag.png)](http://badge.fury.io/rb/feature_flag)
[![Build Status](https://secure.travis-ci.org/tylermercier/feature_flag.png)](http://travis-ci.org/tylermercier/feature_flag)
[![Code Climate](https://codeclimate.com/github/tylermercier/feature_flag.png)](https://codeclimate.com/github/tylermercier/feature_flag)
[![Coverage Status](https://coveralls.io/repos/tylermercier/feature_flag/badge.png)](https://coveralls.io/r/tylermercier/feature_flag)

## Installation

Add this line to your application's Gemfile:

    gem 'feature_flag'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install feature_flag

## How to use

Add an environment variable for your feature (FEATURE=true)

[dotenv](https://github.com/bkeepers/dotenv) is a great gem for managing environment variables

Check if the feature is enabled

    return 'feature enabled' if FeatureFlag::FEATURE

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
