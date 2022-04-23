class TasksController < ApplicationController
  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def index
    @tasks = Task.all
  end

  def new
    # Create an empty task to instantiate the form_for
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
