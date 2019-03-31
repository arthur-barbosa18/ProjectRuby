module Api
  module V1
    class SuppliesController < ApiController
        def create_params
          params.require(:supply).permit(:demanded_initial, :demanded_amount)
        end

        def update_params
          params.require(:supply).permit(:supplied_amount)
        end
    end
  end
end
