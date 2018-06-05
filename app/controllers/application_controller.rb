class ApplicationController < ActionController::Base

  protect_from_forgery  with: :exception
  skip_before_action :verify_authenticity_token, if: -> { controller_name == 'sessions' && action_name == 'create' }

  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!
  # before_action :invalidate_simultaneous_user_session, :unless => Proc.new {|c| c.controller_name == 'sessions' and c.action_name == 'create' }


  # def invalidate_simultaneous_user_session
  #   sign_out_and_redirect(current_user) if current_user && session[:sign_in_token] != current_user.login_token
  # end

  # def sign_in(resource_or_scope, *args)
  #   super
  #   token = Devise.friendly_token
  #   current_user.update_attribute :login_token, token
  #   session[:sign_in_token] = token
  # end

    def after_sign_in_path_for(resource)
      if resource.class == User
        "/welcome_for_documents"
      elsif resource.class == AdminUser
        het_el_kazi_path
      else
      end
       
    end

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) do |user_params| 
              user_params.permit(:first_name, :last_name , :date_of_birth , :phone_number ,
              :cin_number, :school_year , :city , :email, :password , :institute_id , :section,  :login_token ,
              :provider , :uid , :avatar , :password_confirmation) 
            end

            # devise_parameter_sanitizer.permit(:account_update) do |user_params| 
            #   user_params.permit(:first_name, :last_name  , :phone_number ,
            #   :cin_number , :city , :password ,  :login_token ,
            #   :provider , :uid , :avatar) 
            # end

            devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name , :date_of_birth , :phone_number ,
              :cin_number, :school_year , :city , :email, :password , :institute_id , :section,  :login_token ,
              :provider , :uid , :avatar])

        end

        # Update user without password for Admin 
        def update_resource(resource, params)
          resource.update_without_password(params)
        end
  

end
