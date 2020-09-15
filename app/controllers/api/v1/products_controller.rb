# frozen_string_literal: true

module Api
  module V1
    # this class is to controller Product
    class ProductsController < ApiController
      has_scope :by_id, as: :id

      def create_params
        params.require(:product).permit(:name, :price, :price_per_kilo,
                                        :uuid, :brand, :section_id)
      end


      has_scope :by_section
#      def index_section
#        products = resource.by_section(params[:section_id])
#        puts products
#        if products
#          render json: resource_serializer.new(products)
#        else
#          render_unprocessable(procuts)
#        end
#      end

    end
  end
end
