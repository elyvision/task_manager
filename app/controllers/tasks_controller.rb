class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params) # j'appel la methode task_params
    @task.save
    redirect_to tasks_path(@tasks)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params[:task])
  end


  def destroy
    @task= Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path(@tasks)
  end

private

def task_params
    params.require(:task).permit(:name, :address, :delivery)
  end

end
