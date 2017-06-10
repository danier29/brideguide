class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render("tasks/index.html.erb")

  end

  def show
    @task = Task.find(params[:id])
      render("tasks/show.html.erb")
  end

  def new
    @task = Task.new

    render("tasks/new.html.erb")
  end

  def create
    @task = Task.new

    @task.due_date = params[:due_date]
    @task.date_completed = params[:date_completed]
    @task.task_title = params[:task_title]
    @task.task_short_desc = params[:task_short_desc]
    @task.task_note = params[:task_note]
    @task.wedding_id = params[:wedding_id]
    @task.user_id = params[:user_id]
    save_status = @task.save

    if save_status == true
      redirect_to("/tasks", :notice => "Task created successfully.")
    else
      render("tasks/new.html.erb")
    end
  end

  def edit
    @task = Task.find(params[:id])

    render("tasks/edit.html.erb")
  end

  def update
    @task = Task.find(params[:id])

    @task.due_date = params[:due_date]
    @task.date_completed = params[:date_completed]
    @task.task_title = params[:task_title]
    @task.task_short_desc = params[:task_short_desc]
    @task.task_note = params[:task_note]
    @task.wedding_id = params[:wedding_id]
    @task.leader_id = params[:leader_id]

    save_status = @task.save

    if save_status == true
      redirect_to("/tasks/#{@task.id}", :notice => "Task updated successfully.")
    else
      render("tasks/edit.html.erb")
    end
  end

  def destroy
    @task = Task.find(params[:id])

    @task.destroy

    if URI(request.referer).path == "/tasks/#{@task.id}"
      redirect_to("/", :notice => "Task deleted.")
    else
      redirect_to(:back, :notice => "Task deleted.")
    end
  end
end
