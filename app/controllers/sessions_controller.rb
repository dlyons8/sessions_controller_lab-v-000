class SessionsController < ApplicationController
  def new
  end

  def create
    # binding.pry
    if params[:name] == nil || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end