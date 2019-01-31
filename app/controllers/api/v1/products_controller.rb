module Api
  module V1
    class ProductsController < ApiController
      has_scope :by_id, as: :id

      def index_section
        products = Products.by_section(params[:section_id])
        if products
          render json: resource_serializer.new(products)
        else
          render_unprocessable(procuts)
        end 
      end
    end
  end
end