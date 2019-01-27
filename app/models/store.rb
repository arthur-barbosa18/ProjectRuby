class Store < ApplicationRecord

  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  validates :address, presence: true
  validates :name, length: { maximum: 40 }
end

# == Schema Information
#
# Table name: stores
#
#  id         :bigint(8)        not null, primary key
#  address    :string(255)      not null
#  deleted_at :datetime
#  name       :string(40)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_stores_on_deleted_at  (deleted_at)
#
