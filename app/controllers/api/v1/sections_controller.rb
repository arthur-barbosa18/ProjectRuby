# frozen_string_literal: true

module Api
  module V1
    class SectionsController < ApiController
      def create_params
        params.require(:section).permit(:name, :description)
      end
    end
  end
end
