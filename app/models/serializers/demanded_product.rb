class DemandedProductSerializer
  include FastJsonapi::ObjectSerializer

  attributes :product_id, :amount
end

# == Schema Information
#
# Table name: demanded_products
#
#  id         :bigint(8)        not null, primary key
#  amount     :integer          not null
#  deleted_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint(8)        not null
#
# Indexes
#
#  index_demanded_products_on_deleted_at  (deleted_at)
#  index_demanded_products_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
