class ExperiencesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index

  def index
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
  end
end
