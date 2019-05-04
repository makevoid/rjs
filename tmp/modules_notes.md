

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

Bend Ruby a bit so that JS people can be more at ease with it!


my 2 cents

@makevoid
