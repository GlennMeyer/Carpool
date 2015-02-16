class Commute < ActiveRecord::Base
  belongs_to :user
  has_one :driver
  has_one :rider
end
