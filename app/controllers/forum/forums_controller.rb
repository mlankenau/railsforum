class Forum::ForumsController < ApplicationController
  before_action :set_forum_forum, only: [:show, :edit, :update, :destroy]

  # GET /forum/forums
  # GET /forum/forums.json
  def index
    @forum_forums = Forum::Forum.main_forums
  end

  # GET /forum/forums/1
  # GET /forum/forums/1.json
  def show
  end

  # GET /forum/forums/new
  def new
    @forum_forum = Forum::Forum.new
  end

  # GET /forum/forums/1/edit
  def edit
  end

  # POST /forum/forums
  # POST /forum/forums.json
  def create
    @forum_forum = Forum::Forum.new(forum_forum_params)

    respond_to do |format|
      if @forum_forum.save
        format.html { redirect_to @forum_forum, notice: 'Forum was successfully created.' }
        format.json { render :show, status: :created, location: @forum_forum }
      else
        format.html { render :new }
        format.json { render json: @forum_forum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forum/forums/1
  # PATCH/PUT /forum/forums/1.json
  def update
    respond_to do |format|
      if @forum_forum.update(forum_forum_params)
        format.html { redirect_to @forum_forum, notice: 'Forum was successfully updated.' }
        format.json { render :show, status: :ok, location: @forum_forum }
      else
        format.html { render :edit }
        format.json { render json: @forum_forum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forum/forums/1
  # DELETE /forum/forums/1.json
  def destroy
    @forum_forum.destroy
    respond_to do |format|
      format.html { redirect_to forum_forums_url, notice: 'Forum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forum_forum
      @forum_forum = Forum::Forum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forum_forum_params
      params.require(:forum_forum).permit(:parent_forum_id, :name, :pos, :moderator)
    end
end
