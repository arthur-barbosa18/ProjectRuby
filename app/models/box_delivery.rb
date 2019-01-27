class BoxDelivery < ApplicationRecord

  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  DELIVERED = 1
  NOT_DELIVERED = 2

  enumerize :status, in: {
    delivered: DELIVERED,
    not_delivered: NOT_DELIVERED
  }, default: :not_delivered, scope: :by_status

  belongs_to :stores

  validates :amount, :status, presence: true

end

# == Schema Information
#
# Table name: box_deliveries
#
#  id         :bigint(8)        not null, primary key
#  amount     :integer          not null
#  deleted_at :datetime
#  status     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  store_id   :bigint(8)        not null
#
# Indexes
#
#  index_box_deliveries_on_deleted_at  (deleted_at)
#  index_box_deliveries_on_store_id    (store_id)
#
# Foreign Keys
#
#  fk_rails_...  (store_id => stores.id)
#
