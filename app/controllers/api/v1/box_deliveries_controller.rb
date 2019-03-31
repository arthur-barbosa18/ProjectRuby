module Api
  module V1
    class BoxDeliveriesController < ApiController
      def create_params
        params.require(:box_delivery).permit(:amount, :color, :store_id)
      end
    end
  end
end