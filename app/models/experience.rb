class Experience < ActiveRecord::Base
  attr_accessible :company, :company_url, :date, :list_order, :title, :user_id
  
  belongs_to :user
  
  has_many :exp_details
  
end
