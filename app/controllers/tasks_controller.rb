class TasksController < ApplicationController
  
  def create
    
    @task = @project.task.create(params[:task].permit(:content))
    
    redirect_to @project
  end
  
  private
  
  def set_project
    @project = Project.find(params[project_id])
  end
end
