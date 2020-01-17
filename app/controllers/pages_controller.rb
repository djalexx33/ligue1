require 'rest-client'
require 'json'

class PagesController < ApplicationController
  def home
    url = 'http://api.football-data.org/v2/competitions/FL1/standings'
    header = { 'X-Auth-Token': '6f38ecfa4fc64808badff82fcd366b9d' }
    response = RestClient.get(url, headers = header)
    standings = JSON.parse(response)
  end

  def index
  end
end
