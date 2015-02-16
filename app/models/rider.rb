class Rider < ActiveRecord::Base
  belongs_to :user
  belongs_to :commute

  has_one :rideshare
  has_one :driver, through: :rideshares
end
