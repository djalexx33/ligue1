require 'rest-client'
require 'json'

class PagesController < ApplicationController
  def home
    url = 'http://api.football-data.org/v2/competitions/FL1/standings'
    header = { 'X-Auth-Token': '6f38ecfa4fc64808badff82fcd366b9d' }
    response = RestClient.get(url, headers = header)
    standings = JSON.parse(response)
    @standings = standings
  end

  def index
    url = "http://api.football-data.org/v2/teams/#{params["query"]}/matches"
    header = { 'X-Auth-Token': '6f38ecfa4fc64808badff82fcd366b9d' }
    response = RestClient.get(url, headers = header)
    matches = JSON.parse(response)
    @matches = matches

    url2 = "http://api.football-data.org/v2/competitions/FL1/teams"
    response2 = RestClient.get(url2, headers = header)
    teams = JSON.parse(response2)
    @teams = teams
  end
end
