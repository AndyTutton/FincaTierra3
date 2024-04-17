class PagesController < ApplicationController
  def show
    @experiences = Experience.all
  end
end
