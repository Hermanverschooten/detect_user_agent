# DetectUserAgent

Detect browser, os and platform based upon user agent

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'detect_user_agent'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install detect_user_agent

## Usage

```ruby
DetectUserAgent.parse(""Mozilla/5.0 (BB10; <Device Model>) AppleWebKit/<WebKit Version> (KHTML, like Gecko) Version/<BB Version #> Mobile Safari/<WebKit Version>")
```
returns a hash:
```ruby
{
  platform: 'phone',
  os: 'blackberry'
  browser: 'blackberry'
}
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/detect_user_agent/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
