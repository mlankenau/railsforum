class Forum::ThreadsController < ApplicationController
  before_action :set_forum_thread, only: [:show, :edit, :update, :destroy]

  # GET /forum/threads
  # GET /forum/threads.json
  def index
    @forum_threads = Forum::Thread.all
  end

  # GET /forum/threads/1
  # GET /forum/threads/1.json
  def show
  end

  # GET /forum/threads/new
  def new
    @forum_thread = Forum::Thread.new
  end

  # GET /forum/threads/1/edit
  def edit
  end

  # POST /forum/threads
  # POST /forum/threads.json
  def create
    @forum_thread = Forum::Thread.new(forum_thread_params)

    respond_to do |format|
      if @forum_thread.save
        format.html { redirect_to @forum_thread, notice: 'Thread was successfully created.' }
        format.json { render :show, status: :created, location: @forum_thread }
      else
        format.html { render :new }
        format.json { render json: @forum_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forum/threads/1
  # PATCH/PUT /forum/threads/1.json
  def update
    respond_to do |format|
      if @forum_thread.update(forum_thread_params)
        format.html { redirect_to @forum_thread, notice: 'Thread was successfully updated.' }
        format.json { render :show, status: :ok, location: @forum_thread }
      else
        format.html { render :edit }
        format.json { render json: @forum_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forum/threads/1
  # DELETE /forum/threads/1.json
  def destroy
    @forum_thread.destroy
    respond_to do |format|
      format.html { redirect_to forum_threads_url, notice: 'Thread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forum_thread
      @forum_thread = Forum::Thread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forum_thread_params
      params.require(:forum_thread).permit(:creator, :subject, :forum_id)
    end
end
