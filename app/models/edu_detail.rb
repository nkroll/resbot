class EduDetail < ActiveRecord::Base
  attr_accessible :detail, :detail_order, :education_id
  
  belongs_to :education
end
