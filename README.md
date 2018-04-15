# Mina::Yarn

Yarn plugin for [mina](https://github.com/mina-deploy/mina)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mina-yarn'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mina-yarn

## Usage

   require 'mina/yarn'

   task :deploy => :environment do
     deploy do
       ...
       invoke 'yarn:install'
       ...
     end

     to :launch do
       invoke 'yarn:setup'
     end
   end

# Configuration

    set :yarn_bin # default: 'yarn'
    set :yarn_options # default: lambda { %{--production} }

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/mina-yarn. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
