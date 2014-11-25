module LastFM::Missing

  #Using metaprogramming techniques

  def method_missing(method, args)
    request (query(method, args))
  end
end
