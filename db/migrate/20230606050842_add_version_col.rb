class AddVersionCol < ActiveRecord::Migration[7.0]
  def change
    add_column :db_creds, :version, :string, null: false
  end
end
