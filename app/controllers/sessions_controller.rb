class SessionsController < ApplicationController

  def new

  end

  def create
    # binding.pry
    # if !params[:name].present?
    if !current_user
      redirect_to "/login"
    else
      # session = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
    redirect_to "/login"
  end

end
