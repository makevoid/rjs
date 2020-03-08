### YAML config files

### Gemfile

Heere's a sample Gemfile:

We can write an app in Ruby JS and I recommend you this setup (assuming is a blockchain api)

> Gemfile.lock

```ruby

gem "roda"

gem "rspec"

gem "haml" # you can also use erb but only compiled

gem "inflecto"

gem "virtus" (models) # or the newer:  dry-types, dry-struct and dry-schema

gem "redis"
# gem "hiredis" # C client

gem "ethereum"

gem "bitcoin-rpc"

```
