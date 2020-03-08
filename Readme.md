I started writing ruby in this style for quite some time and I am enjoying it quite a bit...

Check out `examples/functions.rb` or continue reading below...

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
# `require('modules/foo')`

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


Bend Ruby a bit!

---

Cheers,

@makevoid
