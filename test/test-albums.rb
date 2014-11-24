$:.unshift File.join(File.dirname(__FILE__), ".")


require 'lib/lastfm'

lastfm = LastFM.new()
response = lastfm.album.search(:album=>'please please me')
p response
