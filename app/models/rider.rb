class Rider < ActiveRecord::Base
  has_one :commute, :as => :role
end
