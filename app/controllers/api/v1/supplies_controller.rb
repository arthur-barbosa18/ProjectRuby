module Api
  module V1
    class SuppliesController < ApiController
    
      def fill
        if resource.fill_supply
          render_json
        else
          render_unprocessable(resource.errors)
        end
      end

    end
  end
end
