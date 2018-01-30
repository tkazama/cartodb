require 'carto/db/migration_helper'

include Carto::Db::MigrationHelper

migration(
  Proc.new do
    add_column :user_migration_exports, :backup, :boolean, default: false
  end,
  Proc.new do
    drop_column :user_migration_export, :backup
  end
)