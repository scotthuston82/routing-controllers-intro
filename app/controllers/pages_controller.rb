class PagesController < ApplicationController
  def welcome
    @header = "This is the welcome page"
  end

  def contest
    @header = "This is the contest page"
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"

  end

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] == 'test' then
      render :secrets
    else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to '/welcome'
    end
  end
end
