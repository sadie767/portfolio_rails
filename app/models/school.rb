class School < ActiveRecord::Base
  belongs_to :employees, optional: true
end