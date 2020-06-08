class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  IDEAS_PER_PAGE = 3

  def index
    @page = params.fetch(:page, 0).to_i 
    @ideas = Idea.offset(@page*IDEAS_PER_PAGE).limit(IDEAS_PER_PAGE).order(created_at: :desc)
  end

  def profile
    @profile = User.find_by_username params[:username]
    @ideas = Idea.all.order(created_at: :desc)
  end

  def show
    @ideas = current_user.ideas.order(created_at: :desc)
  end

end