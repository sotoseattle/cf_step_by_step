class StepsController < ApplicationController
  before_action :set_guide
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  def new
    @step = Step.new
  end

  def create
    @step = @guide.steps.new(step_params)
    if @step.save
      flash.notice = 'Step created successfully'
      redirect_to @guide
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @step.update(step_params)
      flash.notice = 'step successfully updated'
      redirect_to [@guide, @step]
    else
      render :edit
    end
  end

  def destroy
    @step.destroy
    redirect_to @guide
  end


  private

  def set_guide
    @guide = Guide.find(params[:guide_id])
  end

  def set_step
    @step = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:name)
  end
end
