class Driver < ActiveRecord::Base
  belongs_to :user
  belongs_to :commute

  has_many :rideshares
  has_many :riders, through: :rideshares
end
