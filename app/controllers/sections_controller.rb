class SectionsController < ApplicationController

	def new
		@section = Section.new
	end

	def create
		@section = Section.new(section_params)
		respond_to do |format|
	      if @section.save
	        format.html { redirect_to het_el_kazi_path, notice: 'Section crée avec succès' }
	      else
	        format.html { render :new }
	      end
	    end
		
	end

	def section_params
		params.require(:section).permit(:section_name)
	end
end