class GuidesController < ApplicationController
  def index
    @guides = Guide.all
  end

  def show
    @guide = Guide.find(params[:id])
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

  private

  def guide_params
    params.require(:guide).permit(:name, :description)
  end
end
