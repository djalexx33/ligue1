class ClientApi
  attr_reader :data

  def header
    header = { 'X-Auth-Token': ENV['API_TOKEN'] }
  end

  def initialize(url, type)
    response = RestClient.get(url, header)
    standings = JSON.parse(response)
    @data = standings[type]
  end
end
