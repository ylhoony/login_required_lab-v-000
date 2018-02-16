class SessionsController < ApplicationController

  def new

  end

  def create
    binding.pry
    if !current_user
      redirect_to "/login"
    else
      binding.pry
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
    redirect_to "/login"
  end

end
