class ProductSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :price, :price_per_kilo, :uuid, :brand, :section_id
end
