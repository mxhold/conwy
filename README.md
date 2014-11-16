# Conwy

This gem plays [Conway's Game of
Life](https://en.wikipedia.org/wiki/Conway's_Game_of_Life).

The name comes from [a town in Wales](https://en.wikipedia.org/wiki/Conwy)
because `conway` was already taken.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'conwy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install conwy

## Usage

Conwy gets it initial state from stdin and then prints the next iteration:

```
$ echo "010\n010\n010" > blinker
$ cat blinker
010
010
010
$ cat blinker | conway
000
111
000
```

You can also provide a number of iterations to perform before printing:

```
$ echo "00100\n10100\n01100\n00000" > glider
$ cat glider
00100
10100
01100
00000
$ cat glider | conwy 4
00000
00010
01010
00110
```

## Contributing

1. Fork it ( https://github.com/mxhold/conwy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
