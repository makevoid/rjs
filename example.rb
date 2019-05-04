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

# this is too funny (https://www.youtube.com/watch?v=datDkio1AXM) but I'm serious, ruby is a better JS
