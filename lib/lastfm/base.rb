class LastFM
  attr_reader :url
  include LastFM::Missing


  def initialize

      @@common = YAML.load_file("credentials.yml")
      @@url = "http://ws.audioscrobbler.com/2.0/?api_key=#{@@common["APIKEY"]}&"

    end

    def request(uri)
      begin
        response = Excon.get(uri)
        puts response.body
        from_json(response.body)
      rescue
        puts "FML"
    end
  end

def from_json(input)
  @json = ::Yajl::Parser.parse(input)
  puts @json
end
   def query(method, params)
     klass = self.class.to_s.gsub("LastFM::","").downcase
     "#{@@url}method=#{klass}.#{method}&#{params.to_query}&format=json"


  end


  def album() @track            ||= Album.new() end
  def artist() @artist          ||= Artist.new() end
  def event() @event            ||= Event.new() end
  def geo() @geo                ||= Geo.new() end
  def group() @group            ||= Group.new() end
  def library() @library        ||= Library.new() end
  def playlist() @playlist      ||= Playlist.new() end
  def tag() @tag                ||= Tag.new() end
  def tastometer() @tastometer  ||= Tastometer.new() end
  def track() @track            ||= Track.new() end
  def user() @user              ||= User.new() end

 end
