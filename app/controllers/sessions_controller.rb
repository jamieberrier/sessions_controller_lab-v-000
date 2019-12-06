class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil?
      redirect_to '/sessions/new'
    else
      sessions[:name] = params[:name]
    end
  end

  def destroy
  end
end
