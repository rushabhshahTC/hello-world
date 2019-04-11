class ClubsController < ApplicationController
  def index
    @clubs = Club.all
  end

  def new
    @club = Club.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @club = Club.create(club_params)
    redirect_to clubs_path
  end

  def show
    @club = Club.find(params[:id])
  end

  def edit
    @club = Club.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @club = Club.find(params[:id])
    if @club.update(club_params)
      redirect_to clubs_path
    else
      render 'edit'
    end
  end

  def destroy
    @club = Club.find(params[:id])
    @club.destroy
    redirect_to clubs_path
  end

  def clubadmin
    
  end

  private

  def club_params
    params.require(:club).permit(:name)
  end
end

