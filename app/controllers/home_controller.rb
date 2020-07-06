class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  impressionist actions: [:show], unique: [:impressionable_type, :impressionable_id, :session_hash]

  IDEAS_PER_PAGE = 3

  def index
    @page = params.fetch(:page, 0).to_i 
    @next_page = @page + 1 unless Idea.count < 9
    @prev_page = @page - 1 unless @page == 0
    @ideas = Idea.offset(@page*IDEAS_PER_PAGE).limit(IDEAS_PER_PAGE).sort_by { |idea| idea.impressions.size.to_i}.reverse
    
    @users = User.all
  end

  def impressionist_count
    impressions.size
  end

end