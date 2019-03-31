class Supply < ApplicationRecord

  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  belongs_to :demanded_product

  validates :demanded_amount, presence: true
  validates :suplied_amount, presence: true

  def fill_supply
    DemandedProduct.all.each do | item |
      Supply.create(demanded_product_id: item.id, demanded_amount: item.amount)    
    end
  end
end

# == Schema Information
#
# Table name: supplies
#
#  id                  :bigint(8)        not null, primary key
#  deleted_at          :datetime
#  demanded_amount     :integer          default(0)
#  supplied_amount     :integer          default(0)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  demanded_product_id :bigint(8)        not null
#
# Indexes
#
#  index_supplies_on_deleted_at           (deleted_at)
#  index_supplies_on_demanded_product_id  (demanded_product_id)
#
# Foreign Keys
#
#  fk_rails_...  (demanded_product_id => demanded_products.id)
#
