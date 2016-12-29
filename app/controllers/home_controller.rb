class HomeController < ApplicationController
  def index
    @sites = Site.joins(:tag).all
  end
end
