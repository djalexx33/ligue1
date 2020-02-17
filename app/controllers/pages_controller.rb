require 'rest-client'
require 'json'

class PagesController < ApplicationController
  def home
    url = 'http://api.football-data.org/v2/competitions/FL1/standings'
    @standings = ClientApi.new(url, 'standings').data[0]['table']
  end

  def index
    url = "http://api.football-data.org/v2/teams/#{params['query']}/matches"
    @data = ClientApi.new(url, 'matches').data
    url = 'http://api.football-data.org/v2/competitions/FL1/teams'
    @teams = ClientApi.new(url, 'teams').data
  end
end
