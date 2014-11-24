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


require File.dirname(__FILE__) + '/last_fm/meta'
require File.dirname(__FILE__) + '/last_fm/base'
require File.dirname(__FILE__) + '/last_fm/artist'
require File.dirname(__FILE__) + '/last_fm/album'
require File.dirname(__FILE__) + '/last_fm/auth'
require File.dirname(__FILE__) + '/last_fm/event'
require File.dirname(__FILE__) + '/last_fm/geo'
require File.dirname(__FILE__) + '/last_fm/group'
require File.dirname(__FILE__) + '/last_fm/library'
require File.dirname(__FILE__) + '/last_fm/playlist'
require File.dirname(__FILE__) + '/last_fm/tag'
require File.dirname(__FILE__) + '/last_fm/tastometer'
require File.dirname(__FILE__) + '/last_fm/track'
require File.dirname(__FILE__) + '/last_fm/user'
