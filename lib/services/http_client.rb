class HttpClient
  include Singleton

  def getreq(url)
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    # http.verify_mode = OpenSSL::SSL::VERIFY_NONE # read into this
    @data = http.get(uri).body
    JSON.parse(@data)
  end
end
