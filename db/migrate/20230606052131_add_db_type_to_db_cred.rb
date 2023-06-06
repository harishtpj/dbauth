class AddDbTypeToDbCred < ActiveRecord::Migration[7.0]
  def change
    add_reference :db_creds, :db_type, foreign_key: true
  end
end
