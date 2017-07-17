class TodosController < ApplicationController

  before_action :set_todo, only: [:edit, :update, :destroy]

  def create
    project = Project.find(params[:project_id])
    @todo = project.todos.build(todo_params)
    if @todo.save
      redirect_to workspaces_path(project_id: project.id)
    else
      flash[:info] = "failed"
      redirect_to workspaces_path
    end
  end

  def edit
  end

  def update
    if @todo.update_attributes(todo_params) 
      flash[:success] = "todo edited"
      redirect_to workspaces_path
    else
      flash[:info] = "failed"
      render "edit"
    end
  end

  def destroy
    @todo.destroy
    redirect_to workspaces_path
  end

  private
   def todo_params
     params.require(:todo).permit(:content, :todo_date, :todo_time, :project_id)
   end

   def set_todo
     @todo = Todo.find_by(id: params[:id])
   end
end
