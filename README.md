# Libratonator

Experimental CLI tool to pipe Graphite's Carbon data to [Librato Metrics](http://metrics.librato.com)

## Installation

Add this line to your application's Gemfile:

    gem 'libratonator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install libratonator

## Usage

Data is piped into `libratonator` formatted as the Graphite's [plaintext protocol](http://graphite.readthedocs.org/en/latest/feeding-carbon.html):

```bash
# take standard Carbon data, pipe it to Librato
$ echo foo.measurement 12345 1348688087 | libratonator
```

If you are wild and crazy, this can be used in conjuction with [carbonator](https://github.com/gorsuch/carbonator):

```bash
$ echo host=foo measurement=12345 a=1 b=2 c=3 | carbonator | libratonator
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
