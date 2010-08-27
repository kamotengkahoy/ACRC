class LoginController < ApplicationController
  def index
  end
  
def authenticate
    #User.new(params[:userform]) will create a new object of User, retrieve values from the form and store it variable @user.
    @user = User.new(params[:userform])
        #find records with username,password
    valid_user = User.find(:first,:conditions => ["username = ? and password = ?",@user.username, @user.password])
    

        #if statement checks whether valid_user exists or not
    if valid_user
        #creates a session with username
      session[:username]=valid_user.username
      session[:firstname]=valid_user.firstname
      session[:lastname]=valid_user.lastname
      session[:category]=valid_user.category
      
      if valid_user.category=="admin"
         redirect_to :controller =>"users", :action=>"index"
       end
    else
      session[:username]=nil
      flash[:notice] = "Invalid User/Password"
      redirect_to :action=>"index"
    end
end

  def logout
      reset_session
      redirect_to :controller =>"login", :action=>"index"
  end





end
