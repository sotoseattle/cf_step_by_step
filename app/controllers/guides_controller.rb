class GuidesController < ApplicationController
  before_action :set_guide, only: [:show, :edit, :update, :destroy]

  def index
    @guides = Guide.all
  end

  def show
  end

  def new
    @guide = Guide.new
  end

  def create
    @guide = Guide.new(guide_params)
    if @guide.save
      flash.notice = 'Guide was successfully created'
      redirect_to @guide
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @guide.update(guide_params)
      flash.notice = 'guide successfully updated'
      redirect_to @guide
    else
      render :edit
    end
  end

  private

  def set_guide
    @guide = Guide.find(params[:id])
  end

  def guide_params
    params.require(:guide).permit(:name, :description)
  end
end
