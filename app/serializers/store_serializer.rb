class StoreSerializer
  include FastJsonapi::ObjectSerializer

  attributes :address, :name
end