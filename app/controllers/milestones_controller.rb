class MilestonesController < ApplicationController
  before_action :set_milestone, only: [:show, :edit, :update, :destroy]
  before_action :set_project, only: [:new, :create, :edit, :update, :destroy]
  def index
    @milestones = Milestone.all
  end

  def new
    @milestone = Milestone.new
    @milestone.project = @project
  end

  def create
    @milestone = Milestone.new(milestone_params)
    @milestone.project = @project
    if @milestone.save
      redirect_to project_path(@milestone.project)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @milestone.update(milestone_params)
    if @milestone.save
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @milestone.destroy
    redirect_to project_path(@project)
  end

  private

  def set_milestone
    @milestone = Milestone.find(params[:id])
  end

  def set_project
    @project = Project.find(params[:project_id])
  end

  def milestone_params
    params.require(:milestone).permit(
    :name,
    :description,
    :delivery_date,
    :status,
    :project_id)
  end
end
