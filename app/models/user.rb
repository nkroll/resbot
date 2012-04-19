class User < ActiveRecord::Base
  attr_accessible :city, :description, :email, :emailshow, :facebook_url, :facebookshow, :headshot_url, :linkedin_url, :linkedinshow, :name, :phone, :tagline, :twitter_url, :twittershow
  
  has_many :experiences
  has_many :exp_details, :through => :experiences
  
end
