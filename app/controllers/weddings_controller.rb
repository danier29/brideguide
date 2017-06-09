class WeddingsController < ApplicationController
  def index
    @weddings = Wedding.all

    render("weddings/index.html.erb")
  end

  def show
    @wedding = Wedding.find(params[:id])

    render("weddings/show.html.erb")
  end

  def new
    @wedding = Wedding.new

    render("weddings/new.html.erb")
  end

  def create
    @wedding = Wedding.new

    @wedding.wedding_date = params[:wedding_date]
    @wedding.couple_name = params[:couple_name]

    save_status = @wedding.save

    if save_status == true
      redirect_to("/weddings/#{@wedding.id}", :notice => "Wedding created successfully.")
    else
      render("weddings/new.html.erb")
    end
  end

  def edit
    @wedding = Wedding.find(params[:id])

    render("weddings/edit.html.erb")
  end

  def update
    @wedding = Wedding.find(params[:id])

    @wedding.wedding_date = params[:wedding_date]
    @wedding.couple_name = params[:couple_name]

    save_status = @wedding.save

    if save_status == true
      redirect_to("/weddings/#{@wedding.id}", :notice => "Wedding updated successfully.")
    else
      render("weddings/edit.html.erb")
    end
  end

  def destroy
    @wedding = Wedding.find(params[:id])

    @wedding.destroy

    if URI(request.referer).path == "/weddings/#{@wedding.id}"
      redirect_to("/", :notice => "Wedding deleted.")
    else
      redirect_to(:back, :notice => "Wedding deleted.")
    end
  end
end
