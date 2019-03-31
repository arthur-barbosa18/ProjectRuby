class DemandedProductSerializer
  include FastJsonapi::ObjectSerializer

  attributes :product_id, :amount
end

