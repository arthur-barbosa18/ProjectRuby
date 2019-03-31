class SupplySerializer
  include FastJsonapi::ObjectSerializer

  attributes :demanded_initial, :demanded_amount, :supplied_amount
end
