last.fm-api
===========

Last.fm API Wrapper written in Ruby 

`gem install last.fm-api`

In order to use the simple api first register at www.last.fm/api and get apikey
and secret key. 

The data returned is in JSON format and not in XML.


```ruby
yaay = LastFM.new()
tada = yaay.artist.search(:artist =>'foo fighters')

```
