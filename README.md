# GIF Monet

A customizable clone of the infamous [Cache Monet](http://www.cachemonet.com), written in Sinatra.

See it live at [seizure-roulette.herokuapp.com](http://seizure-roulette.herokuapp.com)

## Instructions

Clone it.

```no-highlight
git clone git@github.com:radavis/gif_monet
```

Install dependencies.

```
cd gif_monet
bundle
```

Load up `public/images/foreground` and `public/images/background` with your favorite gifs.

Launch it.
```
ruby server.rb
```

## Troubleshooting

### NoMethodError: undefined method 'join' for String

Using the master branch of sinatra on github fixed this:

  ```ruby
# Gemfile
gem "sinatra", git: "git@github.com:sinatra/sinatra.git"
```

Related [GitHub Issue](https://github.com/sinatra/sinatra/issues/951)
