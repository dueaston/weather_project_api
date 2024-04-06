require 'sinatra'
require 'nokogiri'
require 'httparty'

get '/' do
  erb :index, locals: { barometric_pressure_data: fetch_barometric_pressure_data, error: nil }
end

get '/barometric_pressure_data' do
  content_type :json
  begin
    fetch_barometric_pressure_data.to_json
  rescue => e
    status 500
    { error: e.message }.to_json
  end
end

def fetch_barometric_pressure_data
  url = 'https://barometricpressure.app/results?lat=37.3034933&lng=-89.5230357'
  response = HTTParty.get(url)
  doc = Nokogiri::HTML(response.body)
  doc.css('.result-barometric_pressure').map(&:text)
end
end 
