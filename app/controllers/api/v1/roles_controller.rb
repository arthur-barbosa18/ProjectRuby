# frozen_string_literal: true


module Api
  module V1
    class RolesController < ApiController
      def create_params
        params.require(:role).permit(:name)
      end
    end
  end
end