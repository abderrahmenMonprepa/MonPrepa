class NotificationsController < ApplicationController


	def new
		@notification = Notification.new
	end

	def create
		@notification = Notification.new(notification_params)

		if @notification.save
		    flash[:notice] = "Votre message a été envoyé avec succès."
		    redirect_to root_path
			
		else
		  flash[:danger] = "Erreur d'envoi !!"
		end
	end

 	private

    def notification_params
      params.require(:notification).permit(:name, :phone_number, :email, :notification_contenu)
    end
end

