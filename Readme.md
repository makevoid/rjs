I start writing ruby in this style for quite some time and I having enjoying quite a bit

The perception of Ruby is at one of the highest lows because of things like 

Roda

dry-*everything

are essentially slowly "eating" rails as ruby has become more of a craftsmanship art than just running generators fast (and you reckon that productivity and stability are the goals - the goals of each programmer should do pretty much GTD as Zed Shaw author of python/ruby tells us - http://programming-motherfucker.com - https://www.youtube.com/watch?v=neI_Pj558CY )


---

JS is a scam

Ruby is the real thing


---

The pureness of a language is king

That's why Matz preserved its purity between version and essentially locked the features from v1.8

Ruby API is super solid 

Refinements are a big feature which is not used well enoguh because makes ruby awesome if you compare it to JS

with modules and refinements for prototype / staging-like version, and being able to switch to solid OO you are much more productive  


---

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

Zed Shaw Quote

Why is that:
"if the code is likes the concrete result ...
if the abstract description I type of something,
looks like the concrete result"
we suddenly go:
"but that's a toy, that's wrong, right?"

we seem to really like is
our abstraction to be completeley off (paraphrased)
we like lots of chained methods... just to move a DIV
we like complex abstract code that makes us feel smart

Zed Shaw

---


That's exactly the point why I'm writing this, a way of writing Ruby simulating JS 

---

TODO this is a note, refactor :D


### TODO

Proejct's TODOs:

- Copy code Samples to this repo
- Extract Syntax Rules from the code samples
- Add Rubocop
- Add More rules
