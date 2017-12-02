class Cv < ActiveRecord::Base
  has_many :schools
  has_many :jobs
  has_many :projects
  has_many :blogs

end
