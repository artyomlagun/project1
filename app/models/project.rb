class Project < ActiveRecord::Base
  include UpdateStat
  has_many :tasks
  has_many :stats, :as => :statable
  validates :name, :description, :presence => true
end
