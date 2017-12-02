class Job < ActiveRecord::Base
  belongs_to :cv, optional: true
end
