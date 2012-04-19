class ExpDetail < ActiveRecord::Base
  attr_accessible :detail, :detail_order, :experience_id
  
  belongs_to :experience
end
