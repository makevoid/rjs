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

# config.ru
require_relative 'server'


# ---

# lib/js_new.js


# JS.new

class JS
  def initialize(klass)
    klass.public_send(:new)
  end
end





# Rakefile

task :run do 
  sh ""
end

task default: run
