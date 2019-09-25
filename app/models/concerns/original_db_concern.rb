module OriginalDbConcern
  extend ActiveSupport::Concern

  included do
    original_db ||= YAML.load_file(File.join(Rails.root, 'config', 'database_original.yml'))[Rails.env.to_s]
    establish_connection original_db
  end
end