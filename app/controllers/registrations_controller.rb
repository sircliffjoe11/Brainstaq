class RegistrationsController < Devise::RegistrationsController

    private
  
      def sign_up_params
        params.require(:user).permit(:email, :password, :last_name, :first_name, :username, :country, :password_confirmation)
      end

      def account_update_params
        params.require(:user).permit(:email, :password, :last_name, :first_name, :username, :bio, :password, :password_confirmation, :current_password)
      end
  end

  