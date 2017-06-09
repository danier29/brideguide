class ForumsController < ApplicationController
  def index
    @forums = Forum.all

    render("forums/index.html.erb")
  end

  def show
    @forum = Forum.find(params[:id])
    @comment = Comment.new

    render("forums/show.html.erb")
  end

  def new
    @forum = Forum.new

    render("forums/new.html.erb")
  end

  def create
    @forum = Forum.new

    @forum.title = params[:title]
    @forum.wedding_id = params[:wedding_id]

    save_status = @forum.save

    if save_status == true
      redirect_to("/forums/#{@forum.id}", :notice => "Forum created successfully.")
    else
      render("forums/new.html.erb")
    end
  end

  def edit
    @forum = Forum.find(params[:id])

    render("forums/edit.html.erb")
  end

  def update
    @forum = Forum.find(params[:id])

    @forum.title = params[:title]
    @forum.wedding_id = params[:wedding_id]

    save_status = @forum.save

    if save_status == true
      redirect_to("/forums/#{@forum.id}", :notice => "Forum updated successfully.")
    else
      render("forums/edit.html.erb")
    end
  end

  def destroy
    @forum = Forum.find(params[:id])

    @forum.destroy

    if URI(request.referer).path == "/forums/#{@forum.id}"
      redirect_to("/", :notice => "Forum deleted.")
    else
      redirect_to(:back, :notice => "Forum deleted.")
    end
  end
end
