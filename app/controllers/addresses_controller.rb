class AddressesController < ApplicationController
  
  def new
    @address = Address.new
  end

  def edit
     @address = Address.find(params[:id])
  end

  def create
    @address = Address.new(params[:address])
    if @address.save
      redirect_to @address, notice: "Successfully created address."
    else
      render 'new'
    end
  end

  def update
    @address = Address.find(params[:id])
    if @address.update(params[:address])
      flash[:notice] = "You updated your address!"
      redirect_to @address
    else
      render 'edit'
    end
  end

  def index
    @address = Address.all
  end

  def show
    @address = Address.find(params[:id])
  end
 
  
end
