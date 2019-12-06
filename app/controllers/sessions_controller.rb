class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root-path
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
    end
  end
end
