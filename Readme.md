I start writing ruby in this style for quite some time and I having enjoying quite a bit

Check out `examples.rb` or continue reading below...

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




### JS style modules implemented in ruby


```ruby
module Foo
  def self.bar
    "hello foobar!"
  end
end

Modules.exports = Foo
```


the implementation of `Modules.exports = Foo`  could be something like:


```ruby
module Modules
  def exports=(mod)
    EXPORTS[mod.name] = mod
  end
  module_function(:exports=)
end

def Require(modulePath)
  moduleName = File.basename modulePath
  moduleName = moduleName.capitalize
  require modulePath
  Object.send :remove_const, moduleName
  EXPORTS.fetch moduleName
end
module_function(:Require)
```


---

### Testing example with Rspec

```ruby
# Testing library: RSpec

Rspec.describe("app") {
  specify("this is a test") {
    test = Test.().foo()
    test.should === true
  }
}
```



### Purpose

A bit of context...

Why the !#@** I'm doing this?

```
### Purpose

#let's give it a bit of purpose:

The perception of Ruby is at one of the highest lows because of things like

- Roda

- dry-*everything

- GRPC

- varoius ways of writing DSLs, which ruby is best at
- API development is super fluid with Roda and RSpec

- we have a lot of good libraries for networking, dom parsing, scraping, async/actors


are essentially slowly "eating" rails as ruby
```


Bend Ruby a bit so that JS people can be more at ease with it!


my 2 cents

@makevoid
