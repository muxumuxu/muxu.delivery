class PublicController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @milestones = @project.milestones
  end
end
