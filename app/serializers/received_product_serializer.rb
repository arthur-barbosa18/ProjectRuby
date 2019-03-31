class ReceivedProductSerializer
  include FastJsonapi::ObjectSerializer

  attributes :demanded_product_id, :received_amount
end
