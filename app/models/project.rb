class Project < ActiveRecord::Base
  has_many :tasks
  has_many :statistics
  validates :name, :description, :presence => true
end
