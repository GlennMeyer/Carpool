class Commute < ActiveRecord::Base
  belongs_to :user
  belongs_to :role, :polymorphic => true
end
