# Conway

This gem plays [Conway's Game of
Life](https://en.wikipedia.org/wiki/Conway's_Game_of_Life).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'conway'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install conway

## Usage

Conway gets it initial state from stdin and then returns the next iteration:

```
$ echo "010\n010\n010" | conway
000
111
000
```

You can also provide a number of iterations to perform:

```
$ echo "010\n010\n010" | conway 2
010
010
010
```

## Contributing

1. Fork it ( https://github.com/mxhold/conway/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
