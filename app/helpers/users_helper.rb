module UsersHelper
  
  def description?
    if @user.description == nil
      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
    else 
      @user.description
    end
  end
  
  def picture?
    if @user.headshot_url == nil
      "empty_picture.png"
    else 
      @user.headshot_url
    end
  end
  
  
  
  
end
