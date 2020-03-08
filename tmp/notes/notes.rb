# This is an example of RubyJS

# this is an option, to use classes with a lot of instance methods (in ruby usually this is the default option)
#
# class App
#   def foo()
#   end
# end
#
# but we're not going to do it, instead will do


# app.rb - (ideally in a separate file)
require_relative 'env'
module App
end

Exports.defaults = App

# server.rb
require_relative 'app'
run JS.new(App)
# or "new App if you don't like JS.new(), which will be the explicit version"

# config.ru
require_relative 'server'


# ---

# lib/js_new.js

# JS.new( Klass ) # ruby implementation of the `new Klass() DSL
class JS
  def initialize(klass)
    klass.public_send(:new)
  end
end


# Rakefile

task :run do
  sh "ABCDE"
end

task default: :run



#

### Functions

def foo
  "bar"
end

foo = -> { "bar" }

# or if you want to resemble JS:

foo = -> { return "bar" }

# TODO: add the others

# This is good but I haven't tried it:

# https://medium.com/@teabass/emulating-the-node-js-module-system-in-ruby-d84a5289d30e


# Testing library: RSpec

Rspec.describe("app") {
  specify("this is a test") {
    test = Test.().foo()
    test.should === true
  }
}
