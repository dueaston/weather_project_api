Rails.application.configure do

config.database_configuration_file = Rails.root.join('config', 'database.yml')

config.logger = Logger.new(STDOUT)
config.log_level = :debug

config.action_controller.perform_caching = false
end
