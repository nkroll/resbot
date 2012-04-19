class Skill < ActiveRecord::Base
  attr_accessible :list_order, :rank, :skill_set_id, :title
  
  belongs_to :skill_set
end
