module AdhearsionSinatra
  class Plugin < Adhearsion::Plugin
    # Actions to perform when the plugin is loaded
    #
    init :adhearsion_sinatra do
      logger.info "AdhearsionSinatra has been loaded"
      Service.start
    end

    # Basic configuration for the plugin
    #
    config :adhearsion_sinatra do
       bind '0.0.0.0', desc: "WebServer Bind Address to"
       port 4567, desc: "Defult Port Listen on"
    end

    # Defining a Rake task is easy
    # The following can be invoked with:
    #   rake plugin_demo:info
    #
    tasks do
      namespace :adhearsion_sinatra do
        desc "Prints the PluginTemplate information"
        task :info do
          STDOUT.puts "AdhearsionSinatra plugin v. #{VERSION}"
        end
      end
    end

  end
end
