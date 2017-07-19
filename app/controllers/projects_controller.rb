class ProjectsController < ApplicationController
  
  before_action :set_project, only: [:edit, :update, :destroy]

  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(project_params)
    paticipating_states = @project.paticipating_states.build
    paticipating_states.user_id = current_user.id
     if @project.save
       flash[:success] = "「#{@project.name}」project created"
       redirect_to new_project_path
     else
       flash[:info] = "failed"
       render 'new'
     end
  end

  def edit
  end

  def update
    if @project.update_attributes(project_params)
      flash[:success] = "edit seccess"
      redirect_to workspaces_path
    else
      flash[:info] = "edit failed"
      render "edit"
    end
  end

  def destroy
    @project.destroy
    redirect_to workspaces_path
  end

  private
    
    def set_project
      @project = Project.find_by(id: params[:id]) 
    end

    def project_params
      params.require(:project).permit(:name, :purpose)
    end
end


