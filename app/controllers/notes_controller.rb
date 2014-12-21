class NotesController < ApplicationController

  def index
  	@notes = Property.find(@Property)
  end

  def new
  end

  def create
  	@property = Property.find(params[:property_id])
    @note = @property.notes.create(note_params)
    redirect_to property_path(@property)
  end

  def destroy
    @property = Property.find(params[:property_id])
    @note = @property.notes.find(params[:id])
    @note.destroy
    redirect_to property_path(@property)
  end

	private
	def note_params
	  params.require(:note).permit(:text)
	end

end
