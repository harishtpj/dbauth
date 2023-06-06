class DbCred < ApplicationRecord
    belongs_to :db_type
    validates :name, :location, :host, :user, :password, presence: true
end
