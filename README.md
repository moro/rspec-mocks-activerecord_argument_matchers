# RSpec::Mocks::ActiverecordArgumentMatchers

Provide RSpec argument matcher for asserting AR object equality.

The porpose of the gem is to reduce casual use of `any_isntace_of` : which is often used to specify a record used at far scope from an example.

## Installation

Add this line to your application's Gemfile:

    gem 'rspec-mocks-activerecord_argument_matchers'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-mocks-activerecord_argument_matchers

## Usage

Add include configuration at `spec/spec_helper.rb`

```ruby
RSpec.configure do |config|
  # ... snip ..
  config.include RSpec::Mocks::ActiverecordArgumentMatchers
end
```

Now you can use `same_record_of` argument matcher in an example.

```ruby
let(:resource) { MyResource.create! }

specify do
  expect(SomethingCreator).to receive(:work).with(same_record_of(resource)) { :fine }

  post :something, id: resource.id
end
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/rspec-mocks-activerecord_argument_matchers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
