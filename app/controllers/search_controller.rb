class SearchController < ApplicationController
#   def index
#     if params[:query].start_with?('#')
#       query  = params[:query].gsub('#', '')
#       @posts = Idea.joins(:idea).where(ideas: {title:    query})
#     else
#       @posts = Idea.where("description like ?", "%#{params[:query]}%")
#     end
#   end

#   def check_ideas_exists
#     if Idea.exists?(:title => self.title)
#     end
#   end 
end
