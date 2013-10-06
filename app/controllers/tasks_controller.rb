class TasksController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    if @project.tasks.create(task_params)
      redirect_to project_path(@project.id)
    else
      render :template => "project/show"
    end
  end

  private
  def task_params
    params[:task].permit(:title)
  end

end
