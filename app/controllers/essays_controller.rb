class EssaysController < ApplicationController
  before_filter :authenticate_user!

  # GET /essays
  # GET /essays.json
  def index
    @essays = current_user.essays.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @essays }
    end
  end

  # GET /essays/1
  # GET /essays/1.json
  def show
    @essay = current_user.essays.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @essay }
    end
  end

  # GET /essays/new
  # GET /essays/new.json
  def new
    @essay = current_user.essays.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @essay }
    end
  end

  # GET /essays/1/edit
  def edit
    @essay = current_user.essays.find(params[:id])
  end

  # POST /essays
  # POST /essays.json
  def create
    @essay = current_user.essays.new(params[:essay])

    respond_to do |format|
      if @essay.save
        format.html { redirect_to @essay, notice: 'Essay was successfully created.' }
        format.json { render json: @essay, status: :created, location: @essay }
      else
        format.html { render action: "new" }
        format.json { render json: @essay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /essays/1
  # PUT /essays/1.json
  def update
    @essay = current_user.essays.find(params[:id])

    respond_to do |format|
      if @essay.update_attributes(params[:essay])
        format.html { redirect_to @essay, notice: 'Essay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @essay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /essays/1
  # DELETE /essays/1.json
  def destroy
    @essay = current_user.essays.find(params[:id])
    @essay.destroy

    respond_to do |format|
      format.html { redirect_to essays_url }
      format.json { head :no_content }
    end
  end
end
