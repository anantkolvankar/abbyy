require 'rest-client'
require 'rexml/document'
require 'cgi'

require 'abbyy/client'

module Abbyy
  extend self
  
  attr_accessor :application_id, :password
  
  # config/initializers/load_abbyy.rb (for rails)
  #
  # Abbyy.configure do |config|
  #   config.application_id = 'application_id'
  #   config.password = 'password'
  # end
  def configure
    yield self
  end
end
