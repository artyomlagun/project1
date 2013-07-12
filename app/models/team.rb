class Team < ActiveRecord::Base
  validates :name, :role, :presence => true
end
