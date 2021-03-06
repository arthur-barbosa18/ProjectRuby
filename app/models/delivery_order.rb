class DeliveryOrder < ApplicationRecord

  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  validates :sequence_input, :sequence_output, presence: true

end

# == Schema Information
#
# Table name: delivery_orders
#
#  id              :bigint(8)        not null, primary key
#  deleted_at      :datetime
#  sequence_input  :string(255)      not null
#  sequence_output :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_delivery_orders_on_deleted_at  (deleted_at)
#
