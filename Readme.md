I start writing ruby in this style for quite some time and I having enjoying quite a bit

This is the default ruby-style functions: 

```ruby
### Functions

def foo
  "bar"
end
```

JS Style:

```
# looks like JS to me:
 
foo = -> { return "bar" }
```


and here's the RubyJS (ruby) one:

```ruby
# here you go!

foo = -> { "bar" }
```

implicit return!1!1!!

---

Here I'm using ruby blocks. Which give us this syntax `function = -> {}`, this is very JS.




Then let's see some "extras"



```
# hi I'm alex and I live in the comments


```

hi I'm an elf and I write documentation

```
# 

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

---


```ruby
module Exports
  def defaults=(module)
    module
    EXPORTS[File.basename(__FILE__)] = module
  end

  module_method(:defaults)
end
```


In ruby you can write ES Modules by using this synax

```ruby
module Pi
  def self.area(radius)
    Math::PI*radius*radius
  end
end

EXPORTS = Pi

```

or this one


```ruby
module Foo
  def self.bar
    ">"
  end
end


Exports.defaults = Foo
```


the implementation of `EXPORTS.defaults = Foo`  could be something like

```ruby
module Exports
  def defaults=(module)
    module
    EXPORTS[File.basename(__FILE__)] = module
  end

  module_method(:defaults)
end
```

or 

```ruby
class Exports
  def self.defaults=(module)
    EXPORTS[module
  end
end
```


---


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
