class BoxDeliverySerializer
  include FastJsonapi::ObjectSerializer

  attributes :color, :amount, :store_id
end