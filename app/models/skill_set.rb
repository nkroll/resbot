class SkillSet < ActiveRecord::Base
  attr_accessible :list_order, :skill_name, :user_id
  
  belongs_to :user
  has_many :skills
end
