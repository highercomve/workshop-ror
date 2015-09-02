class ContentsController < ApplicationController
  before_action :find_content, only: [:update, :edit, :show]

  def index
    @hola = "Hola muchachos"
    @contenidos = Content.all
  end

  # Patch del /:id
  def update
    if @content.update_attributes(permited_params)
      redirect_to contents_path
    else
      render :new
    end
  end

  # GET de /:id/edit
  def edit
    render :new
  end

  # DELETE /:id
  def destroy
  end

  # GET /:id
  def show
  end

  # GET /new
  def new
    @content = Content.new
  end

  # POST /
  def create
    @content = Content.new(permited_params)
    if @content.save
      redirect_to contents_path
    else
      render :new
    end
  end

  def find_content
    @content = Content.find(params[:id])
  end

  def permited_params
    params.required(:content).permit(:title, :description, :order)
  end
end












