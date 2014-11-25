require 'rubygems'
require 'excon'
require 'net/http'
require 'yaml'
require 'active_support/all'



__LIB_DIR__ = File.expand_path(File.join(File.dirname(__FILE__), ".."))
unless $LOAD_PATH.include?(__LIB_DIR__)
$LOAD_PATH.unshift(__LIB_DIR__)
end


class LastFM
  VERSION = '0.0.1'
end


require File.dirname(__FILE__) + '/lastfm/missing'
require File.dirname(__FILE__) + '/lastfm/base'
require File.dirname(__FILE__) + '/lastfm/artist'
require File.dirname(__FILE__) + '/lastfm/album'
=begin
require File.dirname(__FILE__) + '/lastfm/auth'
require File.dirname(__FILE__) + '/lastfm/event'
require File.dirname(__FILE__) + '/lastfm/geo'
require File.dirname(__FILE__) + '/lastfm/group'
require File.dirname(__FILE__) + '/lastfm/library'
require File.dirname(__FILE__) + '/lastfm/playlist'
require File.dirname(__FILE__) + '/lastfm/tag'
require File.dirname(__FILE__) + '/lastfm/tastometer'
require File.dirname(__FILE__) + '/lastfm/track'
require File.dirname(__FILE__) + '/lastfm/user'
=end
