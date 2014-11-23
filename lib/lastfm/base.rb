class LastFM
  attr_reader :url

  def initialize
    if File.exist?("credentials.yml")
      @common = YAML.load_file("credentials.yml")
      @url = "http://ws.audioscrobbler.com/2.0/?api_key=#{@@cnf['LASTFM_APIKEY']}&"
