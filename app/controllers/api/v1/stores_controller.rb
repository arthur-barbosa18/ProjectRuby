module Api
  module V1
    class StoresController < ApiController
      def create_params
        params.require(:store).permit(:address, :name)
      end
    end
  end
end