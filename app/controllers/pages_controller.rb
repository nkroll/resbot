class PagesController < ApplicationController
  def home
    @demo = User.first
  end

  def pricing
  end
end
