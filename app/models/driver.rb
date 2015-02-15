class Driver < ActiveRecord::Base
  has_one :commute, :as => :role
end
