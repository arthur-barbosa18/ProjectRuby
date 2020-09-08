module Api
  module V1
    class User < ApiController
      def create_params
        params.require(:user).permit(:email, :encrypted_password)
      end
    end
  end
end