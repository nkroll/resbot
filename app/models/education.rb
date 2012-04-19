class Education < ActiveRecord::Base
  attr_accessible :graduation, :institution, :institution_url, :list_order, :study, :user_id
end
