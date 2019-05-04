I start writing ruby in this style for quite some time and I having enjoying quite a bit

```ruby
### Functions

def foo
  "bar"
end

foo = -> { "bar" }

# or if you want to resemble JS:

foo = -> { return "bar" }

# TODO: add the others

# This is good but I haven't tried it:

https://medium.com/@teabass/emulating-the-node-js-module-system-in-ruby-d84a5289d30e


# Testing library: RSpec 

Rspec.describe("app") {
  specify("this is a test") {
    test = Test.().foo()
    test.should === true
  }
}


### 
```

### Purpose

The perception of Ruby is at one of the highest lows because of things like 

- Roda

- dry-*everything

- GRPC

- varoius ways of writing DSLs, which ruby is best at
- API development is super fluid with Roda and RSpec



are essentially slowly "eating" rails as ruby


We can write an app in Ruby JS and I recommend you this setup:

> Gemfile.lock

```ruby

gem "roda"

gem "rspec"

gem "haml" # you can also use erb but only compiled

gem "inflecto"

gem "dry-something" # optional

gem "virtus" (models)

gem "redis"
# gem "hiredis" # C client

gem "ethereum"

```
