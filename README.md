[![Gem Version](https://badge.fury.io/rb/giantbomb-api.svg)](https://badge.fury.io/rb/giantbomb-api)

## A Ruby wrapper for the GiantBomb API

All credits goes to [intelekshual](https://github.com/intelekshual) for creating
mostly everything :)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'giantbomb-api', '~> 1.5.19'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install giantbomb-api

In your Rails application, add your API key to:
`config/initializers/giantbomb.rb`

``` ruby
GiantBomb::Api.key('API_KEY_HERE')
```

### Resources

The gem comprises of all GiantBomb public resources:
* Accessory `GiantBomb::Accessory`
* Character `GiantBomb::Character`
* Chat `GiantBomb::Chat`
* Company `GiantBomb::Company`
* Concept `GiantBomb::Concept`
* Franchise `GiantBomb::Franchise`
* Game `GiantBomb::Game`
* Game Rating `GiantBomb::GameRating`
* Genre `GiantBomb::Genre`
* Location `GiantBomb::Location`
* Object `GiantBomb::Object`
* Person `GiantBomb::Person`
* Platform `GiantBomb::Platform`
* Promo `GiantBomb::Promo`
* Rating Board `GiantBomb::RatingBoard`
* Region `GiantBomb::Region`
* Release `GiantBomb::Release`
* Review `GiantBomb::Review`
* Theme `GiantBomb::Theme`
* Type `GiantBomb::Type`
* User Review `GiantBomb::UserReview`
* Video `GiantBomb::Video`
* Video Type `GiantBomb::VideoType`

All resources have inherit `#list` `#detail` and `#search`

### Usage

###### Finding a Resource

``` ruby
game = GiantBomb::Game.detail(49598)
game.id => 49598
game.name => "Need for Speed"
game.deck => "Need for Speed attempts to reboot the franchise with a focus on nighttime street races, multiplayer action, police chases, and new ways for players to configure and tune their cars."
game.franchises => [{"api_detail_url"=>"http://www.giantbomb.com/api/franchise/3025-483/", "id"=>483, "name"=>"Need for Speed", "site_detail_url"=>"http://www.giantbomb.com/need-for-speed/3025-483/"}]
...
```
###### Searching a Resource

``` ruby
search = GiantBomb::Search.new

search.offset(3)
search.limit(50) # max 100
search.resources('game')
search.query('Need for Speed')

search.fetch # excute query
```
or
``` ruby
GiantBomb::Search.new().query('Need for Speed').resources('game').offset(3).fetch
```

###### Searching multiple Resources

``` ruby
GiantBomb::Search.new().query('Need for Speed').resources('game, franchise').offset(3).fetch
```

###### Available filter methods

``` ruby
.limit(10)            # limits the number of returned resources, max 100
.resources('game')    # determines the type of resource, accepts multiple resources (eg: 'game, franchise, video')
.fields('name, deck') # returns only the requested resources
.offset(100)          # sets the offset
```

### Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

###### TODO

* Tests

### Examples

For more examples see [mygames.io](https://github.com/pacMakaveli/mygames.io),
[games.directory repo](https://github.com/studio51/games.directory) and [games.directory](games.directory) for a live application

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
