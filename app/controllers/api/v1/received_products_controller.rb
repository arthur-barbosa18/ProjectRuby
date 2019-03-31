# frozen_string_literal: true

module Api
  module V1
    class ReceivedProductsController < ApiController
      def create_params
        params.require(:received_product).permit(:demanded_product_id)
      end

      def check_received_product
        resource.check_received(params[:received_amount])
      end
    end
  end
end
