
$:.unshift File.join(File.dirname(__FILE__), ".")


require 'lib/lastfm'

main = LastFM.new()
response = main.album.search(:album=>'please please me')
p response
