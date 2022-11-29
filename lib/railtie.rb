require 'postgresql_backup'
require 'rails'

class Railtie < Rails::Railtie
  railtie_name 'postgresql-backup-sql'

  rake_tasks do
    path = File.expand_path(__dir__)
    Dir.glob("#{path}/tasks/*.rake").each { |f| load f }
  end
end
