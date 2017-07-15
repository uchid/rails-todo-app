class WorkSpacesController < ApplicationController
  def show
    @projects = current_user.projects
    if params[:project_id].nil?
      @project = @projects.first
    else
      @project = @projects.find_by(id: params[:project_id])
    end
  end
end
