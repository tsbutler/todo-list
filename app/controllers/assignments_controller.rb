class AssignmentsController < ApplicationController
  
  def new
    @task = Task.find_by_id(params[:task_id])
  end

  def create
    a = Assignment.new
    a.user_id = params[:user_id]
    a.task_id = params[:task_id]
    a.save

    redirect_to("/tasks")
  end

  def delete
    @assignment = Assignment.find_by_id(params[:assignment_id])
    @user_id = @assignment.user.id
    @assignment.destroy
    redirect_to("/users/#{@user_id}/show")
  end
end