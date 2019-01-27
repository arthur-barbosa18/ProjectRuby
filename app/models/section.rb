class Section < ApplicationRecord

  acts_as_paranoid
  validates_as_paranoid
  has_paper_trail

  validates :address, presence: true
  validates :name, length: { maximum: 140 }, presence: true

  scope :by_id, ->(id) { where(id: id) }

end

# == Schema Information
#
# Table name: sections
#
#  id          :bigint(8)        not null, primary key
#  deleted_at  :datetime
#  description :string(140)      not null
#  name        :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_sections_on_deleted_at  (deleted_at)
#
