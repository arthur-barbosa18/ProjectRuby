class DemandedProduct < ApplicationRecord

  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  belongs_to :product
  has_many :supply
  validates :amount, presence: true

=begin  after_create :fill_supplied_product

  def fill_supplied_product
    Product.create(name: 'arroz', section_id: 1)
    #Supply.create(demanded_product_id: self.id, demanded_amount: self.amount)
    #SuppliedProduct.create(product_id: self.product_id, demanded_amount: self.amount)
  end=end

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
