class TasksController < ApplicationController
  # app/views/tasks/new.html.erb
  def new
  end

  def complete
    get_task
    @task.completed = true
    @task.save

    redirect_to("/tasks")
  end
  
  def create
    @task = Task.new
    @task.title = params[:title]
    @task.save

    redirect_to("/tasks/new")
  end

  def edit
    get_task
  end

  def processed
    get_task
    @task.title = params[:title]
    @task.save

    redirect_to("/tasks")
  end
  
  def index
    @tasks = Task.all
  end

  def get_task
    @task = Task.find_by_id(params[:id])
  end  
end