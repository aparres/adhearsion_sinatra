require 'sinatra/base'

module AdhearsionSinatra
class Service
  
  cattr_accessor :webserver
  
  class << self
     def start() 
        @@webserver = Sinatra.new do
           set :environment, Adhearsion.config[:platform].environment
	   set :bind, Adhearsion.config[:adhearsion_sinatra].bind
	   set :port, Adhearsion.config[:adhearsion_sinatra].port
        end

        Thread.new { @@webserver.run! }

     end
  end
end
end
