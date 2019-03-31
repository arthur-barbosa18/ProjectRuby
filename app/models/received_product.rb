class ReceivedProduct < ApplicationRecord
  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  belongs_to :demanded_product
  # validates :amount, presence: true

  def check_received(received)
    update!(received_amount: self.received_amount + received[:amount])
  end
end

# == Schema Information
#
# Table name: received_products
#
#  id                  :bigint(8)        not null, primary key
#  deleted_at          :datetime
#  received_amount     :integer          default(0)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  demanded_product_id :bigint(8)        not null
#
# Indexes
#
#  index_received_products_on_deleted_at           (deleted_at)
#  index_received_products_on_demanded_product_id  (demanded_product_id)
#
# Foreign Keys
#
#  fk_rails_...  (demanded_product_id => demanded_products.id)
#
