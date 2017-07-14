class WorkSpacesController < ApplicationController
  def show
    @projects = current_user.projects
    #↓ここは選択したprojectを入れるように変更
    if params[:project_id].nil?
      @project = @projects.first
    else
      @project = @projects.find_by(id: params[:project_id])
    end
  end
end
