module Api
  module V1
    class ProductsController < ApiController
      has_scope :by_id, as: :id
    end
  end
end