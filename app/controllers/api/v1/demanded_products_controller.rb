module Api
  module V1
    class DemandedProductsController < ApiController
      def create_params
        params.require(:demanded_product).permit(:product_id, :amount)
      end
    end
  end
end
