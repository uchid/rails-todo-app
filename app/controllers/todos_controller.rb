class TodosController < ApplicationController

  def create
    project = Project.find(params[:project_id])
    @todo = project.todos.build(todo_params)
    if @todo.save
      flash[:seccess] = "Todo作成成功"
      redirect_to workspaces_path(project_id: project.id)
    else
      flash[:info] = "Todo作成失敗"
      redirect_to workspaces_path
    end
  end

  private
   def todo_params
     params.require(:todo).permit(:content, :todo_date, :todo_time, :project_id)
   end
end
