class CreateDbCreds < ActiveRecord::Migration[7.0]
  def change
    create_table :db_creds do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.string :host, null: false
      t.string :user, null: false
      t.string :password, null: false

      t.timestamps
    end
  end
end
