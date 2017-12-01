class Blog < ActiveRecord::Base
  belongs_to :employee, optional: true
end
