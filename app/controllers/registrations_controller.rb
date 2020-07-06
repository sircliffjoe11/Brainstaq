class RegistrationsController < Devise::RegistrationsController

    private
  
      def sign_up_params
        params.require(:user).permit(:email, :password, :last_name, :first_name, :username, :country, :password_confirmation)
      end

      def account_update_params
        params.require(:user).permit(:id, :first_name, :last_name, :image, :image_url, :username, :country, :website, :phone, :gender, :bio, :email, :password, :password_confirmation, :current_password)
      end
      
      def after_update_path_for(resource)
        profile_path(current_user.username)
      end
  end 

  