class ProfilesController < ApplicationController
  
  def new
    @profile = Profile.new
    @profile.build_address
  end

  def edit
     @profile = Profile.find(params[:id])
  end

  def create
    @profile = Profile.new(params[:profile])
    if @profile.save
      redirect_to @profile, notice: "Successfully created profile."
    else
      render 'new'
    end
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(params[:profile])
      flash[:notice] = "You updated your profile!"
      redirect_to @profile
    else
      render 'edit'
    end
  end

  def index
    @profile = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end
 
  
end
