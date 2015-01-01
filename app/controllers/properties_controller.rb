class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  before_filter :authorize

  def index
    @occupied = current_landlord.properties.occupied
    @vacant = current_landlord.properties.vacant

  end

  def show
    @issue = current_landlord.issues.new
  end

  def new
    @property = current_landlord.properties.new
  end

  def edit
  end

  def create
    @property = current_landlord.properties.create(property_params)

      if @property.save
        redirect_to @property, notice: 'Property was successfully created.'
      else
        render :new, notice: 'oops, check your form, something is not right.'
      end
    end


  def update
      if @property.update(property_params)
        redirect_to @property, notice: 'Property was successfully updated.'
      else
        render :edit 
    end
  end


  def destroy
    @property.destroy
      redirect_to properties_url, notice: 'Property was successfully destroyed.' 
  end

  private

    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(:address, :rent, :landlord_id, :rdue)
    end

end
