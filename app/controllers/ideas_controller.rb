class IdeasController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show]
  before_action :set_idea, only: [:show, :edit, :destroy, :update ]

  IDEAS_PER_PAGE = 6
  # GET /ideas
  # GET /ideas.json
  def index
    #@ideas = Idea.order(created_at: :desc).page(params[:page]).per(9)
    @page = params.fetch(:page, 0).to_i 
    @next_page = @page + 1 if Idea.count > 6
    @prev_page = @page - 1 if @page < 0
    @ideas = Idea.offset(@page*IDEAS_PER_PAGE).limit(IDEAS_PER_PAGE).order(created_at: :desc)
  end

  # GET /ideas/1
  # GET /ideas/1.json
  def show
    @idea = Idea.find(params[:id]) 
    @comment = Comment.new
    @comment.idea_id = @idea.id
  end

  # GET /ideas/new
  def new
    @idea = Idea.new  
  end

  # GET /ideas/1/edit
  def edit
  end

  # POST /ideas
  # POST /ideas.json
  def create
    @idea = Idea.new(idea_params)
    @idea.save

    # respond_with Idea.create(idea_params.merge(user_id: current_user.id))
    
    respond_to do |format|
      if @idea.save
        format.html { redirect_to @idea }
        format.json { render :show, status: :created, location: @idea }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /ideas/1
  # PATCH/PUT /ideas/1.json
  def update
    respond_to do |format|
      if @idea.update(idea_params)
        format.html { redirect_to @idea, notice: 'Idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @idea }
      else
        format.html { render :edit }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideas/1
  # DELETE /ideas/1.json
  def destroy
    @idea = current_user.ideas.find(params[:id])
    @idea.destroy

    redirect_to user_path(current_user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea
      @idea = Idea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def idea_params
      params.require(:idea).permit(:title, :description, :image, :user_id)
    end
end
