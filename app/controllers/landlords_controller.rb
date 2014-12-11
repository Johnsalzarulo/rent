class LandlordsController < ApplicationController
  before_action :set_landlord, only: [:show, :edit, :update, :destroy]


  def index
    @landlords = Landlord.all
  end

  def show
    @properties = Property.all
  end

  def new
    @landlord = Landlord.new
  end

  def edit
  end

  def create
    @landlord = Landlord.new(landlord_params)

      if @landlord.save
        redirect_to @landlord, notice: 'Landlord was successfully created.'
      else
        render :new
      end

  end

  def update

      if @landlord.update(landlord_params)
        redirect_to @landlord, notice: 'Landlord was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @landlord.destroy
      redirect_to landlords_url, notice: 'Landlord was successfully destroyed.'
  end

  private
    def set_landlord
      @landlord = Landlord.find(params[:id])
    end

    def landlord_params
      params.require(:landlord).permit(:name, :address, :email, :phone, :password, :password_confirmation)
    end
end
