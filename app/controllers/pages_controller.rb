class PagesController < ApplicationController
  def welcome
    @header = "This is the welcome page"
  end

  def contest
    @header = "This is the contest page"
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
end