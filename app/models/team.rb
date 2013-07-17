class Team < ActiveRecord::Base
  has_many :stats, :as => :statable
  validates :name, :role, :presence => true
end
