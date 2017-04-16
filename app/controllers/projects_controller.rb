class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
