class SearchController < ApplicationController
  def index
    if params[:query].start_with?('#')
      query  = params[:query].gsub('#', '')
      @ideas = Idea.joins(:idea).where(ideas: {title:    query})
    else
      @ideas = Idea.where("title like ? or description like ?", "%#{params[:query]}%", "%#{params[:query]}%")
    end
  end

  def check_ideas_exists
    if Idea.exists?(:title => self.title)
    end
  end 
end
