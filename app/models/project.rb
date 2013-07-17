class Project < ActiveRecord::Base
  has_many :tasks
  has_many :stats, :as => :statable
  validates :name, :description, :presence => true
end
