#!/usr/bin/env ruby

# Fixer.io is a free JSON API for current and historical foreign exchange rates.
# It relies on daily feeds published by the European Central Bank.

require 'net/http'
require 'json'

$base_url = 'http://api.fixer.io/latest'

currencies = ['GBP', 'USD', 'EUR']
rate_in = 'HUF'

def get_currency_rate(currency, rate_in)
  begin
    uri = URI("#{$base_url}?base=#{currency}&symbols=#{rate_in}")
    response = Net::HTTP.get_response(uri)
  rescue
    puts "Connection error. Exiting..."
    exit 1
  end
  # puts "[" + response.code + "] " + response.uri.to_s
  if response.is_a?(Net::HTTPSuccess)
    response_body = Net::HTTP.get(uri)
    currency_rate = JSON.parse response_body
    # puts JSON.pretty_generate(currency_rate)
    puts currency + " " + currency_rate["rates"][rate_in].to_s
  else
    puts "N/A [" + response.code + "]"
  end
end

currencies.each do |currency|
  get_currency_rate(currency, rate_in)
end
