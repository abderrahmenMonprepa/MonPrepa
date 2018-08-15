class BeFirstsController < ApplicationController

respond_to :html, :json

  def new
    @comment = Comment.new
  end

  def create
    @be_first = BeFirst.new(be_first_params)

      if @be_first.save
	        flash[:notice] = "Votre inscription est bien enregistrée."
	        redirect_to root_path
    	
      else
        flash[:danger] = "Erreur lors de 'inscription."
      end
    end


  private

    def be_first_params
      params.require(:be_first).permit(:name, :phone_number, :email)
    end
end

